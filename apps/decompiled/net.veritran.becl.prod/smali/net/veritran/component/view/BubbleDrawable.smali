.class public Lnet/veritran/component/view/BubbleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BubbleDrawable.java"


# instance fields
.field private mBoxHeight:I

.field private mBoxPadding:Landroid/graphics/Rect;

.field private mBoxRect:Landroid/graphics/RectF;

.field private mBoxWidth:I

.field private mColor:I

.field private mCornerRad:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPointer:Landroid/graphics/Path;

.field private mPointerHeight:I

.field private mPointerWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 25
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/veritran/component/view/BubbleDrawable;->mBoxPadding:Landroid/graphics/Rect;

    .line 35
    invoke-direct {p0}, Lnet/veritran/component/view/BubbleDrawable;->initBubble()V

    .line 36
    return-void
.end method

.method private initBubble()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/veritran/component/view/BubbleDrawable;->mPaint:Landroid/graphics/Paint;

    .line 65
    iget-object v0, p0, Lnet/veritran/component/view/BubbleDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lnet/veritran/component/view/BubbleDrawable;->mColor:I

    .line 67
    iget-object v0, p0, Lnet/veritran/component/view/BubbleDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lnet/veritran/component/view/BubbleDrawable;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lnet/veritran/component/view/BubbleDrawable;->mCornerRad:F

    .line 69
    invoke-virtual {p0, v2}, Lnet/veritran/component/view/BubbleDrawable;->setPointerWidth(I)V

    .line 70
    invoke-virtual {p0, v2}, Lnet/veritran/component/view/BubbleDrawable;->setPointerHeight(I)V

    .line 71
    return-void
.end method

.method private pointerHorizontalStart()F
    .locals 3

    .prologue
    .line 88
    iget v1, p0, Lnet/veritran/component/view/BubbleDrawable;->mBoxWidth:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lnet/veritran/component/view/BubbleDrawable;->mPointerWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v0, v1

    .line 89
    .local v0, "x":F
    return v0
.end method

.method private updatePointerPath()V
    .locals 3

    .prologue
    .line 74
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lnet/veritran/component/view/BubbleDrawable;->mPointer:Landroid/graphics/Path;

    .line 75
    iget-object v0, p0, Lnet/veritran/component/view/BubbleDrawable;->mPointer:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 78
    iget-object v0, p0, Lnet/veritran/component/view/BubbleDrawable;->mPointer:Landroid/graphics/Path;

    invoke-direct {p0}, Lnet/veritran/component/view/BubbleDrawable;->pointerHorizontalStart()F

    move-result v1

    iget v2, p0, Lnet/veritran/component/view/BubbleDrawable;->mBoxHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 81
    iget-object v0, p0, Lnet/veritran/component/view/BubbleDrawable;->mPointer:Landroid/graphics/Path;

    iget v1, p0, Lnet/veritran/component/view/BubbleDrawable;->mPointerWidth:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 82
    iget-object v0, p0, Lnet/veritran/component/view/BubbleDrawable;->mPointer:Landroid/graphics/Path;

    iget v1, p0, Lnet/veritran/component/view/BubbleDrawable;->mPointerWidth:I

    div-int/lit8 v1, v1, 0x2

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lnet/veritran/component/view/BubbleDrawable;->mPointerHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 83
    iget-object v0, p0, Lnet/veritran/component/view/BubbleDrawable;->mPointer:Landroid/graphics/Path;

    iget v1, p0, Lnet/veritran/component/view/BubbleDrawable;->mPointerWidth:I

    div-int/lit8 v1, v1, 0x2

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lnet/veritran/component/view/BubbleDrawable;->mPointerHeight:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 84
    iget-object v0, p0, Lnet/veritran/component/view/BubbleDrawable;->mPointer:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 85
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 97
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lnet/veritran/component/view/BubbleDrawable;->mBoxWidth:I

    int-to-float v1, v1

    iget v2, p0, Lnet/veritran/component/view/BubbleDrawable;->mBoxHeight:I

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lnet/veritran/component/view/BubbleDrawable;->mBoxRect:Landroid/graphics/RectF;

    .line 98
    iget-object v0, p0, Lnet/veritran/component/view/BubbleDrawable;->mBoxRect:Landroid/graphics/RectF;

    iget v1, p0, Lnet/veritran/component/view/BubbleDrawable;->mCornerRad:F

    iget v2, p0, Lnet/veritran/component/view/BubbleDrawable;->mCornerRad:F

    iget-object v3, p0, Lnet/veritran/component/view/BubbleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 99
    invoke-direct {p0}, Lnet/veritran/component/view/BubbleDrawable;->updatePointerPath()V

    .line 100
    iget-object v0, p0, Lnet/veritran/component/view/BubbleDrawable;->mPointer:Landroid/graphics/Path;

    iget-object v1, p0, Lnet/veritran/component/view/BubbleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 101
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 105
    const/16 v0, 0xff

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 127
    iget-object v0, p0, Lnet/veritran/component/view/BubbleDrawable;->mBoxPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 130
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lnet/veritran/component/view/BubbleDrawable;->mPointerHeight:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 136
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lnet/veritran/component/view/BubbleDrawable;->mBoxWidth:I

    .line 137
    invoke-virtual {p0}, Lnet/veritran/component/view/BubbleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lnet/veritran/component/view/BubbleDrawable;->mPointerHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lnet/veritran/component/view/BubbleDrawable;->mBoxHeight:I

    .line 138
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 139
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 112
    return-void
.end method

.method public setColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 121
    iput p1, p0, Lnet/veritran/component/view/BubbleDrawable;->mColor:I

    .line 122
    iget-object v0, p0, Lnet/veritran/component/view/BubbleDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lnet/veritran/component/view/BubbleDrawable;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 118
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 0
    .param p1, "cornerRad"    # F

    .prologue
    .line 49
    iput p1, p0, Lnet/veritran/component/view/BubbleDrawable;->mCornerRad:F

    .line 50
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lnet/veritran/component/view/BubbleDrawable;->mBoxPadding:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 43
    iget-object v0, p0, Lnet/veritran/component/view/BubbleDrawable;->mBoxPadding:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 44
    iget-object v0, p0, Lnet/veritran/component/view/BubbleDrawable;->mBoxPadding:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->right:I

    .line 45
    iget-object v0, p0, Lnet/veritran/component/view/BubbleDrawable;->mBoxPadding:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    .line 46
    return-void
.end method

.method public setPointerHeight(I)V
    .locals 0
    .param p1, "pointerHeight"    # I

    .prologue
    .line 57
    iput p1, p0, Lnet/veritran/component/view/BubbleDrawable;->mPointerHeight:I

    .line 58
    return-void
.end method

.method public setPointerWidth(I)V
    .locals 0
    .param p1, "pointerWidth"    # I

    .prologue
    .line 53
    iput p1, p0, Lnet/veritran/component/view/BubbleDrawable;->mPointerWidth:I

    .line 54
    return-void
.end method
