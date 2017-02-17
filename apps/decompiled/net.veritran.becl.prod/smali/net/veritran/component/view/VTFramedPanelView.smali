.class public Lnet/veritran/component/view/VTFramedPanelView;
.super Landroid/widget/LinearLayout;
.source "VTFramedPanelView.java"

# interfaces
.implements Lnet/veritran/component/view/VTUIComponentContainerView;


# static fields
.field private static final TAG:Ljava/lang/String; = "VTFramedPanelView"


# instance fields
.field private backgroundColor:Ljava/lang/Integer;

.field private bitmapFrameB:Landroid/graphics/Bitmap;

.field private bitmapFrameBL:Landroid/graphics/Bitmap;

.field private bitmapFrameBR:Landroid/graphics/Bitmap;

.field private bitmapFrameL:Landroid/graphics/Bitmap;

.field private bitmapFrameR:Landroid/graphics/Bitmap;

.field private bitmapFrameT:Landroid/graphics/Bitmap;

.field private bitmapFrameTL:Landroid/graphics/Bitmap;

.field private bitmapFrameTR:Landroid/graphics/Bitmap;

.field private fixedBottomMargin:F

.field private fixedHeight:I

.field private fixedLeftMargin:F

.field private fixedRightMargin:F

.field private fixedTopMargin:F

.field private fixedWidth:I

.field private frameImageName:Ljava/lang/String;

.field private frameImageOrigin:Ljava/lang/String;

.field frameWidthBottom:F

.field frameWidthLeft:F

.field frameWidthRight:F

.field frameWidthTop:F

.field private isRoot:Z

.field private measuredBottomMargin:I

.field private measuredBottomPadding:I

.field private measuredLeftMargin:I

.field private measuredLeftPadding:I

.field private measuredRightMargin:I

.field private measuredRightPadding:I

.field private measuredTopMargin:I

.field private measuredTopPadding:I

.field private paintBitmap:Landroid/graphics/Paint;

.field private percHeight:F

.field private percWidth:F

.field private percentageBottomMargin:F

.field private percentageBottomPadding:F

.field private percentageLeftMargin:F

.field private percentageLeftPadding:F

.field private percentageRightMargin:F

.field private percentageRightPadding:F

.field private percentageTopMargin:F

.field private percentageTopPadding:F

.field public textAlign:Ljava/lang/String;

.field private titleFontColor:Ljava/lang/String;

.field private titleFontFamily:Ljava/lang/String;

.field private titleFontSize:Ljava/lang/String;

.field private titleFontStyle:Ljava/lang/String;

.field private titleFontWeight:Ljava/lang/String;

.field private titleValue:Ljava/lang/String;

.field public verticalAlign:Ljava/lang/String;

.field xBeginCenter:I

.field xBeginL:I

.field xBeginR:I

.field yBeginB:I

.field yBeginCenter:I

.field yBeginT:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    iput v3, p0, Lnet/veritran/component/view/VTFramedPanelView;->percWidth:F

    .line 23
    iput v3, p0, Lnet/veritran/component/view/VTFramedPanelView;->percHeight:F

    .line 25
    iput v1, p0, Lnet/veritran/component/view/VTFramedPanelView;->percentageLeftPadding:F

    .line 26
    iput v1, p0, Lnet/veritran/component/view/VTFramedPanelView;->percentageTopPadding:F

    .line 27
    iput v1, p0, Lnet/veritran/component/view/VTFramedPanelView;->percentageRightPadding:F

    .line 28
    iput v1, p0, Lnet/veritran/component/view/VTFramedPanelView;->percentageBottomPadding:F

    .line 30
    iput v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->measuredTopPadding:I

    .line 31
    iput v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->measuredRightPadding:I

    .line 32
    iput v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->measuredLeftPadding:I

    .line 33
    iput v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->measuredBottomPadding:I

    .line 35
    iput v1, p0, Lnet/veritran/component/view/VTFramedPanelView;->percentageLeftMargin:F

    .line 36
    iput v1, p0, Lnet/veritran/component/view/VTFramedPanelView;->percentageTopMargin:F

    .line 37
    iput v1, p0, Lnet/veritran/component/view/VTFramedPanelView;->percentageRightMargin:F

    .line 38
    iput v1, p0, Lnet/veritran/component/view/VTFramedPanelView;->percentageBottomMargin:F

    .line 40
    iput v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->measuredLeftMargin:I

    .line 41
    iput v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->measuredRightMargin:I

    .line 42
    iput v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->measuredTopMargin:I

    .line 43
    iput v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->measuredBottomMargin:I

    .line 45
    iput v3, p0, Lnet/veritran/component/view/VTFramedPanelView;->fixedLeftMargin:F

    .line 46
    iput v3, p0, Lnet/veritran/component/view/VTFramedPanelView;->fixedRightMargin:F

    .line 47
    iput v3, p0, Lnet/veritran/component/view/VTFramedPanelView;->fixedTopMargin:F

    .line 48
    iput v3, p0, Lnet/veritran/component/view/VTFramedPanelView;->fixedBottomMargin:F

    .line 50
    iput v4, p0, Lnet/veritran/component/view/VTFramedPanelView;->fixedWidth:I

    .line 51
    iput v4, p0, Lnet/veritran/component/view/VTFramedPanelView;->fixedHeight:I

    .line 61
    iput-boolean v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->isRoot:Z

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->paintBitmap:Landroid/graphics/Paint;

    .line 73
    iput-object v2, p0, Lnet/veritran/component/view/VTFramedPanelView;->bitmapFrameL:Landroid/graphics/Bitmap;

    .line 74
    iput-object v2, p0, Lnet/veritran/component/view/VTFramedPanelView;->bitmapFrameT:Landroid/graphics/Bitmap;

    .line 75
    iput-object v2, p0, Lnet/veritran/component/view/VTFramedPanelView;->bitmapFrameR:Landroid/graphics/Bitmap;

    .line 76
    iput-object v2, p0, Lnet/veritran/component/view/VTFramedPanelView;->bitmapFrameB:Landroid/graphics/Bitmap;

    .line 77
    iput-object v2, p0, Lnet/veritran/component/view/VTFramedPanelView;->bitmapFrameTL:Landroid/graphics/Bitmap;

    .line 78
    iput-object v2, p0, Lnet/veritran/component/view/VTFramedPanelView;->bitmapFrameTR:Landroid/graphics/Bitmap;

    .line 79
    iput-object v2, p0, Lnet/veritran/component/view/VTFramedPanelView;->bitmapFrameBL:Landroid/graphics/Bitmap;

    .line 80
    iput-object v2, p0, Lnet/veritran/component/view/VTFramedPanelView;->bitmapFrameBR:Landroid/graphics/Bitmap;

    .line 104
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/veritran/component/view/VTFramedPanelView;->setOrientation(I)V

    .line 108
    return-void
.end method

.method private static bitmapToBitmap(Landroid/graphics/Bitmap;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "drawable"    # Landroid/graphics/Bitmap;
    .param p1, "bitmapWidth"    # I
    .param p2, "bitmapHeigth"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "fontSize"    # Ljava/lang/String;
    .param p5, "fontFamily"    # Ljava/lang/String;
    .param p6, "fontStyle"    # Ljava/lang/String;
    .param p7, "fontWeight"    # Ljava/lang/String;
    .param p8, "fontColor"    # Ljava/lang/String;

    .prologue
    .line 307
    if-nez p0, :cond_1

    .line 309
    const/4 v0, 0x0

    .line 366
    :cond_0
    :goto_0
    return-object v0

    .line 312
    :cond_1
    const/4 v8, 0x1

    invoke-static {p0, p1, p2, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 314
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p3, :cond_0

    const-string v8, ""

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 317
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 319
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 324
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 327
    .local v4, "paint":Landroid/graphics/Paint;
    invoke-static/range {p8 .. p8}, Lnet/veritran/VTAbstractActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 330
    invoke-static {p4}, Lnet/veritran/utils/VTFontHelper;->resolveTextSize(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 332
    invoke-static/range {p5 .. p7}, Lnet/veritran/utils/VTFontHelper;->resolveTextFamily(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 333
    invoke-static {p5}, Lnet/veritran/utils/VTFontHelper;->resolveTextCustom(Ljava/lang/String;)Z

    move-result v3

    .line 334
    .local v3, "fontCustom":Z
    if-eqz v3, :cond_2

    invoke-static/range {p7 .. p7}, Lnet/veritran/utils/VTFontHelper;->resolveTextBold(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 335
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 337
    :cond_2
    if-eqz v3, :cond_3

    invoke-static/range {p6 .. p6}, Lnet/veritran/utils/VTFontHelper;->resolveTextItalic(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 338
    const/high16 v8, -0x41800000    # -0.25f

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 341
    :cond_3
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 346
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 349
    .local v1, "bounds":Landroid/graphics/Rect;
    const/high16 v5, 0x3f800000    # 1.0f

    .line 350
    .local v5, "scale":F
    const/4 v8, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4, p3, v8, v9, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 352
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-le v8, p1, :cond_4

    .line 354
    const/high16 v8, 0x41200000    # 10.0f

    div-float v8, v5, v8

    sub-float/2addr v5, v8

    .line 355
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 357
    const/4 v8, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4, p3, v8, v9, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    goto :goto_1

    .line 360
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v6, v8, 0x2

    .line 361
    .local v6, "x":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v8, v9

    div-int/lit8 v7, v8, 0x2

    .line 363
    .local v7, "y":I
    int-to-float v8, v6

    int-to-float v9, v7

    invoke-virtual {v2, p3, v8, v9, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 865
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 872
    iget-object v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->bitmapFrameL:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->bitmapFrameL:Landroid/graphics/Bitmap;

    iget v1, p0, Lnet/veritran/component/view/VTFramedPanelView;->xBeginL:I

    int-to-float v1, v1

    iget v2, p0, Lnet/veritran/component/view/VTFramedPanelView;->yBeginCenter:I

    int-to-float v2, v2

    iget-object v3, p0, Lnet/veritran/component/view/VTFramedPanelView;->paintBitmap:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 875
    :cond_0
    iget-object v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->bitmapFrameTL:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 876
    iget-object v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->bitmapFrameTL:Landroid/graphics/Bitmap;

    iget v1, p0, Lnet/veritran/component/view/VTFramedPanelView;->xBeginL:I

    int-to-float v1, v1

    iget v2, p0, Lnet/veritran/component/view/VTFramedPanelView;->yBeginT:I

    int-to-float v2, v2

    iget-object v3, p0, Lnet/veritran/component/view/VTFramedPanelView;->paintBitmap:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 878
    :cond_1
    iget-object v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->bitmapFrameT:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 879
    iget-object v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->bitmapFrameT:Landroid/graphics/Bitmap;

    iget v1, p0, Lnet/veritran/component/view/VTFramedPanelView;->xBeginCenter:I

    int-to-float v1, v1

    iget v2, p0, Lnet/veritran/component/view/VTFramedPanelView;->yBeginT:I

    int-to-float v2, v2

    iget-object v3, p0, Lnet/veritran/component/view/VTFramedPanelView;->paintBitmap:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 881
    :cond_2
    iget-object v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->bitmapFrameTR:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 882
    iget-object v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->bitmapFrameTR:Landroid/graphics/Bitmap;

    iget v1, p0, Lnet/veritran/component/view/VTFramedPanelView;->xBeginR:I

    int-to-float v1, v1

    iget v2, p0, Lnet/veritran/component/view/VTFramedPanelView;->yBeginT:I

    int-to-float v2, v2

    iget-object v3, p0, Lnet/veritran/component/view/VTFramedPanelView;->paintBitmap:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 884
    :cond_3
    iget-object v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->bitmapFrameR:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 885
    iget-object v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->bitmapFrameR:Landroid/graphics/Bitmap;

    iget v1, p0, Lnet/veritran/component/view/VTFramedPanelView;->xBeginR:I

    int-to-float v1, v1

    iget v2, p0, Lnet/veritran/component/view/VTFramedPanelView;->yBeginCenter:I

    int-to-float v2, v2

    iget-object v3, p0, Lnet/veritran/component/view/VTFramedPanelView;->paintBitmap:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 887
    :cond_4
    iget-object v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->bitmapFrameBR:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 888
    iget-object v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->bitmapFrameBR:Landroid/graphics/Bitmap;

    iget v1, p0, Lnet/veritran/component/view/VTFramedPanelView;->xBeginR:I

    int-to-float v1, v1

    iget v2, p0, Lnet/veritran/component/view/VTFramedPanelView;->yBeginB:I

    int-to-float v2, v2

    iget-object v3, p0, Lnet/veritran/component/view/VTFramedPanelView;->paintBitmap:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 890
    :cond_5
    iget-object v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->bitmapFrameB:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 891
    iget-object v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->bitmapFrameB:Landroid/graphics/Bitmap;

    iget v1, p0, Lnet/veritran/component/view/VTFramedPanelView;->xBeginCenter:I

    int-to-float v1, v1

    iget v2, p0, Lnet/veritran/component/view/VTFramedPanelView;->yBeginB:I

    int-to-float v2, v2

    iget-object v3, p0, Lnet/veritran/component/view/VTFramedPanelView;->paintBitmap:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 893
    :cond_6
    iget-object v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->bitmapFrameBL:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    .line 894
    iget-object v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->bitmapFrameBL:Landroid/graphics/Bitmap;

    iget v1, p0, Lnet/veritran/component/view/VTFramedPanelView;->xBeginL:I

    int-to-float v1, v1

    iget v2, p0, Lnet/veritran/component/view/VTFramedPanelView;->yBeginB:I

    int-to-float v2, v2

    iget-object v3, p0, Lnet/veritran/component/view/VTFramedPanelView;->paintBitmap:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 898
    :cond_7
    return-void
.end method

.method public getFixedHeight()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->fixedHeight:I

    return v0
.end method

.method public getFixedWidth()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->fixedWidth:I

    return v0
.end method

.method public getHeightPercentage()F
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->percHeight:F

    return v0
.end method

.method public getMeasuredBottomMargin()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->measuredBottomMargin:I

    return v0
.end method

.method public getMeasuredBottomPadding()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->measuredBottomPadding:I

    return v0
.end method

.method public getMeasuredLeftMargin()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->measuredLeftMargin:I

    return v0
.end method

.method public getMeasuredLeftPadding()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->measuredLeftPadding:I

    return v0
.end method

.method public getMeasuredRightMargin()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->measuredRightMargin:I

    return v0
.end method

.method public getMeasuredRightPadding()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->measuredRightPadding:I

    return v0
.end method

.method public getMeasuredTopMargin()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->measuredTopMargin:I

    return v0
.end method

.method public getMeasuredTopPadding()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->measuredTopPadding:I

    return v0
.end method

.method public getWidthPercentage()F
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->percWidth:F

    return v0
.end method

.method public isRoot()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->isRoot:Z

    return v0
.end method

.method public measureAbsoluteMargins()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v1, -0x40800000    # -1.0f

    .line 201
    iget v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->fixedLeftMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->percentageLeftMargin:F

    .line 202
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_0
    iput v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->measuredLeftMargin:I

    .line 203
    iget v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->fixedRightMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->percentageRightMargin:F

    .line 204
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_1
    iput v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->measuredRightMargin:I

    .line 205
    iget v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->fixedTopMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->percentageTopMargin:F

    .line 206
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_2
    iput v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->measuredTopMargin:I

    .line 207
    iget v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->fixedBottomMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->percentageBottomMargin:F

    .line 208
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_3
    iput v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->measuredBottomMargin:I

    .line 209
    return-void

    .line 202
    :cond_0
    iget v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->fixedLeftMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 204
    :cond_1
    iget v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->fixedRightMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_1

    .line 206
    :cond_2
    iget v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->fixedTopMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_2

    .line 208
    :cond_3
    iget v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->fixedBottomMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_3
.end method

.method public measureAbsolutePaddings()V
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->percentageLeftPadding:F

    .line 214
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    iput v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->measuredLeftPadding:I

    .line 215
    iget v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->percentageRightPadding:F

    .line 216
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    iput v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->measuredRightPadding:I

    .line 217
    iget v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->percentageTopPadding:F

    .line 218
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    iput v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->measuredTopPadding:I

    .line 219
    iget v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->percentageBottomPadding:F

    .line 220
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    iput v0, p0, Lnet/veritran/component/view/VTFramedPanelView;->measuredBottomPadding:I

    .line 221
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 21
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 718
    const-string v18, "VTFramedPanelView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " onLayout -> left:+"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";top:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";right:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";bottom:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const-string v18, "VTFramedPanelView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " onLayout -> getLeft():+"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getLeft()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";getTop():"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTop()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";getWidth():"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getWidth()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";getHeight():"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getHeight()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getChildCount()I

    move-result v2

    .line 744
    .local v2, "childCount":I
    const/4 v15, 0x0

    .line 745
    .local v15, "xChildrenStart":I
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getWidth()I

    move-result v18

    add-int v18, v18, v15

    add-int/lit8 v14, v18, 0x0

    .line 746
    .local v14, "xChildrenEnd":I
    const/16 v17, 0x0

    .line 747
    .local v17, "yChildrenStart":I
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getHeight()I

    move-result v18

    add-int v18, v18, v17

    add-int/lit8 v16, v18, 0x0

    .line 750
    .local v16, "yChildrenEnd":I
    move v9, v15

    .line 751
    .local v9, "nleft":I
    move/from16 v10, v17

    .line 752
    .local v10, "ntop":I
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTFramedPanelView;->measuredTopPadding:I

    move/from16 v18, v0

    add-int/lit8 v10, v18, 0x0

    .line 756
    const/4 v5, 0x0

    .line 757
    .local v5, "childrenHeight":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v2, :cond_0

    .line 758
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lnet/veritran/component/view/VTFramedPanelView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lnet/veritran/component/view/VTUIComponentView;

    .local v12, "v":Lnet/veritran/component/view/VTUIComponentView;
    move-object/from16 v18, v12

    .line 759
    check-cast v18, Landroid/view/View;

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 760
    .local v3, "childHeight":I
    invoke-interface {v12}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredTopMargin()I

    move-result v18

    add-int v5, v5, v18

    .line 761
    invoke-interface {v12}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredBottomMargin()I

    move-result v18

    add-int v5, v5, v18

    .line 762
    add-int/2addr v5, v3

    .line 757
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 764
    .end local v3    # "childHeight":I
    .end local v12    # "v":Lnet/veritran/component/view/VTUIComponentView;
    :cond_0
    const-string v18, "VTFramedPanelView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " childrenHeight :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTFramedPanelView;->verticalAlign:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "middle"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 766
    sub-int v18, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTFramedPanelView;->measuredTopPadding:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTFramedPanelView;->measuredBottomPadding:I

    move/from16 v19, v0

    sub-int v6, v18, v19

    .line 767
    .local v6, "hh":I
    const-string v18, "VTFramedPanelView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "Aligning middle: hh :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    sub-int v18, v6, v5

    div-int/lit8 v11, v18, 0x2

    .line 769
    .local v11, "spacer":I
    const-string v18, "VTFramedPanelView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "Aligning middle: spacer :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    add-int/2addr v10, v11

    .line 778
    .end local v6    # "hh":I
    .end local v11    # "spacer":I
    :cond_1
    :goto_1
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v2, :cond_5

    .line 779
    const-string v18, "VTFramedPanelView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " laying["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lnet/veritran/component/view/VTFramedPanelView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lnet/veritran/component/view/VTUIComponentView;

    .restart local v12    # "v":Lnet/veritran/component/view/VTUIComponentView;
    move-object/from16 v18, v12

    .line 781
    check-cast v18, Landroid/view/View;

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .local v4, "childWidth":I
    move-object/from16 v18, v12

    .line 782
    check-cast v18, Landroid/view/View;

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 785
    .restart local v3    # "childHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTFramedPanelView;->measuredLeftPadding:I

    move/from16 v18, v0

    add-int/lit8 v9, v18, 0x0

    .line 786
    const-string v18, "VTFramedPanelView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " laying["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] nleft w/padding:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    invoke-interface {v12}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredLeftMargin()I

    move-result v18

    add-int v9, v9, v18

    .line 788
    const-string v18, "VTFramedPanelView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " laying["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] nleft w/child margin:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    const-string v18, "VTFramedPanelView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " laying["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] ntop w/padding:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    invoke-interface {v12}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredTopMargin()I

    move-result v18

    add-int v10, v10, v18

    .line 796
    const-string v18, "VTFramedPanelView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " laying["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] ntop w/child margin:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    add-int v8, v10, v3

    .line 799
    .local v8, "nbottom":I
    const-string v18, "VTFramedPanelView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " laying["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] nbottom:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    invoke-interface {v12}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredBottomMargin()I

    move-result v18

    add-int v8, v8, v18

    .line 801
    const-string v18, "VTFramedPanelView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " laying["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] nbottom 2:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTFramedPanelView;->textAlign:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "center"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 817
    sub-int v18, v14, v15

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTFramedPanelView;->measuredLeftPadding:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTFramedPanelView;->measuredRightPadding:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    invoke-interface {v12}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredLeftMargin()I

    move-result v19

    sub-int v18, v18, v19

    invoke-interface {v12}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredRightMargin()I

    move-result v19

    sub-int v13, v18, v19

    .line 818
    .local v13, "ww":I
    const-string v18, "VTFramedPanelView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "Aligning center: ww :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    sub-int v18, v13, v4

    div-int/lit8 v11, v18, 0x2

    .line 820
    .restart local v11    # "spacer":I
    const-string v18, "VTFramedPanelView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "Aligning center: spacer :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    add-int/2addr v9, v11

    .line 839
    .end local v11    # "spacer":I
    .end local v13    # "ww":I
    :cond_2
    :goto_3
    check-cast v12, Landroid/view/View;

    .end local v12    # "v":Lnet/veritran/component/view/VTUIComponentView;
    add-int v18, v9, v4

    add-int v19, v10, v3

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v9, v10, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 840
    const-string v18, "VTFramedPanelView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " laying["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] -> left:+"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";top:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";right:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    add-int v20, v9, v4

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";bottom:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    add-int v20, v10, v3

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    move v9, v15

    .line 842
    move v10, v8

    .line 844
    const-string v18, "VTFramedPanelView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " laying["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] ntop:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 771
    .end local v3    # "childHeight":I
    .end local v4    # "childWidth":I
    .end local v8    # "nbottom":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTFramedPanelView;->verticalAlign:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "bottom"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 772
    sub-int v18, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTFramedPanelView;->measuredTopPadding:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTFramedPanelView;->measuredBottomPadding:I

    move/from16 v19, v0

    sub-int v6, v18, v19

    .line 773
    .restart local v6    # "hh":I
    const-string v18, "VTFramedPanelView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "Aligning middle: hh :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    sub-int v11, v6, v5

    .line 775
    .restart local v11    # "spacer":I
    const-string v18, "VTFramedPanelView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "Aligning middle: spacer :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    add-int/2addr v10, v11

    goto/16 :goto_1

    .line 822
    .end local v6    # "hh":I
    .end local v11    # "spacer":I
    .restart local v3    # "childHeight":I
    .restart local v4    # "childWidth":I
    .restart local v8    # "nbottom":I
    .restart local v12    # "v":Lnet/veritran/component/view/VTUIComponentView;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTFramedPanelView;->textAlign:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "right"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 823
    sub-int v18, v14, v15

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTFramedPanelView;->measuredLeftPadding:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTFramedPanelView;->measuredRightPadding:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    invoke-interface {v12}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredLeftMargin()I

    move-result v19

    sub-int v18, v18, v19

    invoke-interface {v12}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredRightMargin()I

    move-result v19

    sub-int v13, v18, v19

    .line 824
    .restart local v13    # "ww":I
    const-string v18, "VTFramedPanelView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "Aligning right: ww :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    sub-int v11, v13, v4

    .line 826
    .restart local v11    # "spacer":I
    const-string v18, "VTFramedPanelView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "Aligning right: spacer :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    add-int/2addr v9, v11

    goto/16 :goto_3

    .line 849
    .end local v3    # "childHeight":I
    .end local v4    # "childWidth":I
    .end local v8    # "nbottom":I
    .end local v11    # "spacer":I
    .end local v12    # "v":Lnet/veritran/component/view/VTUIComponentView;
    .end local v13    # "ww":I
    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 36
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 434
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    .line 435
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v7, v8}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 715
    :goto_0
    return-void

    .line 439
    :cond_0
    const-string v7, "VTFramedPanelView"

    const-string v8, "....................................."

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string v7, "VTFramedPanelView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " onMeasure ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lnet/veritran/component/view/VTFramedPanelView;->isRoot:Z

    if-eqz v7, :cond_1

    const-string v7, "VTFramedPanelView"

    const-string v8, "IS ROOT"

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    :cond_1
    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lnet/veritran/component/view/VTFramedPanelView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 444
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v31

    .line 445
    .local v31, "mw":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v28

    .line 446
    .local v28, "mh":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v33

    .line 447
    .local v33, "sw":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v32

    .line 448
    .local v32, "sh":I
    invoke-static/range {v31 .. v31}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v30

    .line 449
    .local v30, "modeWidth":Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v29

    .line 450
    .local v29, "modeHeight":Ljava/lang/String;
    const-string v7, "VTFramedPanelView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " onMeasure -> width("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v33

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";height("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v32

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    move-object/from16 v0, p0

    iget v7, v0, Lnet/veritran/component/view/VTFramedPanelView;->fixedWidth:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    .line 452
    const/high16 v31, 0x40000000    # 2.0f

    .line 453
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTFramedPanelView;->fixedWidth:I

    move/from16 v33, v0

    .line 455
    :cond_2
    move-object/from16 v0, p0

    iget v7, v0, Lnet/veritran/component/view/VTFramedPanelView;->fixedHeight:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    .line 456
    const/high16 v28, 0x40000000    # 2.0f

    .line 457
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTFramedPanelView;->fixedHeight:I

    move/from16 v32, v0

    .line 459
    :cond_3
    if-nez v28, :cond_4

    if-nez v32, :cond_4

    .line 460
    const/high16 v28, -0x80000000

    .line 461
    const v32, 0xffffff

    .line 462
    const-string v7, "VTFramedPanelView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " onMeasure REDEF! -> width("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v33

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";height("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v32

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->measureAbsoluteMargins()V

    .line 466
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->measureAbsolutePaddings()V

    .line 467
    const-string v7, "VTFramedPanelView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " onMeasure -> measuredLeftMargin:+"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lnet/veritran/component/view/VTFramedPanelView;->measuredLeftMargin:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";measuredTopMargin:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lnet/veritran/component/view/VTFramedPanelView;->measuredTopMargin:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";measuredRightMargin:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lnet/veritran/component/view/VTFramedPanelView;->measuredRightMargin:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";measuredBottomMargin:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lnet/veritran/component/view/VTFramedPanelView;->measuredBottomMargin:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    move/from16 v14, v33

    .line 471
    .local v14, "availableWidthForComponent":I
    move-object/from16 v0, p0

    iget v7, v0, Lnet/veritran/component/view/VTFramedPanelView;->percWidth:F

    const/high16 v8, -0x40800000    # -1.0f

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_5

    .line 472
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lnet/veritran/component/view/VTFramedPanelView;->isRoot:Z

    if-eqz v7, :cond_5

    .line 473
    int-to-float v7, v14

    move-object/from16 v0, p0

    iget v8, v0, Lnet/veritran/component/view/VTFramedPanelView;->percWidth:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    float-to-double v8, v7

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-int v14, v8

    .line 476
    :cond_5
    const-string v7, "VTFramedPanelView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " pre:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    move-object/from16 v0, p0

    iget v7, v0, Lnet/veritran/component/view/VTFramedPanelView;->measuredLeftMargin:I

    sub-int/2addr v14, v7

    .line 478
    const-string v7, "VTFramedPanelView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " post left:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    move-object/from16 v0, p0

    iget v7, v0, Lnet/veritran/component/view/VTFramedPanelView;->measuredRightMargin:I

    sub-int/2addr v14, v7

    .line 480
    const-string v7, "VTFramedPanelView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " post right:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    move/from16 v13, v32

    .line 486
    .local v13, "availableHeightForComponent":I
    move-object/from16 v0, p0

    iget v7, v0, Lnet/veritran/component/view/VTFramedPanelView;->percHeight:F

    const/high16 v8, -0x40800000    # -1.0f

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_6

    .line 487
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lnet/veritran/component/view/VTFramedPanelView;->isRoot:Z

    if-eqz v7, :cond_6

    .line 488
    int-to-float v7, v13

    move-object/from16 v0, p0

    iget v8, v0, Lnet/veritran/component/view/VTFramedPanelView;->percHeight:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    float-to-double v8, v7

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-int v13, v8

    .line 491
    :cond_6
    move-object/from16 v0, p0

    iget v7, v0, Lnet/veritran/component/view/VTFramedPanelView;->measuredTopMargin:I

    sub-int/2addr v13, v7

    .line 492
    move-object/from16 v0, p0

    iget v7, v0, Lnet/veritran/component/view/VTFramedPanelView;->measuredBottomMargin:I

    sub-int/2addr v13, v7

    .line 494
    move-object/from16 v0, p0

    iget v7, v0, Lnet/veritran/component/view/VTFramedPanelView;->measuredLeftPadding:I

    sub-int v7, v14, v7

    move-object/from16 v0, p0

    iget v8, v0, Lnet/veritran/component/view/VTFramedPanelView;->measuredRightPadding:I

    sub-int v25, v7, v8

    .line 496
    .local v25, "initialAvailableWidthForChildren":I
    move-object/from16 v0, p0

    iget v7, v0, Lnet/veritran/component/view/VTFramedPanelView;->measuredTopPadding:I

    sub-int v7, v13, v7

    move-object/from16 v0, p0

    iget v8, v0, Lnet/veritran/component/view/VTFramedPanelView;->measuredBottomPadding:I

    sub-int v24, v7, v8

    .line 500
    .local v24, "initialAvailableHeightForChildren":I
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getChildCount()I

    move-result v15

    .line 501
    .local v15, "childCount":I
    const/16 v16, 0x0

    .line 502
    .local v16, "childrenHeight":I
    const-string v7, "VTFramedPanelView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " onMeasure children="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string v7, "VTFramedPanelView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " onMeasure [availableWidthForComponent:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",availableHeightForComponent:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v7, "VTFramedPanelView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " onMeasure [initialAvailableWidthForChildren:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",initialAvailableHeightForChildren:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_1
    move/from16 v0, v23

    if-ge v0, v15, :cond_9

    .line 508
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTFramedPanelView;->getChildAt(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Lnet/veritran/component/view/VTUIComponentView;

    .line 509
    .local v34, "view":Lnet/veritran/component/view/VTUIComponentView;
    invoke-interface/range {v34 .. v34}, Lnet/veritran/component/view/VTUIComponentView;->getHeightPercentage()F

    move-result v7

    const/high16 v8, -0x40800000    # -1.0f

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_8

    .line 510
    const-string v8, "VTFramedPanelView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " Measuring "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v7, v34

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " with fixed percentage ("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {v34 .. v34}, Lnet/veritran/component/view/VTUIComponentView;->getHeightPercentage()F

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    move/from16 v0, v24

    int-to-float v7, v0

    invoke-interface/range {v34 .. v34}, Lnet/veritran/component/view/VTUIComponentView;->getHeightPercentage()F

    move-result v8

    mul-float/2addr v7, v8

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    float-to-double v8, v7

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-int v0, v8

    move/from16 v22, v0

    .line 512
    .local v22, "h":I
    invoke-interface/range {v34 .. v34}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredTopMargin()I

    move-result v7

    sub-int v22, v22, v7

    .line 513
    invoke-interface/range {v34 .. v34}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredBottomMargin()I

    move-result v7

    sub-int v22, v22, v7

    .line 514
    const/high16 v7, 0x40000000    # 2.0f

    move/from16 v0, v22

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    .line 515
    .local v26, "measurecSpecHeight":I
    move/from16 v35, v25

    .line 516
    .local v35, "w":I
    invoke-interface/range {v34 .. v34}, Lnet/veritran/component/view/VTUIComponentView;->getWidthPercentage()F

    move-result v7

    const/high16 v8, -0x40800000    # -1.0f

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_7

    .line 517
    move/from16 v0, v35

    int-to-float v7, v0

    invoke-interface/range {v34 .. v34}, Lnet/veritran/component/view/VTUIComponentView;->getWidthPercentage()F

    move-result v8

    mul-float/2addr v7, v8

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    float-to-double v8, v7

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-int v0, v8

    move/from16 v35, v0

    .line 519
    :cond_7
    invoke-interface/range {v34 .. v34}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredLeftMargin()I

    move-result v7

    sub-int v35, v35, v7

    .line 520
    invoke-interface/range {v34 .. v34}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredRightMargin()I

    move-result v7

    sub-int v35, v35, v7

    .line 521
    const/high16 v7, -0x80000000

    move/from16 v0, v35

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v27

    .line 522
    .local v27, "measurecSpecWidth":I
    const-string v8, "VTFramedPanelView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " Measuring "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v7, v34

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " with w="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v35

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ",h="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v7, v34

    .line 523
    check-cast v7, Landroid/view/View;

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v26

    invoke-virtual {v0, v7, v1, v2}, Lnet/veritran/component/view/VTFramedPanelView;->measureChild(Landroid/view/View;II)V

    move-object/from16 v7, v34

    .line 524
    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v16, v16, v7

    .line 525
    invoke-interface/range {v34 .. v34}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredTopMargin()I

    move-result v7

    invoke-interface/range {v34 .. v34}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredBottomMargin()I

    move-result v8

    add-int/2addr v7, v8

    add-int v16, v16, v7

    .line 526
    const-string v8, "VTFramedPanelView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v7, v34

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " measuredWidth:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v7, v34

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ";measuredHeight:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v7, v34

    check-cast v7, Landroid/view/View;

    .line 527
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 526
    invoke-static {v8, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string v7, "VTFramedPanelView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Measuring "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    check-cast v34, Landroid/view/View;

    .end local v34    # "view":Lnet/veritran/component/view/VTUIComponentView;
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " childrenHeight:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    .end local v22    # "h":I
    .end local v26    # "measurecSpecHeight":I
    .end local v27    # "measurecSpecWidth":I
    .end local v35    # "w":I
    :cond_8
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1

    .line 534
    :cond_9
    const/16 v23, 0x0

    :goto_2
    move/from16 v0, v23

    if-ge v0, v15, :cond_e

    .line 535
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTFramedPanelView;->getChildAt(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Lnet/veritran/component/view/VTUIComponentView;

    .line 536
    .restart local v34    # "view":Lnet/veritran/component/view/VTUIComponentView;
    invoke-interface/range {v34 .. v34}, Lnet/veritran/component/view/VTUIComponentView;->measureAbsoluteMargins()V

    .line 537
    invoke-interface/range {v34 .. v34}, Lnet/veritran/component/view/VTUIComponentView;->getHeightPercentage()F

    move-result v7

    const/high16 v8, -0x40800000    # -1.0f

    cmpl-float v7, v7, v8

    if-nez v7, :cond_b

    .line 538
    const-string v8, "VTFramedPanelView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " Measuring "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v7, v34

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " without fixed percentage ("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {v34 .. v34}, Lnet/veritran/component/view/VTUIComponentView;->getHeightPercentage()F

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    sub-int v22, v24, v16

    .line 541
    .restart local v22    # "h":I
    const-string v7, "VTFramedPanelView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " h="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-interface/range {v34 .. v34}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredTopMargin()I

    move-result v7

    sub-int v22, v22, v7

    .line 543
    const-string v7, "VTFramedPanelView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " h="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-interface/range {v34 .. v34}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredBottomMargin()I

    move-result v7

    sub-int v22, v22, v7

    .line 545
    const-string v7, "VTFramedPanelView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " h="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    move-object/from16 v0, p0

    iget v7, v0, Lnet/veritran/component/view/VTFramedPanelView;->fixedHeight:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_d

    .line 548
    const-string v7, "VTFramedPanelView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with fixedHeight="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lnet/veritran/component/view/VTFramedPanelView;->fixedHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const/4 v7, 0x1

    if-ne v15, v7, :cond_c

    .line 551
    const/high16 v7, 0x40000000    # 2.0f

    move/from16 v0, v22

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    .line 552
    .restart local v26    # "measurecSpecHeight":I
    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lnet/veritran/component/view/VTUIComponentView;->setFixedHeight(I)V

    .line 559
    :goto_3
    move/from16 v35, v25

    .line 560
    .restart local v35    # "w":I
    invoke-interface/range {v34 .. v34}, Lnet/veritran/component/view/VTUIComponentView;->getWidthPercentage()F

    move-result v7

    const/high16 v8, -0x40800000    # -1.0f

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_a

    .line 561
    move/from16 v0, v35

    int-to-float v7, v0

    invoke-interface/range {v34 .. v34}, Lnet/veritran/component/view/VTUIComponentView;->getWidthPercentage()F

    move-result v8

    mul-float/2addr v7, v8

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    float-to-int v0, v7

    move/from16 v35, v0

    .line 563
    :cond_a
    invoke-interface/range {v34 .. v34}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredLeftMargin()I

    move-result v7

    sub-int v35, v35, v7

    .line 564
    invoke-interface/range {v34 .. v34}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredRightMargin()I

    move-result v7

    sub-int v35, v35, v7

    .line 565
    const-string v8, "VTFramedPanelView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " Measuring "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v7, v34

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " with w="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v35

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ",h="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const/high16 v7, -0x80000000

    move/from16 v0, v35

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v27

    .restart local v27    # "measurecSpecWidth":I
    move-object/from16 v7, v34

    .line 567
    check-cast v7, Landroid/view/View;

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v26

    invoke-virtual {v0, v7, v1, v2}, Lnet/veritran/component/view/VTFramedPanelView;->measureChild(Landroid/view/View;II)V

    move-object/from16 v7, v34

    .line 568
    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v16, v16, v7

    .line 569
    invoke-interface/range {v34 .. v34}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredTopMargin()I

    move-result v7

    invoke-interface/range {v34 .. v34}, Lnet/veritran/component/view/VTUIComponentView;->getMeasuredBottomMargin()I

    move-result v8

    add-int/2addr v7, v8

    add-int v16, v16, v7

    .line 570
    const-string v8, "VTFramedPanelView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v7, v34

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " measuredWidth:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v7, v34

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ";measuredHeight:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v7, v34

    check-cast v7, Landroid/view/View;

    .line 571
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 570
    invoke-static {v8, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const-string v7, "VTFramedPanelView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Measuring "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    check-cast v34, Landroid/view/View;

    .end local v34    # "view":Lnet/veritran/component/view/VTUIComponentView;
    invoke-virtual/range {v34 .. v34}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " childrenHeight:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    .end local v22    # "h":I
    .end local v26    # "measurecSpecHeight":I
    .end local v27    # "measurecSpecWidth":I
    .end local v35    # "w":I
    :cond_b
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    .line 554
    .restart local v22    # "h":I
    .restart local v34    # "view":Lnet/veritran/component/view/VTUIComponentView;
    :cond_c
    const/high16 v7, -0x80000000

    move/from16 v0, v22

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    .restart local v26    # "measurecSpecHeight":I
    goto/16 :goto_3

    .line 557
    .end local v26    # "measurecSpecHeight":I
    :cond_d
    const/high16 v7, -0x80000000

    move/from16 v0, v22

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    .restart local v26    # "measurecSpecHeight":I
    goto/16 :goto_3

    .line 577
    .end local v22    # "h":I
    .end local v26    # "measurecSpecHeight":I
    .end local v34    # "view":Lnet/veritran/component/view/VTUIComponentView;
    :cond_e
    const-string v7, "VTFramedPanelView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ->childrenHeight:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    move-object/from16 v0, p0

    iget v7, v0, Lnet/veritran/component/view/VTFramedPanelView;->measuredTopPadding:I

    move-object/from16 v0, p0

    iget v8, v0, Lnet/veritran/component/view/VTFramedPanelView;->measuredBottomPadding:I

    add-int/2addr v7, v8

    add-int v16, v16, v7

    .line 579
    const-string v7, "VTFramedPanelView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " childrenHeight (plus padding):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string v7, "VTFramedPanelView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " onMeasure -> percWidth:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lnet/veritran/component/view/VTFramedPanelView;->percWidth:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";percHeight:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lnet/veritran/component/view/VTFramedPanelView;->percHeight:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    move-object/from16 v0, p0

    iget v7, v0, Lnet/veritran/component/view/VTFramedPanelView;->fixedHeight:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_16

    .line 584
    move-object/from16 v0, p0

    iget v7, v0, Lnet/veritran/component/view/VTFramedPanelView;->percHeight:F

    const/high16 v8, -0x40800000    # -1.0f

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_14

    .line 585
    move/from16 v17, v13

    .line 600
    .local v17, "finalHeight":I
    :goto_4
    const-string v7, "VTFramedPanelView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " onMeasure -> finalWidth:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";finalHeight:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Lnet/veritran/component/view/VTFramedPanelView;->setMeasuredDimension(II)V

    .line 607
    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/veritran/component/view/VTFramedPanelView;->backgroundColor:Ljava/lang/Integer;

    if-eqz v7, :cond_f

    .line 608
    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/veritran/component/view/VTFramedPanelView;->backgroundColor:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lnet/veritran/component/view/VTFramedPanelView;->setBackgroundColor(I)V

    .line 614
    :cond_f
    move-object/from16 v0, p0

    iget v7, v0, Lnet/veritran/component/view/VTFramedPanelView;->frameWidthLeft:F

    invoke-static {v7}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v19

    .line 615
    .local v19, "frameWidthLeftPixels":I
    move-object/from16 v0, p0

    iget v7, v0, Lnet/veritran/component/view/VTFramedPanelView;->frameWidthRight:F

    invoke-static {v7}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v20

    .line 616
    .local v20, "frameWidthRightPixels":I
    move-object/from16 v0, p0

    iget v7, v0, Lnet/veritran/component/view/VTFramedPanelView;->frameWidthTop:F

    invoke-static {v7}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v21

    .line 617
    .local v21, "frameWidthTopPixels":I
    move-object/from16 v0, p0

    iget v7, v0, Lnet/veritran/component/view/VTFramedPanelView;->frameWidthBottom:F

    invoke-static {v7}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v18

    .line 628
    .local v18, "frameWidthBottomPixels":I
    move/from16 v5, v19

    .line 629
    .local v5, "imageWidth":I
    sub-int v7, v17, v21

    sub-int v6, v7, v18

    .line 630
    .local v6, "imageHeight":I
    if-lez v6, :cond_10

    .line 631
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v7

    invoke-virtual {v7}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lnet/veritran/component/view/VTFramedPanelView;->frameImageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_L"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v5, v6}, Lnet/veritran/utils/ImageHandler;->getBitmapForExactSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lnet/veritran/component/view/VTFramedPanelView;->bitmapFrameL:Landroid/graphics/Bitmap;

    .line 637
    :cond_10
    move/from16 v5, v19

    .line 638
    move/from16 v6, v21

    .line 639
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v7

    invoke-virtual {v7}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lnet/veritran/component/view/VTFramedPanelView;->frameImageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_TL"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v5, v6}, Lnet/veritran/utils/ImageHandler;->getBitmapForExactSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lnet/veritran/component/view/VTFramedPanelView;->bitmapFrameTL:Landroid/graphics/Bitmap;

    .line 649
    sub-int v7, v14, v19

    sub-int v5, v7, v20

    .line 650
    move/from16 v6, v21

    .line 652
    if-lez v5, :cond_11

    .line 653
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v7

    invoke-virtual {v7}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lnet/veritran/component/view/VTFramedPanelView;->frameImageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_T"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v5, v6}, Lnet/veritran/utils/ImageHandler;->getBitmapForExactSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 655
    .local v4, "bitmapTop":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/veritran/component/view/VTFramedPanelView;->titleValue:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/veritran/component/view/VTFramedPanelView;->titleFontSize:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lnet/veritran/component/view/VTFramedPanelView;->titleFontFamily:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/veritran/component/view/VTFramedPanelView;->titleFontStyle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/veritran/component/view/VTFramedPanelView;->titleFontWeight:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/veritran/component/view/VTFramedPanelView;->titleFontColor:Ljava/lang/String;

    invoke-static/range {v4 .. v12}, Lnet/veritran/component/view/VTFramedPanelView;->bitmapToBitmap(Landroid/graphics/Bitmap;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lnet/veritran/component/view/VTFramedPanelView;->bitmapFrameT:Landroid/graphics/Bitmap;

    .line 663
    .end local v4    # "bitmapTop":Landroid/graphics/Bitmap;
    :cond_11
    move/from16 v5, v20

    .line 664
    move/from16 v6, v21

    .line 665
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v7

    invoke-virtual {v7}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lnet/veritran/component/view/VTFramedPanelView;->frameImageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_TR"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v5, v6}, Lnet/veritran/utils/ImageHandler;->getBitmapForExactSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lnet/veritran/component/view/VTFramedPanelView;->bitmapFrameTR:Landroid/graphics/Bitmap;

    .line 672
    move/from16 v5, v20

    .line 673
    sub-int v7, v17, v21

    sub-int v6, v7, v18

    .line 674
    if-lez v6, :cond_12

    .line 675
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v7

    invoke-virtual {v7}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lnet/veritran/component/view/VTFramedPanelView;->frameImageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_R"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v5, v6}, Lnet/veritran/utils/ImageHandler;->getBitmapForExactSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lnet/veritran/component/view/VTFramedPanelView;->bitmapFrameR:Landroid/graphics/Bitmap;

    .line 681
    :cond_12
    move/from16 v5, v20

    .line 682
    move/from16 v6, v18

    .line 683
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v7

    invoke-virtual {v7}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lnet/veritran/component/view/VTFramedPanelView;->frameImageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_BR"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v5, v6}, Lnet/veritran/utils/ImageHandler;->getBitmapForExactSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lnet/veritran/component/view/VTFramedPanelView;->bitmapFrameBR:Landroid/graphics/Bitmap;

    .line 690
    sub-int v7, v14, v19

    sub-int v5, v7, v20

    .line 691
    move/from16 v6, v18

    .line 692
    if-lez v5, :cond_13

    .line 693
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v7

    invoke-virtual {v7}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lnet/veritran/component/view/VTFramedPanelView;->frameImageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_B"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v5, v6}, Lnet/veritran/utils/ImageHandler;->getBitmapForExactSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lnet/veritran/component/view/VTFramedPanelView;->bitmapFrameB:Landroid/graphics/Bitmap;

    .line 699
    :cond_13
    move/from16 v5, v19

    .line 700
    move/from16 v6, v18

    .line 701
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v7

    invoke-virtual {v7}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lnet/veritran/component/view/VTFramedPanelView;->frameImageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_BL"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v5, v6}, Lnet/veritran/utils/ImageHandler;->getBitmapForExactSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lnet/veritran/component/view/VTFramedPanelView;->bitmapFrameBL:Landroid/graphics/Bitmap;

    .line 707
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Lnet/veritran/component/view/VTFramedPanelView;->xBeginL:I

    .line 708
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lnet/veritran/component/view/VTFramedPanelView;->xBeginCenter:I

    .line 709
    sub-int v7, v14, v20

    move-object/from16 v0, p0

    iput v7, v0, Lnet/veritran/component/view/VTFramedPanelView;->xBeginR:I

    .line 711
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Lnet/veritran/component/view/VTFramedPanelView;->yBeginT:I

    .line 712
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lnet/veritran/component/view/VTFramedPanelView;->yBeginCenter:I

    .line 713
    sub-int v7, v17, v18

    move-object/from16 v0, p0

    iput v7, v0, Lnet/veritran/component/view/VTFramedPanelView;->yBeginB:I

    goto/16 :goto_0

    .line 588
    .end local v5    # "imageWidth":I
    .end local v6    # "imageHeight":I
    .end local v17    # "finalHeight":I
    .end local v18    # "frameWidthBottomPixels":I
    .end local v19    # "frameWidthLeftPixels":I
    .end local v20    # "frameWidthRightPixels":I
    .end local v21    # "frameWidthTopPixels":I
    :cond_14
    move/from16 v0, v16

    if-le v0, v13, :cond_15

    .line 589
    move/from16 v17, v13

    .restart local v17    # "finalHeight":I
    goto/16 :goto_4

    .line 591
    .end local v17    # "finalHeight":I
    :cond_15
    move/from16 v17, v16

    .restart local v17    # "finalHeight":I
    goto/16 :goto_4

    .line 598
    .end local v17    # "finalHeight":I
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTFramedPanelView;->fixedHeight:I

    move/from16 v17, v0

    .restart local v17    # "finalHeight":I
    goto/16 :goto_4
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 852
    const-string v0, "VTFramedPanelView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onSizeChanged -> getLeft():+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTFramedPanelView;->getLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";getTop():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";getWidth():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTFramedPanelView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";getHeight():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTFramedPanelView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    return-void
.end method

.method public setComponentBackgroundColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    .line 231
    iput-object p1, p0, Lnet/veritran/component/view/VTFramedPanelView;->backgroundColor:Ljava/lang/Integer;

    .line 232
    return-void
.end method

.method public setComponentBackgroundDrawable(Ljava/lang/String;)V
    .locals 0
    .param p1, "d"    # Ljava/lang/String;

    .prologue
    .line 953
    return-void
.end method

.method public setComponentInnerAlignment(Ljava/lang/String;)V
    .locals 3
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 236
    iput-object p1, p0, Lnet/veritran/component/view/VTFramedPanelView;->textAlign:Ljava/lang/String;

    .line 237
    const-string v0, "VTFramedPanelView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "textalign="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/component/view/VTFramedPanelView;->textAlign:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public setComponentVerticalAlignment(Ljava/lang/String;)V
    .locals 3
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 252
    iput-object p1, p0, Lnet/veritran/component/view/VTFramedPanelView;->verticalAlign:Ljava/lang/String;

    .line 253
    const-string v0, "VTFramedPanelView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verticalAlign="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/component/view/VTFramedPanelView;->verticalAlign:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public setFixedHeight(I)V
    .locals 3
    .param p1, "h"    # I

    .prologue
    .line 296
    const-string v0, "VTFramedPanelView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/component/view/VTFramedPanelView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " setFixedHeight("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iput p1, p0, Lnet/veritran/component/view/VTFramedPanelView;->fixedHeight:I

    .line 298
    return-void
.end method

.method public setFixedMargins(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 112
    const-string v0, "VTFramedPanelView"

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

    .line 113
    iput p1, p0, Lnet/veritran/component/view/VTFramedPanelView;->fixedLeftMargin:F

    .line 114
    iput p2, p0, Lnet/veritran/component/view/VTFramedPanelView;->fixedTopMargin:F

    .line 115
    iput p3, p0, Lnet/veritran/component/view/VTFramedPanelView;->fixedRightMargin:F

    .line 116
    iput p4, p0, Lnet/veritran/component/view/VTFramedPanelView;->fixedBottomMargin:F

    .line 117
    return-void
.end method

.method public setFixedWidth(I)V
    .locals 0
    .param p1, "w"    # I

    .prologue
    .line 282
    iput p1, p0, Lnet/veritran/component/view/VTFramedPanelView;->fixedWidth:I

    .line 283
    return-void
.end method

.method public setFrameImageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "frameImageName"    # Ljava/lang/String;

    .prologue
    .line 901
    iput-object p1, p0, Lnet/veritran/component/view/VTFramedPanelView;->frameImageName:Ljava/lang/String;

    .line 902
    return-void
.end method

.method public setFrameImageOrigin(Ljava/lang/String;)V
    .locals 0
    .param p1, "frameImageOrigin"    # Ljava/lang/String;

    .prologue
    .line 905
    iput-object p1, p0, Lnet/veritran/component/view/VTFramedPanelView;->frameImageOrigin:Ljava/lang/String;

    .line 906
    return-void
.end method

.method public setFrameWidthBottom(F)V
    .locals 0
    .param p1, "frameWidthBottom"    # F

    .prologue
    .line 921
    iput p1, p0, Lnet/veritran/component/view/VTFramedPanelView;->frameWidthBottom:F

    .line 922
    return-void
.end method

.method public setFrameWidthLeft(F)V
    .locals 0
    .param p1, "frameWidthLeft"    # F

    .prologue
    .line 909
    iput p1, p0, Lnet/veritran/component/view/VTFramedPanelView;->frameWidthLeft:F

    .line 910
    return-void
.end method

.method public setFrameWidthRight(F)V
    .locals 0
    .param p1, "frameWidthRight"    # F

    .prologue
    .line 917
    iput p1, p0, Lnet/veritran/component/view/VTFramedPanelView;->frameWidthRight:F

    .line 918
    return-void
.end method

.method public setFrameWidthTop(F)V
    .locals 0
    .param p1, "frameWidthTop"    # F

    .prologue
    .line 913
    iput p1, p0, Lnet/veritran/component/view/VTFramedPanelView;->frameWidthTop:F

    .line 914
    return-void
.end method

.method public setHeightPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 130
    iput p1, p0, Lnet/veritran/component/view/VTFramedPanelView;->percHeight:F

    .line 131
    return-void
.end method

.method public setPercentageMargins(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 144
    const-string v0, "VTFramedPanelView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPercentageMargins("

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

    .line 146
    iput p1, p0, Lnet/veritran/component/view/VTFramedPanelView;->percentageLeftMargin:F

    .line 147
    iput p2, p0, Lnet/veritran/component/view/VTFramedPanelView;->percentageTopMargin:F

    .line 148
    iput p3, p0, Lnet/veritran/component/view/VTFramedPanelView;->percentageRightMargin:F

    .line 149
    iput p4, p0, Lnet/veritran/component/view/VTFramedPanelView;->percentageBottomMargin:F

    .line 150
    return-void
.end method

.method public setPercentagePaddings(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 153
    iput p1, p0, Lnet/veritran/component/view/VTFramedPanelView;->percentageLeftPadding:F

    .line 154
    iput p2, p0, Lnet/veritran/component/view/VTFramedPanelView;->percentageTopPadding:F

    .line 155
    iput p3, p0, Lnet/veritran/component/view/VTFramedPanelView;->percentageRightPadding:F

    .line 156
    iput p4, p0, Lnet/veritran/component/view/VTFramedPanelView;->percentageBottomPadding:F

    .line 157
    return-void
.end method

.method public setRoot(Z)V
    .locals 0
    .param p1, "isRoot"    # Z

    .prologue
    .line 267
    iput-boolean p1, p0, Lnet/veritran/component/view/VTFramedPanelView;->isRoot:Z

    .line 268
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lnet/veritran/vtuserapplication/utils/VTRandom;->getInstance()Lnet/veritran/vtuserapplication/utils/VTRandom;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/utils/VTRandom;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method public setTitleFontColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "titleFontColor"    # Ljava/lang/String;

    .prologue
    .line 937
    iput-object p1, p0, Lnet/veritran/component/view/VTFramedPanelView;->titleFontColor:Ljava/lang/String;

    .line 938
    return-void
.end method

.method public setTitleFontFamily(Ljava/lang/String;)V
    .locals 0
    .param p1, "titleFontFamily"    # Ljava/lang/String;

    .prologue
    .line 933
    iput-object p1, p0, Lnet/veritran/component/view/VTFramedPanelView;->titleFontFamily:Ljava/lang/String;

    .line 934
    return-void
.end method

.method public setTitleFontSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "titleFontSize"    # Ljava/lang/String;

    .prologue
    .line 929
    iput-object p1, p0, Lnet/veritran/component/view/VTFramedPanelView;->titleFontSize:Ljava/lang/String;

    .line 930
    return-void
.end method

.method public setTitleFontStyle(Ljava/lang/String;)V
    .locals 0
    .param p1, "titleFontStyle"    # Ljava/lang/String;

    .prologue
    .line 942
    iput-object p1, p0, Lnet/veritran/component/view/VTFramedPanelView;->titleFontStyle:Ljava/lang/String;

    .line 943
    return-void
.end method

.method public setTitleFontWeight(Ljava/lang/String;)V
    .locals 0
    .param p1, "titleFontWeight"    # Ljava/lang/String;

    .prologue
    .line 947
    iput-object p1, p0, Lnet/veritran/component/view/VTFramedPanelView;->titleFontWeight:Ljava/lang/String;

    .line 948
    return-void
.end method

.method public setTitleValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "titleValue"    # Ljava/lang/String;

    .prologue
    .line 925
    iput-object p1, p0, Lnet/veritran/component/view/VTFramedPanelView;->titleValue:Ljava/lang/String;

    .line 926
    return-void
.end method

.method public setWidthPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 125
    iput p1, p0, Lnet/veritran/component/view/VTFramedPanelView;->percWidth:F

    .line 126
    return-void
.end method
