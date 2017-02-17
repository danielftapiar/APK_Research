.class public final Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;
.super Landroid/graphics/Canvas;
.source "SafeTranslatedCanvas.java"

# interfaces
.implements Lorg/osmdroid/views/safecanvas/ISafeCanvas;


# static fields
.field private static sFloatAry:[F

.field private static final sMatrix:Landroid/graphics/Matrix;

.field private static final sRectF:Landroid/graphics/RectF;


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private final mMatrix:Landroid/graphics/Matrix;

.field public xOffset:I

.field public yOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->sMatrix:Landroid/graphics/Matrix;

    .line 28
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->sRectF:Landroid/graphics/RectF;

    .line 29
    const/4 v0, 0x0

    new-array v0, v0, [F

    sput-object v0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->sFloatAry:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/graphics/Canvas;-><init>()V

    .line 31
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mMatrix:Landroid/graphics/Matrix;

    .line 37
    return-void
.end method


# virtual methods
.method public final clipRect(IIII)Z
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mCanvas:Landroid/graphics/Canvas;

    iget v1, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->xOffset:I

    add-int/2addr v1, p1

    iget v2, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->yOffset:I

    add-int/2addr v2, p2

    iget v3, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->xOffset:I

    add-int/2addr v3, p3

    iget v4, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->yOffset:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move-result v0

    return v0
.end method

.method public final clipRect(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 114
    iget v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->xOffset:I

    iget v1, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->yOffset:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 115
    iget-object v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public final clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "op"    # Landroid/graphics/Region$Op;

    .prologue
    .line 108
    iget v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->xOffset:I

    iget v1, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->yOffset:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 109
    iget-object v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    move-result v0

    return v0
.end method

.method public final clipRegion(Landroid/graphics/Region;)Z
    .locals 2
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    .line 126
    iget v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->xOffset:I

    iget v1, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->yOffset:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Region;->translate(II)V

    .line 127
    iget-object v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->clipRegion(Landroid/graphics/Region;)Z

    move-result v0

    return v0
.end method

.method public final clipRegion(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z
    .locals 2
    .param p1, "region"    # Landroid/graphics/Region;
    .param p2, "op"    # Landroid/graphics/Region$Op;

    .prologue
    .line 120
    iget v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->xOffset:I

    iget v1, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->yOffset:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Region;->translate(II)V

    .line 121
    iget-object v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->clipRegion(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    move-result v0

    return v0
.end method

.method protected final clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 539
    new-instance v0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;

    invoke-direct {v0}, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;-><init>()V

    .line 540
    .local v0, "c":Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;
    iget-object v1, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->setCanvas(Landroid/graphics/Canvas;)V

    .line 541
    return-object v0
.end method

.method public final concat(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 132
    iget-object v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 133
    return-void
.end method

.method public final drawARGB(IIII)V
    .locals 1
    .param p1, "a"    # I
    .param p2, "r"    # I
    .param p3, "g"    # I
    .param p4, "b"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 138
    return-void
.end method

.method public final drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/Rect;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 170
    iget v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->xOffset:I

    iget v1, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->yOffset:I

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 171
    iget-object v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 172
    iget v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->xOffset:I

    neg-int v0, v0

    iget v1, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->yOffset:I

    neg-int v1, v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 173
    return-void
.end method

.method public final drawColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 211
    iget-object v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 212
    return-void
.end method

.method public final drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 205
    iget-object v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 206
    return-void
.end method

.method public final drawPicture(Landroid/graphics/Picture;)V
    .locals 1
    .param p1, "picture"    # Landroid/graphics/Picture;

    .prologue
    .line 258
    iget-object v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 259
    return-void
.end method

.method public final drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "picture"    # Landroid/graphics/Picture;
    .param p2, "dst"    # Landroid/graphics/Rect;

    .prologue
    .line 251
    iget v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->xOffset:I

    iget v1, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->yOffset:I

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 252
    iget-object v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V

    .line 253
    iget v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->xOffset:I

    neg-int v0, v0

    iget v1, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->yOffset:I

    neg-int v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 254
    return-void
.end method

.method public final drawRGB(III)V
    .locals 1
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .prologue
    .line 291
    iget-object v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Canvas;->drawRGB(III)V

    .line 292
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 546
    iget-object v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getClipBounds(Landroid/graphics/Rect;)Z
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 362
    iget-object v1, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, p1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    .line 363
    .local v0, "success":Z
    if-eqz p1, :cond_0

    .line 364
    iget v1, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->xOffset:I

    neg-int v1, v1

    iget v2, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->yOffset:I

    neg-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 365
    :cond_0
    return v0
.end method

.method public final getDensity()I
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getDensity()I

    move-result v0

    return v0
.end method

.method public final getDrawFilter()Landroid/graphics/DrawFilter;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getDrawFilter()Landroid/graphics/DrawFilter;

    move-result-object v0

    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    return v0
.end method

.method public final getMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "ctm"    # Landroid/graphics/Matrix;

    .prologue
    .line 389
    iget-object v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 390
    return-void
.end method

.method public final getSafeCanvas()Landroid/graphics/Canvas;
    .locals 0

    .prologue
    .line 45
    return-object p0
.end method

.method public final getSaveCount()I
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isOpaque()Z
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public final restore()V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 435
    return-void
.end method

.method public final restoreToCount(I)V
    .locals 1
    .param p1, "saveCount"    # I

    .prologue
    .line 440
    iget-object v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 441
    return-void
.end method

.method public final rotate(F)V
    .locals 3
    .param p1, "degrees"    # F

    .prologue
    .line 445
    iget-object v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mCanvas:Landroid/graphics/Canvas;

    iget v1, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->xOffset:I

    int-to-float v1, v1

    iget v2, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->yOffset:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 446
    iget-object v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 447
    iget-object v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mCanvas:Landroid/graphics/Canvas;

    iget v1, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->xOffset:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->yOffset:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 448
    return-void
.end method

.method public final save()I
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    return v0
.end method

.method public final save(I)I
    .locals 1
    .param p1, "saveFlags"    # I

    .prologue
    .line 467
    iget-object v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->save(I)I

    move-result v0

    return v0
.end method

.method public final scale(FF)V
    .locals 1
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .prologue
    .line 499
    iget-object v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 500
    return-void
.end method

.method public final setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 509
    iget-object v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 510
    return-void
.end method

.method public final setCanvas(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mCanvas:Landroid/graphics/Canvas;

    .line 60
    iget-object v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 61
    return-void
.end method

.method public final setDensity(I)V
    .locals 1
    .param p1, "density"    # I

    .prologue
    .line 514
    iget-object v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 515
    return-void
.end method

.method public final setDrawFilter(Landroid/graphics/DrawFilter;)V
    .locals 1
    .param p1, "filter"    # Landroid/graphics/DrawFilter;

    .prologue
    .line 519
    iget-object v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 520
    return-void
.end method

.method public final setMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 524
    iget-object v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 525
    return-void
.end method

.method public final skew(FF)V
    .locals 1
    .param p1, "sx"    # F
    .param p2, "sy"    # F

    .prologue
    .line 529
    iget-object v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->skew(FF)V

    .line 530
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final translate(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 534
    iget-object v0, p0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 535
    return-void
.end method
