.class public Ljavax/microedition/lcdui/game/Sprite;
.super Ljavax/microedition/lcdui/game/Layer;
.source "Sprite.java"


# static fields
.field public static final TRANS_MIRROR:I = 0x2

.field public static final TRANS_MIRROR_ROT180:I = 0x1

.field public static final TRANS_MIRROR_ROT270:I = 0x4

.field public static final TRANS_MIRROR_ROT90:I = 0x7

.field public static final TRANS_NONE:I = 0x0

.field public static final TRANS_ROT180:I = 0x3

.field public static final TRANS_ROT270:I = 0x6

.field public static final TRANS_ROT90:I = 0x5


# instance fields
.field private collHeight:I

.field private collWidth:I

.field private collX:I

.field private collY:I

.field private cols:I

.field private frame:I

.field private img:Ljavax/microedition/lcdui/Image;

.field private refX:I

.field private refY:I

.field private rgbData:[I

.field private rgbDataAux:[I

.field private rows:I

.field private sequence:[I

.field private transform:I


# direct methods
.method public constructor <init>(Ljavax/microedition/lcdui/Image;)V
    .locals 2
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;

    .prologue
    .line 76
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Ljavax/microedition/lcdui/game/Sprite;-><init>(Ljavax/microedition/lcdui/Image;II)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/lcdui/Image;II)V
    .locals 6
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;
    .param p2, "frameWidth"    # I
    .param p3, "frameHeight"    # I

    .prologue
    const/4 v1, 0x0

    .line 82
    const/4 v5, 0x1

    move-object v0, p0

    move v2, v1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Ljavax/microedition/lcdui/game/Layer;-><init>(IIIIZ)V

    .line 85
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    rem-int/2addr v0, p2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    rem-int/2addr v0, p3

    if-eqz v0, :cond_1

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 88
    :cond_1
    iput-object p1, p0, Ljavax/microedition/lcdui/game/Sprite;->img:Ljavax/microedition/lcdui/Image;

    .line 89
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    div-int/2addr v0, p2

    iput v0, p0, Ljavax/microedition/lcdui/game/Sprite;->cols:I

    .line 90
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    div-int/2addr v0, p3

    iput v0, p0, Ljavax/microedition/lcdui/game/Sprite;->rows:I

    .line 91
    iput v1, p0, Ljavax/microedition/lcdui/game/Sprite;->collY:I

    iput v1, p0, Ljavax/microedition/lcdui/game/Sprite;->collX:I

    .line 92
    iput p2, p0, Ljavax/microedition/lcdui/game/Sprite;->collWidth:I

    .line 93
    iput p3, p0, Ljavax/microedition/lcdui/game/Sprite;->collHeight:I

    .line 94
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/lcdui/game/Sprite;)V
    .locals 6
    .param p1, "otherSprite"    # Ljavax/microedition/lcdui/game/Sprite;

    .prologue
    .line 98
    invoke-virtual {p1}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v1

    invoke-virtual {p1}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v2

    invoke-virtual {p1}, Ljavax/microedition/lcdui/game/Sprite;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Ljavax/microedition/lcdui/game/Sprite;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Ljavax/microedition/lcdui/game/Sprite;->isVisible()Z

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ljavax/microedition/lcdui/game/Layer;-><init>(IIIIZ)V

    .line 101
    iget v0, p1, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    iput v0, p0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    .line 102
    iget-object v0, p1, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    iput-object v0, p0, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    .line 103
    iget v0, p1, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    iput v0, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    .line 104
    iget v0, p1, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    iput v0, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    .line 105
    iget v0, p1, Ljavax/microedition/lcdui/game/Sprite;->cols:I

    iput v0, p0, Ljavax/microedition/lcdui/game/Sprite;->cols:I

    .line 106
    iget v0, p1, Ljavax/microedition/lcdui/game/Sprite;->rows:I

    iput v0, p0, Ljavax/microedition/lcdui/game/Sprite;->rows:I

    .line 107
    iget v0, p1, Ljavax/microedition/lcdui/game/Sprite;->transform:I

    iput v0, p0, Ljavax/microedition/lcdui/game/Sprite;->transform:I

    .line 108
    iget-object v0, p1, Ljavax/microedition/lcdui/game/Sprite;->img:Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Ljavax/microedition/lcdui/game/Sprite;->img:Ljavax/microedition/lcdui/Image;

    .line 109
    iget v0, p1, Ljavax/microedition/lcdui/game/Sprite;->collX:I

    iput v0, p0, Ljavax/microedition/lcdui/game/Sprite;->collX:I

    .line 110
    iget v0, p1, Ljavax/microedition/lcdui/game/Sprite;->collY:I

    iput v0, p0, Ljavax/microedition/lcdui/game/Sprite;->collY:I

    .line 111
    iget v0, p1, Ljavax/microedition/lcdui/game/Sprite;->collWidth:I

    iput v0, p0, Ljavax/microedition/lcdui/game/Sprite;->collWidth:I

    .line 112
    iget v0, p1, Ljavax/microedition/lcdui/game/Sprite;->collHeight:I

    iput v0, p0, Ljavax/microedition/lcdui/game/Sprite;->collHeight:I

    .line 113
    return-void
.end method

.method private declared-synchronized collidesWith(Ljava/lang/Object;II)Z
    .locals 35
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "oX"    # I
    .param p3, "oY"    # I

    .prologue
    .line 501
    monitor-enter p0

    const/16 v31, 0x0

    .local v31, "tX":I
    const/16 v32, 0x0

    .local v32, "tY":I
    const/16 v30, 0x0

    .local v30, "tW":I
    const/16 v29, 0x0

    .line 502
    .local v29, "tH":I
    const/16 v18, 0x0

    .local v18, "oW":I
    const/16 v17, 0x0

    .line 504
    .local v17, "oH":I
    move-object/from16 v28, p0

    .line 505
    .local v28, "t":Ljavax/microedition/lcdui/game/Sprite;
    const/4 v2, 0x1

    .line 508
    .local v2, "another":Z
    :goto_0
    if-eqz v2, :cond_5

    .line 511
    :try_start_0
    move-object/from16 v0, v28

    iget v5, v0, Ljavax/microedition/lcdui/game/Sprite;->collX:I

    .line 512
    .local v5, "cX":I
    move-object/from16 v0, v28

    iget v6, v0, Ljavax/microedition/lcdui/game/Sprite;->collY:I

    .line 513
    .local v6, "cY":I
    move-object/from16 v0, v28

    iget v4, v0, Ljavax/microedition/lcdui/game/Sprite;->collWidth:I

    .line 514
    .local v4, "cW":I
    move-object/from16 v0, v28

    iget v3, v0, Ljavax/microedition/lcdui/game/Sprite;->collHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    .local v3, "cH":I
    if-eqz v4, :cond_0

    if-nez v3, :cond_1

    .line 519
    :cond_0
    const/16 v33, 0x0

    .line 676
    .end local v3    # "cH":I
    .end local v4    # "cW":I
    .end local v5    # "cX":I
    .end local v6    # "cY":I
    :goto_1
    monitor-exit p0

    return v33

    .line 522
    .restart local v3    # "cH":I
    .restart local v4    # "cW":I
    .restart local v5    # "cX":I
    .restart local v6    # "cY":I
    :cond_1
    :try_start_1
    move-object/from16 v0, v28

    iget v0, v0, Ljavax/microedition/lcdui/game/Sprite;->transform:I

    move/from16 v33, v0

    packed-switch v33, :pswitch_data_0

    .line 574
    const/16 v33, 0x0

    goto :goto_1

    .line 524
    :pswitch_0
    invoke-virtual/range {v28 .. v28}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v33

    add-int v26, v33, v5

    .line 525
    .local v26, "sX":I
    invoke-virtual/range {v28 .. v28}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v33

    add-int v27, v33, v6

    .line 526
    .local v27, "sY":I
    move/from16 v25, v4

    .line 527
    .local v25, "sW":I
    move/from16 v24, v3

    .line 577
    .local v24, "sH":I
    :goto_2
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_4

    .line 578
    move/from16 v31, v26

    .line 579
    move/from16 v32, v27

    .line 580
    move/from16 v30, v25

    .line 581
    move/from16 v29, v24

    .line 582
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/microedition/lcdui/game/Sprite;

    move/from16 v33, v0

    if-eqz v33, :cond_2

    .line 585
    move-object/from16 v0, p1

    check-cast v0, Ljavax/microedition/lcdui/game/Sprite;

    move-object/from16 v28, v0

    goto :goto_0

    .line 530
    .end local v24    # "sH":I
    .end local v25    # "sW":I
    .end local v26    # "sX":I
    .end local v27    # "sY":I
    :pswitch_1
    invoke-virtual/range {v28 .. v28}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v33

    add-int v26, v33, v5

    .line 531
    .restart local v26    # "sX":I
    invoke-virtual/range {v28 .. v28}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v33

    invoke-virtual/range {v28 .. v28}, Ljavax/microedition/lcdui/game/Sprite;->getHeight()I

    move-result v34

    sub-int v34, v34, v6

    add-int/lit8 v34, v34, -0x1

    add-int v33, v33, v34

    sub-int v27, v33, v3

    .line 532
    .restart local v27    # "sY":I
    move/from16 v25, v4

    .line 533
    .restart local v25    # "sW":I
    move/from16 v24, v3

    .line 534
    .restart local v24    # "sH":I
    goto :goto_2

    .line 536
    .end local v24    # "sH":I
    .end local v25    # "sW":I
    .end local v26    # "sX":I
    .end local v27    # "sY":I
    :pswitch_2
    invoke-virtual/range {v28 .. v28}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v33

    invoke-virtual/range {v28 .. v28}, Ljavax/microedition/lcdui/game/Sprite;->getWidth()I

    move-result v34

    sub-int v34, v34, v5

    add-int/lit8 v34, v34, -0x1

    add-int v33, v33, v34

    sub-int v26, v33, v4

    .line 537
    .restart local v26    # "sX":I
    invoke-virtual/range {v28 .. v28}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v33

    add-int v27, v33, v6

    .line 538
    .restart local v27    # "sY":I
    move/from16 v25, v4

    .line 539
    .restart local v25    # "sW":I
    move/from16 v24, v3

    .line 540
    .restart local v24    # "sH":I
    goto :goto_2

    .line 542
    .end local v24    # "sH":I
    .end local v25    # "sW":I
    .end local v26    # "sX":I
    .end local v27    # "sY":I
    :pswitch_3
    invoke-virtual/range {v28 .. v28}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v33

    invoke-virtual/range {v28 .. v28}, Ljavax/microedition/lcdui/game/Sprite;->getWidth()I

    move-result v34

    sub-int v34, v34, v5

    add-int/lit8 v34, v34, -0x1

    add-int v33, v33, v34

    sub-int v26, v33, v4

    .line 543
    .restart local v26    # "sX":I
    invoke-virtual/range {v28 .. v28}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v33

    invoke-virtual/range {v28 .. v28}, Ljavax/microedition/lcdui/game/Sprite;->getHeight()I

    move-result v34

    sub-int v34, v34, v6

    add-int/lit8 v34, v34, -0x1

    add-int v33, v33, v34

    sub-int v27, v33, v3

    .line 544
    .restart local v27    # "sY":I
    move/from16 v25, v4

    .line 545
    .restart local v25    # "sW":I
    move/from16 v24, v3

    .line 546
    .restart local v24    # "sH":I
    goto :goto_2

    .line 548
    .end local v24    # "sH":I
    .end local v25    # "sW":I
    .end local v26    # "sX":I
    .end local v27    # "sY":I
    :pswitch_4
    invoke-virtual/range {v28 .. v28}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v33

    add-int v26, v33, v6

    .line 549
    .restart local v26    # "sX":I
    invoke-virtual/range {v28 .. v28}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v33

    add-int v27, v33, v5

    .line 550
    .restart local v27    # "sY":I
    move/from16 v25, v3

    .line 551
    .restart local v25    # "sW":I
    move/from16 v24, v4

    .line 552
    .restart local v24    # "sH":I
    goto/16 :goto_2

    .line 554
    .end local v24    # "sH":I
    .end local v25    # "sW":I
    .end local v26    # "sX":I
    .end local v27    # "sY":I
    :pswitch_5
    invoke-virtual/range {v28 .. v28}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v33

    invoke-virtual/range {v28 .. v28}, Ljavax/microedition/lcdui/game/Sprite;->getHeight()I

    move-result v34

    sub-int v34, v34, v6

    add-int/lit8 v34, v34, -0x1

    add-int v33, v33, v34

    sub-int v26, v33, v3

    .line 555
    .restart local v26    # "sX":I
    invoke-virtual/range {v28 .. v28}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v33

    add-int v27, v33, v5

    .line 556
    .restart local v27    # "sY":I
    move/from16 v25, v3

    .line 557
    .restart local v25    # "sW":I
    move/from16 v24, v4

    .line 558
    .restart local v24    # "sH":I
    goto/16 :goto_2

    .line 560
    .end local v24    # "sH":I
    .end local v25    # "sW":I
    .end local v26    # "sX":I
    .end local v27    # "sY":I
    :pswitch_6
    invoke-virtual/range {v28 .. v28}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v33

    invoke-virtual/range {v28 .. v28}, Ljavax/microedition/lcdui/game/Sprite;->getHeight()I

    move-result v34

    sub-int v34, v34, v6

    add-int/lit8 v34, v34, -0x1

    add-int v33, v33, v34

    sub-int v26, v33, v3

    .line 561
    .restart local v26    # "sX":I
    invoke-virtual/range {v28 .. v28}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v33

    invoke-virtual/range {v28 .. v28}, Ljavax/microedition/lcdui/game/Sprite;->getWidth()I

    move-result v34

    sub-int v34, v34, v5

    add-int/lit8 v34, v34, -0x1

    add-int v33, v33, v34

    sub-int v27, v33, v4

    .line 562
    .restart local v27    # "sY":I
    move/from16 v25, v3

    .line 563
    .restart local v25    # "sW":I
    move/from16 v24, v4

    .line 564
    .restart local v24    # "sH":I
    goto/16 :goto_2

    .line 566
    .end local v24    # "sH":I
    .end local v25    # "sW":I
    .end local v26    # "sX":I
    .end local v27    # "sY":I
    :pswitch_7
    invoke-virtual/range {v28 .. v28}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v33

    add-int v26, v33, v6

    .line 567
    .restart local v26    # "sX":I
    invoke-virtual/range {v28 .. v28}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v33

    invoke-virtual/range {v28 .. v28}, Ljavax/microedition/lcdui/game/Sprite;->getWidth()I

    move-result v34

    sub-int v34, v34, v5

    add-int/lit8 v34, v34, -0x1

    add-int v33, v33, v34

    sub-int v27, v33, v4

    .line 568
    .restart local v27    # "sY":I
    move/from16 v25, v3

    .line 569
    .restart local v25    # "sW":I
    move/from16 v24, v4

    .line 570
    .restart local v24    # "sH":I
    goto/16 :goto_2

    .line 586
    :cond_2
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/microedition/lcdui/game/TiledLayer;

    move/from16 v33, v0

    if-eqz v33, :cond_3

    .line 587
    const/4 v2, 0x0

    .line 588
    move-object/from16 v0, p1

    check-cast v0, Ljavax/microedition/lcdui/game/TiledLayer;

    move-object v12, v0

    .line 589
    .local v12, "layer":Ljavax/microedition/lcdui/game/TiledLayer;
    invoke-virtual {v12}, Ljavax/microedition/lcdui/game/TiledLayer;->getX()I

    move-result p2

    .line 590
    invoke-virtual {v12}, Ljavax/microedition/lcdui/game/TiledLayer;->getY()I

    move-result p3

    .line 591
    invoke-virtual {v12}, Ljavax/microedition/lcdui/game/TiledLayer;->getWidth()I

    move-result v18

    .line 592
    invoke-virtual {v12}, Ljavax/microedition/lcdui/game/TiledLayer;->getHeight()I

    move-result v17

    .line 593
    goto/16 :goto_0

    .line 594
    .end local v12    # "layer":Ljavax/microedition/lcdui/game/TiledLayer;
    :cond_3
    const/4 v2, 0x0

    .line 595
    move-object/from16 v0, p1

    check-cast v0, Ljavax/microedition/lcdui/Image;

    move-object v9, v0

    .line 596
    .local v9, "img":Ljavax/microedition/lcdui/Image;
    invoke-virtual {v9}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v18

    .line 597
    invoke-virtual {v9}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v17

    .line 598
    goto/16 :goto_0

    .line 600
    .end local v9    # "img":Ljavax/microedition/lcdui/Image;
    :cond_4
    const/4 v2, 0x0

    .line 603
    move/from16 p2, v26

    .line 604
    move/from16 p3, v27

    .line 605
    move/from16 v18, v25

    .line 606
    move/from16 v17, v24

    goto/16 :goto_0

    .line 612
    .end local v3    # "cH":I
    .end local v4    # "cW":I
    .end local v5    # "cX":I
    .end local v6    # "cY":I
    .end local v24    # "sH":I
    .end local v25    # "sW":I
    .end local v26    # "sX":I
    .end local v27    # "sY":I
    :cond_5
    move/from16 v0, v31

    move/from16 v1, p2

    if-le v0, v1, :cond_6

    add-int v33, p2, v18

    move/from16 v0, v31

    move/from16 v1, v33

    if-lt v0, v1, :cond_6

    .line 613
    const/16 v33, 0x0

    goto/16 :goto_1

    .line 614
    :cond_6
    move/from16 v0, v31

    move/from16 v1, p2

    if-ge v0, v1, :cond_7

    add-int v33, v31, v30

    move/from16 v0, v33

    move/from16 v1, p2

    if-gt v0, v1, :cond_7

    .line 615
    const/16 v33, 0x0

    goto/16 :goto_1

    .line 616
    :cond_7
    move/from16 v0, v32

    move/from16 v1, p3

    if-le v0, v1, :cond_8

    add-int v33, p3, v17

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_8

    .line 617
    const/16 v33, 0x0

    goto/16 :goto_1

    .line 618
    :cond_8
    move/from16 v0, v32

    move/from16 v1, p3

    if-ge v0, v1, :cond_9

    add-int v33, v32, v29

    move/from16 v0, v33

    move/from16 v1, p3

    if-gt v0, v1, :cond_9

    .line 619
    const/16 v33, 0x0

    goto/16 :goto_1

    .line 621
    :cond_9
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/microedition/lcdui/game/TiledLayer;

    move/from16 v33, v0

    if-eqz v33, :cond_14

    .line 626
    move-object/from16 v0, p1

    check-cast v0, Ljavax/microedition/lcdui/game/TiledLayer;

    move-object v12, v0

    .line 630
    .restart local v12    # "layer":Ljavax/microedition/lcdui/game/TiledLayer;
    move/from16 v0, p2

    move/from16 v1, v31

    if-le v0, v1, :cond_c

    .line 631
    move/from16 v21, p2

    .line 632
    .local v21, "rX":I
    add-int v33, p2, v18

    add-int v34, v31, v30

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_b

    add-int v33, p2, v18

    :goto_3
    sub-int v20, v33, v21

    .line 637
    .local v20, "rW":I
    :goto_4
    move/from16 v0, p3

    move/from16 v1, v32

    if-le v0, v1, :cond_f

    .line 638
    move/from16 v22, p3

    .line 639
    .local v22, "rY":I
    add-int v33, p3, v17

    add-int v34, v32, v29

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_e

    add-int v33, p3, v17

    :goto_5
    sub-int v19, v33, v22

    .line 645
    .local v19, "rH":I
    :goto_6
    iget-object v9, v12, Ljavax/microedition/lcdui/game/TiledLayer;->img:Ljavax/microedition/lcdui/Image;

    .line 647
    .restart local v9    # "img":Ljavax/microedition/lcdui/Image;
    invoke-virtual {v12}, Ljavax/microedition/lcdui/game/TiledLayer;->getCellWidth()I

    move-result v11

    .line 648
    .local v11, "lW":I
    invoke-virtual {v12}, Ljavax/microedition/lcdui/game/TiledLayer;->getCellHeight()I

    move-result v10

    .line 650
    .local v10, "lH":I
    sub-int v33, v21, p2

    div-int v15, v33, v11

    .line 651
    .local v15, "minC":I
    sub-int v33, v22, p3

    div-int v16, v33, v10

    .line 652
    .local v16, "minR":I
    sub-int v33, v21, p2

    add-int v33, v33, v20

    add-int/lit8 v33, v33, -0x1

    div-int v13, v33, v11

    .line 653
    .local v13, "maxC":I
    sub-int v33, v22, p3

    add-int v33, v33, v19

    add-int/lit8 v33, v33, -0x1

    div-int v14, v33, v10

    .line 657
    .local v14, "maxR":I
    move/from16 v23, v16

    .local v23, "row":I
    :goto_7
    move/from16 v0, v23

    if-gt v0, v14, :cond_13

    .line 658
    move v8, v15

    .local v8, "col":I
    :goto_8
    if-gt v8, v13, :cond_12

    .line 659
    move/from16 v0, v23

    invoke-virtual {v12, v8, v0}, Ljavax/microedition/lcdui/game/TiledLayer;->getCell(II)I

    move-result v7

    .line 662
    .local v7, "cell":I
    if-gez v7, :cond_a

    .line 663
    invoke-virtual {v12, v7}, Ljavax/microedition/lcdui/game/TiledLayer;->getAnimatedTile(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    .line 665
    :cond_a
    if-eqz v7, :cond_11

    .line 666
    const/16 v33, 0x1

    goto/16 :goto_1

    .line 632
    .end local v7    # "cell":I
    .end local v8    # "col":I
    .end local v9    # "img":Ljavax/microedition/lcdui/Image;
    .end local v10    # "lH":I
    .end local v11    # "lW":I
    .end local v13    # "maxC":I
    .end local v14    # "maxR":I
    .end local v15    # "minC":I
    .end local v16    # "minR":I
    .end local v19    # "rH":I
    .end local v20    # "rW":I
    .end local v22    # "rY":I
    .end local v23    # "row":I
    :cond_b
    add-int v33, v31, v30

    goto :goto_3

    .line 634
    .end local v21    # "rX":I
    :cond_c
    move/from16 v21, v31

    .line 635
    .restart local v21    # "rX":I
    add-int v33, v31, v30

    add-int v34, p2, v18

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_d

    add-int v33, v31, v30

    :goto_9
    sub-int v20, v33, v21

    .restart local v20    # "rW":I
    goto :goto_4

    .end local v20    # "rW":I
    :cond_d
    add-int v33, p2, v18

    goto :goto_9

    .line 639
    .restart local v20    # "rW":I
    .restart local v22    # "rY":I
    :cond_e
    add-int v33, v32, v29

    goto :goto_5

    .line 641
    .end local v22    # "rY":I
    :cond_f
    move/from16 v22, v32

    .line 642
    .restart local v22    # "rY":I
    add-int v33, v32, v29

    add-int v34, p3, v17

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_10

    add-int v33, v32, v29

    :goto_a
    sub-int v19, v33, v22

    .restart local v19    # "rH":I
    goto :goto_6

    .end local v19    # "rH":I
    :cond_10
    add-int v33, p3, v17

    goto :goto_a

    .line 658
    .restart local v7    # "cell":I
    .restart local v8    # "col":I
    .restart local v9    # "img":Ljavax/microedition/lcdui/Image;
    .restart local v10    # "lH":I
    .restart local v11    # "lW":I
    .restart local v13    # "maxC":I
    .restart local v14    # "maxR":I
    .restart local v15    # "minC":I
    .restart local v16    # "minR":I
    .restart local v19    # "rH":I
    .restart local v23    # "row":I
    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 657
    .end local v7    # "cell":I
    :cond_12
    add-int/lit8 v23, v23, 0x1

    goto :goto_7

    .line 672
    .end local v8    # "col":I
    :cond_13
    const/16 v33, 0x0

    goto/16 :goto_1

    .line 676
    .end local v9    # "img":Ljavax/microedition/lcdui/Image;
    .end local v10    # "lH":I
    .end local v11    # "lW":I
    .end local v12    # "layer":Ljavax/microedition/lcdui/game/TiledLayer;
    .end local v13    # "maxC":I
    .end local v14    # "maxR":I
    .end local v15    # "minC":I
    .end local v16    # "minR":I
    .end local v19    # "rH":I
    .end local v20    # "rW":I
    .end local v21    # "rX":I
    .end local v22    # "rY":I
    .end local v23    # "row":I
    :cond_14
    const/16 v33, 0x1

    goto/16 :goto_1

    .line 501
    :catchall_0
    move-exception v33

    monitor-exit p0

    throw v33

    .line 522
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private declared-synchronized collidesWithPixelLevel(Ljava/lang/Object;II)Z
    .locals 75
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "oX"    # I
    .param p3, "oY"    # I

    .prologue
    .line 684
    monitor-enter p0

    const/16 v22, 0x1

    .line 685
    .local v22, "another":Z
    move-object/from16 v63, p0

    .line 688
    .local v63, "t":Ljavax/microedition/lcdui/game/Sprite;
    const/16 v69, 0x0

    .local v69, "tX":I
    const/16 v70, 0x0

    .local v70, "tY":I
    const/16 v68, 0x0

    .local v68, "tW":I
    const/16 v65, 0x0

    .line 689
    .local v65, "tH":I
    const/16 v50, 0x0

    .local v50, "oW":I
    const/16 v47, 0x0

    .line 691
    .local v47, "oH":I
    :goto_0
    if-eqz v22, :cond_9

    .line 709
    :try_start_0
    move-object/from16 v0, v63

    iget v3, v0, Ljavax/microedition/lcdui/game/Sprite;->collX:I

    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getWidth()I

    move-result v5

    if-ge v3, v5, :cond_0

    move-object/from16 v0, v63

    iget v3, v0, Ljavax/microedition/lcdui/game/Sprite;->collX:I

    move-object/from16 v0, v63

    iget v5, v0, Ljavax/microedition/lcdui/game/Sprite;->collWidth:I

    add-int/2addr v3, v5

    if-lez v3, :cond_0

    move-object/from16 v0, v63

    iget v3, v0, Ljavax/microedition/lcdui/game/Sprite;->collY:I

    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getHeight()I

    move-result v5

    if-ge v3, v5, :cond_0

    move-object/from16 v0, v63

    iget v3, v0, Ljavax/microedition/lcdui/game/Sprite;->collY:I

    move-object/from16 v0, v63

    iget v5, v0, Ljavax/microedition/lcdui/game/Sprite;->collHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v3, v5

    if-gtz v3, :cond_1

    .line 712
    :cond_0
    const/4 v3, 0x0

    .line 1026
    :goto_1
    monitor-exit p0

    return v3

    .line 714
    :cond_1
    :try_start_1
    move-object/from16 v0, v63

    iget v3, v0, Ljavax/microedition/lcdui/game/Sprite;->collX:I

    if-ltz v3, :cond_2

    move-object/from16 v0, v63

    iget v0, v0, Ljavax/microedition/lcdui/game/Sprite;->collX:I

    move/from16 v25, v0

    .line 715
    .local v25, "cX":I
    :goto_2
    move-object/from16 v0, v63

    iget v3, v0, Ljavax/microedition/lcdui/game/Sprite;->collY:I

    if-ltz v3, :cond_3

    move-object/from16 v0, v63

    iget v0, v0, Ljavax/microedition/lcdui/game/Sprite;->collY:I

    move/from16 v26, v0

    .line 716
    .local v26, "cY":I
    :goto_3
    move-object/from16 v0, v63

    iget v3, v0, Ljavax/microedition/lcdui/game/Sprite;->collX:I

    move-object/from16 v0, v63

    iget v5, v0, Ljavax/microedition/lcdui/game/Sprite;->collWidth:I

    add-int/2addr v3, v5

    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getWidth()I

    move-result v5

    if-ge v3, v5, :cond_4

    move-object/from16 v0, v63

    iget v3, v0, Ljavax/microedition/lcdui/game/Sprite;->collX:I

    move-object/from16 v0, v63

    iget v5, v0, Ljavax/microedition/lcdui/game/Sprite;->collWidth:I

    add-int/2addr v3, v5

    sub-int v24, v3, v25

    .line 717
    .local v24, "cW":I
    :goto_4
    move-object/from16 v0, v63

    iget v3, v0, Ljavax/microedition/lcdui/game/Sprite;->collY:I

    move-object/from16 v0, v63

    iget v5, v0, Ljavax/microedition/lcdui/game/Sprite;->collHeight:I

    add-int/2addr v3, v5

    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getHeight()I

    move-result v5

    if-ge v3, v5, :cond_5

    move-object/from16 v0, v63

    iget v3, v0, Ljavax/microedition/lcdui/game/Sprite;->collY:I

    move-object/from16 v0, v63

    iget v5, v0, Ljavax/microedition/lcdui/game/Sprite;->collHeight:I

    add-int/2addr v3, v5

    sub-int v23, v3, v26

    .line 719
    .local v23, "cH":I
    :goto_5
    move-object/from16 v0, v63

    iget v3, v0, Ljavax/microedition/lcdui/game/Sprite;->transform:I

    packed-switch v3, :pswitch_data_0

    .line 771
    const/4 v3, 0x0

    goto :goto_1

    .line 714
    .end local v23    # "cH":I
    .end local v24    # "cW":I
    .end local v25    # "cX":I
    .end local v26    # "cY":I
    :cond_2
    const/16 v25, 0x0

    goto :goto_2

    .line 715
    .restart local v25    # "cX":I
    :cond_3
    const/16 v26, 0x0

    goto :goto_3

    .line 716
    .restart local v26    # "cY":I
    :cond_4
    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getWidth()I

    move-result v3

    sub-int v24, v3, v25

    goto :goto_4

    .line 717
    .restart local v24    # "cW":I
    :cond_5
    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getHeight()I

    move-result v3

    sub-int v23, v3, v26

    goto :goto_5

    .line 721
    .restart local v23    # "cH":I
    :pswitch_0
    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v3

    add-int v61, v3, v25

    .line 722
    .local v61, "sX":I
    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v3

    add-int v62, v3, v26

    .line 723
    .local v62, "sY":I
    move/from16 v60, v24

    .line 724
    .local v60, "sW":I
    move/from16 v57, v23

    .line 774
    .local v57, "sH":I
    :goto_6
    move-object/from16 v0, p1

    move-object/from16 v1, v63

    if-eq v0, v1, :cond_8

    .line 775
    move/from16 v69, v61

    .line 776
    move/from16 v70, v62

    .line 777
    move/from16 v68, v60

    .line 778
    move/from16 v65, v57

    .line 779
    move-object/from16 v0, p1

    instance-of v3, v0, Ljavax/microedition/lcdui/game/Sprite;

    if-eqz v3, :cond_6

    .line 782
    move-object/from16 v0, p1

    check-cast v0, Ljavax/microedition/lcdui/game/Sprite;

    move-object/from16 v63, v0

    goto/16 :goto_0

    .line 727
    .end local v57    # "sH":I
    .end local v60    # "sW":I
    .end local v61    # "sX":I
    .end local v62    # "sY":I
    :pswitch_1
    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v3

    add-int v61, v3, v25

    .line 728
    .restart local v61    # "sX":I
    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v3

    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getHeight()I

    move-result v5

    sub-int v5, v5, v26

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v3, v5

    sub-int v62, v3, v23

    .line 729
    .restart local v62    # "sY":I
    move/from16 v60, v24

    .line 730
    .restart local v60    # "sW":I
    move/from16 v57, v23

    .line 731
    .restart local v57    # "sH":I
    goto :goto_6

    .line 733
    .end local v57    # "sH":I
    .end local v60    # "sW":I
    .end local v61    # "sX":I
    .end local v62    # "sY":I
    :pswitch_2
    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v3

    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getWidth()I

    move-result v5

    sub-int v5, v5, v25

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v3, v5

    sub-int v61, v3, v24

    .line 734
    .restart local v61    # "sX":I
    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v3

    add-int v62, v3, v26

    .line 735
    .restart local v62    # "sY":I
    move/from16 v60, v24

    .line 736
    .restart local v60    # "sW":I
    move/from16 v57, v23

    .line 737
    .restart local v57    # "sH":I
    goto :goto_6

    .line 739
    .end local v57    # "sH":I
    .end local v60    # "sW":I
    .end local v61    # "sX":I
    .end local v62    # "sY":I
    :pswitch_3
    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v3

    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getWidth()I

    move-result v5

    sub-int v5, v5, v25

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v3, v5

    sub-int v61, v3, v24

    .line 740
    .restart local v61    # "sX":I
    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v3

    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getHeight()I

    move-result v5

    sub-int v5, v5, v26

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v3, v5

    sub-int v62, v3, v23

    .line 741
    .restart local v62    # "sY":I
    move/from16 v60, v24

    .line 742
    .restart local v60    # "sW":I
    move/from16 v57, v23

    .line 743
    .restart local v57    # "sH":I
    goto :goto_6

    .line 745
    .end local v57    # "sH":I
    .end local v60    # "sW":I
    .end local v61    # "sX":I
    .end local v62    # "sY":I
    :pswitch_4
    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v3

    add-int v61, v3, v26

    .line 746
    .restart local v61    # "sX":I
    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v3

    add-int v62, v3, v25

    .line 747
    .restart local v62    # "sY":I
    move/from16 v60, v23

    .line 748
    .restart local v60    # "sW":I
    move/from16 v57, v24

    .line 749
    .restart local v57    # "sH":I
    goto/16 :goto_6

    .line 751
    .end local v57    # "sH":I
    .end local v60    # "sW":I
    .end local v61    # "sX":I
    .end local v62    # "sY":I
    :pswitch_5
    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v3

    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getHeight()I

    move-result v5

    sub-int v5, v5, v26

    add-int/2addr v3, v5

    sub-int v61, v3, v23

    .line 752
    .restart local v61    # "sX":I
    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v3

    add-int v62, v3, v25

    .line 753
    .restart local v62    # "sY":I
    move/from16 v60, v23

    .line 754
    .restart local v60    # "sW":I
    move/from16 v57, v24

    .line 755
    .restart local v57    # "sH":I
    goto/16 :goto_6

    .line 757
    .end local v57    # "sH":I
    .end local v60    # "sW":I
    .end local v61    # "sX":I
    .end local v62    # "sY":I
    :pswitch_6
    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v3

    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getHeight()I

    move-result v5

    sub-int v5, v5, v26

    add-int/2addr v3, v5

    sub-int v61, v3, v23

    .line 758
    .restart local v61    # "sX":I
    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v3

    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getWidth()I

    move-result v5

    sub-int v5, v5, v25

    add-int/2addr v3, v5

    sub-int v62, v3, v24

    .line 759
    .restart local v62    # "sY":I
    move/from16 v60, v23

    .line 760
    .restart local v60    # "sW":I
    move/from16 v57, v24

    .line 761
    .restart local v57    # "sH":I
    goto/16 :goto_6

    .line 763
    .end local v57    # "sH":I
    .end local v60    # "sW":I
    .end local v61    # "sX":I
    .end local v62    # "sY":I
    :pswitch_7
    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v3

    add-int v61, v3, v26

    .line 764
    .restart local v61    # "sX":I
    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v3

    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getWidth()I

    move-result v5

    sub-int v5, v5, v25

    add-int/2addr v3, v5

    sub-int v62, v3, v24

    .line 765
    .restart local v62    # "sY":I
    move/from16 v60, v23

    .line 766
    .restart local v60    # "sW":I
    move/from16 v57, v24

    .line 767
    .restart local v57    # "sH":I
    goto/16 :goto_6

    .line 783
    :cond_6
    move-object/from16 v0, p1

    instance-of v3, v0, Ljavax/microedition/lcdui/game/TiledLayer;

    if-eqz v3, :cond_7

    .line 784
    const/16 v22, 0x0

    .line 785
    move-object/from16 v0, p1

    check-cast v0, Ljavax/microedition/lcdui/game/TiledLayer;

    move-object/from16 v37, v0

    .line 786
    .local v37, "layer":Ljavax/microedition/lcdui/game/TiledLayer;
    invoke-virtual/range {v37 .. v37}, Ljavax/microedition/lcdui/game/TiledLayer;->getX()I

    move-result p2

    .line 787
    invoke-virtual/range {v37 .. v37}, Ljavax/microedition/lcdui/game/TiledLayer;->getY()I

    move-result p3

    .line 788
    invoke-virtual/range {v37 .. v37}, Ljavax/microedition/lcdui/game/TiledLayer;->getWidth()I

    move-result v50

    .line 789
    invoke-virtual/range {v37 .. v37}, Ljavax/microedition/lcdui/game/TiledLayer;->getHeight()I

    move-result v47

    .line 790
    goto/16 :goto_0

    .line 791
    .end local v37    # "layer":Ljavax/microedition/lcdui/game/TiledLayer;
    :cond_7
    const/16 v22, 0x0

    .line 792
    move-object/from16 v0, p1

    check-cast v0, Ljavax/microedition/lcdui/Image;

    move-object v11, v0

    .line 793
    .local v11, "img":Ljavax/microedition/lcdui/Image;
    invoke-virtual {v11}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v50

    .line 794
    invoke-virtual {v11}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v47

    .line 795
    goto/16 :goto_0

    .line 797
    .end local v11    # "img":Ljavax/microedition/lcdui/Image;
    :cond_8
    const/16 v22, 0x0

    .line 800
    move/from16 p2, v61

    .line 801
    move/from16 p3, v62

    .line 802
    move/from16 v50, v60

    .line 803
    move/from16 v47, v57

    goto/16 :goto_0

    .line 809
    .end local v23    # "cH":I
    .end local v24    # "cW":I
    .end local v25    # "cX":I
    .end local v26    # "cY":I
    .end local v57    # "sH":I
    .end local v60    # "sW":I
    .end local v61    # "sX":I
    .end local v62    # "sY":I
    :cond_9
    move/from16 v0, v69

    move/from16 v1, p2

    if-le v0, v1, :cond_a

    add-int v3, p2, v50

    move/from16 v0, v69

    if-lt v0, v3, :cond_a

    .line 810
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 811
    :cond_a
    move/from16 v0, v69

    move/from16 v1, p2

    if-ge v0, v1, :cond_b

    add-int v3, v69, v68

    move/from16 v0, p2

    if-gt v3, v0, :cond_b

    .line 812
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 813
    :cond_b
    move/from16 v0, v70

    move/from16 v1, p3

    if-le v0, v1, :cond_c

    add-int v3, p3, v47

    move/from16 v0, v70

    if-lt v0, v3, :cond_c

    .line 814
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 815
    :cond_c
    move/from16 v0, v70

    move/from16 v1, p3

    if-ge v0, v1, :cond_d

    add-int v3, v70, v65

    move/from16 v0, p3

    if-gt v3, v0, :cond_d

    .line 816
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 823
    :cond_d
    move/from16 v0, p2

    move/from16 v1, v69

    if-le v0, v1, :cond_11

    .line 824
    move/from16 v51, p2

    .line 825
    .local v51, "rX":I
    add-int v3, p2, v50

    add-int v5, v69, v68

    if-ge v3, v5, :cond_10

    add-int v3, p2, v50

    :goto_7
    sub-int v6, v3, v51

    .line 830
    .local v6, "rW":I
    :goto_8
    move/from16 v0, p3

    move/from16 v1, v70

    if-le v0, v1, :cond_14

    .line 831
    move/from16 v52, p3

    .line 832
    .local v52, "rY":I
    add-int v3, p3, v47

    add-int v5, v70, v65

    if-ge v3, v5, :cond_13

    add-int v3, p3, v47

    :goto_9
    sub-int v10, v3, v52

    .line 839
    .local v10, "rH":I
    :goto_a
    const/16 v64, 0x0

    .local v64, "tColIncr":I
    const/16 v67, 0x0

    .local v67, "tRowIncr":I
    const/16 v66, 0x0

    .line 840
    .local v66, "tOffset":I
    const/16 v46, 0x0

    .local v46, "oColIncr":I
    const/16 v49, 0x0

    .local v49, "oRowIncr":I
    const/16 v48, 0x0

    .line 842
    .local v48, "oOffset":I
    move-object/from16 v0, p0

    iget-object v3, v0, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    if-nez v3, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    move/from16 v29, v0

    .line 844
    .local v29, "f":I
    :goto_b
    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/game/Sprite;->getWidth()I

    move-result v31

    .line 845
    .local v31, "fW":I
    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/game/Sprite;->getHeight()I

    move-result v30

    .line 846
    .local v30, "fH":I
    move-object/from16 v0, p0

    iget v3, v0, Ljavax/microedition/lcdui/game/Sprite;->rows:I

    rem-int v3, v29, v3

    mul-int v32, v31, v3

    .line 847
    .local v32, "fX":I
    move-object/from16 v0, p0

    iget v3, v0, Ljavax/microedition/lcdui/game/Sprite;->rows:I

    div-int v3, v29, v3

    mul-int v33, v30, v3

    .line 849
    .local v33, "fY":I
    move-object/from16 v0, p0

    iget-object v3, v0, Ljavax/microedition/lcdui/game/Sprite;->rgbData:[I

    if-nez v3, :cond_e

    .line 850
    mul-int v3, v31, v30

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Ljavax/microedition/lcdui/game/Sprite;->rgbData:[I

    .line 851
    mul-int v3, v31, v30

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Ljavax/microedition/lcdui/game/Sprite;->rgbDataAux:[I

    .line 854
    :cond_e
    move-object/from16 v63, p0

    .line 855
    const/16 v22, 0x1

    .line 856
    move-object/from16 v0, p0

    iget-object v4, v0, Ljavax/microedition/lcdui/game/Sprite;->rgbData:[I

    .line 858
    .local v4, "tRgbData":[I
    :cond_f
    :goto_c
    if-eqz v22, :cond_26

    .line 863
    move-object/from16 v0, v63

    iget v3, v0, Ljavax/microedition/lcdui/game/Sprite;->transform:I

    packed-switch v3, :pswitch_data_1

    .line 915
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 825
    .end local v4    # "tRgbData":[I
    .end local v6    # "rW":I
    .end local v10    # "rH":I
    .end local v29    # "f":I
    .end local v30    # "fH":I
    .end local v31    # "fW":I
    .end local v32    # "fX":I
    .end local v33    # "fY":I
    .end local v46    # "oColIncr":I
    .end local v48    # "oOffset":I
    .end local v49    # "oRowIncr":I
    .end local v52    # "rY":I
    .end local v64    # "tColIncr":I
    .end local v66    # "tOffset":I
    .end local v67    # "tRowIncr":I
    :cond_10
    add-int v3, v69, v68

    goto :goto_7

    .line 827
    .end local v51    # "rX":I
    :cond_11
    move/from16 v51, v69

    .line 828
    .restart local v51    # "rX":I
    add-int v3, v69, v68

    add-int v5, p2, v50

    if-ge v3, v5, :cond_12

    add-int v3, v69, v68

    :goto_d
    sub-int v6, v3, v51

    .restart local v6    # "rW":I
    goto :goto_8

    .end local v6    # "rW":I
    :cond_12
    add-int v3, p2, v50

    goto :goto_d

    .line 832
    .restart local v6    # "rW":I
    .restart local v52    # "rY":I
    :cond_13
    add-int v3, v70, v65

    goto :goto_9

    .line 834
    .end local v52    # "rY":I
    :cond_14
    move/from16 v52, v70

    .line 835
    .restart local v52    # "rY":I
    add-int v3, v70, v65

    add-int v5, p3, v47

    if-ge v3, v5, :cond_15

    add-int v3, v70, v65

    :goto_e
    sub-int v10, v3, v52

    .restart local v10    # "rH":I
    goto :goto_a

    .end local v10    # "rH":I
    :cond_15
    add-int v3, p3, v47

    goto :goto_e

    .line 842
    .restart local v10    # "rH":I
    .restart local v46    # "oColIncr":I
    .restart local v48    # "oOffset":I
    .restart local v49    # "oRowIncr":I
    .restart local v64    # "tColIncr":I
    .restart local v66    # "tOffset":I
    .restart local v67    # "tRowIncr":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    move-object/from16 v0, p0

    iget v5, v0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    aget v29, v3, v5

    goto :goto_b

    .line 865
    .restart local v4    # "tRgbData":[I
    .restart local v29    # "f":I
    .restart local v30    # "fH":I
    .restart local v31    # "fW":I
    .restart local v32    # "fX":I
    .restart local v33    # "fY":I
    :pswitch_8
    move-object/from16 v0, v63

    iget-object v3, v0, Ljavax/microedition/lcdui/game/Sprite;->img:Ljavax/microedition/lcdui/Image;

    const/4 v5, 0x0

    add-int v7, v32, v51

    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v8

    sub-int/2addr v7, v8

    add-int v8, v33, v52

    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v9

    sub-int/2addr v8, v9

    move v9, v6

    invoke-virtual/range {v3 .. v10}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)V

    .line 866
    const/16 v58, 0x0

    .line 867
    .local v58, "sOffset":I
    const/16 v56, 0x1

    .line 868
    .local v56, "sColIncr":I
    const/16 v59, 0x0

    .line 918
    .local v59, "sRowIncr":I
    :goto_f
    move-object/from16 v0, p1

    move-object/from16 v1, v63

    if-eq v0, v1, :cond_25

    .line 919
    move/from16 v66, v58

    .line 920
    move/from16 v67, v59

    .line 921
    move/from16 v64, v56

    .line 923
    move-object/from16 v0, p1

    instance-of v3, v0, Ljavax/microedition/lcdui/game/Sprite;

    if-eqz v3, :cond_18

    .line 926
    move-object/from16 v0, p1

    check-cast v0, Ljavax/microedition/lcdui/game/Sprite;

    move-object/from16 v63, v0

    .line 927
    move-object/from16 v0, p0

    iget-object v4, v0, Ljavax/microedition/lcdui/game/Sprite;->rgbDataAux:[I

    .line 929
    move-object/from16 v0, v63

    iget-object v3, v0, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    if-nez v3, :cond_17

    move-object/from16 v0, v63

    iget v0, v0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    move/from16 v29, v0

    .line 931
    :goto_10
    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getWidth()I

    move-result v31

    .line 932
    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getHeight()I

    move-result v30

    .line 933
    move-object/from16 v0, v63

    iget v3, v0, Ljavax/microedition/lcdui/game/Sprite;->rows:I

    rem-int v3, v29, v3

    mul-int v32, v31, v3

    .line 934
    move-object/from16 v0, v63

    iget v3, v0, Ljavax/microedition/lcdui/game/Sprite;->rows:I

    div-int v3, v29, v3

    mul-int v33, v30, v3

    goto/16 :goto_c

    .line 871
    .end local v56    # "sColIncr":I
    .end local v58    # "sOffset":I
    .end local v59    # "sRowIncr":I
    :pswitch_9
    move-object/from16 v0, v63

    iget-object v3, v0, Ljavax/microedition/lcdui/game/Sprite;->img:Ljavax/microedition/lcdui/Image;

    const/4 v5, 0x0

    add-int v7, v32, v31

    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v8

    sub-int v8, v51, v8

    sub-int/2addr v7, v8

    sub-int/2addr v7, v6

    add-int/lit8 v7, v7, -0x1

    add-int v8, v33, v30

    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v9

    sub-int v9, v52, v9

    sub-int/2addr v8, v9

    sub-int/2addr v8, v10

    add-int/lit8 v8, v8, -0x1

    move v9, v6

    invoke-virtual/range {v3 .. v10}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)V

    .line 872
    mul-int v3, v10, v6

    add-int/lit8 v58, v3, -0x1

    .line 873
    .restart local v58    # "sOffset":I
    const/16 v56, -0x1

    .line 874
    .restart local v56    # "sColIncr":I
    const/16 v59, 0x0

    .line 875
    .restart local v59    # "sRowIncr":I
    goto :goto_f

    .line 877
    .end local v56    # "sColIncr":I
    .end local v58    # "sOffset":I
    .end local v59    # "sRowIncr":I
    :pswitch_a
    move-object/from16 v0, v63

    iget-object v3, v0, Ljavax/microedition/lcdui/game/Sprite;->img:Ljavax/microedition/lcdui/Image;

    const/4 v5, 0x0

    add-int v7, v32, v31

    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v8

    sub-int v8, v51, v8

    sub-int/2addr v7, v8

    sub-int/2addr v7, v6

    add-int/lit8 v7, v7, -0x1

    add-int v8, v33, v52

    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v9

    sub-int/2addr v8, v9

    move v9, v6

    invoke-virtual/range {v3 .. v10}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)V

    .line 878
    add-int/lit8 v58, v6, -0x1

    .line 879
    .restart local v58    # "sOffset":I
    const/16 v56, -0x1

    .line 880
    .restart local v56    # "sColIncr":I
    shl-int/lit8 v59, v6, 0x1

    .line 881
    .restart local v59    # "sRowIncr":I
    goto/16 :goto_f

    .line 883
    .end local v56    # "sColIncr":I
    .end local v58    # "sOffset":I
    .end local v59    # "sRowIncr":I
    :pswitch_b
    move-object/from16 v0, v63

    iget-object v3, v0, Ljavax/microedition/lcdui/game/Sprite;->img:Ljavax/microedition/lcdui/Image;

    const/4 v5, 0x0

    add-int v7, v32, v51

    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v8

    sub-int/2addr v7, v8

    add-int v8, v33, v30

    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v9

    sub-int v9, v52, v9

    sub-int/2addr v8, v9

    sub-int/2addr v8, v10

    add-int/lit8 v8, v8, -0x1

    move v9, v6

    invoke-virtual/range {v3 .. v10}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)V

    .line 884
    add-int/lit8 v3, v10, -0x1

    mul-int v58, v3, v6

    .line 885
    .restart local v58    # "sOffset":I
    const/16 v56, 0x1

    .line 886
    .restart local v56    # "sColIncr":I
    shl-int/lit8 v3, v6, 0x1

    neg-int v0, v3

    move/from16 v59, v0

    .line 887
    .restart local v59    # "sRowIncr":I
    goto/16 :goto_f

    .line 889
    .end local v56    # "sColIncr":I
    .end local v58    # "sOffset":I
    .end local v59    # "sRowIncr":I
    :pswitch_c
    move-object/from16 v0, v63

    iget-object v7, v0, Ljavax/microedition/lcdui/game/Sprite;->img:Ljavax/microedition/lcdui/Image;

    const/4 v9, 0x0

    add-int v3, v32, v52

    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v5

    sub-int v11, v3, v5

    add-int v3, v33, v30

    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v5

    sub-int v5, v51, v5

    sub-int/2addr v3, v5

    sub-int v12, v3, v6

    move-object v8, v4

    move v13, v10

    move v14, v6

    invoke-virtual/range {v7 .. v14}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)V

    .line 890
    add-int/lit8 v3, v6, -0x1

    mul-int v58, v3, v10

    .line 891
    .restart local v58    # "sOffset":I
    neg-int v0, v10

    move/from16 v56, v0

    .line 892
    .restart local v56    # "sColIncr":I
    mul-int v3, v10, v6

    add-int/lit8 v59, v3, 0x1

    .line 893
    .restart local v59    # "sRowIncr":I
    goto/16 :goto_f

    .line 895
    .end local v56    # "sColIncr":I
    .end local v58    # "sOffset":I
    .end local v59    # "sRowIncr":I
    :pswitch_d
    move-object/from16 v0, v63

    iget-object v7, v0, Ljavax/microedition/lcdui/game/Sprite;->img:Ljavax/microedition/lcdui/Image;

    const/4 v9, 0x0

    add-int v3, v32, v31

    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v5

    sub-int v5, v52, v5

    sub-int/2addr v3, v5

    sub-int v11, v3, v10

    add-int v3, v33, v30

    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v5

    sub-int v5, v51, v5

    sub-int/2addr v3, v5

    sub-int v12, v3, v6

    move-object v8, v4

    move v13, v10

    move v14, v6

    invoke-virtual/range {v7 .. v14}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)V

    .line 896
    mul-int v3, v10, v6

    add-int/lit8 v58, v3, -0x1

    .line 897
    .restart local v58    # "sOffset":I
    neg-int v0, v10

    move/from16 v56, v0

    .line 898
    .restart local v56    # "sColIncr":I
    mul-int v3, v10, v6

    add-int/lit8 v59, v3, -0x1

    .line 899
    .restart local v59    # "sRowIncr":I
    goto/16 :goto_f

    .line 901
    .end local v56    # "sColIncr":I
    .end local v58    # "sOffset":I
    .end local v59    # "sRowIncr":I
    :pswitch_e
    move-object/from16 v0, v63

    iget-object v7, v0, Ljavax/microedition/lcdui/game/Sprite;->img:Ljavax/microedition/lcdui/Image;

    const/4 v9, 0x0

    add-int v3, v32, v52

    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v5

    sub-int v11, v3, v5

    add-int v3, v33, v51

    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v5

    sub-int v12, v3, v5

    move-object v8, v4

    move v13, v10

    move v14, v6

    invoke-virtual/range {v7 .. v14}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)V

    .line 902
    const/16 v58, 0x0

    .line 903
    .restart local v58    # "sOffset":I
    move/from16 v56, v10

    .line 904
    .restart local v56    # "sColIncr":I
    mul-int v3, v10, v6

    neg-int v3, v3

    add-int/lit8 v59, v3, 0x1

    .line 905
    .restart local v59    # "sRowIncr":I
    goto/16 :goto_f

    .line 907
    .end local v56    # "sColIncr":I
    .end local v58    # "sOffset":I
    .end local v59    # "sRowIncr":I
    :pswitch_f
    move-object/from16 v0, v63

    iget-object v7, v0, Ljavax/microedition/lcdui/game/Sprite;->img:Ljavax/microedition/lcdui/Image;

    const/4 v9, 0x0

    add-int v3, v32, v31

    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v5

    sub-int v5, v52, v5

    sub-int/2addr v3, v5

    sub-int v11, v3, v10

    add-int v3, v33, v51

    invoke-virtual/range {v63 .. v63}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v5

    sub-int v12, v3, v5

    move-object v8, v4

    move v13, v10

    move v14, v6

    invoke-virtual/range {v7 .. v14}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)V

    .line 908
    add-int/lit8 v58, v10, -0x1

    .line 909
    .restart local v58    # "sOffset":I
    move/from16 v56, v10

    .line 910
    .restart local v56    # "sColIncr":I
    mul-int v3, v10, v6

    neg-int v3, v3

    add-int/lit8 v59, v3, -0x1

    .line 911
    .restart local v59    # "sRowIncr":I
    goto/16 :goto_f

    .line 929
    :cond_17
    move-object/from16 v0, v63

    iget-object v3, v0, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    move-object/from16 v0, v63

    iget v5, v0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    aget v29, v3, v5

    goto/16 :goto_10

    .line 935
    :cond_18
    move-object/from16 v0, p1

    instance-of v3, v0, Ljavax/microedition/lcdui/game/TiledLayer;

    if-eqz v3, :cond_24

    .line 936
    const/16 v22, 0x0

    .line 937
    move-object/from16 v0, p1

    check-cast v0, Ljavax/microedition/lcdui/game/TiledLayer;

    move-object/from16 v37, v0

    .line 938
    .restart local v37    # "layer":Ljavax/microedition/lcdui/game/TiledLayer;
    move-object/from16 v0, v37

    iget-object v11, v0, Ljavax/microedition/lcdui/game/TiledLayer;->img:Ljavax/microedition/lcdui/Image;

    .line 940
    .restart local v11    # "img":Ljavax/microedition/lcdui/Image;
    const/16 v48, 0x0

    .line 941
    const/16 v46, 0x1

    .line 942
    const/16 v49, 0x0

    .line 944
    invoke-virtual/range {v37 .. v37}, Ljavax/microedition/lcdui/game/TiledLayer;->getCellWidth()I

    move-result v36

    .line 945
    .local v36, "lW":I
    invoke-virtual/range {v37 .. v37}, Ljavax/microedition/lcdui/game/TiledLayer;->getCellHeight()I

    move-result v35

    .line 947
    .local v35, "lH":I
    sub-int v3, v51, p2

    div-int v42, v3, v36

    .line 948
    .local v42, "minC":I
    sub-int v3, v52, p3

    div-int v43, v3, v35

    .line 949
    .local v43, "minR":I
    sub-int v3, v51, p2

    add-int/2addr v3, v6

    add-int/lit8 v3, v3, -0x1

    div-int v38, v3, v36

    .line 950
    .local v38, "maxC":I
    sub-int v3, v52, p3

    add-int/2addr v3, v10

    add-int/lit8 v3, v3, -0x1

    div-int v39, v3, v35

    .line 954
    .local v39, "maxR":I
    move/from16 v55, v43

    .local v55, "row":I
    :goto_11
    move/from16 v0, v55

    move/from16 v1, v39

    if-gt v0, v1, :cond_f

    .line 955
    move/from16 v28, v42

    .local v28, "col":I
    :goto_12
    move/from16 v0, v28

    move/from16 v1, v38

    if-gt v0, v1, :cond_23

    .line 956
    move-object/from16 v0, v37

    move/from16 v1, v28

    move/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Ljavax/microedition/lcdui/game/TiledLayer;->getCell(II)I

    move-result v27

    .line 959
    .local v27, "cell":I
    if-gez v27, :cond_19

    .line 960
    move-object/from16 v0, v37

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/game/TiledLayer;->getAnimatedTile(I)I

    move-result v27

    .line 962
    :cond_19
    move/from16 v0, v28

    move/from16 v1, v42

    if-ne v0, v1, :cond_1a

    sub-int v3, v51, p2

    rem-int v44, v3, v36

    .line 963
    .local v44, "minX":I
    :goto_13
    move/from16 v0, v55

    move/from16 v1, v43

    if-ne v0, v1, :cond_1b

    sub-int v3, v52, p3

    rem-int v45, v3, v35

    .line 964
    .local v45, "minY":I
    :goto_14
    move/from16 v0, v28

    move/from16 v1, v38

    if-ne v0, v1, :cond_1c

    add-int v3, v51, v6

    sub-int v3, v3, p2

    add-int/lit8 v3, v3, -0x1

    rem-int v40, v3, v36

    .line 965
    .local v40, "maxX":I
    :goto_15
    move/from16 v0, v55

    move/from16 v1, v39

    if-ne v0, v1, :cond_1d

    add-int v3, v52, v10

    sub-int v3, v3, p3

    add-int/lit8 v3, v3, -0x1

    rem-int v41, v3, v35

    .line 968
    .local v41, "maxY":I
    :goto_16
    sub-int v3, v55, v43

    mul-int v3, v3, v35

    mul-int/2addr v3, v6

    sub-int v5, v28, v42

    mul-int v5, v5, v36

    add-int/2addr v5, v3

    move/from16 v0, v28

    move/from16 v1, v42

    if-ne v0, v1, :cond_1e

    const/4 v3, 0x0

    :goto_17
    sub-int/2addr v5, v3

    move/from16 v0, v55

    move/from16 v1, v43

    if-ne v0, v1, :cond_1f

    const/4 v3, 0x0

    :goto_18
    mul-int/2addr v3, v6

    sub-int v13, v5, v3

    .line 976
    .local v13, "c":I
    if-nez v27, :cond_21

    .line 978
    move/from16 v73, v45

    .local v73, "y":I
    :goto_19
    move/from16 v0, v73

    move/from16 v1, v41

    if-gt v0, v1, :cond_22

    .line 980
    move/from16 v71, v44

    .local v71, "x":I
    :goto_1a
    move/from16 v0, v71

    move/from16 v1, v40

    if-gt v0, v1, :cond_20

    .line 981
    move-object/from16 v0, p0

    iget-object v3, v0, Ljavax/microedition/lcdui/game/Sprite;->rgbDataAux:[I

    const/4 v5, 0x0

    aput v5, v3, v13

    .line 980
    add-int/lit8 v71, v71, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_1a

    .line 962
    .end local v13    # "c":I
    .end local v40    # "maxX":I
    .end local v41    # "maxY":I
    .end local v44    # "minX":I
    .end local v45    # "minY":I
    .end local v71    # "x":I
    .end local v73    # "y":I
    :cond_1a
    const/16 v44, 0x0

    goto :goto_13

    .line 963
    .restart local v44    # "minX":I
    :cond_1b
    const/16 v45, 0x0

    goto :goto_14

    .line 964
    .restart local v45    # "minY":I
    :cond_1c
    add-int/lit8 v40, v36, -0x1

    goto :goto_15

    .line 965
    .restart local v40    # "maxX":I
    :cond_1d
    add-int/lit8 v41, v35, -0x1

    goto :goto_16

    .line 968
    .restart local v41    # "maxY":I
    :cond_1e
    sub-int v3, v51, p2

    rem-int v3, v3, v36

    goto :goto_17

    :cond_1f
    sub-int v3, v52, p3

    rem-int v3, v3, v35

    goto :goto_18

    .line 978
    .restart local v13    # "c":I
    .restart local v71    # "x":I
    .restart local v73    # "y":I
    :cond_20
    add-int/lit8 v73, v73, 0x1

    .line 979
    sub-int v3, v40, v44

    add-int/lit8 v3, v3, 0x1

    sub-int v3, v6, v3

    add-int/2addr v13, v3

    goto :goto_19

    .line 986
    .end local v71    # "x":I
    .end local v73    # "y":I
    :cond_21
    add-int/lit8 v27, v27, -0x1

    .line 988
    invoke-virtual {v11}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v3

    invoke-virtual/range {v37 .. v37}, Ljavax/microedition/lcdui/game/TiledLayer;->getCellWidth()I

    move-result v5

    div-int v34, v3, v5

    .line 989
    .local v34, "imgCols":I
    rem-int v3, v27, v34

    mul-int v72, v36, v3

    .line 990
    .local v72, "xSrc":I
    div-int v3, v27, v34

    mul-int v74, v3, v35

    .line 991
    .local v74, "ySrc":I
    move-object/from16 v0, p0

    iget-object v12, v0, Ljavax/microedition/lcdui/game/Sprite;->rgbDataAux:[I

    add-int v15, v72, v44

    add-int v16, v74, v45

    sub-int v3, v40, v44

    add-int/lit8 v17, v3, 0x1

    sub-int v3, v41, v45

    add-int/lit8 v18, v3, 0x1

    move v14, v6

    invoke-virtual/range {v11 .. v18}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)V

    .line 955
    .end local v34    # "imgCols":I
    .end local v72    # "xSrc":I
    .end local v74    # "ySrc":I
    :cond_22
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_12

    .line 954
    .end local v13    # "c":I
    .end local v27    # "cell":I
    .end local v40    # "maxX":I
    .end local v41    # "maxY":I
    .end local v44    # "minX":I
    .end local v45    # "minY":I
    :cond_23
    add-int/lit8 v55, v55, 0x1

    goto/16 :goto_11

    .line 999
    .end local v11    # "img":Ljavax/microedition/lcdui/Image;
    .end local v28    # "col":I
    .end local v35    # "lH":I
    .end local v36    # "lW":I
    .end local v37    # "layer":Ljavax/microedition/lcdui/game/TiledLayer;
    .end local v38    # "maxC":I
    .end local v39    # "maxR":I
    .end local v42    # "minC":I
    .end local v43    # "minR":I
    .end local v55    # "row":I
    :cond_24
    const/16 v22, 0x0

    .line 1000
    move-object/from16 v0, p1

    check-cast v0, Ljavax/microedition/lcdui/Image;

    move-object v11, v0

    .line 1002
    .restart local v11    # "img":Ljavax/microedition/lcdui/Image;
    move-object/from16 v0, p0

    iget-object v15, v0, Ljavax/microedition/lcdui/game/Sprite;->rgbDataAux:[I

    const/16 v16, 0x0

    sub-int v18, v51, p2

    sub-int v19, v52, p3

    move-object v14, v11

    move/from16 v17, v6

    move/from16 v20, v6

    move/from16 v21, v10

    invoke-virtual/range {v14 .. v21}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)V

    .line 1003
    const/16 v48, 0x0

    .line 1004
    const/16 v46, 0x1

    .line 1005
    const/16 v49, 0x0

    .line 1006
    goto/16 :goto_c

    .line 1010
    .end local v11    # "img":Ljavax/microedition/lcdui/Image;
    :cond_25
    const/16 v22, 0x0

    .line 1011
    move/from16 v48, v58

    .line 1012
    move/from16 v49, v59

    .line 1013
    move/from16 v46, v56

    goto/16 :goto_c

    .line 1017
    .end local v56    # "sColIncr":I
    .end local v58    # "sOffset":I
    .end local v59    # "sRowIncr":I
    :cond_26
    const/16 v55, 0x0

    .restart local v55    # "row":I
    :goto_1b
    move/from16 v0, v55

    if-ge v0, v10, :cond_29

    .line 1018
    const/16 v28, 0x0

    .restart local v28    # "col":I
    :goto_1c
    move/from16 v0, v28

    if-ge v0, v6, :cond_28

    .line 1019
    move-object/from16 v0, p0

    iget-object v3, v0, Ljavax/microedition/lcdui/game/Sprite;->rgbData:[I

    aget v53, v3, v66

    .line 1020
    .local v53, "rgb":I
    move-object/from16 v0, p0

    iget-object v3, v0, Ljavax/microedition/lcdui/game/Sprite;->rgbDataAux:[I

    aget v54, v3, v48
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1022
    .local v54, "rgbA":I
    and-int v3, v53, v54

    shr-int/lit8 v3, v3, 0x18

    const/4 v5, -0x1

    if-ne v3, v5, :cond_27

    .line 1023
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 1018
    :cond_27
    add-int/lit8 v28, v28, 0x1

    add-int v66, v66, v64

    add-int v48, v48, v46

    goto :goto_1c

    .line 1017
    .end local v53    # "rgb":I
    .end local v54    # "rgbA":I
    :cond_28
    add-int/lit8 v55, v55, 0x1

    add-int v66, v66, v67

    add-int v48, v48, v49

    goto :goto_1b

    .line 1026
    .end local v28    # "col":I
    :cond_29
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 684
    .end local v4    # "tRgbData":[I
    .end local v6    # "rW":I
    .end local v10    # "rH":I
    .end local v29    # "f":I
    .end local v30    # "fH":I
    .end local v31    # "fW":I
    .end local v32    # "fX":I
    .end local v33    # "fY":I
    .end local v46    # "oColIncr":I
    .end local v48    # "oOffset":I
    .end local v49    # "oRowIncr":I
    .end local v51    # "rX":I
    .end local v52    # "rY":I
    .end local v55    # "row":I
    .end local v64    # "tColIncr":I
    .end local v66    # "tOffset":I
    .end local v67    # "tRowIncr":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 719
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 863
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_e
        :pswitch_c
        :pswitch_f
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public final collidesWith(Ljavax/microedition/lcdui/Image;IIZ)Z
    .locals 1
    .param p1, "image"    # Ljavax/microedition/lcdui/Image;
    .param p2, "iX"    # I
    .param p3, "iY"    # I
    .param p4, "pixelLevel"    # Z

    .prologue
    .line 116
    if-nez p1, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 120
    :cond_0
    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/Sprite;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    const/4 v0, 0x0

    .line 126
    :goto_0
    return v0

    .line 123
    :cond_1
    if-eqz p4, :cond_2

    .line 124
    invoke-direct {p0, p1, p2, p3}, Ljavax/microedition/lcdui/game/Sprite;->collidesWithPixelLevel(Ljava/lang/Object;II)Z

    move-result v0

    goto :goto_0

    .line 126
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Ljavax/microedition/lcdui/game/Sprite;->collidesWith(Ljava/lang/Object;II)Z

    move-result v0

    goto :goto_0
.end method

.method public final collidesWith(Ljavax/microedition/lcdui/game/Sprite;Z)Z
    .locals 2
    .param p1, "otherSprite"    # Ljavax/microedition/lcdui/game/Sprite;
    .param p2, "pixelLevel"    # Z

    .prologue
    const/4 v0, 0x0

    .line 157
    if-nez p1, :cond_0

    .line 158
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 162
    :cond_0
    invoke-virtual {p1}, Ljavax/microedition/lcdui/game/Sprite;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/Sprite;->isVisible()Z

    move-result v1

    if-nez v1, :cond_2

    .line 168
    :cond_1
    :goto_0
    return v0

    .line 165
    :cond_2
    if-eqz p2, :cond_3

    .line 166
    invoke-direct {p0, p1, v0, v0}, Ljavax/microedition/lcdui/game/Sprite;->collidesWithPixelLevel(Ljava/lang/Object;II)Z

    move-result v0

    goto :goto_0

    .line 168
    :cond_3
    invoke-direct {p0, p1, v0, v0}, Ljavax/microedition/lcdui/game/Sprite;->collidesWith(Ljava/lang/Object;II)Z

    move-result v0

    goto :goto_0
.end method

.method public final collidesWith(Ljavax/microedition/lcdui/game/TiledLayer;Z)Z
    .locals 2
    .param p1, "layer"    # Ljavax/microedition/lcdui/game/TiledLayer;
    .param p2, "pixelLevel"    # Z

    .prologue
    const/4 v0, 0x0

    .line 135
    if-nez p1, :cond_0

    .line 136
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 140
    :cond_0
    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/Sprite;->isVisible()Z

    move-result v1

    if-nez v1, :cond_2

    .line 150
    :cond_1
    :goto_0
    return v0

    .line 144
    :cond_2
    invoke-virtual {p1}, Ljavax/microedition/lcdui/game/TiledLayer;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/Sprite;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    if-eqz p2, :cond_3

    .line 148
    invoke-direct {p0, p1, v0, v0}, Ljavax/microedition/lcdui/game/Sprite;->collidesWithPixelLevel(Ljava/lang/Object;II)Z

    move-result v0

    goto :goto_0

    .line 150
    :cond_3
    invoke-direct {p0, p1, v0, v0}, Ljavax/microedition/lcdui/game/Sprite;->collidesWith(Ljava/lang/Object;II)Z

    move-result v0

    goto :goto_0
.end method

.method public defineCollisionRectangle(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 232
    if-ltz p3, :cond_0

    if-gez p4, :cond_1

    .line 233
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 234
    :cond_1
    iput p1, p0, Ljavax/microedition/lcdui/game/Sprite;->collX:I

    .line 235
    iput p2, p0, Ljavax/microedition/lcdui/game/Sprite;->collY:I

    .line 236
    iput p3, p0, Ljavax/microedition/lcdui/game/Sprite;->collWidth:I

    .line 237
    iput p4, p0, Ljavax/microedition/lcdui/game/Sprite;->collHeight:I

    .line 238
    return-void
.end method

.method public defineReferencePixel(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 172
    iput p1, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    .line 173
    iput p2, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    .line 174
    return-void
.end method

.method public final getFrame()I
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    return v0
.end method

.method public getFrameSequenceLength()I
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    if-nez v0, :cond_0

    iget v0, p0, Ljavax/microedition/lcdui/game/Sprite;->rows:I

    iget v1, p0, Ljavax/microedition/lcdui/game/Sprite;->cols:I

    mul-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    array-length v0, v0

    goto :goto_0
.end method

.method public getRawFrameCount()I
    .locals 2

    .prologue
    .line 386
    iget v0, p0, Ljavax/microedition/lcdui/game/Sprite;->cols:I

    iget v1, p0, Ljavax/microedition/lcdui/game/Sprite;->rows:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getRefPixelX()I
    .locals 2

    .prologue
    .line 177
    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v0

    iget v1, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getRefPixelY()I
    .locals 2

    .prologue
    .line 181
    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v0

    iget v1, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public nextFrame()V
    .locals 3

    .prologue
    .line 282
    iget v1, p0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    iget-object v0, p0, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    if-nez v0, :cond_0

    iget v0, p0, Ljavax/microedition/lcdui/game/Sprite;->rows:I

    iget v2, p0, Ljavax/microedition/lcdui/game/Sprite;->cols:I

    mul-int/2addr v0, v2

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_1

    .line 283
    const/4 v0, 0x0

    iput v0, p0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    .line 286
    :goto_1
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    array-length v0, v0

    goto :goto_0

    .line 285
    :cond_1
    iget v0, p0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    goto :goto_1
.end method

.method public final paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 11
    .param p1, "g"    # Ljavax/microedition/lcdui/Graphics;

    .prologue
    .line 373
    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/Sprite;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    :goto_0
    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    if-nez v0, :cond_1

    iget v10, p0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    .line 377
    .local v10, "f":I
    :goto_1
    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/Sprite;->getWidth()I

    move-result v4

    .line 378
    .local v4, "w":I
    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/Sprite;->getHeight()I

    move-result v5

    .line 379
    .local v5, "h":I
    iget v0, p0, Ljavax/microedition/lcdui/game/Sprite;->cols:I

    rem-int v0, v10, v0

    mul-int v2, v4, v0

    .line 380
    .local v2, "fx":I
    iget v0, p0, Ljavax/microedition/lcdui/game/Sprite;->cols:I

    div-int v0, v10, v0

    mul-int v3, v5, v0

    .line 382
    .local v3, "fy":I
    iget-object v1, p0, Ljavax/microedition/lcdui/game/Sprite;->img:Ljavax/microedition/lcdui/Image;

    iget v6, p0, Ljavax/microedition/lcdui/game/Sprite;->transform:I

    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v7

    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v8

    const/16 v9, 0x14

    move-object v0, p1

    invoke-virtual/range {v0 .. v9}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    goto :goto_0

    .line 376
    .end local v2    # "fx":I
    .end local v3    # "fy":I
    .end local v4    # "w":I
    .end local v5    # "h":I
    .end local v10    # "f":I
    :cond_1
    iget-object v0, p0, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    iget v1, p0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    aget v10, v0, v1

    goto :goto_1
.end method

.method public prevFrame()V
    .locals 2

    .prologue
    .line 289
    iget v0, p0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    if-nez v0, :cond_1

    .line 290
    iget-object v0, p0, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    if-nez v0, :cond_0

    iget v0, p0, Ljavax/microedition/lcdui/game/Sprite;->rows:I

    iget v1, p0, Ljavax/microedition/lcdui/game/Sprite;->cols:I

    mul-int/2addr v0, v1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    .line 293
    :goto_1
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    array-length v0, v0

    goto :goto_0

    .line 292
    :cond_1
    iget v0, p0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    goto :goto_1
.end method

.method public setFrame(I)V
    .locals 3
    .param p1, "frame"    # I

    .prologue
    .line 274
    iget-object v1, p0, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    if-nez v1, :cond_1

    iget v1, p0, Ljavax/microedition/lcdui/game/Sprite;->rows:I

    iget v2, p0, Ljavax/microedition/lcdui/game/Sprite;->cols:I

    mul-int v0, v1, v2

    .line 275
    .local v0, "l":I
    :goto_0
    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_2

    .line 276
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 274
    .end local v0    # "l":I
    :cond_1
    iget-object v1, p0, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    array-length v0, v1

    goto :goto_0

    .line 278
    .restart local v0    # "l":I
    :cond_2
    iput p1, p0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    .line 279
    return-void
.end method

.method public setFrameSequence([I)V
    .locals 6
    .param p1, "sequence"    # [I

    .prologue
    .line 241
    if-nez p1, :cond_0

    .line 243
    const/4 v4, 0x0

    iput-object v4, p0, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    .line 263
    :goto_0
    return-void

    .line 247
    :cond_0
    iget v4, p0, Ljavax/microedition/lcdui/game/Sprite;->rows:I

    iget v5, p0, Ljavax/microedition/lcdui/game/Sprite;->cols:I

    mul-int/2addr v4, v5

    add-int/lit8 v2, v4, -0x1

    .line 249
    .local v2, "max":I
    array-length v1, p1

    .line 251
    .local v1, "l":I
    if-nez v1, :cond_1

    .line 252
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 254
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 255
    aget v3, p1, v0

    .line 256
    .local v3, "value":I
    if-gt v3, v2, :cond_2

    if-gez v3, :cond_3

    .line 257
    :cond_2
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 254
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 260
    .end local v3    # "value":I
    :cond_4
    iput-object p1, p0, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    .line 262
    const/4 v4, 0x0

    iput v4, p0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    goto :goto_0
.end method

.method public setImage(Ljavax/microedition/lcdui/Image;II)V
    .locals 9
    .param p1, "img"    # Ljavax/microedition/lcdui/Image;
    .param p2, "frameWidth"    # I
    .param p3, "frameHeight"    # I

    .prologue
    .line 296
    monitor-enter p0

    .line 297
    :try_start_0
    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/Sprite;->getWidth()I

    move-result v6

    .line 298
    .local v6, "oldW":I
    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/Sprite;->getHeight()I

    move-result v5

    .line 299
    .local v5, "oldH":I
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v3

    .line 300
    .local v3, "newW":I
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v2

    .line 303
    .local v2, "newH":I
    invoke-virtual {p0, p2, p3}, Ljavax/microedition/lcdui/game/Sprite;->setSize(II)V

    .line 305
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v7

    rem-int/2addr v7, p2

    if-nez v7, :cond_0

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v7

    rem-int/2addr v7, p3

    if-eqz v7, :cond_1

    .line 307
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 369
    .end local v2    # "newH":I
    .end local v3    # "newW":I
    .end local v5    # "oldH":I
    .end local v6    # "oldW":I
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 308
    .restart local v2    # "newH":I
    .restart local v3    # "newW":I
    .restart local v5    # "oldH":I
    .restart local v6    # "oldW":I
    :cond_1
    :try_start_1
    iput-object p1, p0, Ljavax/microedition/lcdui/game/Sprite;->img:Ljavax/microedition/lcdui/Image;

    .line 310
    iget v7, p0, Ljavax/microedition/lcdui/game/Sprite;->cols:I

    iget v8, p0, Ljavax/microedition/lcdui/game/Sprite;->rows:I

    mul-int v4, v7, v8

    .line 311
    .local v4, "oldFrames":I
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v7

    div-int/2addr v7, p2

    iput v7, p0, Ljavax/microedition/lcdui/game/Sprite;->cols:I

    .line 312
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v7

    div-int/2addr v7, p3

    iput v7, p0, Ljavax/microedition/lcdui/game/Sprite;->rows:I

    .line 314
    iget v7, p0, Ljavax/microedition/lcdui/game/Sprite;->rows:I

    iget v8, p0, Ljavax/microedition/lcdui/game/Sprite;->cols:I

    mul-int/2addr v7, v8

    if-ge v7, v4, :cond_2

    .line 317
    const/4 v7, 0x0

    iput-object v7, p0, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    .line 318
    const/4 v7, 0x0

    iput v7, p0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    .line 321
    :cond_2
    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/Sprite;->getWidth()I

    move-result v7

    if-ne p2, v7, :cond_3

    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/Sprite;->getHeight()I

    move-result v7

    if-eq p3, v7, :cond_4

    .line 324
    :cond_3
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8, p2, p3}, Ljavax/microedition/lcdui/game/Sprite;->defineCollisionRectangle(IIII)V

    .line 325
    const/4 v7, 0x0

    iput-object v7, p0, Ljavax/microedition/lcdui/game/Sprite;->rgbDataAux:[I

    iput-object v7, p0, Ljavax/microedition/lcdui/game/Sprite;->rgbData:[I

    .line 329
    iget v7, p0, Ljavax/microedition/lcdui/game/Sprite;->transform:I

    if-eqz v7, :cond_4

    .line 331
    iget v7, p0, Ljavax/microedition/lcdui/game/Sprite;->transform:I

    packed-switch v7, :pswitch_data_0

    .line 363
    monitor-exit p0

    .line 370
    :goto_0
    return-void

    .line 333
    :pswitch_0
    sub-int v0, v3, v6

    .line 334
    .local v0, "dx":I
    sub-int v1, v2, v5

    .line 366
    .local v1, "dy":I
    :goto_1
    invoke-virtual {p0, v0, v1}, Ljavax/microedition/lcdui/game/Sprite;->move(II)V

    .line 369
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 337
    :pswitch_1
    sub-int v0, v3, v6

    .line 338
    .restart local v0    # "dx":I
    const/4 v1, 0x0

    .line 339
    .restart local v1    # "dy":I
    goto :goto_1

    .line 341
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    :pswitch_2
    const/4 v0, 0x0

    .line 342
    .restart local v0    # "dx":I
    sub-int v1, v2, v5

    .line 343
    .restart local v1    # "dy":I
    goto :goto_1

    .line 345
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    :pswitch_3
    sub-int v0, v2, v5

    .line 346
    .restart local v0    # "dx":I
    const/4 v1, 0x0

    .line 347
    .restart local v1    # "dy":I
    goto :goto_1

    .line 349
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    :pswitch_4
    sub-int v0, v2, v5

    .line 350
    .restart local v0    # "dx":I
    sub-int v1, v3, v6

    .line 351
    .restart local v1    # "dy":I
    goto :goto_1

    .line 353
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    :pswitch_5
    const/4 v0, 0x0

    .line 354
    .restart local v0    # "dx":I
    const/4 v1, 0x0

    .line 355
    .restart local v1    # "dy":I
    goto :goto_1

    .line 357
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    :pswitch_6
    const/4 v0, 0x0

    .line 358
    .restart local v0    # "dx":I
    sub-int v1, v3, v6

    .line 359
    .restart local v1    # "dy":I
    goto :goto_1

    .line 331
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setRefPixelPosition(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 186
    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/Sprite;->getWidth()I

    move-result v3

    .line 187
    .local v3, "width":I
    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/Sprite;->getHeight()I

    move-result v2

    .line 189
    .local v2, "height":I
    iget v4, p0, Ljavax/microedition/lcdui/game/Sprite;->transform:I

    packed-switch v4, :pswitch_data_0

    .line 229
    :goto_0
    return-void

    .line 191
    :pswitch_0
    iget v0, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    .line 192
    .local v0, "curRefX":I
    iget v1, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    .line 228
    .local v1, "curRefY":I
    :goto_1
    sub-int v4, p1, v0

    sub-int v5, p2, v1

    invoke-virtual {p0, v4, v5}, Ljavax/microedition/lcdui/game/Sprite;->setPosition(II)V

    goto :goto_0

    .line 195
    .end local v0    # "curRefX":I
    .end local v1    # "curRefY":I
    :pswitch_1
    iget v4, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    sub-int v0, v3, v4

    .line 196
    .restart local v0    # "curRefX":I
    iget v4, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    sub-int v1, v2, v4

    .line 197
    .restart local v1    # "curRefY":I
    goto :goto_1

    .line 199
    .end local v0    # "curRefX":I
    .end local v1    # "curRefY":I
    :pswitch_2
    iget v4, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    sub-int v0, v3, v4

    .line 200
    .restart local v0    # "curRefX":I
    iget v1, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    .line 201
    .restart local v1    # "curRefY":I
    goto :goto_1

    .line 203
    .end local v0    # "curRefX":I
    .end local v1    # "curRefY":I
    :pswitch_3
    iget v0, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    .line 204
    .restart local v0    # "curRefX":I
    iget v4, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    sub-int v1, v2, v4

    .line 205
    .restart local v1    # "curRefY":I
    goto :goto_1

    .line 207
    .end local v0    # "curRefX":I
    .end local v1    # "curRefY":I
    :pswitch_4
    iget v4, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    sub-int v0, v2, v4

    .line 208
    .restart local v0    # "curRefX":I
    iget v1, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    .line 209
    .restart local v1    # "curRefY":I
    goto :goto_1

    .line 211
    .end local v0    # "curRefX":I
    .end local v1    # "curRefY":I
    :pswitch_5
    iget v4, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    sub-int v0, v2, v4

    .line 212
    .restart local v0    # "curRefX":I
    iget v4, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    sub-int v1, v3, v4

    .line 213
    .restart local v1    # "curRefY":I
    goto :goto_1

    .line 215
    .end local v0    # "curRefX":I
    .end local v1    # "curRefY":I
    :pswitch_6
    iget v0, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    .line 216
    .restart local v0    # "curRefX":I
    iget v1, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    .line 217
    .restart local v1    # "curRefY":I
    goto :goto_1

    .line 219
    .end local v0    # "curRefX":I
    .end local v1    # "curRefY":I
    :pswitch_7
    iget v0, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    .line 220
    .restart local v0    # "curRefX":I
    iget v4, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    sub-int v1, v3, v4

    .line 221
    .restart local v1    # "curRefY":I
    goto :goto_1

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setTransform(I)V
    .locals 9
    .param p1, "transform"    # I

    .prologue
    .line 390
    iget v7, p0, Ljavax/microedition/lcdui/game/Sprite;->transform:I

    if-ne v7, p1, :cond_0

    .line 486
    :goto_0
    return-void

    .line 393
    :cond_0
    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/Sprite;->getWidth()I

    move-result v6

    .line 394
    .local v6, "width":I
    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/Sprite;->getHeight()I

    move-result v3

    .line 395
    .local v3, "height":I
    iget v2, p0, Ljavax/microedition/lcdui/game/Sprite;->transform:I

    .line 402
    .local v2, "currentTransform":I
    packed-switch p1, :pswitch_data_0

    .line 436
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 404
    :pswitch_0
    iget v4, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    .line 405
    .local v4, "newRefX":I
    iget v5, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    .line 444
    .local v5, "newRefY":I
    :goto_1
    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 446
    :pswitch_1
    iget v0, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    .line 447
    .local v0, "curRefX":I
    iget v1, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    .line 484
    .local v1, "curRefY":I
    :goto_2
    sub-int v7, v0, v4

    sub-int v8, v1, v5

    invoke-virtual {p0, v7, v8}, Ljavax/microedition/lcdui/game/Sprite;->move(II)V

    .line 485
    iput p1, p0, Ljavax/microedition/lcdui/game/Sprite;->transform:I

    goto :goto_0

    .line 408
    .end local v0    # "curRefX":I
    .end local v1    # "curRefY":I
    .end local v4    # "newRefX":I
    .end local v5    # "newRefY":I
    :pswitch_2
    iget v7, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    sub-int v4, v6, v7

    .line 409
    .restart local v4    # "newRefX":I
    iget v7, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    sub-int v5, v3, v7

    .line 410
    .restart local v5    # "newRefY":I
    goto :goto_1

    .line 412
    .end local v4    # "newRefX":I
    .end local v5    # "newRefY":I
    :pswitch_3
    iget v7, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    sub-int v4, v6, v7

    .line 413
    .restart local v4    # "newRefX":I
    iget v5, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    .line 414
    .restart local v5    # "newRefY":I
    goto :goto_1

    .line 416
    .end local v4    # "newRefX":I
    .end local v5    # "newRefY":I
    :pswitch_4
    iget v4, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    .line 417
    .restart local v4    # "newRefX":I
    iget v7, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    sub-int v5, v3, v7

    .line 418
    .restart local v5    # "newRefY":I
    goto :goto_1

    .line 420
    .end local v4    # "newRefX":I
    .end local v5    # "newRefY":I
    :pswitch_5
    iget v7, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    sub-int v4, v3, v7

    .line 421
    .restart local v4    # "newRefX":I
    iget v5, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    .line 422
    .restart local v5    # "newRefY":I
    goto :goto_1

    .line 424
    .end local v4    # "newRefX":I
    .end local v5    # "newRefY":I
    :pswitch_6
    iget v7, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    sub-int v4, v3, v7

    .line 425
    .restart local v4    # "newRefX":I
    iget v7, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    sub-int v5, v6, v7

    .line 426
    .restart local v5    # "newRefY":I
    goto :goto_1

    .line 428
    .end local v4    # "newRefX":I
    .end local v5    # "newRefY":I
    :pswitch_7
    iget v4, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    .line 429
    .restart local v4    # "newRefX":I
    iget v5, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    .line 430
    .restart local v5    # "newRefY":I
    goto :goto_1

    .line 432
    .end local v4    # "newRefX":I
    .end local v5    # "newRefY":I
    :pswitch_8
    iget v4, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    .line 433
    .restart local v4    # "newRefX":I
    iget v7, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    sub-int v5, v6, v7

    .line 434
    .restart local v5    # "newRefY":I
    goto :goto_1

    .line 450
    :pswitch_9
    iget v7, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    sub-int v0, v6, v7

    .line 451
    .restart local v0    # "curRefX":I
    iget v7, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    sub-int v1, v3, v7

    .line 452
    .restart local v1    # "curRefY":I
    goto :goto_2

    .line 454
    .end local v0    # "curRefX":I
    .end local v1    # "curRefY":I
    :pswitch_a
    iget v7, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    sub-int v0, v6, v7

    .line 455
    .restart local v0    # "curRefX":I
    iget v1, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    .line 456
    .restart local v1    # "curRefY":I
    goto :goto_2

    .line 458
    .end local v0    # "curRefX":I
    .end local v1    # "curRefY":I
    :pswitch_b
    iget v0, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    .line 459
    .restart local v0    # "curRefX":I
    iget v7, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    sub-int v1, v3, v7

    .line 460
    .restart local v1    # "curRefY":I
    goto :goto_2

    .line 462
    .end local v0    # "curRefX":I
    .end local v1    # "curRefY":I
    :pswitch_c
    iget v7, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    sub-int v0, v3, v7

    .line 463
    .restart local v0    # "curRefX":I
    iget v1, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    .line 464
    .restart local v1    # "curRefY":I
    goto :goto_2

    .line 466
    .end local v0    # "curRefX":I
    .end local v1    # "curRefY":I
    :pswitch_d
    iget v7, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    sub-int v0, v3, v7

    .line 467
    .restart local v0    # "curRefX":I
    iget v7, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    sub-int v1, v6, v7

    .line 468
    .restart local v1    # "curRefY":I
    goto :goto_2

    .line 470
    .end local v0    # "curRefX":I
    .end local v1    # "curRefY":I
    :pswitch_e
    iget v0, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    .line 471
    .restart local v0    # "curRefX":I
    iget v1, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    .line 472
    .restart local v1    # "curRefY":I
    goto :goto_2

    .line 474
    .end local v0    # "curRefX":I
    .end local v1    # "curRefY":I
    :pswitch_f
    iget v0, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    .line 475
    .restart local v0    # "curRefX":I
    iget v7, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    sub-int v1, v6, v7

    .line 476
    .restart local v1    # "curRefY":I
    goto :goto_2

    .line 402
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 444
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
