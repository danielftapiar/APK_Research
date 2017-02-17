.class public Lnet/veritran/component/view/VTIndexScroller;
.super Ljava/lang/Object;
.source "VTIndexScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/veritran/component/view/VTIndexScroller$VTIndexScrollerInterface;
    }
.end annotation


# static fields
.field private static final STATE_HIDDEN:I = 0x0

.field private static final STATE_HIDING:I = 0x3

.field private static final STATE_SHOWING:I = 0x1

.field private static final STATE_SHOWN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "VTIndexScrollerView"


# instance fields
.field private backgroundColor:I

.field backgroundPaint:Landroid/graphics/Paint;

.field private mCurrentSection:I

.field private mHandler:Landroid/os/Handler;

.field private mIndexbarRect:Landroid/graphics/RectF;

.field private mIsIndexing:Z

.field private mListViewHeight:I

.field private mListViewWidth:I

.field private mSections:[Ljava/lang/String;

.field private mState:I

.field previewTextPaint:Landroid/graphics/Paint;

.field private rightLocation:Z

.field private scrollerInterface:Lnet/veritran/component/view/VTIndexScroller$VTIndexScrollerInterface;

.field textPaint:Landroid/graphics/Paint;

.field private textSizePixels:F

.field private widthIndexLabel:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/veritran/component/view/VTIndexScroller$VTIndexScrollerInterface;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scrollerInterface"    # Lnet/veritran/component/view/VTIndexScroller$VTIndexScrollerInterface;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v2, p0, Lnet/veritran/component/view/VTIndexScroller;->backgroundColor:I

    .line 37
    iput v1, p0, Lnet/veritran/component/view/VTIndexScroller;->textSizePixels:F

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/veritran/component/view/VTIndexScroller;->rightLocation:Z

    .line 42
    iput v1, p0, Lnet/veritran/component/view/VTIndexScroller;->widthIndexLabel:F

    .line 56
    iput v3, p0, Lnet/veritran/component/view/VTIndexScroller;->mState:I

    .line 59
    iput v2, p0, Lnet/veritran/component/view/VTIndexScroller;->mCurrentSection:I

    .line 60
    iput-boolean v3, p0, Lnet/veritran/component/view/VTIndexScroller;->mIsIndexing:Z

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/component/view/VTIndexScroller;->mSections:[Ljava/lang/String;

    .line 370
    new-instance v0, Lnet/veritran/component/view/VTIndexScroller$1;

    invoke-direct {v0, p0}, Lnet/veritran/component/view/VTIndexScroller$1;-><init>(Lnet/veritran/component/view/VTIndexScroller;)V

    iput-object v0, p0, Lnet/veritran/component/view/VTIndexScroller;->mHandler:Landroid/os/Handler;

    .line 84
    const-string v0, "VTIndexScrollerView"

    const-string v1, "VTIndexScrollerView constructor"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iput-object p2, p0, Lnet/veritran/component/view/VTIndexScroller;->scrollerInterface:Lnet/veritran/component/view/VTIndexScroller$VTIndexScrollerInterface;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lnet/veritran/component/view/VTIndexScroller;)I
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/view/VTIndexScroller;

    .prologue
    .line 34
    iget v0, p0, Lnet/veritran/component/view/VTIndexScroller;->mState:I

    return v0
.end method

.method static synthetic access$100(Lnet/veritran/component/view/VTIndexScroller;I)V
    .locals 0
    .param p0, "x0"    # Lnet/veritran/component/view/VTIndexScroller;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lnet/veritran/component/view/VTIndexScroller;->setState(I)V

    return-void
.end method

.method static synthetic access$200(Lnet/veritran/component/view/VTIndexScroller;)Lnet/veritran/component/view/VTIndexScroller$VTIndexScrollerInterface;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/view/VTIndexScroller;

    .prologue
    .line 34
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScroller;->scrollerInterface:Lnet/veritran/component/view/VTIndexScroller$VTIndexScrollerInterface;

    return-object v0
.end method

.method static synthetic access$300(Lnet/veritran/component/view/VTIndexScroller;J)V
    .locals 1
    .param p0, "x0"    # Lnet/veritran/component/view/VTIndexScroller;
    .param p1, "x1"    # J

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lnet/veritran/component/view/VTIndexScroller;->fade(J)V

    return-void
.end method

.method private fade(J)V
    .locals 5
    .param p1, "delay"    # J

    .prologue
    const/4 v1, 0x0

    .line 366
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScroller;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 367
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScroller;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 368
    return-void
.end method

.method private getSectionByPoint(F)I
    .locals 4
    .param p1, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 354
    iget-object v2, p0, Lnet/veritran/component/view/VTIndexScroller;->mSections:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/veritran/component/view/VTIndexScroller;->mSections:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_1

    .line 362
    :cond_0
    :goto_0
    return v1

    .line 357
    :cond_1
    const/4 v0, 0x0

    .line 358
    .local v0, "mIndexbarMargin":I
    iget-object v2, p0, Lnet/veritran/component/view/VTIndexScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    int-to-float v3, v0

    add-float/2addr v2, v3

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_0

    .line 360
    iget-object v2, p0, Lnet/veritran/component/view/VTIndexScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lnet/veritran/component/view/VTIndexScroller;->mIndexbarRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    add-float/2addr v2, v3

    int-to-float v3, v0

    sub-float/2addr v2, v3

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_2

    .line 361
    iget-object v1, p0, Lnet/veritran/component/view/VTIndexScroller;->mSections:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 362
    :cond_2
    iget-object v2, p0, Lnet/veritran/component/view/VTIndexScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float v2, p1, v2

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iget-object v3, p0, Lnet/veritran/component/view/VTIndexScroller;->mIndexbarRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    int-to-float v1, v1

    sub-float v1, v3, v1

    iget-object v3, p0, Lnet/veritran/component/view/VTIndexScroller;->mSections:[Ljava/lang/String;

    array-length v3, v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    div-float v1, v2, v1

    float-to-int v1, v1

    goto :goto_0
.end method

.method private setState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x0

    .line 322
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    iput p1, p0, Lnet/veritran/component/view/VTIndexScroller;->mState:I

    .line 326
    iget v0, p0, Lnet/veritran/component/view/VTIndexScroller;->mState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 329
    :pswitch_0
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScroller;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 334
    :pswitch_1
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lnet/veritran/component/view/VTIndexScroller;->fade(J)V

    goto :goto_0

    .line 338
    :pswitch_2
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScroller;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 343
    :pswitch_3
    const-wide/16 v0, 0xbb8

    invoke-direct {p0, v0, v1}, Lnet/veritran/component/view/VTIndexScroller;->fade(J)V

    goto :goto_0

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public contains(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 350
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lnet/veritran/component/view/VTIndexScroller;->mIndexbarRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

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

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const v13, 0x3e99999a    # 0.3f

    const/high16 v12, 0x40000000    # 2.0f

    .line 161
    iget v7, p0, Lnet/veritran/component/view/VTIndexScroller;->mState:I

    if-nez v7, :cond_1

    .line 204
    :cond_0
    return-void

    .line 166
    :cond_1
    iget-object v7, p0, Lnet/veritran/component/view/VTIndexScroller;->mSections:[Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lnet/veritran/component/view/VTIndexScroller;->mSections:[Ljava/lang/String;

    array-length v7, v7

    if-lez v7, :cond_0

    .line 171
    iget-object v7, p0, Lnet/veritran/component/view/VTIndexScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v8, p0, Lnet/veritran/component/view/VTIndexScroller;->widthIndexLabel:F

    mul-float/2addr v8, v13

    iget v9, p0, Lnet/veritran/component/view/VTIndexScroller;->widthIndexLabel:F

    mul-float/2addr v9, v13

    iget-object v10, p0, Lnet/veritran/component/view/VTIndexScroller;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 174
    iget v7, p0, Lnet/veritran/component/view/VTIndexScroller;->mCurrentSection:I

    if-ltz v7, :cond_2

    .line 176
    const-string v7, "VTIndexScrollerView"

    const-string v8, "mCurrentSection > 0"

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 180
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v7, p0, Lnet/veritran/component/view/VTIndexScroller;->previewTextPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lnet/veritran/component/view/VTIndexScroller;->mSections:[Ljava/lang/String;

    iget v9, p0, Lnet/veritran/component/view/VTIndexScroller;->mCurrentSection:I

    aget-object v8, v8, v9

    const/4 v9, 0x0

    iget-object v10, p0, Lnet/veritran/component/view/VTIndexScroller;->mSections:[Ljava/lang/String;

    iget v11, p0, Lnet/veritran/component/view/VTIndexScroller;->mCurrentSection:I

    aget-object v10, v10, v11

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 183
    iget v7, p0, Lnet/veritran/component/view/VTIndexScroller;->widthIndexLabel:F

    const/high16 v8, 0x40400000    # 3.0f

    mul-float v5, v7, v8

    .line 184
    .local v5, "previewSize":F
    new-instance v4, Landroid/graphics/RectF;

    iget v7, p0, Lnet/veritran/component/view/VTIndexScroller;->mListViewWidth:I

    int-to-float v7, v7

    sub-float/2addr v7, v5

    div-float/2addr v7, v12

    iget v8, p0, Lnet/veritran/component/view/VTIndexScroller;->mListViewHeight:I

    int-to-float v8, v8

    sub-float/2addr v8, v5

    div-float/2addr v8, v12

    iget v9, p0, Lnet/veritran/component/view/VTIndexScroller;->mListViewWidth:I

    int-to-float v9, v9

    sub-float/2addr v9, v5

    div-float/2addr v9, v12

    add-float/2addr v9, v5

    iget v10, p0, Lnet/veritran/component/view/VTIndexScroller;->mListViewHeight:I

    int-to-float v10, v10

    sub-float/2addr v10, v5

    div-float/2addr v10, v12

    add-float/2addr v10, v5

    invoke-direct {v4, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 189
    .local v4, "previewRect":Landroid/graphics/RectF;
    iget v7, p0, Lnet/veritran/component/view/VTIndexScroller;->widthIndexLabel:F

    mul-float/2addr v7, v13

    iget v8, p0, Lnet/veritran/component/view/VTIndexScroller;->widthIndexLabel:F

    mul-float/2addr v8, v13

    iget-object v9, p0, Lnet/veritran/component/view/VTIndexScroller;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v7, v8, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 190
    iget-object v7, p0, Lnet/veritran/component/view/VTIndexScroller;->mSections:[Ljava/lang/String;

    iget v8, p0, Lnet/veritran/component/view/VTIndexScroller;->mCurrentSection:I

    aget-object v7, v7, v8

    iget v8, v4, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    sub-float v9, v5, v9

    div-float/2addr v9, v12

    add-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v8, v9

    iget v9, v4, Landroid/graphics/RectF;->top:F

    .line 191
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v10

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    div-float/2addr v10, v12

    add-float/2addr v9, v10

    iget-object v10, p0, Lnet/veritran/component/view/VTIndexScroller;->previewTextPaint:Landroid/graphics/Paint;

    .line 190
    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 196
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v4    # "previewRect":Landroid/graphics/RectF;
    .end local v5    # "previewSize":F
    :cond_2
    iget-object v7, p0, Lnet/veritran/component/view/VTIndexScroller;->mIndexbarRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget-object v8, p0, Lnet/veritran/component/view/VTIndexScroller;->mSections:[Ljava/lang/String;

    array-length v8, v8

    int-to-float v8, v8

    div-float v6, v7, v8

    .line 197
    .local v6, "sectionHeight":F
    iget-object v7, p0, Lnet/veritran/component/view/VTIndexScroller;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v7

    iget-object v8, p0, Lnet/veritran/component/view/VTIndexScroller;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->ascent()F

    move-result v8

    sub-float/2addr v7, v8

    sub-float v7, v6, v7

    div-float v3, v7, v12

    .line 198
    .local v3, "paddingTop":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v7, p0, Lnet/veritran/component/view/VTIndexScroller;->mSections:[Ljava/lang/String;

    array-length v7, v7

    if-ge v1, v7, :cond_0

    .line 199
    iget v7, p0, Lnet/veritran/component/view/VTIndexScroller;->widthIndexLabel:F

    iget-object v8, p0, Lnet/veritran/component/view/VTIndexScroller;->textPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lnet/veritran/component/view/VTIndexScroller;->mSections:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    sub-float/2addr v7, v8

    div-float v2, v7, v12

    .line 200
    .local v2, "paddingLeft":F
    iget-object v7, p0, Lnet/veritran/component/view/VTIndexScroller;->mSections:[Ljava/lang/String;

    aget-object v7, v7, v1

    iget-object v8, p0, Lnet/veritran/component/view/VTIndexScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v8, v2

    iget-object v9, p0, Lnet/veritran/component/view/VTIndexScroller;->mIndexbarRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    int-to-float v10, v1

    mul-float/2addr v10, v6

    add-float/2addr v9, v10

    add-float/2addr v9, v3

    iget-object v10, p0, Lnet/veritran/component/view/VTIndexScroller;->textPaint:Landroid/graphics/Paint;

    .line 201
    invoke-virtual {v10}, Landroid/graphics/Paint;->ascent()F

    move-result v10

    sub-float/2addr v9, v10

    iget-object v10, p0, Lnet/veritran/component/view/VTIndexScroller;->textPaint:Landroid/graphics/Paint;

    .line 200
    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 282
    iget v0, p0, Lnet/veritran/component/view/VTIndexScroller;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 283
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lnet/veritran/component/view/VTIndexScroller;->setState(I)V

    .line 284
    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 253
    iput p1, p0, Lnet/veritran/component/view/VTIndexScroller;->mListViewWidth:I

    .line 254
    iput p2, p0, Lnet/veritran/component/view/VTIndexScroller;->mListViewHeight:I

    .line 256
    const/4 v0, 0x0

    .line 258
    .local v0, "mIndexbarMargin":I
    iget-boolean v1, p0, Lnet/veritran/component/view/VTIndexScroller;->rightLocation:Z

    if-eqz v1, :cond_0

    .line 260
    new-instance v1, Landroid/graphics/RectF;

    sub-int v2, p1, v0

    int-to-float v2, v2

    iget v3, p0, Lnet/veritran/component/view/VTIndexScroller;->widthIndexLabel:F

    sub-float/2addr v2, v3

    int-to-float v3, v0

    sub-int v4, p1, v0

    int-to-float v4, v4

    sub-int v5, p2, v0

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lnet/veritran/component/view/VTIndexScroller;->mIndexbarRect:Landroid/graphics/RectF;

    .line 272
    :goto_0
    return-void

    .line 267
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, v0

    int-to-float v3, v0

    int-to-float v4, v0

    iget v5, p0, Lnet/veritran/component/view/VTIndexScroller;->widthIndexLabel:F

    add-float/2addr v4, v5

    sub-int v5, p2, v0

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lnet/veritran/component/view/VTIndexScroller;->mIndexbarRect:Landroid/graphics/RectF;

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v1

    .line 249
    :cond_1
    :goto_1
    return v0

    .line 210
    :pswitch_0
    iget v2, p0, Lnet/veritran/component/view/VTIndexScroller;->mState:I

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lnet/veritran/component/view/VTIndexScroller;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lnet/veritran/component/view/VTIndexScroller;->setState(I)V

    .line 214
    iput-boolean v0, p0, Lnet/veritran/component/view/VTIndexScroller;->mIsIndexing:Z

    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v1}, Lnet/veritran/component/view/VTIndexScroller;->getSectionByPoint(F)I

    move-result v1

    iput v1, p0, Lnet/veritran/component/view/VTIndexScroller;->mCurrentSection:I

    .line 221
    iget-object v1, p0, Lnet/veritran/component/view/VTIndexScroller;->scrollerInterface:Lnet/veritran/component/view/VTIndexScroller$VTIndexScrollerInterface;

    iget-object v2, p0, Lnet/veritran/component/view/VTIndexScroller;->mSections:[Ljava/lang/String;

    iget v3, p0, Lnet/veritran/component/view/VTIndexScroller;->mCurrentSection:I

    aget-object v2, v2, v3

    invoke-interface {v1, v2}, Lnet/veritran/component/view/VTIndexScroller$VTIndexScrollerInterface;->scrollToSection(Ljava/lang/String;)V

    goto :goto_1

    .line 227
    :pswitch_1
    iget-boolean v2, p0, Lnet/veritran/component/view/VTIndexScroller;->mIsIndexing:Z

    if-eqz v2, :cond_0

    .line 229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lnet/veritran/component/view/VTIndexScroller;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v1}, Lnet/veritran/component/view/VTIndexScroller;->getSectionByPoint(F)I

    move-result v1

    iput v1, p0, Lnet/veritran/component/view/VTIndexScroller;->mCurrentSection:I

    .line 233
    iget-object v1, p0, Lnet/veritran/component/view/VTIndexScroller;->scrollerInterface:Lnet/veritran/component/view/VTIndexScroller$VTIndexScrollerInterface;

    iget-object v2, p0, Lnet/veritran/component/view/VTIndexScroller;->mSections:[Ljava/lang/String;

    iget v3, p0, Lnet/veritran/component/view/VTIndexScroller;->mCurrentSection:I

    aget-object v2, v2, v3

    invoke-interface {v1, v2}, Lnet/veritran/component/view/VTIndexScroller$VTIndexScrollerInterface;->scrollToSection(Ljava/lang/String;)V

    goto :goto_1

    .line 239
    :pswitch_2
    iget-boolean v0, p0, Lnet/veritran/component/view/VTIndexScroller;->mIsIndexing:Z

    if-eqz v0, :cond_0

    .line 240
    iput-boolean v1, p0, Lnet/veritran/component/view/VTIndexScroller;->mIsIndexing:Z

    .line 241
    const/4 v0, -0x1

    iput v0, p0, Lnet/veritran/component/view/VTIndexScroller;->mCurrentSection:I

    .line 242
    iget-object v0, p0, Lnet/veritran/component/view/VTIndexScroller;->scrollerInterface:Lnet/veritran/component/view/VTIndexScroller$VTIndexScrollerInterface;

    invoke-interface {v0}, Lnet/veritran/component/view/VTIndexScroller$VTIndexScrollerInterface;->invalidateView()V

    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setSections([Ljava/lang/String;)V
    .locals 6
    .param p1, "sections"    # [Ljava/lang/String;

    .prologue
    .line 288
    iput-object p1, p0, Lnet/veritran/component/view/VTIndexScroller;->mSections:[Ljava/lang/String;

    .line 290
    iget-object v2, p0, Lnet/veritran/component/view/VTIndexScroller;->mSections:[Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 292
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lnet/veritran/component/view/VTIndexScroller;->widthIndexLabel:F

    .line 299
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 307
    .local v0, "bounds":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lnet/veritran/component/view/VTIndexScroller;->mSections:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 309
    iget-object v2, p0, Lnet/veritran/component/view/VTIndexScroller;->textPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lnet/veritran/component/view/VTIndexScroller;->mSections:[Ljava/lang/String;

    aget-object v3, v3, v1

    const/4 v4, 0x0

    iget-object v5, p0, Lnet/veritran/component/view/VTIndexScroller;->mSections:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 311
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lnet/veritran/component/view/VTIndexScroller;->widthIndexLabel:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 313
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lnet/veritran/component/view/VTIndexScroller;->widthIndexLabel:F

    .line 307
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    :cond_1
    iget v2, p0, Lnet/veritran/component/view/VTIndexScroller;->widthIndexLabel:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    iput v2, p0, Lnet/veritran/component/view/VTIndexScroller;->widthIndexLabel:F

    .line 319
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public setStyles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "backgroundColor"    # Ljava/lang/String;
    .param p2, "textColor"    # Ljava/lang/String;
    .param p3, "textSize"    # Ljava/lang/String;
    .param p4, "isRightLocation"    # Z
    .param p5, "fontFamily"    # Ljava/lang/String;
    .param p6, "fontStyle"    # Ljava/lang/String;
    .param p7, "fontWeight"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 100
    const/4 v5, -0x1

    iput v5, p0, Lnet/veritran/component/view/VTIndexScroller;->backgroundColor:I

    .line 102
    invoke-static {p1}, Lnet/veritran/VTAbstractActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 104
    .local v2, "resolvedBackgroundColor":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 106
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lnet/veritran/component/view/VTIndexScroller;->backgroundColor:I

    .line 109
    :cond_0
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v5

    invoke-virtual {v5}, Lnet/veritran/VTUserApplicationSmart;->getCurrentActivity()Lnet/veritran/VTAbstractActivity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p3, v6}, Lnet/veritran/VTAbstractActivity;->resolveSizeInPixels(Ljava/lang/String;Z)F

    move-result v5

    iput v5, p0, Lnet/veritran/component/view/VTIndexScroller;->textSizePixels:F

    .line 111
    iget v5, p0, Lnet/veritran/component/view/VTIndexScroller;->textSizePixels:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 113
    const/high16 v5, 0x41200000    # 10.0f

    iput v5, p0, Lnet/veritran/component/view/VTIndexScroller;->textSizePixels:F

    .line 116
    :cond_1
    const/high16 v5, 0x40000000    # 2.0f

    iget v6, p0, Lnet/veritran/component/view/VTIndexScroller;->textSizePixels:F

    mul-float v1, v5, v6

    .line 119
    .local v1, "previewTextSizePixels":F
    const v4, -0xffff01

    .line 121
    .local v4, "textColorResolved":I
    invoke-static {p2}, Lnet/veritran/VTAbstractActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 123
    .local v3, "resolvedColor":Ljava/lang/Integer;
    if-eqz v3, :cond_2

    .line 125
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 128
    :cond_2
    iput-boolean p4, p0, Lnet/veritran/component/view/VTIndexScroller;->rightLocation:Z

    .line 130
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lnet/veritran/component/view/VTIndexScroller;->textPaint:Landroid/graphics/Paint;

    .line 132
    iget-object v5, p0, Lnet/veritran/component/view/VTIndexScroller;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    iget-object v5, p0, Lnet/veritran/component/view/VTIndexScroller;->textPaint:Landroid/graphics/Paint;

    iget v6, p0, Lnet/veritran/component/view/VTIndexScroller;->textSizePixels:F

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 137
    iget-object v5, p0, Lnet/veritran/component/view/VTIndexScroller;->textPaint:Landroid/graphics/Paint;

    invoke-static {p5, p6, p7}, Lnet/veritran/utils/VTFontHelper;->resolveTextFamily(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 138
    invoke-static {p5}, Lnet/veritran/utils/VTFontHelper;->resolveTextCustom(Ljava/lang/String;)Z

    move-result v0

    .line 139
    .local v0, "fontCustom":Z
    if-eqz v0, :cond_3

    invoke-static {p7}, Lnet/veritran/utils/VTFontHelper;->resolveTextBold(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 140
    iget-object v5, p0, Lnet/veritran/component/view/VTIndexScroller;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 142
    :cond_3
    if-eqz v0, :cond_4

    invoke-static {p6}, Lnet/veritran/utils/VTFontHelper;->resolveTextItalic(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 143
    iget-object v5, p0, Lnet/veritran/component/view/VTIndexScroller;->textPaint:Landroid/graphics/Paint;

    const/high16 v6, -0x41800000    # -0.25f

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 146
    :cond_4
    iget-object v5, p0, Lnet/veritran/component/view/VTIndexScroller;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 148
    new-instance v5, Landroid/graphics/Paint;

    iget-object v6, p0, Lnet/veritran/component/view/VTIndexScroller;->textPaint:Landroid/graphics/Paint;

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v5, p0, Lnet/veritran/component/view/VTIndexScroller;->previewTextPaint:Landroid/graphics/Paint;

    .line 149
    iget-object v5, p0, Lnet/veritran/component/view/VTIndexScroller;->previewTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 151
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lnet/veritran/component/view/VTIndexScroller;->backgroundPaint:Landroid/graphics/Paint;

    .line 153
    iget-object v5, p0, Lnet/veritran/component/view/VTIndexScroller;->backgroundPaint:Landroid/graphics/Paint;

    iget v6, p0, Lnet/veritran/component/view/VTIndexScroller;->backgroundColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    iget-object v5, p0, Lnet/veritran/component/view/VTIndexScroller;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 158
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 275
    iget v0, p0, Lnet/veritran/component/view/VTIndexScroller;->mState:I

    if-nez v0, :cond_1

    .line 276
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/veritran/component/view/VTIndexScroller;->setState(I)V

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget v0, p0, Lnet/veritran/component/view/VTIndexScroller;->mState:I

    if-ne v0, v1, :cond_0

    .line 278
    invoke-direct {p0, v1}, Lnet/veritran/component/view/VTIndexScroller;->setState(I)V

    goto :goto_0
.end method
