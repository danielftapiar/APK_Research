.class public Lcom/prey/barcodereader/BarcodeGraphic;
.super Lcom/prey/barcodereader/ui/camera/GraphicOverlay$Graphic;
.source "BarcodeGraphic.java"


# static fields
.field private static final COLOR_CHOICES:[I

.field private static mCurrentColorIndex:I


# instance fields
.field private volatile mBarcode:Lcom/google/android/gms/vision/barcode/Barcode;

.field private mId:I

.field private mRectPaint:Landroid/graphics/Paint;

.field private mTextPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/prey/barcodereader/BarcodeGraphic;->COLOR_CHOICES:[I

    .line 22
    const/4 v0, 0x0

    sput v0, Lcom/prey/barcodereader/BarcodeGraphic;->mCurrentColorIndex:I

    return-void

    .line 16
    :array_0
    .array-data 4
        -0xffff01
        -0xff0001
        -0xff0100
    .end array-data
.end method

.method constructor <init>(Lcom/prey/barcodereader/ui/camera/GraphicOverlay;)V
    .locals 3
    .param p1, "overlay"    # Lcom/prey/barcodereader/ui/camera/GraphicOverlay;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/prey/barcodereader/ui/camera/GraphicOverlay$Graphic;-><init>(Lcom/prey/barcodereader/ui/camera/GraphicOverlay;)V

    .line 31
    sget v1, Lcom/prey/barcodereader/BarcodeGraphic;->mCurrentColorIndex:I

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/prey/barcodereader/BarcodeGraphic;->COLOR_CHOICES:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    sput v1, Lcom/prey/barcodereader/BarcodeGraphic;->mCurrentColorIndex:I

    .line 32
    sget-object v1, Lcom/prey/barcodereader/BarcodeGraphic;->COLOR_CHOICES:[I

    sget v2, Lcom/prey/barcodereader/BarcodeGraphic;->mCurrentColorIndex:I

    aget v0, v1, v2

    .line 34
    .local v0, "selectedColor":I
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/prey/barcodereader/BarcodeGraphic;->mRectPaint:Landroid/graphics/Paint;

    .line 35
    iget-object v1, p0, Lcom/prey/barcodereader/BarcodeGraphic;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    iget-object v1, p0, Lcom/prey/barcodereader/BarcodeGraphic;->mRectPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    iget-object v1, p0, Lcom/prey/barcodereader/BarcodeGraphic;->mRectPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 39
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/prey/barcodereader/BarcodeGraphic;->mTextPaint:Landroid/graphics/Paint;

    .line 40
    iget-object v1, p0, Lcom/prey/barcodereader/BarcodeGraphic;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    iget-object v1, p0, Lcom/prey/barcodereader/BarcodeGraphic;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x42100000    # 36.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 42
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/prey/barcodereader/BarcodeGraphic;->mBarcode:Lcom/google/android/gms/vision/barcode/Barcode;

    .line 64
    .local v0, "barcode":Lcom/google/android/gms/vision/barcode/Barcode;
    if-nez v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 68
    :cond_0
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v0}, Lcom/google/android/gms/vision/barcode/Barcode;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 69
    .local v2, "rect":Landroid/graphics/RectF;
    iget v3, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0, v3}, Lcom/prey/barcodereader/BarcodeGraphic;->translateX(F)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 70
    iget v3, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v3}, Lcom/prey/barcodereader/BarcodeGraphic;->translateY(F)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 71
    iget v3, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0, v3}, Lcom/prey/barcodereader/BarcodeGraphic;->translateX(F)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 72
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v3}, Lcom/prey/barcodereader/BarcodeGraphic;->translateY(F)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 73
    iget-object v3, p0, Lcom/prey/barcodereader/BarcodeGraphic;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 74
    iget-object v1, v0, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    .line 75
    .local v1, "barcodeValue":Ljava/lang/String;
    const-string v3, "prey"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 76
    const-string v1, ""

    .line 77
    :cond_1
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/prey/barcodereader/BarcodeGraphic;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getBarcode()Lcom/google/android/gms/vision/barcode/Barcode;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/prey/barcodereader/BarcodeGraphic;->mBarcode:Lcom/google/android/gms/vision/barcode/Barcode;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/prey/barcodereader/BarcodeGraphic;->mId:I

    return v0
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/prey/barcodereader/BarcodeGraphic;->mId:I

    .line 50
    return-void
.end method

.method updateItem(Lcom/google/android/gms/vision/barcode/Barcode;)V
    .locals 0
    .param p1, "barcode"    # Lcom/google/android/gms/vision/barcode/Barcode;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/prey/barcodereader/BarcodeGraphic;->mBarcode:Lcom/google/android/gms/vision/barcode/Barcode;

    .line 58
    invoke-virtual {p0}, Lcom/prey/barcodereader/BarcodeGraphic;->postInvalidate()V

    .line 59
    return-void
.end method
