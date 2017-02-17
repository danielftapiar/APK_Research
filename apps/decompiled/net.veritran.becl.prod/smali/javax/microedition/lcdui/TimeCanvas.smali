.class Ljavax/microedition/lcdui/TimeCanvas;
.super Ljavax/microedition/lcdui/Canvas;
.source "DateField.java"


# instance fields
.field cal:Ljava/util/Calendar;

.field private hours:I

.field private minutes:I

.field private selected:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 492
    invoke-direct {p0}, Ljavax/microedition/lcdui/Canvas;-><init>()V

    .line 493
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Ljavax/microedition/lcdui/TimeCanvas;->cal:Ljava/util/Calendar;

    .line 494
    return-void
.end method


# virtual methods
.method public getTime()Ljava/util/Date;
    .locals 3

    .prologue
    .line 497
    iget-object v0, p0, Ljavax/microedition/lcdui/TimeCanvas;->cal:Ljava/util/Calendar;

    const/16 v1, 0xb

    iget v2, p0, Ljavax/microedition/lcdui/TimeCanvas;->hours:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 498
    iget-object v0, p0, Ljavax/microedition/lcdui/TimeCanvas;->cal:Ljava/util/Calendar;

    const/16 v1, 0xc

    iget v2, p0, Ljavax/microedition/lcdui/TimeCanvas;->minutes:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 499
    iget-object v0, p0, Ljavax/microedition/lcdui/TimeCanvas;->cal:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized keyPressed(I)V
    .locals 5
    .param p1, "keycode"    # I

    .prologue
    const/16 v4, 0x3b

    const/16 v3, 0x17

    const/4 v2, 0x1

    .line 577
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Ljavax/microedition/lcdui/TimeCanvas;->getGameAction(I)I

    move-result v0

    .line 579
    .local v0, "k":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v1, p0, Ljavax/microedition/lcdui/TimeCanvas;->selected:I

    if-lez v1, :cond_1

    .line 580
    iget v1, p0, Ljavax/microedition/lcdui/TimeCanvas;->selected:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljavax/microedition/lcdui/TimeCanvas;->selected:I

    .line 581
    invoke-virtual {p0}, Ljavax/microedition/lcdui/TimeCanvas;->repaint()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 582
    :cond_1
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :try_start_1
    iget v1, p0, Ljavax/microedition/lcdui/TimeCanvas;->selected:I

    if-ge v1, v2, :cond_2

    .line 583
    iget v1, p0, Ljavax/microedition/lcdui/TimeCanvas;->selected:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljavax/microedition/lcdui/TimeCanvas;->selected:I

    .line 584
    invoke-virtual {p0}, Ljavax/microedition/lcdui/TimeCanvas;->repaint()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 577
    .end local v0    # "k":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 585
    .restart local v0    # "k":I
    :cond_2
    if-ne v0, v2, :cond_4

    .line 586
    :try_start_2
    iget v1, p0, Ljavax/microedition/lcdui/TimeCanvas;->selected:I

    packed-switch v1, :pswitch_data_0

    .line 598
    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljavax/microedition/lcdui/TimeCanvas;->repaint()V

    goto :goto_0

    .line 588
    :pswitch_0
    iget v1, p0, Ljavax/microedition/lcdui/TimeCanvas;->hours:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljavax/microedition/lcdui/TimeCanvas;->hours:I

    .line 589
    iget v1, p0, Ljavax/microedition/lcdui/TimeCanvas;->hours:I

    if-le v1, v3, :cond_3

    .line 590
    const/4 v1, 0x0

    iput v1, p0, Ljavax/microedition/lcdui/TimeCanvas;->hours:I

    goto :goto_1

    .line 593
    :pswitch_1
    iget v1, p0, Ljavax/microedition/lcdui/TimeCanvas;->minutes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljavax/microedition/lcdui/TimeCanvas;->minutes:I

    .line 594
    iget v1, p0, Ljavax/microedition/lcdui/TimeCanvas;->minutes:I

    if-le v1, v4, :cond_3

    .line 595
    const/4 v1, 0x0

    iput v1, p0, Ljavax/microedition/lcdui/TimeCanvas;->minutes:I

    goto :goto_1

    .line 599
    :cond_4
    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 600
    iget v1, p0, Ljavax/microedition/lcdui/TimeCanvas;->selected:I

    packed-switch v1, :pswitch_data_1

    .line 612
    :cond_5
    :goto_2
    invoke-virtual {p0}, Ljavax/microedition/lcdui/TimeCanvas;->repaint()V

    goto :goto_0

    .line 602
    :pswitch_2
    iget v1, p0, Ljavax/microedition/lcdui/TimeCanvas;->hours:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljavax/microedition/lcdui/TimeCanvas;->hours:I

    .line 603
    iget v1, p0, Ljavax/microedition/lcdui/TimeCanvas;->hours:I

    if-gez v1, :cond_5

    .line 604
    const/16 v1, 0x17

    iput v1, p0, Ljavax/microedition/lcdui/TimeCanvas;->hours:I

    goto :goto_2

    .line 607
    :pswitch_3
    iget v1, p0, Ljavax/microedition/lcdui/TimeCanvas;->minutes:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljavax/microedition/lcdui/TimeCanvas;->minutes:I

    .line 608
    iget v1, p0, Ljavax/microedition/lcdui/TimeCanvas;->minutes:I

    if-gez v1, :cond_5

    .line 609
    const/16 v1, 0x3b

    iput v1, p0, Ljavax/microedition/lcdui/TimeCanvas;->minutes:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 586
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 600
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 24
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 510
    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/TimeCanvas;->getWidth()I

    move-result v19

    .line 511
    .local v19, "w":I
    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/TimeCanvas;->getHeight()I

    move-result v10

    .line 513
    .local v10, "h":I
    const v21, 0xffffff

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 514
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v10}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 516
    const/16 v21, 0x20

    const/16 v22, 0x1

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Ljavax/microedition/lcdui/Font;->getFont(III)Ljavax/microedition/lcdui/Font;

    move-result-object v9

    .line 519
    .local v9, "font":Ljavax/microedition/lcdui/Font;
    move-object/from16 v0, p0

    iget v0, v0, Ljavax/microedition/lcdui/TimeCanvas;->hours:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 520
    .local v12, "hoursStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Ljavax/microedition/lcdui/TimeCanvas;->hours:I

    move/from16 v21, v0

    const/16 v22, 0xa

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 521
    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    const-string v22, "0"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    .line 522
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Ljavax/microedition/lcdui/TimeCanvas;->minutes:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 523
    .local v15, "minutesStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Ljavax/microedition/lcdui/TimeCanvas;->minutes:I

    move/from16 v21, v0

    const/16 v22, 0xa

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    .line 524
    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    const-string v22, "0"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    .line 525
    :cond_1
    const-string v7, " : "

    .line 527
    .local v7, "delimiterStr":Ljava/lang/String;
    invoke-virtual {v9}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v21

    sub-int v21, v10, v21

    ushr-int/lit8 v20, v21, 0x1

    .line 529
    .local v20, "y":I
    invoke-virtual {v9, v12}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v13

    .line 530
    .local v13, "hoursW":I
    invoke-virtual {v9, v15}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v16

    .line 531
    .local v16, "minutesW":I
    invoke-virtual {v9, v7}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v8

    .line 533
    .local v8, "delimiterW":I
    add-int v21, v13, v16

    add-int v18, v21, v8

    .line 534
    .local v18, "stringWidth":I
    sub-int v21, v19, v18

    ushr-int/lit8 v17, v21, 0x1

    .line 535
    .local v17, "offset":I
    move/from16 v11, v17

    .line 536
    .local v11, "hOff":I
    add-int v6, v17, v13

    .line 537
    .local v6, "dOff":I
    add-int v14, v6, v8

    .line 539
    .local v14, "mOff":I
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 540
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljavax/microedition/lcdui/Graphics;->setFont(Ljavax/microedition/lcdui/Font;)V

    .line 542
    const/16 v21, 0x14

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v7, v6, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    .line 549
    move-object/from16 v0, p0

    iget v0, v0, Ljavax/microedition/lcdui/TimeCanvas;->selected:I

    move/from16 v21, v0

    if-nez v21, :cond_2

    .line 550
    const/4 v4, 0x0

    .line 551
    .local v4, "colorR":I
    const v5, 0xffffff

    .line 557
    .local v5, "colorT":I
    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 558
    invoke-virtual {v9}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v11, v1, v13, v2}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 559
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 560
    const/16 v21, 0x14

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v12, v11, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    .line 562
    move-object/from16 v0, p0

    iget v0, v0, Ljavax/microedition/lcdui/TimeCanvas;->selected:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 563
    const/4 v4, 0x0

    .line 564
    const v5, 0xffffff

    .line 570
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 571
    invoke-virtual {v9}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v16

    move/from16 v3, v21

    invoke-virtual {v0, v14, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    .line 572
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    .line 573
    const/16 v21, 0x14

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v15, v14, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    .line 574
    return-void

    .line 553
    .end local v4    # "colorR":I
    .end local v5    # "colorT":I
    :cond_2
    const v4, 0xffffff

    .line 554
    .restart local v4    # "colorR":I
    const/4 v5, 0x0

    .restart local v5    # "colorT":I
    goto :goto_0

    .line 566
    :cond_3
    const v4, 0xffffff

    .line 567
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public setTime(Ljava/util/Date;)V
    .locals 2
    .param p1, "time"    # Ljava/util/Date;

    .prologue
    .line 503
    iget-object v0, p0, Ljavax/microedition/lcdui/TimeCanvas;->cal:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 504
    iget-object v0, p0, Ljavax/microedition/lcdui/TimeCanvas;->cal:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Ljavax/microedition/lcdui/TimeCanvas;->hours:I

    .line 505
    iget-object v0, p0, Ljavax/microedition/lcdui/TimeCanvas;->cal:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Ljavax/microedition/lcdui/TimeCanvas;->minutes:I

    .line 506
    invoke-virtual {p0}, Ljavax/microedition/lcdui/TimeCanvas;->repaint()V

    .line 507
    return-void
.end method
