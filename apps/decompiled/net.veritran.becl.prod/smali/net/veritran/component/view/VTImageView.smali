.class public Lnet/veritran/component/view/VTImageView;
.super Landroid/widget/ImageButton;
.source "VTImageView.java"

# interfaces
.implements Lnet/veritran/component/view/VTUIComponentView;
.implements Lnet/veritran/component/view/VTImageViewInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "VTImageView"


# instance fields
.field private backgroundColor:I

.field fixedBottomMargin:F

.field private fixedHeight:I

.field fixedLeftMargin:F

.field fixedRightMargin:F

.field fixedTopMargin:F

.field private fixedWidth:I

.field private fontBold:Z

.field private fontColor:I

.field private fontCustom:Z

.field private fontFamily:Landroid/graphics/Typeface;

.field private fontItalic:Z

.field private fontSize:I

.field private image:Landroid/graphics/Bitmap;

.field private imageDisabled:Landroid/graphics/Bitmap;

.field private imageDrawable:Ljava/lang/String;

.field private imagePressed:Landroid/graphics/Bitmap;

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

.field rect:Landroid/graphics/Rect;

.field private relatedComponent:Lnet/veritran/component/VTUIComponent;

.field private resourceHeight:I

.field private resourceWidth:I

.field private text:Ljava/lang/String;

.field private textAlign:Landroid/graphics/Paint$Align;

.field textPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v0, 0x0

    .line 132
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 38
    iput v0, p0, Lnet/veritran/component/view/VTImageView;->backgroundColor:I

    .line 46
    iput-boolean v0, p0, Lnet/veritran/component/view/VTImageView;->fontBold:Z

    .line 47
    iput-boolean v0, p0, Lnet/veritran/component/view/VTImageView;->fontItalic:Z

    .line 48
    iput-boolean v0, p0, Lnet/veritran/component/view/VTImageView;->fontCustom:Z

    .line 53
    iput v1, p0, Lnet/veritran/component/view/VTImageView;->percentageWidth:F

    .line 54
    iput v1, p0, Lnet/veritran/component/view/VTImageView;->percentageHeight:F

    .line 57
    iput v2, p0, Lnet/veritran/component/view/VTImageView;->percentageLeftMargin:F

    .line 58
    iput v2, p0, Lnet/veritran/component/view/VTImageView;->percentageTopMargin:F

    .line 59
    iput v2, p0, Lnet/veritran/component/view/VTImageView;->percentageRightMargin:F

    .line 60
    iput v2, p0, Lnet/veritran/component/view/VTImageView;->percentageBottomMargin:F

    .line 62
    iput v0, p0, Lnet/veritran/component/view/VTImageView;->measuredLeftMargin:I

    .line 63
    iput v0, p0, Lnet/veritran/component/view/VTImageView;->measuredRightMargin:I

    .line 64
    iput v0, p0, Lnet/veritran/component/view/VTImageView;->measuredTopMargin:I

    .line 65
    iput v0, p0, Lnet/veritran/component/view/VTImageView;->measuredBottomMargin:I

    .line 67
    iput v1, p0, Lnet/veritran/component/view/VTImageView;->fixedLeftMargin:F

    .line 68
    iput v1, p0, Lnet/veritran/component/view/VTImageView;->fixedRightMargin:F

    .line 69
    iput v1, p0, Lnet/veritran/component/view/VTImageView;->fixedTopMargin:F

    .line 70
    iput v1, p0, Lnet/veritran/component/view/VTImageView;->fixedBottomMargin:F

    .line 72
    iput v3, p0, Lnet/veritran/component/view/VTImageView;->fixedWidth:I

    .line 74
    iput v3, p0, Lnet/veritran/component/view/VTImageView;->fixedHeight:I

    .line 76
    iput v3, p0, Lnet/veritran/component/view/VTImageView;->resourceWidth:I

    .line 77
    iput v3, p0, Lnet/veritran/component/view/VTImageView;->resourceHeight:I

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/component/view/VTImageView;->relatedComponent:Lnet/veritran/component/VTUIComponent;

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/veritran/component/view/VTImageView;->textPaint:Landroid/graphics/Paint;

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/veritran/component/view/VTImageView;->rect:Landroid/graphics/Rect;

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v0, 0x0

    .line 128
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput v0, p0, Lnet/veritran/component/view/VTImageView;->backgroundColor:I

    .line 46
    iput-boolean v0, p0, Lnet/veritran/component/view/VTImageView;->fontBold:Z

    .line 47
    iput-boolean v0, p0, Lnet/veritran/component/view/VTImageView;->fontItalic:Z

    .line 48
    iput-boolean v0, p0, Lnet/veritran/component/view/VTImageView;->fontCustom:Z

    .line 53
    iput v1, p0, Lnet/veritran/component/view/VTImageView;->percentageWidth:F

    .line 54
    iput v1, p0, Lnet/veritran/component/view/VTImageView;->percentageHeight:F

    .line 57
    iput v2, p0, Lnet/veritran/component/view/VTImageView;->percentageLeftMargin:F

    .line 58
    iput v2, p0, Lnet/veritran/component/view/VTImageView;->percentageTopMargin:F

    .line 59
    iput v2, p0, Lnet/veritran/component/view/VTImageView;->percentageRightMargin:F

    .line 60
    iput v2, p0, Lnet/veritran/component/view/VTImageView;->percentageBottomMargin:F

    .line 62
    iput v0, p0, Lnet/veritran/component/view/VTImageView;->measuredLeftMargin:I

    .line 63
    iput v0, p0, Lnet/veritran/component/view/VTImageView;->measuredRightMargin:I

    .line 64
    iput v0, p0, Lnet/veritran/component/view/VTImageView;->measuredTopMargin:I

    .line 65
    iput v0, p0, Lnet/veritran/component/view/VTImageView;->measuredBottomMargin:I

    .line 67
    iput v1, p0, Lnet/veritran/component/view/VTImageView;->fixedLeftMargin:F

    .line 68
    iput v1, p0, Lnet/veritran/component/view/VTImageView;->fixedRightMargin:F

    .line 69
    iput v1, p0, Lnet/veritran/component/view/VTImageView;->fixedTopMargin:F

    .line 70
    iput v1, p0, Lnet/veritran/component/view/VTImageView;->fixedBottomMargin:F

    .line 72
    iput v3, p0, Lnet/veritran/component/view/VTImageView;->fixedWidth:I

    .line 74
    iput v3, p0, Lnet/veritran/component/view/VTImageView;->fixedHeight:I

    .line 76
    iput v3, p0, Lnet/veritran/component/view/VTImageView;->resourceWidth:I

    .line 77
    iput v3, p0, Lnet/veritran/component/view/VTImageView;->resourceHeight:I

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/component/view/VTImageView;->relatedComponent:Lnet/veritran/component/VTUIComponent;

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/veritran/component/view/VTImageView;->textPaint:Landroid/graphics/Paint;

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/veritran/component/view/VTImageView;->rect:Landroid/graphics/Rect;

    .line 129
    return-void
.end method

.method public constructor <init>(Lnet/veritran/component/VTUIComponent;)V
    .locals 5
    .param p1, "component"    # Lnet/veritran/component/VTUIComponent;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, 0x0

    .line 111
    invoke-virtual {p1}, Lnet/veritran/component/VTUIComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 38
    iput v1, p0, Lnet/veritran/component/view/VTImageView;->backgroundColor:I

    .line 46
    iput-boolean v1, p0, Lnet/veritran/component/view/VTImageView;->fontBold:Z

    .line 47
    iput-boolean v1, p0, Lnet/veritran/component/view/VTImageView;->fontItalic:Z

    .line 48
    iput-boolean v1, p0, Lnet/veritran/component/view/VTImageView;->fontCustom:Z

    .line 53
    iput v2, p0, Lnet/veritran/component/view/VTImageView;->percentageWidth:F

    .line 54
    iput v2, p0, Lnet/veritran/component/view/VTImageView;->percentageHeight:F

    .line 57
    iput v3, p0, Lnet/veritran/component/view/VTImageView;->percentageLeftMargin:F

    .line 58
    iput v3, p0, Lnet/veritran/component/view/VTImageView;->percentageTopMargin:F

    .line 59
    iput v3, p0, Lnet/veritran/component/view/VTImageView;->percentageRightMargin:F

    .line 60
    iput v3, p0, Lnet/veritran/component/view/VTImageView;->percentageBottomMargin:F

    .line 62
    iput v1, p0, Lnet/veritran/component/view/VTImageView;->measuredLeftMargin:I

    .line 63
    iput v1, p0, Lnet/veritran/component/view/VTImageView;->measuredRightMargin:I

    .line 64
    iput v1, p0, Lnet/veritran/component/view/VTImageView;->measuredTopMargin:I

    .line 65
    iput v1, p0, Lnet/veritran/component/view/VTImageView;->measuredBottomMargin:I

    .line 67
    iput v2, p0, Lnet/veritran/component/view/VTImageView;->fixedLeftMargin:F

    .line 68
    iput v2, p0, Lnet/veritran/component/view/VTImageView;->fixedRightMargin:F

    .line 69
    iput v2, p0, Lnet/veritran/component/view/VTImageView;->fixedTopMargin:F

    .line 70
    iput v2, p0, Lnet/veritran/component/view/VTImageView;->fixedBottomMargin:F

    .line 72
    iput v4, p0, Lnet/veritran/component/view/VTImageView;->fixedWidth:I

    .line 74
    iput v4, p0, Lnet/veritran/component/view/VTImageView;->fixedHeight:I

    .line 76
    iput v4, p0, Lnet/veritran/component/view/VTImageView;->resourceWidth:I

    .line 77
    iput v4, p0, Lnet/veritran/component/view/VTImageView;->resourceHeight:I

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/component/view/VTImageView;->relatedComponent:Lnet/veritran/component/VTUIComponent;

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/veritran/component/view/VTImageView;->textPaint:Landroid/graphics/Paint;

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/veritran/component/view/VTImageView;->rect:Landroid/graphics/Rect;

    .line 112
    iput-object p1, p0, Lnet/veritran/component/view/VTImageView;->relatedComponent:Lnet/veritran/component/VTUIComponent;

    .line 116
    invoke-virtual {p0, v1, v1, v1, v1}, Lnet/veritran/component/view/VTImageView;->setPadding(IIII)V

    .line 123
    iget-object v0, p0, Lnet/veritran/component/view/VTImageView;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 124
    iget-object v0, p0, Lnet/veritran/component/view/VTImageView;->textPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 125
    return-void
.end method

.method private checkBitmapFitsInMemory(JJI)Z
    .locals 15
    .param p1, "bmpwidth"    # J
    .param p3, "bmpheight"    # J
    .param p5, "bmpdensity"    # I

    .prologue
    .line 178
    mul-long v8, p1, p3

    move/from16 v0, p5

    int-to-long v10, v0

    mul-long v6, v8, v10

    .line 179
    .local v6, "reqsize":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v2

    .line 182
    .local v2, "allocNativeHeap":J
    const-wide/high16 v8, 0x4150000000000000L    # 4194304.0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v10

    long-to-double v10, v10

    const-wide v12, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v10, v12

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    double-to-long v4, v8

    .line 183
    .local v4, "heapPad":J
    add-long v8, v6, v2

    add-long/2addr v8, v4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-ltz v8, :cond_0

    .line 185
    const/4 v8, 0x0

    .line 187
    :goto_0
    return v8

    :cond_0
    const/4 v8, 0x1

    goto :goto_0
.end method

.method private setStateDrawables(II)V
    .locals 20
    .param p1, "pixelsWidth"    # I
    .param p2, "pixelsHeight"    # I

    .prologue
    .line 193
    const/16 v16, 0x0

    .line 194
    .local v16, "normal":Landroid/graphics/drawable/BitmapDrawable;
    const/16 v18, 0x0

    .line 195
    .local v18, "pressed":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v12, 0x0

    .line 198
    .local v12, "disabled":Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/veritran/component/view/VTImageView;->image:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 200
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v3

    invoke-virtual {v3}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/veritran/component/view/VTImageView;->imageDrawable:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/view/VTImageView;->relatedComponent:Lnet/veritran/component/VTUIComponent;

    invoke-virtual {v5}, Lnet/veritran/component/VTUIComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v5

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v3, v4, v0, v1, v5}, Lnet/veritran/utils/ImageHandler;->getBitmapForSize(Ljava/lang/String;IILnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lnet/veritran/component/view/VTImageView;->image:Landroid/graphics/Bitmap;

    .line 201
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/veritran/component/view/VTImageView;->image:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 256
    :goto_0
    return-void

    .line 204
    :cond_0
    new-instance v16, Landroid/graphics/drawable/BitmapDrawable;

    .end local v16    # "normal":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/veritran/component/view/VTImageView;->image:Landroid/graphics/Bitmap;

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 207
    .restart local v16    # "normal":Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/veritran/component/view/VTImageView;->imagePressed:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    .line 209
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v3

    invoke-virtual {v3}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/view/VTImageView;->imageDrawable:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_pressed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/view/VTImageView;->relatedComponent:Lnet/veritran/component/VTUIComponent;

    invoke-virtual {v5}, Lnet/veritran/component/VTUIComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v5

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v3, v4, v0, v1, v5}, Lnet/veritran/utils/ImageHandler;->getBitmapForSize(Ljava/lang/String;IILnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lnet/veritran/component/view/VTImageView;->imagePressed:Landroid/graphics/Bitmap;

    .line 211
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/veritran/component/view/VTImageView;->imagePressed:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 212
    new-instance v18, Landroid/graphics/drawable/BitmapDrawable;

    .end local v18    # "pressed":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/veritran/component/view/VTImageView;->imagePressed:Landroid/graphics/Bitmap;

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 214
    .restart local v18    # "pressed":Landroid/graphics/drawable/BitmapDrawable;
    :cond_2
    if-nez v18, :cond_3

    .line 215
    const/4 v3, 0x1

    const/4 v4, 0x1

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 216
    .local v2, "bPressed":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "#33CCCCCC"

    invoke-static {v5}, Lnet/veritran/VTAbstractActivity;->resolveColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 217
    new-instance v18, Landroid/graphics/drawable/BitmapDrawable;

    .end local v18    # "pressed":Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 221
    .end local v2    # "bPressed":Landroid/graphics/Bitmap;
    .restart local v18    # "pressed":Landroid/graphics/drawable/BitmapDrawable;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/veritran/component/view/VTImageView;->imageDisabled:Landroid/graphics/Bitmap;

    if-nez v3, :cond_4

    .line 223
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v3

    invoke-virtual {v3}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/view/VTImageView;->imageDrawable:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_disabled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/veritran/component/view/VTImageView;->relatedComponent:Lnet/veritran/component/VTUIComponent;

    invoke-virtual {v5}, Lnet/veritran/component/VTUIComponent;->getArrayReaderAdapter()Lnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;

    move-result-object v5

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v3, v4, v0, v1, v5}, Lnet/veritran/utils/ImageHandler;->getBitmapForSize(Ljava/lang/String;IILnet/veritran/vtuserapplication/adapters/ArrayReaderAdapter;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lnet/veritran/component/view/VTImageView;->imageDisabled:Landroid/graphics/Bitmap;

    .line 224
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/veritran/component/view/VTImageView;->imageDisabled:Landroid/graphics/Bitmap;

    if-nez v3, :cond_4

    .line 228
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/veritran/component/view/VTImageView;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 229
    .local v15, "height":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/veritran/component/view/VTImageView;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    .line 230
    .local v19, "width":I
    move/from16 v0, v19

    int-to-long v4, v0

    int-to-long v6, v15

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v8, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lnet/veritran/component/view/VTImageView;->checkBitmapFitsInMemory(JJI)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 231
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v19

    invoke-static {v0, v15, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 232
    .local v14, "grayScale":Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 233
    .local v10, "c":Landroid/graphics/Canvas;
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    .line 234
    .local v17, "paint":Landroid/graphics/Paint;
    new-instance v11, Landroid/graphics/ColorMatrix;

    invoke-direct {v11}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 235
    .local v11, "cm":Landroid/graphics/ColorMatrix;
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 236
    new-instance v13, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v13, v11}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 237
    .local v13, "f":Landroid/graphics/ColorMatrixColorFilter;
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 238
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/veritran/component/view/VTImageView;->image:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v10, v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 241
    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/veritran/component/view/VTImageView;->imageDisabled:Landroid/graphics/Bitmap;

    .line 245
    .end local v10    # "c":Landroid/graphics/Canvas;
    .end local v11    # "cm":Landroid/graphics/ColorMatrix;
    .end local v13    # "f":Landroid/graphics/ColorMatrixColorFilter;
    .end local v14    # "grayScale":Landroid/graphics/Bitmap;
    .end local v15    # "height":I
    .end local v17    # "paint":Landroid/graphics/Paint;
    .end local v19    # "width":I
    :cond_4
    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    .end local v12    # "disabled":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/veritran/component/view/VTImageView;->imageDisabled:Landroid/graphics/Bitmap;

    invoke-direct {v12, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 248
    .restart local v12    # "disabled":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v9, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 250
    .local v9, "backStates":Landroid/graphics/drawable/StateListDrawable;
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const v5, 0x10100a7

    aput v5, v3, v4

    move-object/from16 v0, v18

    invoke-virtual {v9, v3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 251
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const v5, 0x101009c

    aput v5, v3, v4

    move-object/from16 v0, v18

    invoke-virtual {v9, v3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 252
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const v5, -0x101009e

    aput v5, v3, v4

    invoke-virtual {v9, v3, v12}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 253
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const v5, 0x101009e

    aput v5, v3, v4

    move-object/from16 v0, v16

    invoke-virtual {v9, v3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 255
    move-object/from16 v0, p0

    invoke-super {v0, v9}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getFixedHeight()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lnet/veritran/component/view/VTImageView;->fixedHeight:I

    return v0
.end method

.method public getFixedWidth()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lnet/veritran/component/view/VTImageView;->fixedWidth:I

    return v0
.end method

.method public getFontColor()I
    .locals 1

    .prologue
    .line 568
    iget v0, p0, Lnet/veritran/component/view/VTImageView;->fontColor:I

    return v0
.end method

.method public getFontFamily()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lnet/veritran/component/view/VTImageView;->fontFamily:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getFontSize()I
    .locals 1

    .prologue
    .line 576
    iget v0, p0, Lnet/veritran/component/view/VTImageView;->fontSize:I

    return v0
.end method

.method public getHeightPercentage()F
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lnet/veritran/component/view/VTImageView;->percentageHeight:F

    return v0
.end method

.method public getMeasuredBottomMargin()I
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Lnet/veritran/component/view/VTImageView;->measuredBottomMargin:I

    return v0
.end method

.method public getMeasuredLeftMargin()I
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Lnet/veritran/component/view/VTImageView;->measuredLeftMargin:I

    return v0
.end method

.method public getMeasuredRightMargin()I
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lnet/veritran/component/view/VTImageView;->measuredRightMargin:I

    return v0
.end method

.method public getMeasuredTopMargin()I
    .locals 1

    .prologue
    .line 456
    iget v0, p0, Lnet/veritran/component/view/VTImageView;->measuredTopMargin:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lnet/veritran/component/view/VTImageView;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getWidthPercentage()F
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lnet/veritran/component/view/VTImageView;->percentageWidth:F

    return v0
.end method

.method public ignoreShadow()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    return-void
.end method

.method public measureAbsoluteMargins()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v1, -0x40800000    # -1.0f

    .line 507
    iget v0, p0, Lnet/veritran/component/view/VTImageView;->fixedLeftMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lnet/veritran/component/view/VTImageView;->percentageLeftMargin:F

    .line 508
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_0
    iput v0, p0, Lnet/veritran/component/view/VTImageView;->measuredLeftMargin:I

    .line 509
    iget v0, p0, Lnet/veritran/component/view/VTImageView;->fixedRightMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lnet/veritran/component/view/VTImageView;->percentageRightMargin:F

    .line 510
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_1
    iput v0, p0, Lnet/veritran/component/view/VTImageView;->measuredRightMargin:I

    .line 511
    iget v0, p0, Lnet/veritran/component/view/VTImageView;->fixedTopMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lnet/veritran/component/view/VTImageView;->percentageTopMargin:F

    .line 512
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_2
    iput v0, p0, Lnet/veritran/component/view/VTImageView;->measuredTopMargin:I

    .line 513
    iget v0, p0, Lnet/veritran/component/view/VTImageView;->fixedBottomMargin:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget v0, p0, Lnet/veritran/component/view/VTImageView;->percentageBottomMargin:F

    .line 514
    invoke-static {v0}, Lnet/veritran/VTAbstractActivity;->getPercentageToPixels(F)I

    move-result v0

    :goto_3
    iput v0, p0, Lnet/veritran/component/view/VTImageView;->measuredBottomMargin:I

    .line 515
    return-void

    .line 508
    :cond_0
    iget v0, p0, Lnet/veritran/component/view/VTImageView;->fixedLeftMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 510
    :cond_1
    iget v0, p0, Lnet/veritran/component/view/VTImageView;->fixedRightMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_1

    .line 512
    :cond_2
    iget v0, p0, Lnet/veritran/component/view/VTImageView;->fixedTopMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_2

    .line 514
    :cond_3
    iget v0, p0, Lnet/veritran/component/view/VTImageView;->fixedBottomMargin:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_3
.end method

.method public measureText()V
    .locals 5

    .prologue
    .line 557
    iget-object v0, p0, Lnet/veritran/component/view/VTImageView;->text:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 558
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/veritran/component/view/VTImageView;->rect:Landroid/graphics/Rect;

    .line 565
    :goto_0
    return-void

    .line 560
    :cond_0
    iget-object v0, p0, Lnet/veritran/component/view/VTImageView;->textPaint:Landroid/graphics/Paint;

    iget v1, p0, Lnet/veritran/component/view/VTImageView;->fontColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 561
    iget-object v0, p0, Lnet/veritran/component/view/VTImageView;->textPaint:Landroid/graphics/Paint;

    iget v1, p0, Lnet/veritran/component/view/VTImageView;->fontSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 562
    iget-object v0, p0, Lnet/veritran/component/view/VTImageView;->textPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lnet/veritran/component/view/VTImageView;->fontFamily:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 563
    iget-object v0, p0, Lnet/veritran/component/view/VTImageView;->textPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lnet/veritran/component/view/VTImageView;->text:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lnet/veritran/component/view/VTImageView;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lnet/veritran/component/view/VTImageView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 519
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 520
    iget-object v2, p0, Lnet/veritran/component/view/VTImageView;->text:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 521
    iget-object v2, p0, Lnet/veritran/component/view/VTImageView;->textPaint:Landroid/graphics/Paint;

    iget v3, p0, Lnet/veritran/component/view/VTImageView;->fontColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 522
    iget-object v2, p0, Lnet/veritran/component/view/VTImageView;->textPaint:Landroid/graphics/Paint;

    iget v3, p0, Lnet/veritran/component/view/VTImageView;->fontSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 523
    iget-object v2, p0, Lnet/veritran/component/view/VTImageView;->textPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lnet/veritran/component/view/VTImageView;->fontFamily:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 524
    iget-boolean v2, p0, Lnet/veritran/component/view/VTImageView;->fontCustom:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lnet/veritran/component/view/VTImageView;->fontBold:Z

    if-eqz v2, :cond_0

    .line 525
    iget-object v2, p0, Lnet/veritran/component/view/VTImageView;->textPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 527
    :cond_0
    iget-boolean v2, p0, Lnet/veritran/component/view/VTImageView;->fontCustom:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lnet/veritran/component/view/VTImageView;->fontItalic:Z

    if-eqz v2, :cond_1

    .line 528
    iget-object v2, p0, Lnet/veritran/component/view/VTImageView;->textPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x41800000    # -0.25f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 531
    :cond_1
    invoke-virtual {p0}, Lnet/veritran/component/view/VTImageView;->getWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 532
    .local v0, "xPos":I
    iget-object v2, p0, Lnet/veritran/component/view/VTImageView;->textAlign:Landroid/graphics/Paint$Align;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    if-ne v2, v3, :cond_4

    .line 533
    iget-object v2, p0, Lnet/veritran/component/view/VTImageView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 538
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lnet/veritran/component/view/VTImageView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lnet/veritran/component/view/VTImageView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    iget-object v4, p0, Lnet/veritran/component/view/VTImageView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 539
    .local v1, "yPos":I
    iget-object v2, p0, Lnet/veritran/component/view/VTImageView;->text:Ljava/lang/String;

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lnet/veritran/component/view/VTImageView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 541
    .end local v0    # "xPos":I
    .end local v1    # "yPos":I
    :cond_3
    return-void

    .line 534
    .restart local v0    # "xPos":I
    :cond_4
    iget-object v2, p0, Lnet/veritran/component/view/VTImageView;->textAlign:Landroid/graphics/Paint$Align;

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    if-ne v2, v3, :cond_2

    .line 535
    invoke-virtual {p0}, Lnet/veritran/component/view/VTImageView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lnet/veritran/component/view/VTImageView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 421
    const-string v0, "VTImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLayout ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/component/view/VTImageView;->imageDrawable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] -> getLeft():+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTImageView;->getLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";getTop():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTImageView;->getTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";getWidth():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTImageView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";getHeight():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTImageView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method protected onMeasure(II)V
    .locals 23
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 299
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTImageView;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 300
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-super {v0, v1, v2}, Landroid/widget/ImageButton;->setMeasuredDimension(II)V

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    const-string v19, "VTImageView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "onMeasure ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTImageView;->imageDrawable:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] -> widthMeasureSpec: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";heightMeasureSpec:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 306
    .local v12, "mw":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 307
    .local v9, "mh":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    .line 308
    .local v17, "sw":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 309
    .local v15, "sh":I
    invoke-static {v12}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v11

    .line 310
    .local v11, "modeWidth":Ljava/lang/String;
    invoke-static {v9}, Lnet/veritran/component/view/VUIComponentUtils;->getMeasureSpecModeAsString(I)Ljava/lang/String;

    move-result-object v10

    .line 317
    .local v10, "modeHeight":Ljava/lang/String;
    const/4 v8, 0x0

    .line 318
    .local v8, "imageWidth":I
    const/4 v6, 0x0

    .line 319
    .local v6, "imageHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTImageView;->imageDrawable:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    .line 320
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lnet/veritran/VTUserApplicationSmart;->getImageHandler()Lnet/veritran/utils/ImageHandler;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTImageView;->imageDrawable:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lnet/veritran/utils/ImageHandler;->getBitmapSize(Ljava/lang/String;)[I

    move-result-object v16

    .line 322
    .local v16, "sizeBitmap":[I
    if-eqz v16, :cond_2

    .line 324
    const/16 v19, 0x0

    aget v8, v16, v19

    .line 325
    const/16 v19, 0x1

    aget v6, v16, v19

    .line 328
    .end local v16    # "sizeBitmap":[I
    :cond_2
    const-string v19, "VTImageView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "onMeasure ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTImageView;->imageDrawable:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] -> imageWidth:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";imageHeight:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    if-eqz v6, :cond_8

    if-eqz v8, :cond_8

    .line 331
    int-to-float v0, v8

    move/from16 v19, v0

    int-to-float v0, v6

    move/from16 v20, v0

    div-float v7, v19, v20

    .line 342
    .local v7, "imageScale":F
    :goto_1
    const-string v19, "VTImageView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "onMeasure ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTImageView;->imageDrawable:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] -> width("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "):"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";height("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "):"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    if-nez v9, :cond_3

    if-nez v15, :cond_3

    .line 346
    const/high16 v9, -0x80000000

    .line 347
    const v15, 0xffffff

    .line 348
    const-string v19, "VTImageView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTImageView;->getTag()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " onMeasure REDEF! -> width("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "):"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";height("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "):"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTImageView;->measureAbsoluteMargins()V

    .line 355
    const-string v19, "VTImageView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "onMeasure  ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTImageView;->imageDrawable:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] -> leftMargin:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTImageView;->measuredLeftMargin:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";rightMargin:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTImageView;->measuredRightMargin:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";topMargin:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTImageView;->measuredTopMargin:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";bottomMargin:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTImageView;->measuredBottomMargin:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    move/from16 v14, v17

    .line 358
    .local v14, "pixelsWidth":I
    move v13, v15

    .line 360
    .local v13, "pixelsHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTImageView;->fixedWidth:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    .line 361
    move-object/from16 v0, p0

    iget v14, v0, Lnet/veritran/component/view/VTImageView;->fixedWidth:I

    .line 363
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTImageView;->fixedHeight:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    .line 364
    move-object/from16 v0, p0

    iget v13, v0, Lnet/veritran/component/view/VTImageView;->fixedHeight:I

    .line 384
    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lnet/veritran/component/view/VTImageView;->measureText()V

    .line 394
    const-string v19, "VTImageView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "onMeasure  ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTImageView;->imageDrawable:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] -> pixelsWidth:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";pixelsHeight:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    int-to-float v0, v14

    move/from16 v19, v0

    int-to-float v0, v13

    move/from16 v20, v0

    div-float v5, v19, v20

    .line 396
    .local v5, "areaScale":F
    const-string v19, "VTImageView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "onMeasure  ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTImageView;->imageDrawable:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] -> imageScale="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";areaScale="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v19, "VTImageView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "onMeasure  ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTImageView;->imageDrawable:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] -> text=["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTImageView;->text:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const/16 v19, 0x0

    cmpl-float v19, v7, v19

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTImageView;->text:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_6

    .line 399
    cmpl-float v19, v5, v7

    if-lez v19, :cond_d

    .line 400
    int-to-float v0, v13

    move/from16 v19, v0

    mul-float v19, v19, v7

    move/from16 v0, v19

    float-to-int v14, v0

    .line 405
    :cond_6
    :goto_3
    const-string v19, "VTImageView"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "onMeasure  ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTImageView;->imageDrawable:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] -> pixelsWidth="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ";pixelsHeight="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    move-object/from16 v0, p0

    invoke-super {v0, v14, v13}, Landroid/widget/ImageButton;->setMeasuredDimension(II)V

    .line 410
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTImageView;->backgroundColor:I

    move/from16 v19, v0

    if-eqz v19, :cond_7

    .line 411
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTImageView;->backgroundColor:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lnet/veritran/component/view/VTImageView;->setBackgroundColor(I)V

    .line 413
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTImageView;->imageDrawable:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTImageView;->imageDrawable:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 415
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lnet/veritran/component/view/VTImageView;->setStateDrawables(II)V

    goto/16 :goto_0

    .line 333
    .end local v5    # "areaScale":F
    .end local v7    # "imageScale":F
    .end local v13    # "pixelsHeight":I
    .end local v14    # "pixelsWidth":I
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTImageView;->resourceWidth:I

    move/from16 v19, v0

    if-lez v19, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTImageView;->resourceHeight:I

    move/from16 v19, v0

    if-lez v19, :cond_9

    .line 335
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTImageView;->resourceWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTImageView;->resourceHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v7, v19, v20

    .restart local v7    # "imageScale":F
    goto/16 :goto_1

    .line 339
    .end local v7    # "imageScale":F
    :cond_9
    const/4 v7, 0x0

    .restart local v7    # "imageScale":F
    goto/16 :goto_1

    .line 366
    .restart local v13    # "pixelsHeight":I
    .restart local v14    # "pixelsWidth":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTImageView;->text:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTImageView;->text:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTImageView;->percentageHeight:F

    move/from16 v19, v0

    const/high16 v20, -0x40800000    # -1.0f

    cmpl-float v19, v19, v20

    if-nez v19, :cond_5

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTImageView;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTImageView;->fontSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTImageView;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTImageView;->fontFamily:Landroid/graphics/Typeface;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 371
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/veritran/component/view/VTImageView;->fontCustom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/veritran/component/view/VTImageView;->fontBold:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTImageView;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 374
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/veritran/component/view/VTImageView;->fontCustom:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/veritran/component/view/VTImageView;->fontItalic:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTImageView;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/high16 v20, -0x41800000    # -0.25f

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 377
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTImageView;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/component/view/VTImageView;->fontColor:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setColor(I)V

    .line 379
    const-string v18, "Ajql"

    .line 380
    .local v18, "textToGetHeight":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTImageView;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTImageView;->rect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/component/view/VTImageView;->rect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v19

    add-int/lit8 v13, v19, 0x14

    goto/16 :goto_2

    .line 402
    .end local v18    # "textToGetHeight":Ljava/lang/String;
    .restart local v5    # "areaScale":F
    :cond_d
    int-to-float v0, v14

    move/from16 v19, v0

    div-float v19, v19, v7

    move/from16 v0, v19

    float-to-int v13, v0

    goto/16 :goto_3
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 426
    const-string v0, "VTImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSizeChanged ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/component/view/VTImageView;->imageDrawable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] -> getLeft():+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTImageView;->getLeft()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";getTop():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTImageView;->getTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";getWidth():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTImageView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";getHeight():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/view/VTImageView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public setComponentBackgroundColor(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    .line 473
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lnet/veritran/component/view/VTImageView;->backgroundColor:I

    .line 474
    return-void
.end method

.method public setComponentBackgroundDrawable(Ljava/lang/String;)V
    .locals 1
    .param p1, "d"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 466
    iput-object p1, p0, Lnet/veritran/component/view/VTImageView;->imageDrawable:Ljava/lang/String;

    .line 467
    iput-object v0, p0, Lnet/veritran/component/view/VTImageView;->image:Landroid/graphics/Bitmap;

    .line 468
    iput-object v0, p0, Lnet/veritran/component/view/VTImageView;->imagePressed:Landroid/graphics/Bitmap;

    .line 469
    return-void
.end method

.method public setComponentInnerAlignment(Ljava/lang/String;)V
    .locals 1
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 478
    if-nez p1, :cond_0

    .line 479
    const-string p1, "center"

    .line 480
    :cond_0
    const-string v0, "center"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lnet/veritran/component/view/VTImageView;->textAlign:Landroid/graphics/Paint$Align;

    .line 487
    :goto_0
    return-void

    .line 482
    :cond_1
    const-string v0, "right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 483
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lnet/veritran/component/view/VTImageView;->textAlign:Landroid/graphics/Paint$Align;

    goto :goto_0

    .line 485
    :cond_2
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lnet/veritran/component/view/VTImageView;->textAlign:Landroid/graphics/Paint$Align;

    goto :goto_0
.end method

.method public setComponentVerticalAlignment(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 493
    return-void
.end method

.method public setFixedHeight(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 284
    iput p1, p0, Lnet/veritran/component/view/VTImageView;->fixedHeight:I

    .line 285
    return-void
.end method

.method public setFixedMargins(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 137
    const-string v0, "VTImageView"

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

    .line 139
    iput p1, p0, Lnet/veritran/component/view/VTImageView;->fixedLeftMargin:F

    .line 140
    iput p2, p0, Lnet/veritran/component/view/VTImageView;->fixedTopMargin:F

    .line 141
    iput p3, p0, Lnet/veritran/component/view/VTImageView;->fixedRightMargin:F

    .line 142
    iput p4, p0, Lnet/veritran/component/view/VTImageView;->fixedBottomMargin:F

    .line 143
    return-void
.end method

.method public setFixedWidth(I)V
    .locals 0
    .param p1, "w"    # I

    .prologue
    .line 270
    iput p1, p0, Lnet/veritran/component/view/VTImageView;->fixedWidth:I

    .line 271
    return-void
.end method

.method public setFontColor(I)V
    .locals 0
    .param p1, "fontColor"    # I

    .prologue
    .line 572
    iput p1, p0, Lnet/veritran/component/view/VTImageView;->fontColor:I

    .line 573
    return-void
.end method

.method public setFontFamily(Landroid/graphics/Typeface;ZZZ)V
    .locals 0
    .param p1, "fontFamily"    # Landroid/graphics/Typeface;
    .param p2, "isBold"    # Z
    .param p3, "isItalic"    # Z
    .param p4, "isCustom"    # Z

    .prologue
    .line 588
    iput-object p1, p0, Lnet/veritran/component/view/VTImageView;->fontFamily:Landroid/graphics/Typeface;

    .line 589
    iput-boolean p2, p0, Lnet/veritran/component/view/VTImageView;->fontBold:Z

    .line 590
    iput-boolean p3, p0, Lnet/veritran/component/view/VTImageView;->fontItalic:Z

    .line 591
    iput-boolean p4, p0, Lnet/veritran/component/view/VTImageView;->fontCustom:Z

    .line 592
    return-void
.end method

.method public setFontSize(I)V
    .locals 0
    .param p1, "fontSize"    # I

    .prologue
    .line 580
    iput p1, p0, Lnet/veritran/component/view/VTImageView;->fontSize:I

    .line 581
    return-void
.end method

.method public setHeightPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 502
    iput p1, p0, Lnet/veritran/component/view/VTImageView;->percentageHeight:F

    .line 503
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 147
    iput-object p1, p0, Lnet/veritran/component/view/VTImageView;->image:Landroid/graphics/Bitmap;

    .line 148
    return-void
.end method

.method public setImagePressed(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "imagePressed"    # Landroid/graphics/Bitmap;

    .prologue
    .line 152
    iput-object p1, p0, Lnet/veritran/component/view/VTImageView;->imagePressed:Landroid/graphics/Bitmap;

    .line 153
    return-void
.end method

.method public setPercentageMargins(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 166
    iput p1, p0, Lnet/veritran/component/view/VTImageView;->percentageLeftMargin:F

    .line 167
    iput p2, p0, Lnet/veritran/component/view/VTImageView;->percentageTopMargin:F

    .line 168
    iput p3, p0, Lnet/veritran/component/view/VTImageView;->percentageRightMargin:F

    .line 169
    iput p4, p0, Lnet/veritran/component/view/VTImageView;->percentageBottomMargin:F

    .line 170
    return-void
.end method

.method public setResourceHeight(I)V
    .locals 0
    .param p1, "resourceHeight"    # I

    .prologue
    .line 294
    iput p1, p0, Lnet/veritran/component/view/VTImageView;->resourceHeight:I

    .line 295
    return-void
.end method

.method public setResourceWidth(I)V
    .locals 0
    .param p1, "resourceWidth"    # I

    .prologue
    .line 289
    iput p1, p0, Lnet/veritran/component/view/VTImageView;->resourceWidth:I

    .line 290
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 548
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 549
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/component/view/VTImageView;->text:Ljava/lang/String;

    .line 553
    :goto_0
    return-void

    .line 551
    :cond_1
    iput-object p1, p0, Lnet/veritran/component/view/VTImageView;->text:Ljava/lang/String;

    goto :goto_0
.end method

.method public setWidthPercentage(F)V
    .locals 0
    .param p1, "perc"    # F

    .prologue
    .line 497
    iput p1, p0, Lnet/veritran/component/view/VTImageView;->percentageWidth:F

    .line 498
    return-void
.end method
