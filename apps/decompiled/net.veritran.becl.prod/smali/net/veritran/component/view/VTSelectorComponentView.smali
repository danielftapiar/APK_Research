.class public Lnet/veritran/component/view/VTSelectorComponentView;
.super Landroid/view/View;
.source "VTSelectorComponentView.java"

# interfaces
.implements Lnet/veritran/component/view/VTUIComponentView;


# static fields
.field public static final BAR_HEIGHT_RATIO:F = 0.0625f

.field public static final DEFAULT_BACKGROUND_COLOR:I = 0x0

.field public static final DEFAULT_BAR_COLOR:Ljava/lang/String; = "#c2c2c2"

.field public static final DEFAULT_IMAGE:Ljava/lang/String; = "rb_off"

.field public static final DEFAULT_TEXT_COLOR:Ljava/lang/String; = "#000000"

.field public static final DEFAULT_TEXT_POSITION:Ljava/lang/String; = "UP"

.field public static final DISPLAY_HEIGHT_RATIO:F = 0.05f

.field public static final EMPTY_STRING:Ljava/lang/String; = ""

.field public static final SLOT_HEIGHT_RATIO:F = 0.25f

.field private static final TAG:Ljava/lang/String; = "VTSelectorComponentView"

.field public static final TEXT_HEIGHT_RATIO:F = 0.75f

.field public static final TEXT_PADDING_RATIO:F = 0.0625f


# instance fields
.field private autoDump:Ljava/lang/Integer;

.field private backgroundColor:I

.field private barColor:I

.field private barHeight:I

.field private currentIndex:I

.field private currentPaint:Landroid/graphics/Paint;

.field private currentSlidingX:F

.field private currentSlidingY:F

.field private currentTextPaint:Landroid/graphics/Paint;

.field private doOnDraw:Z

.field private downX:F

.field private downY:F

.field private emptyColor:I

.field private filledColor:I

.field fixedBottomMargin:F

.field private fixedHeight:I

.field fixedLeftMargin:F

.field fixedRightMargin:F

.field fixedTopMargin:F

.field private fixedWidth:I

.field private fontSize:I

.field private gotSelectedSlot:Z

.field private imageBitmap:Landroid/graphics/Bitmap;

.field imageBitmapsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private imageSize:I

.field private isEventsLock:Z

.field measuredBottomMargin:I

.field measuredLeftMargin:I

.field measuredRightMargin:I

.field measuredTopMargin:I

.field percentageBottomMargin:F

.field private percentageHeight:F

.field percentageLeftMargin:F

.field percentageRightMargin:F

.field percentageTopMargin:F

.field private percentageWidth:F

.field protected radius:F

.field private rangeCount:I

.field private rectResult:Landroid/graphics/Rect;

.field private relatedComponent:Lnet/veritran/component/VTUIComponent;

.field private selectedFontSize:I

.field private selectedSlotX:F

.field private selectedSlotY:F

.field private selectedTextColor:I

.field private selectedTextPaint:Landroid/graphics/Paint;

.field private selectedTextTypeface:Landroid/graphics/Typeface;

.field selectorItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/veritran/component/VTSelectorItem;",
            ">;"
        }
    .end annotation
.end field

.field private slotPositions:[F

.field protected slotRadius:F

.field private spaceBetweenSlotWidth:F

.field private targetVar:Ljava/lang/String;

.field private textColor:I

.field private textPaint:Landroid/graphics/Paint;

.field private textPosition:Ljava/lang/String;

.field private textTypeface:Landroid/graphics/Typeface;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/veritran/component/VTUIComponent;)V
    .locals 5
    .param p1, "component"    # Lnet/veritran/component/VTUIComponent;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    .line 146
    invoke-virtual {p1}, Lnet/veritran/component/VTUIComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->relatedComponent:Lnet/veritran/component/VTUIComponent;

    .line 69
    iput v1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->percentageWidth:F

    .line 70
    iput v1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->percentageHeight:F

    .line 72
    iput v2, p0, Lnet/veritran/component/view/VTSelectorComponentView;->percentageLeftMargin:F

    .line 73
    iput v2, p0, Lnet/veritran/component/view/VTSelectorComponentView;->percentageTopMargin:F

    .line 74
    iput v2, p0, Lnet/veritran/component/view/VTSelectorComponentView;->percentageRightMargin:F

    .line 75
    iput v2, p0, Lnet/veritran/component/view/VTSelectorComponentView;->percentageBottomMargin:F

    .line 77
    iput v1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->fixedLeftMargin:F

    .line 78
    iput v1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->fixedRightMargin:F

    .line 79
    iput v1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->fixedTopMargin:F

    .line 80
    iput v1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->fixedBottomMargin:F

    .line 82
    iput v3, p0, Lnet/veritran/component/view/VTSelectorComponentView;->measuredLeftMargin:I

    .line 83
    iput v3, p0, Lnet/veritran/component/view/VTSelectorComponentView;->measuredRightMargin:I

    .line 84
    iput v3, p0, Lnet/veritran/component/view/VTSelectorComponentView;->measuredTopMargin:I

    .line 85
    iput v3, p0, Lnet/veritran/component/view/VTSelectorComponentView;->measuredBottomMargin:I

    .line 87
    iput v4, p0, Lnet/veritran/component/view/VTSelectorComponentView;->fixedWidth:I

    .line 88
    iput v4, p0, Lnet/veritran/component/view/VTSelectorComponentView;->fixedHeight:I

    .line 107
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->gotSelectedSlot:Z

    .line 147
    iput-object p1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->relatedComponent:Lnet/veritran/component/VTUIComponent;

    .line 148
    return-void
.end method

.method static synthetic access$000(Lnet/veritran/component/view/VTSelectorComponentView;)I
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/view/VTSelectorComponentView;

    .prologue
    .line 25
    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentIndex:I

    return v0
.end method

.method static synthetic access$100(Lnet/veritran/component/view/VTSelectorComponentView;)V
    .locals 0
    .param p0, "x0"    # Lnet/veritran/component/view/VTSelectorComponentView;

    .prologue
    .line 25
    invoke-direct {p0}, Lnet/veritran/component/view/VTSelectorComponentView;->updateCurrentIndex()V

    return-void
.end method

.method private drawBar(Landroid/graphics/Canvas;III)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "color"    # I

    .prologue
    .line 624
    iget-object v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 625
    iget-object v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentPaint:Landroid/graphics/Paint;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 626
    iget-object v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 627
    iget-object v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 628
    invoke-virtual {p0}, Lnet/veritran/component/view/VTSelectorComponentView;->getHeight()I

    move-result v6

    .line 629
    .local v6, "h":I
    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->barHeight:I

    shr-int/lit8 v7, v0, 0x1

    .line 630
    .local v7, "half":I
    shr-int/lit8 v8, v6, 0x1

    .line 631
    .local v8, "y":I
    int-to-float v1, p2

    sub-int v0, v8, v7

    int-to-float v2, v0

    int-to-float v3, p3

    add-int v0, v8, v7

    int-to-float v4, v0

    iget-object v5, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 632
    return-void
.end method

.method private drawEmptySlots(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 635
    iget-object v3, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    .line 636
    iget-object v3, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentPaint:Landroid/graphics/Paint;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 637
    iget-object v3, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentPaint:Landroid/graphics/Paint;

    iget v4, p0, Lnet/veritran/component/view/VTSelectorComponentView;->emptyColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 638
    iget-object v3, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 639
    invoke-virtual {p0}, Lnet/veritran/component/view/VTSelectorComponentView;->getHeight()I

    move-result v0

    .line 640
    .local v0, "h":I
    shr-int/lit8 v2, v0, 0x1

    .line 641
    .local v2, "y":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lnet/veritran/component/view/VTSelectorComponentView;->rangeCount:I

    if-ge v1, v3, :cond_0

    .line 642
    iget-object v3, p0, Lnet/veritran/component/view/VTSelectorComponentView;->slotPositions:[F

    aget v3, v3, v1

    int-to-float v4, v2

    iget v5, p0, Lnet/veritran/component/view/VTSelectorComponentView;->slotRadius:F

    iget-object v6, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 641
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 644
    :cond_0
    return-void
.end method

.method private drawFilledSlots(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 647
    iget-object v3, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    .line 648
    iget-object v3, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentPaint:Landroid/graphics/Paint;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 649
    iget-object v3, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentPaint:Landroid/graphics/Paint;

    iget v4, p0, Lnet/veritran/component/view/VTSelectorComponentView;->filledColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 650
    iget-object v3, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 651
    invoke-virtual {p0}, Lnet/veritran/component/view/VTSelectorComponentView;->getHeight()I

    move-result v0

    .line 652
    .local v0, "h":I
    shr-int/lit8 v2, v0, 0x1

    .line 653
    .local v2, "y":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lnet/veritran/component/view/VTSelectorComponentView;->rangeCount:I

    if-ge v1, v3, :cond_1

    .line 654
    iget-object v3, p0, Lnet/veritran/component/view/VTSelectorComponentView;->slotPositions:[F

    aget v3, v3, v1

    iget v4, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentSlidingX:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    .line 655
    iget-object v3, p0, Lnet/veritran/component/view/VTSelectorComponentView;->slotPositions:[F

    aget v3, v3, v1

    int-to-float v4, v2

    iget v5, p0, Lnet/veritran/component/view/VTSelectorComponentView;->slotRadius:F

    iget-object v6, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 653
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 658
    :cond_1
    return-void
.end method

.method private drawImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FIF)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "b"    # Landroid/graphics/Bitmap;
    .param p3, "x0"    # F
    .param p4, "y0"    # I
    .param p5, "radius"    # F

    .prologue
    .line 754
    iget-object v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 755
    iget-object v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentPaint:Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 760
    iget-object v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->imageBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentSlidingX:F

    sub-float/2addr v1, p5

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v2, p5

    float-to-int v2, v2

    add-int/2addr v2, p4

    int-to-float v2, v2

    iget-object v3, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 761
    return-void
.end method

.method private drawSlotsText(Landroid/graphics/Canvas;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 672
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTSelectorComponentView;->getHeight()I

    move-result v7

    .line 673
    .local v7, "h":I
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTSelectorComponentView;->getPaddingTop()I

    move-result v18

    shr-int/lit8 v19, v7, 0x1

    add-int v17, v18, v19

    .line 675
    .local v17, "y":I
    move-object/from16 v0, p0

    iget v13, v0, Lnet/veritran/component/view/VTSelectorComponentView;->spaceBetweenSlotWidth:F

    .line 676
    .local v13, "maxTextWidth":F
    const/high16 v18, 0x3f700000    # 0.9375f

    mul-float v13, v13, v18

    .line 678
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTSelectorComponentView;->imageSize:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v12, v0

    .line 680
    .local v12, "maxTextHeight":F
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTSelectorComponentView;->spaceBetweenSlotWidth:F

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v5, v18, v19

    .line 682
    .local v5, "dist":F
    const/4 v10, 0x0

    .line 683
    .local v10, "maxItemTextHeight":F
    const/4 v11, 0x0

    .line 685
    .local v11, "maxItemTextWidth":F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTSelectorComponentView;->rangeCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_6

    .line 687
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTSelectorComponentView;->currentSlidingX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTSelectorComponentView;->slotPositions:[F

    move-object/from16 v19, v0

    aget v19, v19, v8

    add-float v19, v19, v5

    cmpg-float v18, v18, v19

    if-gtz v18, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTSelectorComponentView;->currentSlidingX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTSelectorComponentView;->slotPositions:[F

    move-object/from16 v19, v0

    aget v19, v19, v8

    sub-float v19, v19, v5

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_4

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTSelectorComponentView;->selectedTextPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/view/VTSelectorComponentView;->currentTextPaint:Landroid/graphics/Paint;

    .line 696
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTSelectorComponentView;->selectorItems:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lnet/veritran/component/VTSelectorItem;

    invoke-virtual/range {v18 .. v18}, Lnet/veritran/component/VTSelectorItem;->getText()Ljava/lang/String;

    move-result-object v9

    .line 697
    .local v9, "itemText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTSelectorComponentView;->currentTextPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTSelectorComponentView;->rectResult:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTSelectorComponentView;->currentTextPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTSelectorComponentView;->rectResult:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v18, v18, v11

    if-lez v18, :cond_0

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTSelectorComponentView;->rectResult:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v18

    move/from16 v0, v18

    int-to-float v11, v0

    .line 705
    :cond_0
    cmpl-float v18, v11, v13

    if-lez v18, :cond_1

    .line 707
    div-float v15, v13, v11

    .line 708
    .local v15, "scale":F
    new-instance v4, Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTSelectorComponentView;->currentTextPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 709
    .local v4, "auxTextPaint":Landroid/graphics/Paint;
    invoke-virtual {v4, v15}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 711
    move-object/from16 v0, p0

    iput-object v4, v0, Lnet/veritran/component/view/VTSelectorComponentView;->currentTextPaint:Landroid/graphics/Paint;

    .line 715
    .end local v4    # "auxTextPaint":Landroid/graphics/Paint;
    .end local v15    # "scale":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTSelectorComponentView;->currentTextPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTSelectorComponentView;->rectResult:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTSelectorComponentView;->rectResult:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v18

    move/from16 v0, v18

    int-to-float v10, v0

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTSelectorComponentView;->rectResult:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v18, v18, v10

    if-lez v18, :cond_2

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTSelectorComponentView;->rectResult:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v18

    move/from16 v0, v18

    int-to-float v10, v0

    .line 722
    :cond_2
    cmpl-float v18, v10, v12

    if-lez v18, :cond_3

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTSelectorComponentView;->currentTextPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Paint;->getTextSize()F

    move-result v16

    .line 725
    .local v16, "textItemFontSize":F
    mul-float v18, v16, v12

    div-float v14, v18, v10

    .line 726
    .local v14, "resizeItemTextSize":F
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 727
    .restart local v4    # "auxTextPaint":Landroid/graphics/Paint;
    invoke-virtual {v4, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 728
    sget-object v18, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setLinearText(Z)V

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTSelectorComponentView;->currentTextPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Paint;->getFlags()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTSelectorComponentView;->currentTextPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Paint;->getColor()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTSelectorComponentView;->currentTextPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 732
    sget-object v18, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 733
    invoke-virtual {v4, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTSelectorComponentView;->currentPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 735
    move-object/from16 v0, p0

    iput-object v4, v0, Lnet/veritran/component/view/VTSelectorComponentView;->currentTextPaint:Landroid/graphics/Paint;

    .line 738
    .end local v4    # "auxTextPaint":Landroid/graphics/Paint;
    .end local v14    # "resizeItemTextSize":F
    .end local v16    # "textItemFontSize":F
    :cond_3
    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3e800000    # 0.25f

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTSelectorComponentView;->currentSlidingX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTSelectorComponentView;->slotPositions:[F

    move-object/from16 v21, v0

    aget v21, v21, v8

    sub-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    mul-float v19, v19, v20

    div-float v19, v19, v5

    sub-float v6, v18, v19

    .line 740
    .local v6, "distYSelectorMultiplier":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTSelectorComponentView;->currentTextPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    sget-object v19, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 742
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTSelectorComponentView;->currentSlidingX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTSelectorComponentView;->slotPositions:[F

    move-object/from16 v19, v0

    aget v19, v19, v8

    add-float v19, v19, v5

    cmpg-float v18, v18, v19

    if-gtz v18, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTSelectorComponentView;->currentSlidingX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTSelectorComponentView;->slotPositions:[F

    move-object/from16 v19, v0

    aget v19, v19, v8

    sub-float v19, v19, v5

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_5

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTSelectorComponentView;->slotPositions:[F

    move-object/from16 v18, v0

    aget v18, v18, v8

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTSelectorComponentView;->textPosition:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTSelectorComponentView;->imageSize:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lnet/veritran/component/view/VTSelectorComponentView;->getTextYAxis(Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v6

    add-float v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTSelectorComponentView;->currentTextPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 685
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 692
    .end local v6    # "distYSelectorMultiplier":F
    .end local v9    # "itemText":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTSelectorComponentView;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/view/VTSelectorComponentView;->currentTextPaint:Landroid/graphics/Paint;

    goto/16 :goto_1

    .line 746
    .restart local v6    # "distYSelectorMultiplier":F
    .restart local v9    # "itemText":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTSelectorComponentView;->slotPositions:[F

    move-object/from16 v18, v0

    aget v18, v18, v8

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTSelectorComponentView;->textPosition:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTSelectorComponentView;->imageSize:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lnet/veritran/component/view/VTSelectorComponentView;->getTextYAxis(Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x3f400000    # 0.75f

    mul-float v20, v20, v21

    add-float v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTSelectorComponentView;->currentTextPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 749
    .end local v6    # "distYSelectorMultiplier":F
    .end local v9    # "itemText":Ljava/lang/String;
    :cond_6
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/component/view/VTSelectorComponentView;->currentTextPaint:Landroid/graphics/Paint;

    .line 750
    return-void
.end method

.method private getNearSlot(FF)I
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 449
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 450
    .local v3, "min":F
    const/4 v2, 0x0

    .line 452
    .local v2, "j":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lnet/veritran/component/view/VTSelectorComponentView;->rangeCount:I

    if-ge v1, v4, :cond_1

    .line 453
    iget-object v4, p0, Lnet/veritran/component/view/VTSelectorComponentView;->slotPositions:[F

    aget v4, v4, v1

    sub-float v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 454
    .local v0, "dx":F
    cmpg-float v4, v0, v3

    if-gez v4, :cond_0

    .line 455
    move v3, v0

    .line 456
    move v2, v1

    .line 452
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 459
    .end local v0    # "dx":F
    :cond_1
    return v2
.end method

.method private isInSelectedSlot(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 423
    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->selectedSlotX:F

    iget v1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->radius:F

    sub-float/2addr v0, v1

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->selectedSlotX:F

    iget v1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->radius:F

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->selectedSlotY:F

    iget v1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->radius:F

    sub-float/2addr v0, v1

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_0

    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->selectedSlotY:F

    iget v1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->radius:F

    add-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInSlot(FF)I
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 429
    invoke-virtual {p0}, Lnet/veritran/component/view/VTSelectorComponentView;->getHeight()I

    move-result v0

    .line 430
    .local v0, "h":I
    invoke-virtual {p0}, Lnet/veritran/component/view/VTSelectorComponentView;->getPaddingTop()I

    move-result v4

    shr-int/lit8 v5, v0, 0x1

    add-int v3, v4, v5

    .line 432
    .local v3, "y0":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lnet/veritran/component/view/VTSelectorComponentView;->slotPositions:[F

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 433
    iget-object v4, p0, Lnet/veritran/component/view/VTSelectorComponentView;->slotPositions:[F

    aget v2, v4, v1

    .line 435
    .local v2, "slotX":F
    iget v4, p0, Lnet/veritran/component/view/VTSelectorComponentView;->slotRadius:F

    sub-float v4, v2, v4

    cmpg-float v4, v4, p1

    if-gtz v4, :cond_0

    iget v4, p0, Lnet/veritran/component/view/VTSelectorComponentView;->slotRadius:F

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_0

    .line 440
    .end local v1    # "i":I
    .end local v2    # "slotX":F
    :goto_1
    return v1

    .line 432
    .restart local v1    # "i":I
    .restart local v2    # "slotX":F
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 440
    .end local v2    # "slotX":F
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private preComputeDrawingPosition(II)V
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 253
    iget v6, p0, Lnet/veritran/component/view/VTSelectorComponentView;->rangeCount:I

    div-int v6, p1, v6

    int-to-float v6, v6

    iput v6, p0, Lnet/veritran/component/view/VTSelectorComponentView;->spaceBetweenSlotWidth:F

    .line 256
    const/high16 v6, 0x3f000000    # 0.5f

    int-to-float v7, p1

    add-float/2addr v6, v7

    iget v7, p0, Lnet/veritran/component/view/VTSelectorComponentView;->spaceBetweenSlotWidth:F

    sub-float/2addr v6, v7

    float-to-int v3, v6

    .line 258
    .local v3, "w":I
    move v0, p2

    .line 261
    .local v0, "h":I
    iget v6, p0, Lnet/veritran/component/view/VTSelectorComponentView;->rangeCount:I

    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    iget v6, p0, Lnet/veritran/component/view/VTSelectorComponentView;->rangeCount:I

    add-int/lit8 v6, v6, -0x1

    :goto_0
    div-int v2, v3, v6

    .line 265
    .local v2, "spacing":I
    div-int/lit8 v5, v0, 0x2

    .line 266
    .local v5, "y":I
    int-to-float v6, v5

    iput v6, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentSlidingY:F

    .line 267
    int-to-float v6, v5

    iput v6, p0, Lnet/veritran/component/view/VTSelectorComponentView;->selectedSlotY:F

    .line 279
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    iget v8, p0, Lnet/veritran/component/view/VTSelectorComponentView;->spaceBetweenSlotWidth:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    float-to-double v8, v8

    add-double/2addr v6, v8

    double-to-int v4, v6

    .line 282
    .local v4, "x":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v6, p0, Lnet/veritran/component/view/VTSelectorComponentView;->rangeCount:I

    if-ge v1, v6, :cond_2

    .line 283
    iget-object v6, p0, Lnet/veritran/component/view/VTSelectorComponentView;->slotPositions:[F

    int-to-float v7, v4

    aput v7, v6, v1

    .line 284
    iget v6, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentIndex:I

    if-ne v1, v6, :cond_0

    .line 285
    int-to-float v6, v4

    iput v6, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentSlidingX:F

    .line 286
    int-to-float v6, v4

    iput v6, p0, Lnet/veritran/component/view/VTSelectorComponentView;->selectedSlotX:F

    .line 288
    :cond_0
    add-int/2addr v4, v2

    .line 282
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 261
    .end local v1    # "i":I
    .end local v2    # "spacing":I
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_1
    iget v6, p0, Lnet/veritran/component/view/VTSelectorComponentView;->rangeCount:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 290
    .restart local v1    # "i":I
    .restart local v2    # "spacing":I
    .restart local v4    # "x":I
    .restart local v5    # "y":I
    :cond_2
    return-void
.end method

.method private updateCurrentIndex()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 356
    iget v12, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentSlidingX:F

    iget-object v13, p0, Lnet/veritran/component/view/VTSelectorComponentView;->slotPositions:[F

    aget v13, v13, v14

    cmpg-float v12, v12, v13

    if-gez v12, :cond_2

    .line 357
    iget-object v12, p0, Lnet/veritran/component/view/VTSelectorComponentView;->slotPositions:[F

    aget v12, v12, v14

    iput v12, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentSlidingX:F

    .line 363
    :cond_0
    :goto_0
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    .line 364
    .local v7, "min":F
    const/4 v6, 0x0

    .line 366
    .local v6, "j":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget v12, p0, Lnet/veritran/component/view/VTSelectorComponentView;->rangeCount:I

    if-ge v5, v12, :cond_3

    .line 367
    iget v12, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentSlidingX:F

    iget-object v13, p0, Lnet/veritran/component/view/VTSelectorComponentView;->slotPositions:[F

    aget v13, v13, v5

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 368
    .local v3, "dx":F
    cmpg-float v12, v3, v7

    if-gez v12, :cond_1

    .line 369
    move v7, v3

    .line 370
    move v6, v5

    .line 366
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 359
    .end local v3    # "dx":F
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v7    # "min":F
    :cond_2
    iget v12, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentSlidingX:F

    iget-object v13, p0, Lnet/veritran/component/view/VTSelectorComponentView;->slotPositions:[F

    iget v14, p0, Lnet/veritran/component/view/VTSelectorComponentView;->rangeCount:I

    add-int/lit8 v14, v14, -0x1

    aget v13, v13, v14

    cmpl-float v12, v12, v13

    if-lez v12, :cond_0

    .line 360
    iget-object v12, p0, Lnet/veritran/component/view/VTSelectorComponentView;->slotPositions:[F

    iget v13, p0, Lnet/veritran/component/view/VTSelectorComponentView;->rangeCount:I

    add-int/lit8 v13, v13, -0x1

    aget v12, v12, v13

    iput v12, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentSlidingX:F

    goto :goto_0

    .line 374
    .restart local v5    # "i":I
    .restart local v6    # "j":I
    .restart local v7    # "min":F
    :cond_3
    iget-boolean v12, p0, Lnet/veritran/component/view/VTSelectorComponentView;->gotSelectedSlot:Z

    if-nez v12, :cond_4

    .line 375
    iget-object v12, p0, Lnet/veritran/component/view/VTSelectorComponentView;->slotPositions:[F

    iget v13, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentIndex:I

    aget v12, v12, v13

    iput v12, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentSlidingX:F

    .line 378
    :cond_4
    const-wide/16 v10, 0xc8

    .line 379
    .local v10, "numMillis":J
    const/16 v9, 0x64

    .line 381
    .local v9, "numSteps":I
    iget-object v12, p0, Lnet/veritran/component/view/VTSelectorComponentView;->slotPositions:[F

    aget v12, v12, v6

    iget v13, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentSlidingX:F

    sub-float/2addr v12, v13

    int-to-float v13, v9

    div-float v2, v12, v13

    .line 382
    .local v2, "deltaX":F
    int-to-long v12, v9

    div-long v0, v10, v12

    .line 384
    .local v0, "deltaMillis":J
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v9, :cond_6

    .line 385
    iget v12, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentSlidingX:F

    add-float/2addr v12, v2

    iput v12, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentSlidingX:F

    .line 387
    iget v12, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentSlidingX:F

    const/4 v13, 0x0

    invoke-direct {p0, v12, v13}, Lnet/veritran/component/view/VTSelectorComponentView;->getNearSlot(FF)I

    move-result v8

    .line 388
    .local v8, "nearSlot":I
    iget-object v12, p0, Lnet/veritran/component/view/VTSelectorComponentView;->imageBitmapsList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5

    .line 389
    iget-object v12, p0, Lnet/veritran/component/view/VTSelectorComponentView;->imageBitmapsList:Ljava/util/List;

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Bitmap;

    iput-object v12, p0, Lnet/veritran/component/view/VTSelectorComponentView;->imageBitmap:Landroid/graphics/Bitmap;

    .line 392
    :cond_5
    invoke-virtual {p0}, Lnet/veritran/component/view/VTSelectorComponentView;->postInvalidate()V

    .line 394
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 395
    :catch_0
    move-exception v4

    .line 396
    .local v4, "ex":Ljava/lang/InterruptedException;
    const-string v12, "VTSelectorComponentView"

    const-string v13, "Non Ui thread Error"

    invoke-static {v12, v13}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 401
    .end local v4    # "ex":Ljava/lang/InterruptedException;
    .end local v8    # "nearSlot":I
    :cond_6
    iput v6, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentIndex:I

    .line 403
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v12

    invoke-virtual {v12}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v12

    check-cast v12, Lnet/veritran/VTCommonActivity;

    new-instance v13, Lnet/veritran/component/view/VTSelectorComponentView$1;

    invoke-direct {v13, p0}, Lnet/veritran/component/view/VTSelectorComponentView$1;-><init>(Lnet/veritran/component/view/VTSelectorComponentView;)V

    invoke-virtual {v12, v13}, Lnet/veritran/VTCommonActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 414
    iget-object v12, p0, Lnet/veritran/component/view/VTSelectorComponentView;->slotPositions:[F

    aget v12, v12, v6

    iput v12, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentSlidingX:F

    .line 415
    iget v12, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentSlidingX:F

    iput v12, p0, Lnet/veritran/component/view/VTSelectorComponentView;->selectedSlotX:F

    .line 416
    iget v12, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentSlidingX:F

    iput v12, p0, Lnet/veritran/component/view/VTSelectorComponentView;->downX:F

    .line 417
    iget v12, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentSlidingY:F

    iput v12, p0, Lnet/veritran/component/view/VTSelectorComponentView;->downY:F

    .line 418
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    iput-boolean v12, p0, Lnet/veritran/component/view/VTSelectorComponentView;->isEventsLock:Z

    .line 419
    invoke-virtual {p0}, Lnet/veritran/component/view/VTSelectorComponentView;->postInvalidate()V

    .line 420
    return-void
.end method

.method private updateRadius(I)V
    .locals 3
    .param p1, "height"    # I

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 243
    div-int/lit8 v0, p1, 0x3

    iput v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->imageSize:I

    .line 245
    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->imageSize:I

    int-to-float v0, v0

    const/high16 v1, 0x3d800000    # 0.0625f

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->barHeight:I

    .line 246
    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->imageSize:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->radius:F

    .line 247
    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->imageSize:I

    int-to-float v0, v0

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->slotRadius:F

    .line 248
    return-void
.end method


# virtual methods
.method public addSelectorItems(Lnet/veritran/component/VTSelectorItem;)V
    .locals 1
    .param p1, "selectorItem"    # Lnet/veritran/component/VTSelectorItem;

    .prologue
    .line 891
    iget-object v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->selectorItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 892
    return-void
.end method

.method public getAutoDump()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 975
    iget-object v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->autoDump:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBarColor()I
    .locals 1

    .prologue
    .line 775
    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->barColor:I

    return v0
.end method

.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 967
    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentIndex:I

    return v0
.end method

.method public getFixedHeight()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->fixedHeight:I

    return v0
.end method

.method public getFixedWidth()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->fixedWidth:I

    return v0
.end method

.method public getFontSize()I
    .locals 1

    .prologue
    .line 849
    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->fontSize:I

    return v0
.end method

.method public getHeightPercentage()F
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->percentageHeight:F

    return v0
.end method

.method public getImageBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->imageBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageBitmapsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 959
    iget-object v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->imageBitmapsList:Ljava/util/List;

    return-object v0
.end method

.method public getMeasuredBottomMargin()I
    .locals 1

    .prologue
    .line 799
    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->measuredBottomMargin:I

    return v0
.end method

.method public getMeasuredLeftMargin()I
    .locals 1

    .prologue
    .line 784
    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->measuredLeftMargin:I

    return v0
.end method

.method public getMeasuredRightMargin()I
    .locals 1

    .prologue
    .line 789
    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->measuredRightMargin:I

    return v0
.end method

.method public getMeasuredTopMargin()I
    .locals 1

    .prologue
    .line 794
    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->measuredTopMargin:I

    return v0
.end method

.method public getRangeCount()I
    .locals 1

    .prologue
    .line 875
    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->rangeCount:I

    return v0
.end method

.method public getSelectedFontSize()I
    .locals 1

    .prologue
    .line 858
    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->selectedFontSize:I

    return v0
.end method

.method public getSelectedTextColor()I
    .locals 1

    .prologue
    .line 841
    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->selectedTextColor:I

    return v0
.end method

.method public getSelectedTextPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->selectedTextPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getSelectedTextTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->selectedTextTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getSelectorItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/component/VTSelectorItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 883
    iget-object v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->selectorItems:Ljava/util/List;

    return-object v0
.end method

.method public getSlotPositions()[F
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->slotPositions:[F

    return-object v0
.end method

.method public getTargetVar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->targetVar:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 833
    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->textColor:I

    return v0
.end method

.method public getTextPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 895
    iget-object v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->textPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTextPosition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->textPosition:Ljava/lang/String;

    return-object v0
.end method

.method public getTextTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->textTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getTextYAxis(Ljava/lang/String;I)I
    .locals 1
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "height"    # I

    .prologue
    .line 661
    const-string v0, "up"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->imageSize:I

    neg-int v0, v0

    .line 666
    :goto_0
    return v0

    .line 663
    :cond_0
    const-string v0, "down"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 664
    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->imageSize:I

    goto :goto_0

    .line 666
    :cond_1
    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->imageSize:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getWidthPercentage()F
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->percentageWidth:F

    return v0
.end method

.method public init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 161
    const-string v0, "#c2c2c2"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->barColor:I

    .line 162
    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->barColor:I

    iput v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->filledColor:I

    .line 163
    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->barColor:I

    iput v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->emptyColor:I

    .line 165
    const-string v0, "#000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->textColor:I

    .line 167
    const-string v0, "#000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->selectedTextColor:I

    .line 169
    iput v1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->backgroundColor:I

    .line 171
    iput v1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->rangeCount:I

    .line 173
    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->rangeCount:I

    new-array v0, v0, [F

    iput-object v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->slotPositions:[F

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->imageBitmapsList:Ljava/util/List;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->selectorItems:Ljava/util/List;

    .line 177
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentPaint:Landroid/graphics/Paint;

    .line 178
    iput-object v2, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentTextPaint:Landroid/graphics/Paint;

    .line 179
    const-string v0, "UP"

    iput-object v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->textPosition:Ljava/lang/String;

    .line 182
    iput v1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentIndex:I

    .line 184
    const-string v0, ""

    iput-object v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->value:Ljava/lang/String;

    .line 186
    iput-object v2, p0, Lnet/veritran/component/view/VTSelectorComponentView;->autoDump:Ljava/lang/Integer;

    .line 188
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->isEventsLock:Z

    .line 190
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->rectResult:Landroid/graphics/Rect;

    .line 191
    const/4 v0, 0x0

    iput v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->spaceBetweenSlotWidth:F

    .line 193
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->doOnDraw:Z

    .line 194
    return-void
.end method

.method public isDoOnDraw()Z
    .locals 1

    .prologue
    .line 983
    iget-boolean v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->doOnDraw:Z

    return v0
.end method

.method public loadImagesBitmaps()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 564
    iget-object v4, p0, Lnet/veritran/component/view/VTSelectorComponentView;->selectorItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 566
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lnet/veritran/component/view/VTSelectorComponentView;->imageBitmapsList:Ljava/util/List;

    .line 568
    iget v4, p0, Lnet/veritran/component/view/VTSelectorComponentView;->imageSize:I

    if-lez v4, :cond_1

    .line 570
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lnet/veritran/component/view/VTSelectorComponentView;->rangeCount:I

    if-ge v1, v4, :cond_0

    .line 572
    iget-object v4, p0, Lnet/veritran/component/view/VTSelectorComponentView;->selectorItems:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/veritran/component/VTSelectorItem;

    .line 574
    .local v3, "item":Lnet/veritran/component/VTSelectorItem;
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v4

    invoke-virtual {v4}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v4

    invoke-virtual {v3}, Lnet/veritran/component/VTSelectorItem;->getImage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/veritran/utils/ImageHandler;->getBitmapSize(Ljava/lang/String;)[I

    move-result-object v2

    .line 575
    .local v2, "imageSizes":[I
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v4

    invoke-virtual {v4}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v4

    invoke-virtual {v3}, Lnet/veritran/component/VTSelectorItem;->getImage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v2, v6

    aget v7, v2, v8

    invoke-virtual {v4, v5, v6, v7}, Lnet/veritran/utils/ImageHandler;->getBitmapForSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 576
    .local v0, "bm":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lnet/veritran/component/view/VTSelectorComponentView;->imageBitmapsList:Ljava/util/List;

    iget v5, p0, Lnet/veritran/component/view/VTSelectorComponentView;->imageSize:I

    iget v6, p0, Lnet/veritran/component/view/VTSelectorComponentView;->imageSize:I

    invoke-static {v0, v5, v6, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 578
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "imageSizes":[I
    .end local v3    # "item":Lnet/veritran/component/VTSelectorItem;
    :cond_0
    iget-object v4, p0, Lnet/veritran/component/view/VTSelectorComponentView;->imageBitmapsList:Ljava/util/List;

    iget v5, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentIndex:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iput-object v4, p0, Lnet/veritran/component/view/VTSelectorComponentView;->imageBitmap:Landroid/graphics/Bitmap;

    .line 581
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public measureAbsoluteMargins()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v1, -0x40800000    # -1.0f

    .line 552
    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->fixedLeftMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->percentageLeftMargin:F

    .line 553
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_0
    iput v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->measuredLeftMargin:I

    .line 554
    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->fixedRightMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->percentageRightMargin:F

    .line 555
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_1
    iput v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->measuredRightMargin:I

    .line 556
    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->fixedTopMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->percentageTopMargin:F

    .line 557
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_2
    iput v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->measuredTopMargin:I

    .line 558
    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->fixedBottomMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->percentageBottomMargin:F

    .line 559
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_3
    iput v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->measuredBottomMargin:I

    .line 560
    return-void

    .line 553
    :cond_0
    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->fixedLeftMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 555
    :cond_1
    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->fixedRightMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_1

    .line 557
    :cond_2
    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->fixedTopMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_2

    .line 559
    :cond_3
    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->fixedBottomMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_3
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 586
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 588
    iget-object v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 589
    iget-object v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentPaint:Landroid/graphics/Paint;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 590
    iget-object v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 591
    iget-object v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentPaint:Landroid/graphics/Paint;

    iget v1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 592
    iget-object v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 594
    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->barColor:I

    iput v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->filledColor:I

    .line 595
    iget v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->barColor:I

    iput v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->emptyColor:I

    .line 597
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 599
    iget-boolean v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->doOnDraw:Z

    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {p0}, Lnet/veritran/component/view/VTSelectorComponentView;->getHeight()I

    move-result v6

    .line 602
    .local v6, "h":I
    shr-int/lit8 v4, v6, 0x1

    .line 605
    .local v4, "y0":I
    iget-object v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->slotPositions:[F

    aget v0, v0, v3

    float-to-int v0, v0

    iget-object v1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->slotPositions:[F

    iget v2, p0, Lnet/veritran/component/view/VTSelectorComponentView;->rangeCount:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    float-to-int v1, v1

    iget v2, p0, Lnet/veritran/component/view/VTSelectorComponentView;->emptyColor:I

    invoke-direct {p0, p1, v0, v1, v2}, Lnet/veritran/component/view/VTSelectorComponentView;->drawBar(Landroid/graphics/Canvas;III)V

    .line 610
    invoke-direct {p0, p1}, Lnet/veritran/component/view/VTSelectorComponentView;->drawEmptySlots(Landroid/graphics/Canvas;)V

    .line 613
    invoke-direct {p0, p1}, Lnet/veritran/component/view/VTSelectorComponentView;->drawSlotsText(Landroid/graphics/Canvas;)V

    .line 615
    iget-object v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->imageBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 616
    iget-object v2, p0, Lnet/veritran/component/view/VTSelectorComponentView;->imageBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentSlidingX:F

    iget v5, p0, Lnet/veritran/component/view/VTSelectorComponentView;->radius:F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lnet/veritran/component/view/VTSelectorComponentView;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FIF)V

    .line 621
    .end local v4    # "y0":I
    .end local v6    # "h":I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v11, -0x1

    .line 295
    invoke-virtual {p0}, Lnet/veritran/component/view/VTSelectorComponentView;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_1

    .line 296
    invoke-super {p0, v10, v10}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    const-string v8, "VTSelectorComponentView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onMeasure  -> widthMeasureSpec: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";heightMeasureSpec:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 304
    .local v3, "mw":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 305
    .local v0, "mh":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 306
    .local v7, "sw":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 307
    .local v6, "sh":I
    invoke-static {v3}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, "modeWidth":Ljava/lang/String;
    invoke-static {v0}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "modeHeight":Ljava/lang/String;
    if-nez v0, :cond_2

    if-nez v6, :cond_2

    .line 311
    const/high16 v0, -0x80000000

    .line 312
    const v6, 0xffffff

    .line 313
    const-string v8, "VTSelectorComponentView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/component/view/VTSelectorComponentView;->getTag()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " onMeasure REDEF! -> width("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";height("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_2
    const-string v8, "VTSelectorComponentView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onMeasure  -> width("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";height("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0}, Lnet/veritran/component/view/VTSelectorComponentView;->measureAbsoluteMargins()V

    .line 320
    const-string v8, "VTSelectorComponentView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onMeasure -> getMeasuredWidth("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lnet/veritran/component/view/VTSelectorComponentView;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ");getMeasuredHeight("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lnet/veritran/component/view/VTSelectorComponentView;->getMeasuredHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget v8, p0, Lnet/veritran/component/view/VTSelectorComponentView;->measuredLeftMargin:I

    sub-int v8, v7, v8

    iget v9, p0, Lnet/veritran/component/view/VTSelectorComponentView;->measuredRightMargin:I

    sub-int v5, v8, v9

    .line 323
    .local v5, "pixelsWidth":I
    iget v8, p0, Lnet/veritran/component/view/VTSelectorComponentView;->measuredTopMargin:I

    sub-int v8, v6, v8

    iget v9, p0, Lnet/veritran/component/view/VTSelectorComponentView;->measuredBottomMargin:I

    sub-int v4, v8, v9

    .line 325
    .local v4, "pixelsHeight":I
    iget v8, p0, Lnet/veritran/component/view/VTSelectorComponentView;->fixedWidth:I

    if-eq v8, v11, :cond_3

    .line 326
    iget v5, p0, Lnet/veritran/component/view/VTSelectorComponentView;->fixedWidth:I

    .line 329
    :cond_3
    iget v8, p0, Lnet/veritran/component/view/VTSelectorComponentView;->fixedHeight:I

    if-eq v8, v11, :cond_6

    .line 330
    iget v4, p0, Lnet/veritran/component/view/VTSelectorComponentView;->fixedHeight:I

    .line 335
    :cond_4
    :goto_1
    const-string v8, "VTSelectorComponentView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onMeasure   -> pixelsWidth="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";pixelsHeight="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-super {p0, v5, v4}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 342
    invoke-direct {p0, v4}, Lnet/veritran/component/view/VTSelectorComponentView;->updateRadius(I)V

    .line 345
    iget v8, p0, Lnet/veritran/component/view/VTSelectorComponentView;->rangeCount:I

    const/4 v9, 0x1

    if-lt v8, v9, :cond_5

    .line 346
    invoke-direct {p0, v5, v4}, Lnet/veritran/component/view/VTSelectorComponentView;->preComputeDrawingPosition(II)V

    .line 349
    :cond_5
    iget-object v8, p0, Lnet/veritran/component/view/VTSelectorComponentView;->imageBitmapsList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 350
    invoke-virtual {p0}, Lnet/veritran/component/view/VTSelectorComponentView;->loadImagesBitmaps()V

    goto/16 :goto_0

    .line 331
    :cond_6
    invoke-virtual {p0}, Lnet/veritran/component/view/VTSelectorComponentView;->getHeightPercentage()F

    move-result v8

    const/high16 v9, -0x40800000    # -1.0f

    cmpl-float v8, v8, v9

    if-nez v8, :cond_4

    .line 332
    invoke-virtual {p0}, Lnet/veritran/component/view/VTSelectorComponentView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lnet/veritran/utils/VTDisplayHelper;->getHeightPixel(Landroid/content/Context;)I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3d4ccccd    # 0.05f

    mul-float/2addr v8, v9

    const/high16 v9, 0x40400000    # 3.0f

    mul-float/2addr v8, v9

    float-to-int v4, v8

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    .line 465
    iget-boolean v8, p0, Lnet/veritran/component/view/VTSelectorComponentView;->isEventsLock:Z

    if-nez v8, :cond_0

    .line 467
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 468
    .local v6, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 469
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 471
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 547
    .end local v0    # "action":I
    .end local v4    # "x":F
    .end local v6    # "y":F
    :cond_0
    :goto_0
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    return v8

    .line 475
    .restart local v0    # "action":I
    .restart local v4    # "x":F
    .restart local v6    # "y":F
    :pswitch_0
    invoke-virtual {p0}, Lnet/veritran/component/view/VTSelectorComponentView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 477
    invoke-direct {p0, v4, v6}, Lnet/veritran/component/view/VTSelectorComponentView;->isInSelectedSlot(FF)Z

    move-result v8

    iput-boolean v8, p0, Lnet/veritran/component/view/VTSelectorComponentView;->gotSelectedSlot:Z

    .line 478
    iput v4, p0, Lnet/veritran/component/view/VTSelectorComponentView;->downX:F

    .line 479
    iput v6, p0, Lnet/veritran/component/view/VTSelectorComponentView;->downY:F

    goto :goto_0

    .line 484
    :pswitch_1
    iget-boolean v8, p0, Lnet/veritran/component/view/VTSelectorComponentView;->gotSelectedSlot:Z

    if-eqz v8, :cond_2

    .line 485
    iget-object v8, p0, Lnet/veritran/component/view/VTSelectorComponentView;->slotPositions:[F

    aget v8, v8, v9

    cmpl-float v8, v4, v8

    if-ltz v8, :cond_0

    iget-object v8, p0, Lnet/veritran/component/view/VTSelectorComponentView;->slotPositions:[F

    iget v9, p0, Lnet/veritran/component/view/VTSelectorComponentView;->rangeCount:I

    add-int/lit8 v9, v9, -0x1

    aget v8, v8, v9

    cmpg-float v8, v4, v8

    if-gtz v8, :cond_0

    .line 487
    iput v4, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentSlidingX:F

    .line 488
    iput v6, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentSlidingY:F

    .line 490
    invoke-direct {p0, v4, v6}, Lnet/veritran/component/view/VTSelectorComponentView;->getNearSlot(FF)I

    move-result v2

    .line 491
    .local v2, "nearSlot":I
    iget-object v8, p0, Lnet/veritran/component/view/VTSelectorComponentView;->imageBitmapsList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 492
    iget-object v8, p0, Lnet/veritran/component/view/VTSelectorComponentView;->imageBitmapsList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    iput-object v8, p0, Lnet/veritran/component/view/VTSelectorComponentView;->imageBitmap:Landroid/graphics/Bitmap;

    .line 495
    :cond_1
    invoke-virtual {p0}, Lnet/veritran/component/view/VTSelectorComponentView;->invalidate()V

    goto :goto_0

    .line 498
    .end local v2    # "nearSlot":I
    :cond_2
    iget v8, p0, Lnet/veritran/component/view/VTSelectorComponentView;->downX:F

    sub-float v8, v4, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 499
    .local v5, "xDisplacement":F
    iget v8, p0, Lnet/veritran/component/view/VTSelectorComponentView;->downY:F

    sub-float v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 503
    .local v7, "yDisplacement":F
    cmpg-float v8, v5, v7

    if-gez v8, :cond_0

    const/high16 v8, 0x41200000    # 10.0f

    cmpl-float v8, v7, v8

    if-lez v8, :cond_0

    .line 504
    invoke-virtual {p0}, Lnet/veritran/component/view/VTSelectorComponentView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 511
    .end local v5    # "xDisplacement":F
    .end local v7    # "yDisplacement":F
    :pswitch_2
    iput v4, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentSlidingX:F

    .line 512
    iput v6, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentSlidingY:F

    .line 514
    iget v8, p0, Lnet/veritran/component/view/VTSelectorComponentView;->downX:F

    iget v9, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentSlidingX:F

    iget v10, p0, Lnet/veritran/component/view/VTSelectorComponentView;->slotRadius:F

    sub-float/2addr v9, v10

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    iget v8, p0, Lnet/veritran/component/view/VTSelectorComponentView;->downX:F

    iget v9, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentSlidingX:F

    iget v10, p0, Lnet/veritran/component/view/VTSelectorComponentView;->slotRadius:F

    add-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    iget v8, p0, Lnet/veritran/component/view/VTSelectorComponentView;->downY:F

    iget v9, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentSlidingY:F

    iget v10, p0, Lnet/veritran/component/view/VTSelectorComponentView;->slotRadius:F

    sub-float/2addr v9, v10

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    iget v8, p0, Lnet/veritran/component/view/VTSelectorComponentView;->downY:F

    iget v9, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentSlidingY:F

    iget v10, p0, Lnet/veritran/component/view/VTSelectorComponentView;->slotRadius:F

    add-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    iget-boolean v8, p0, Lnet/veritran/component/view/VTSelectorComponentView;->gotSelectedSlot:Z

    if-eqz v8, :cond_4

    :cond_3
    iget-boolean v8, p0, Lnet/veritran/component/view/VTSelectorComponentView;->gotSelectedSlot:Z

    if-eqz v8, :cond_0

    .line 519
    :cond_4
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iput-boolean v8, p0, Lnet/veritran/component/view/VTSelectorComponentView;->isEventsLock:Z

    .line 521
    new-instance v3, Ljava/lang/Thread;

    new-instance v8, Lnet/veritran/component/view/VTSelectorComponentView$2;

    invoke-direct {v8, p0}, Lnet/veritran/component/view/VTSelectorComponentView$2;-><init>(Lnet/veritran/component/view/VTSelectorComponentView;)V

    invoke-direct {v3, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 527
    .local v3, "thr":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 533
    .end local v3    # "thr":Ljava/lang/Thread;
    :pswitch_3
    iput v4, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentSlidingX:F

    .line 534
    iput v6, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentSlidingY:F

    .line 536
    iget v8, p0, Lnet/veritran/component/view/VTSelectorComponentView;->downX:F

    iget v9, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentSlidingX:F

    cmpl-float v8, v8, v9

    if-nez v8, :cond_5

    iget v8, p0, Lnet/veritran/component/view/VTSelectorComponentView;->downY:F

    iget v9, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentSlidingY:F

    cmpl-float v8, v8, v9

    if-nez v8, :cond_5

    iget-boolean v8, p0, Lnet/veritran/component/view/VTSelectorComponentView;->gotSelectedSlot:Z

    if-eqz v8, :cond_6

    :cond_5
    iget-boolean v8, p0, Lnet/veritran/component/view/VTSelectorComponentView;->gotSelectedSlot:Z

    if-eqz v8, :cond_0

    .line 539
    :cond_6
    iget v8, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentSlidingX:F

    iget v9, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentSlidingY:F

    invoke-direct {p0, v8, v9}, Lnet/veritran/component/view/VTSelectorComponentView;->isInSlot(FF)I

    move-result v1

    .line 540
    .local v1, "gotSlot":I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_0

    iget-object v8, p0, Lnet/veritran/component/view/VTSelectorComponentView;->imageBitmapsList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 541
    iget-object v8, p0, Lnet/veritran/component/view/VTSelectorComponentView;->imageBitmapsList:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    iput-object v8, p0, Lnet/veritran/component/view/VTSelectorComponentView;->imageBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 471
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setAutoDump(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "autoDump"    # Ljava/lang/Integer;

    .prologue
    .line 979
    iput-object p1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->autoDump:Ljava/lang/Integer;

    .line 980
    return-void
.end method

.method public setBarcolor(I)V
    .locals 0
    .param p1, "barColor"    # I

    .prologue
    .line 779
    iput p1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->barColor:I

    .line 780
    return-void
.end method

.method public setComponentBackgroundColor(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    .line 809
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lnet/veritran/component/view/VTSelectorComponentView;->backgroundColor:I

    .line 810
    return-void
.end method

.method public setComponentBackgroundDrawable(Ljava/lang/String;)V
    .locals 0
    .param p1, "d"    # Ljava/lang/String;

    .prologue
    .line 805
    return-void
.end method

.method public setComponentInnerAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 815
    return-void
.end method

.method public setComponentVerticalAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 820
    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 0
    .param p1, "currentIndex"    # I

    .prologue
    .line 971
    iput p1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentIndex:I

    .line 972
    return-void
.end method

.method public setDoOnDraw(Z)V
    .locals 0
    .param p1, "doOnDraw"    # Z

    .prologue
    .line 987
    iput-boolean p1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->doOnDraw:Z

    .line 988
    return-void
.end method

.method public setFixedHeight(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 238
    iput p1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->fixedHeight:I

    .line 239
    return-void
.end method

.method public setFixedMargins(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 152
    const-string v0, "VTSelectorComponentView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFixedMargins("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iput p1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->fixedLeftMargin:F

    .line 154
    iput p2, p0, Lnet/veritran/component/view/VTSelectorComponentView;->fixedTopMargin:F

    .line 155
    iput p3, p0, Lnet/veritran/component/view/VTSelectorComponentView;->fixedRightMargin:F

    .line 156
    iput p4, p0, Lnet/veritran/component/view/VTSelectorComponentView;->fixedBottomMargin:F

    .line 157
    return-void
.end method

.method public setFixedWidth(I)V
    .locals 0
    .param p1, "w"    # I

    .prologue
    .line 224
    iput p1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->fixedWidth:I

    .line 225
    return-void
.end method

.method public setFontSize(I)V
    .locals 0
    .param p1, "fontSize"    # I

    .prologue
    .line 853
    iput p1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->fontSize:I

    .line 854
    return-void
.end method

.method public setHeightPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 829
    iput p1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->percentageHeight:F

    .line 830
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "imageBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 915
    iput-object p1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->imageBitmap:Landroid/graphics/Bitmap;

    .line 916
    return-void
.end method

.method public setImageBitmapsList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 963
    .local p1, "imageBitmapsList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    iput-object p1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->imageBitmapsList:Ljava/util/List;

    .line 964
    return-void
.end method

.method public setPercentageMargins(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 207
    iput p1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->percentageLeftMargin:F

    .line 208
    iput p2, p0, Lnet/veritran/component/view/VTSelectorComponentView;->percentageTopMargin:F

    .line 209
    iput p3, p0, Lnet/veritran/component/view/VTSelectorComponentView;->percentageRightMargin:F

    .line 210
    iput p4, p0, Lnet/veritran/component/view/VTSelectorComponentView;->percentageBottomMargin:F

    .line 211
    return-void
.end method

.method public setRangeCount(I)V
    .locals 0
    .param p1, "rangeCount"    # I

    .prologue
    .line 879
    iput p1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->rangeCount:I

    .line 880
    return-void
.end method

.method public setSelectedFontSize(I)V
    .locals 0
    .param p1, "selectedFontSize"    # I

    .prologue
    .line 862
    iput p1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->selectedFontSize:I

    .line 863
    return-void
.end method

.method public setSelectedTextColor(I)V
    .locals 0
    .param p1, "selectedTextColor"    # I

    .prologue
    .line 845
    iput p1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->selectedTextColor:I

    .line 846
    return-void
.end method

.method public setSelectedTextPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "selectedTextPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 907
    iput-object p1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->selectedTextPaint:Landroid/graphics/Paint;

    .line 908
    return-void
.end method

.method public setSelectedTextTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1, "selectedTextTypeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 931
    iput-object p1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->selectedTextTypeface:Landroid/graphics/Typeface;

    .line 932
    return-void
.end method

.method public setSelectorItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/component/VTSelectorItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 887
    .local p1, "selectorItems":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/component/VTSelectorItem;>;"
    iput-object p1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->selectorItems:Ljava/util/List;

    .line 888
    return-void
.end method

.method public setSlotPositions([F)V
    .locals 0
    .param p1, "slotPositions"    # [F

    .prologue
    .line 955
    iput-object p1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->slotPositions:[F

    .line 956
    return-void
.end method

.method public setTargetVar(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetVar"    # Ljava/lang/String;

    .prologue
    .line 939
    iput-object p1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->targetVar:Ljava/lang/String;

    .line 940
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 837
    iput p1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->textColor:I

    .line 838
    return-void
.end method

.method public setTextPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "textPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 899
    iput-object p1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->textPaint:Landroid/graphics/Paint;

    .line 900
    return-void
.end method

.method public setTextPosition(Ljava/lang/String;)V
    .locals 0
    .param p1, "textPosition"    # Ljava/lang/String;

    .prologue
    .line 870
    iput-object p1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->textPosition:Ljava/lang/String;

    .line 871
    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1, "textTypeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 923
    iput-object p1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->textTypeface:Landroid/graphics/Typeface;

    .line 924
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 947
    iput-object p1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->value:Ljava/lang/String;

    .line 948
    return-void
.end method

.method public setWidthPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 824
    iput p1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->percentageWidth:F

    .line 825
    return-void
.end method

.method public updateAutoDump()V
    .locals 3

    .prologue
    .line 764
    iget-object v1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->autoDump:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 769
    iget-object v1, p0, Lnet/veritran/component/view/VTSelectorComponentView;->selectorItems:Ljava/util/List;

    iget v2, p0, Lnet/veritran/component/view/VTSelectorComponentView;->currentIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/veritran/component/VTSelectorItem;

    invoke-virtual {v1}, Lnet/veritran/component/VTSelectorItem;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 770
    .local v0, "currentValue":Ljava/lang/String;
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/component/view/VTSelectorComponentView;->autoDump:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    .line 772
    .end local v0    # "currentValue":Ljava/lang/String;
    :cond_0
    return-void
.end method
