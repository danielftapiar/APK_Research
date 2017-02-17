.class public Lnet/veritran/component/view/VTPageIndicatorView;
.super Landroid/widget/LinearLayout;
.source "VTPageIndicatorView.java"


# static fields
.field public static final DEFAULT_IMAGE_OFF:Ljava/lang/String; = "rb_off"

.field public static final DEFAULT_IMAGE_ON:Ljava/lang/String; = "rb_on"

.field public static final K_IMAGESIZE:D = 0.02

.field private static final TAG:Ljava/lang/String; = "VTPageIndicatorView"


# instance fields
.field activity:Landroid/app/Activity;

.field bmIndicatorImgOff:Landroid/graphics/Bitmap;

.field bmIndicatorImgOn:Landroid/graphics/Bitmap;

.field count:I

.field private imageSize:I

.field indicatorImgOff:Ljava/lang/String;

.field indicatorImgOn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object v0, p0, Lnet/veritran/component/view/VTPageIndicatorView;->indicatorImgOn:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lnet/veritran/component/view/VTPageIndicatorView;->indicatorImgOff:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lnet/veritran/component/view/VTPageIndicatorView;->bmIndicatorImgOn:Landroid/graphics/Bitmap;

    .line 34
    iput-object v0, p0, Lnet/veritran/component/view/VTPageIndicatorView;->bmIndicatorImgOff:Landroid/graphics/Bitmap;

    .line 41
    iput-object p1, p0, Lnet/veritran/component/view/VTPageIndicatorView;->activity:Landroid/app/Activity;

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/veritran/component/view/VTPageIndicatorView;->setOrientation(I)V

    .line 46
    return-void
.end method


# virtual methods
.method public changeIndex(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 95
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Item Selected Position=======>>>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    move v1, p1

    .line 97
    .local v1, "pos":I
    move-object v0, p0

    .line 98
    .local v0, "ly":Landroid/widget/LinearLayout;
    iget-object v2, p0, Lnet/veritran/component/view/VTPageIndicatorView;->activity:Landroid/app/Activity;

    new-instance v3, Lnet/veritran/component/view/VTPageIndicatorView$1;

    invoke-direct {v3, p0, v1, v0}, Lnet/veritran/component/view/VTPageIndicatorView$1;-><init>(Lnet/veritran/component/view/VTPageIndicatorView;ILandroid/widget/LinearLayout;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method

.method public initData(II)V
    .locals 12
    .param p1, "initPos"    # I
    .param p2, "countItems"    # I

    .prologue
    .line 62
    iput p2, p0, Lnet/veritran/component/view/VTPageIndicatorView;->count:I

    .line 64
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v8

    invoke-virtual {v8}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v8

    iget-object v9, p0, Lnet/veritran/component/view/VTPageIndicatorView;->indicatorImgOn:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lnet/veritran/utils/ImageHandler;->getBitmapSize(Ljava/lang/String;)[I

    move-result-object v4

    .line 65
    .local v4, "imageSizesOn":[I
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v8

    invoke-virtual {v8}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v8

    iget-object v9, p0, Lnet/veritran/component/view/VTPageIndicatorView;->indicatorImgOn:Ljava/lang/String;

    const/4 v10, 0x0

    aget v10, v4, v10

    const/4 v11, 0x1

    aget v11, v4, v11

    invoke-virtual {v8, v9, v10, v11}, Lnet/veritran/utils/ImageHandler;->getBitmapForSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 66
    .local v1, "bmOn":Landroid/graphics/Bitmap;
    iget v8, p0, Lnet/veritran/component/view/VTPageIndicatorView;->imageSize:I

    iget v9, p0, Lnet/veritran/component/view/VTPageIndicatorView;->imageSize:I

    const/4 v10, 0x1

    invoke-static {v1, v8, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lnet/veritran/component/view/VTPageIndicatorView;->bmIndicatorImgOn:Landroid/graphics/Bitmap;

    .line 67
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v8

    invoke-virtual {v8}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v8

    iget-object v9, p0, Lnet/veritran/component/view/VTPageIndicatorView;->indicatorImgOff:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lnet/veritran/utils/ImageHandler;->getBitmapSize(Ljava/lang/String;)[I

    move-result-object v3

    .line 68
    .local v3, "imageSizesOff":[I
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v8

    invoke-virtual {v8}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v8

    iget-object v9, p0, Lnet/veritran/component/view/VTPageIndicatorView;->indicatorImgOff:Ljava/lang/String;

    const/4 v10, 0x0

    aget v10, v3, v10

    const/4 v11, 0x1

    aget v11, v3, v11

    invoke-virtual {v8, v9, v10, v11}, Lnet/veritran/utils/ImageHandler;->getBitmapForSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 69
    .local v0, "bmOff":Landroid/graphics/Bitmap;
    iget v8, p0, Lnet/veritran/component/view/VTPageIndicatorView;->imageSize:I

    iget v9, p0, Lnet/veritran/component/view/VTPageIndicatorView;->imageSize:I

    const/4 v10, 0x1

    invoke-static {v0, v8, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lnet/veritran/component/view/VTPageIndicatorView;->bmIndicatorImgOff:Landroid/graphics/Bitmap;

    .line 71
    iget v8, p0, Lnet/veritran/component/view/VTPageIndicatorView;->imageSize:I

    if-lez v8, :cond_1

    .line 72
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v8, p0, Lnet/veritran/component/view/VTPageIndicatorView;->count:I

    if-ge v2, v8, :cond_1

    .line 73
    const/4 v5, 0x0

    .line 74
    .local v5, "img":Landroid/graphics/Bitmap;
    if-ne p1, v2, :cond_0

    .line 75
    iget-object v5, p0, Lnet/veritran/component/view/VTPageIndicatorView;->bmIndicatorImgOn:Landroid/graphics/Bitmap;

    .line 82
    :goto_1
    new-instance v6, Landroid/widget/ImageView;

    iget-object v8, p0, Lnet/veritran/component/view/VTPageIndicatorView;->activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 83
    .local v6, "iv":Landroid/widget/ImageView;
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 84
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 86
    .local v7, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v8, p0, Lnet/veritran/component/view/VTPageIndicatorView;->imageSize:I

    div-int/lit8 v8, v8, 0x4

    iget v9, p0, Lnet/veritran/component/view/VTPageIndicatorView;->imageSize:I

    iget v10, p0, Lnet/veritran/component/view/VTPageIndicatorView;->imageSize:I

    div-int/lit8 v10, v10, 0x4

    iget v11, p0, Lnet/veritran/component/view/VTPageIndicatorView;->imageSize:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 87
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    invoke-virtual {p0, v6}, Lnet/veritran/component/view/VTPageIndicatorView;->addView(Landroid/view/View;)V

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    .end local v6    # "iv":Landroid/widget/ImageView;
    .end local v7    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v5, p0, Lnet/veritran/component/view/VTPageIndicatorView;->bmIndicatorImgOff:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 92
    .end local v2    # "i":I
    .end local v5    # "img":Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 135
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "availableWidth"    # I
    .param p2, "availableHeight"    # I

    .prologue
    .line 125
    iget-object v2, p0, Lnet/veritran/component/view/VTPageIndicatorView;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lnet/veritran/utils/VTDisplayHelper;->getHeightPixel(Landroid/content/Context;)I

    move-result v0

    .line 126
    .local v0, "heightScreen":I
    iget-object v2, p0, Lnet/veritran/component/view/VTPageIndicatorView;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lnet/veritran/utils/VTDisplayHelper;->getWidthPixel(Landroid/content/Context;)I

    move-result v1

    .line 127
    .local v1, "widthScreen":I
    int-to-double v2, v0

    const-wide v4, 0x3f947ae147ae147bL    # 0.02

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lnet/veritran/component/view/VTPageIndicatorView;->imageSize:I

    .line 128
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 129
    return-void
.end method

.method public setCountItems(II)V
    .locals 0
    .param p1, "initPos"    # I
    .param p2, "countItems"    # I

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2}, Lnet/veritran/component/view/VTPageIndicatorView;->initData(II)V

    .line 60
    return-void
.end method

.method public setImages(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "imgCurrent"    # Ljava/lang/String;
    .param p2, "img"    # Ljava/lang/String;

    .prologue
    .line 49
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iput-object p1, p0, Lnet/veritran/component/view/VTPageIndicatorView;->indicatorImgOn:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lnet/veritran/component/view/VTPageIndicatorView;->indicatorImgOff:Ljava/lang/String;

    goto :goto_0
.end method
