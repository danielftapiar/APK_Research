.class public Lcom/felipecsl/gifimageview/library/GifImageView;
.super Landroid/widget/ImageView;
.source "GifImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GifDecoderView"


# instance fields
.field private animating:Z

.field private animationThread:Ljava/lang/Thread;

.field private final cleanupRunnable:Ljava/lang/Runnable;

.field private frameCallback:Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;

.field private framesDisplayDuration:J

.field private gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

.field private final handler:Landroid/os/Handler;

.field private shouldClear:Z

.field private tmpBitmap:Landroid/graphics/Bitmap;

.field private final updateResults:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->handler:Landroid/os/Handler;

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->frameCallback:Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;

    .line 21
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->framesDisplayDuration:J

    .line 23
    new-instance v0, Lcom/felipecsl/gifimageview/library/GifImageView$1;

    invoke-direct {v0, p0}, Lcom/felipecsl/gifimageview/library/GifImageView$1;-><init>(Lcom/felipecsl/gifimageview/library/GifImageView;)V

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->updateResults:Ljava/lang/Runnable;

    .line 32
    new-instance v0, Lcom/felipecsl/gifimageview/library/GifImageView$2;

    invoke-direct {v0, p0}, Lcom/felipecsl/gifimageview/library/GifImageView$2;-><init>(Lcom/felipecsl/gifimageview/library/GifImageView;)V

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->cleanupRunnable:Ljava/lang/Runnable;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->handler:Landroid/os/Handler;

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->frameCallback:Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;

    .line 21
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->framesDisplayDuration:J

    .line 23
    new-instance v0, Lcom/felipecsl/gifimageview/library/GifImageView$1;

    invoke-direct {v0, p0}, Lcom/felipecsl/gifimageview/library/GifImageView$1;-><init>(Lcom/felipecsl/gifimageview/library/GifImageView;)V

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->updateResults:Ljava/lang/Runnable;

    .line 32
    new-instance v0, Lcom/felipecsl/gifimageview/library/GifImageView$2;

    invoke-direct {v0, p0}, Lcom/felipecsl/gifimageview/library/GifImageView$2;-><init>(Lcom/felipecsl/gifimageview/library/GifImageView;)V

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->cleanupRunnable:Ljava/lang/Runnable;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/felipecsl/gifimageview/library/GifImageView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/felipecsl/gifimageview/library/GifImageView;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->tmpBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/felipecsl/gifimageview/library/GifImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/felipecsl/gifimageview/library/GifImageView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->tmpBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$102(Lcom/felipecsl/gifimageview/library/GifImageView;Lcom/felipecsl/gifimageview/library/GifDecoder;)Lcom/felipecsl/gifimageview/library/GifDecoder;
    .locals 0
    .param p0, "x0"    # Lcom/felipecsl/gifimageview/library/GifImageView;
    .param p1, "x1"    # Lcom/felipecsl/gifimageview/library/GifDecoder;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    return-object p1
.end method

.method static synthetic access$202(Lcom/felipecsl/gifimageview/library/GifImageView;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/felipecsl/gifimageview/library/GifImageView;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animationThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$302(Lcom/felipecsl/gifimageview/library/GifImageView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/felipecsl/gifimageview/library/GifImageView;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->shouldClear:Z

    return p1
.end method

.method private canStart()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animating:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animationThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animating:Z

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->shouldClear:Z

    .line 107
    invoke-virtual {p0}, Lcom/felipecsl/gifimageview/library/GifImageView;->stopAnimation()V

    .line 108
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    return-void
.end method

.method public getFramesDisplayDuration()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->framesDisplayDuration:J

    return-wide v0
.end method

.method public getGifHeight()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 128
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    invoke-virtual {v0}, Lcom/felipecsl/gifimageview/library/GifDecoder;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getGifWidth()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    if-nez v0, :cond_0

    .line 118
    const/4 v0, 0x0

    .line 120
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    invoke-virtual {v0}, Lcom/felipecsl/gifimageview/library/GifDecoder;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getOnFrameAvailable()Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->frameCallback:Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;

    return-object v0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animating:Z

    return v0
.end method

.method public run()V
    .locals 12

    .prologue
    .line 132
    iget-boolean v8, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->shouldClear:Z

    if-eqz v8, :cond_0

    .line 133
    iget-object v8, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->handler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v8, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    invoke-virtual {v8}, Lcom/felipecsl/gifimageview/library/GifDecoder;->getFrameCount()I

    move-result v7

    .line 139
    .local v7, "n":I
    :cond_1
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v7, :cond_2

    .line 140
    iget-boolean v8, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animating:Z

    if-nez v8, :cond_3

    .line 181
    :cond_2
    iget-boolean v8, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animating:Z

    if-nez v8, :cond_1

    goto :goto_0

    .line 144
    :cond_3
    const-wide/16 v4, 0x0

    .line 146
    .local v4, "frameDecodeTime":J
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 147
    .local v0, "before":J
    iget-object v8, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    invoke-virtual {v8}, Lcom/felipecsl/gifimageview/library/GifDecoder;->getNextFrame()Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->tmpBitmap:Landroid/graphics/Bitmap;

    .line 148
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v0

    const-wide/32 v10, 0xf4240

    div-long v4, v8, v10

    .line 149
    iget-object v8, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->frameCallback:Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;

    if-eqz v8, :cond_4

    .line 150
    iget-object v8, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->frameCallback:Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;

    iget-object v9, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->tmpBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v8, v9}, Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;->onFrameAvailable(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->tmpBitmap:Landroid/graphics/Bitmap;

    .line 153
    :cond_4
    iget-boolean v8, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animating:Z

    if-eqz v8, :cond_2

    .line 156
    iget-object v8, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->handler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->updateResults:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 163
    .end local v0    # "before":J
    :goto_2
    iget-boolean v8, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animating:Z

    if-eqz v8, :cond_2

    .line 166
    iget-object v8, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    invoke-virtual {v8}, Lcom/felipecsl/gifimageview/library/GifDecoder;->advance()V

    .line 168
    :try_start_1
    iget-object v8, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    invoke-virtual {v8}, Lcom/felipecsl/gifimageview/library/GifDecoder;->getNextDelay()I

    move-result v2

    .line 172
    .local v2, "delay":I
    int-to-long v8, v2

    sub-long/2addr v8, v4

    long-to-int v2, v8

    .line 173
    if-lez v2, :cond_5

    .line 174
    iget-wide v8, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->framesDisplayDuration:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_6

    iget-wide v8, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->framesDisplayDuration:J

    :goto_3
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 139
    .end local v2    # "delay":I
    :cond_5
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 157
    :catch_0
    move-exception v3

    .line 158
    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v8, "GifDecoderView"

    invoke-static {v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 159
    .end local v3    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v3

    .line 160
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v8, "GifDecoderView"

    invoke-static {v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 174
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "delay":I
    :cond_6
    int-to-long v8, v2

    goto :goto_3

    .line 176
    .end local v2    # "delay":I
    :catch_2
    move-exception v8

    goto :goto_4
.end method

.method public setBytes([B)V
    .locals 3
    .param p1, "bytes"    # [B

    .prologue
    .line 51
    new-instance v1, Lcom/felipecsl/gifimageview/library/GifDecoder;

    invoke-direct {v1}, Lcom/felipecsl/gifimageview/library/GifDecoder;-><init>()V

    iput-object v1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    invoke-virtual {v1, p1}, Lcom/felipecsl/gifimageview/library/GifDecoder;->read([B)I

    .line 54
    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    invoke-virtual {v1}, Lcom/felipecsl/gifimageview/library/GifDecoder;->advance()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifImageView;->canStart()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animationThread:Ljava/lang/Thread;

    .line 63
    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animationThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->gifDecoder:Lcom/felipecsl/gifimageview/library/GifDecoder;

    .line 57
    const-string v1, "GifDecoderView"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setFramesDisplayDuration(J)V
    .locals 1
    .param p1, "framesDisplayDuration"    # J

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->framesDisplayDuration:J

    .line 80
    return-void
.end method

.method public setOnFrameAvailable(Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;)V
    .locals 0
    .param p1, "frameProcessor"    # Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->frameCallback:Lcom/felipecsl/gifimageview/library/GifImageView$OnFrameAvailable;

    .line 190
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animating:Z

    .line 85
    invoke-direct {p0}, Lcom/felipecsl/gifimageview/library/GifImageView;->canStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animationThread:Ljava/lang/Thread;

    .line 87
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animationThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 89
    :cond_0
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animating:Z

    .line 98
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animationThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animationThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView;->animationThread:Ljava/lang/Thread;

    .line 102
    :cond_0
    return-void
.end method
