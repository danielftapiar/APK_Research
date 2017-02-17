.class Lnet/veritran/utils/ImageHandler$VTExternalFileResolver;
.super Lcom/caverock/androidsvg/SVGExternalFileResolver;
.source "ImageHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/utils/ImageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VTExternalFileResolver"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/utils/ImageHandler;


# direct methods
.method private constructor <init>(Lnet/veritran/utils/ImageHandler;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lnet/veritran/utils/ImageHandler$VTExternalFileResolver;->this$0:Lnet/veritran/utils/ImageHandler;

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGExternalFileResolver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/veritran/utils/ImageHandler;Lnet/veritran/utils/ImageHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/veritran/utils/ImageHandler;
    .param p2, "x1"    # Lnet/veritran/utils/ImageHandler$1;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lnet/veritran/utils/ImageHandler$VTExternalFileResolver;-><init>(Lnet/veritran/utils/ImageHandler;)V

    return-void
.end method


# virtual methods
.method public isFormatSupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/caverock/androidsvg/SVGExternalFileResolver;->isFormatSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public resolveFont(Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/Typeface;
    .locals 1
    .param p1, "fontFamily"    # Ljava/lang/String;
    .param p2, "fontWeight"    # I
    .param p3, "fontStyle"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-super {p0, p1, p2, p3}, Lcom/caverock/androidsvg/SVGExternalFileResolver;->resolveFont(Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public resolveImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "imageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 104
    const-string v7, "ImageHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Resolve image: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {p1}, Lnet/veritran/VTUserApplicationSmart;->resolveTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "filename":Ljava/lang/String;
    # getter for: Lnet/veritran/utils/ImageHandler;->sessionImages:Lnet/veritran/utils/SessionImageHandler;
    invoke-static {}, Lnet/veritran/utils/ImageHandler;->access$000()Lnet/veritran/utils/SessionImageHandler;

    move-result-object v7

    iget-object v8, p0, Lnet/veritran/utils/ImageHandler$VTExternalFileResolver;->this$0:Lnet/veritran/utils/ImageHandler;

    iget-object v8, v8, Lnet/veritran/utils/ImageHandler;->svgIdRendering:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lnet/veritran/utils/SessionImageHandler;->getSvgSize(Ljava/lang/String;)[I

    move-result-object v3

    .line 110
    .local v3, "size":[I
    if-eqz v3, :cond_0

    array-length v7, v3

    const/4 v8, 0x2

    if-ge v7, v8, :cond_1

    .line 112
    :cond_0
    const/4 v5, 0x0

    .line 130
    :goto_0
    return-object v5

    .line 115
    :cond_1
    const/4 v1, 0x0

    .line 117
    .local v1, "externalImage":Z
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "http:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "https:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_2
    move v1, v6

    .line 119
    :goto_1
    if-eqz v1, :cond_3

    .line 121
    new-instance v0, Lnet/veritran/utils/ImageHandler$DownloadImageAsync;

    iget-object v7, p0, Lnet/veritran/utils/ImageHandler$VTExternalFileResolver;->this$0:Lnet/veritran/utils/ImageHandler;

    invoke-direct {v0, v7, v2}, Lnet/veritran/utils/ImageHandler$DownloadImageAsync;-><init>(Lnet/veritran/utils/ImageHandler;Ljava/lang/String;)V

    .line 123
    .local v0, "async":Lnet/veritran/utils/ImageHandler$DownloadImageAsync;
    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 125
    .local v4, "thr":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 127
    invoke-virtual {v0}, Lnet/veritran/utils/ImageHandler$DownloadImageAsync;->getResult()Z

    .line 130
    .end local v0    # "async":Lnet/veritran/utils/ImageHandler$DownloadImageAsync;
    .end local v4    # "thr":Ljava/lang/Thread;
    :cond_3
    iget-object v7, p0, Lnet/veritran/utils/ImageHandler$VTExternalFileResolver;->this$0:Lnet/veritran/utils/ImageHandler;

    aget v5, v3, v5

    aget v6, v3, v6

    invoke-virtual {v7, v2, v5, v6}, Lnet/veritran/utils/ImageHandler;->getBitmapForSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    :cond_4
    move v1, v5

    .line 117
    goto :goto_1
.end method
