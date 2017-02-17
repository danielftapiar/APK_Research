.class public final Lcl/birdie/toolkit/GifDecoder;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/birdie/toolkit/GifDecoder$GifFrame;
    }
.end annotation


# instance fields
.field protected delay:I

.field protected frameCount:I

.field protected frames:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcl/birdie/toolkit/GifDecoder$GifFrame;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public final getDelay(I)I
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcl/birdie/toolkit/GifDecoder;->delay:I

    .line 79
    if-ltz p1, :cond_0

    iget v0, p0, Lcl/birdie/toolkit/GifDecoder;->frameCount:I

    if-ge p1, v0, :cond_0

    .line 80
    iget-object v0, p0, Lcl/birdie/toolkit/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/birdie/toolkit/GifDecoder$GifFrame;

    iget v0, v0, Lcl/birdie/toolkit/GifDecoder$GifFrame;->delay:I

    iput v0, p0, Lcl/birdie/toolkit/GifDecoder;->delay:I

    .line 82
    :cond_0
    iget v0, p0, Lcl/birdie/toolkit/GifDecoder;->delay:I

    return v0
.end method

.method public final getFrame(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 205
    iget v0, p0, Lcl/birdie/toolkit/GifDecoder;->frameCount:I

    if-gtz v0, :cond_0

    .line 206
    const/4 v0, 0x0

    .line 208
    :goto_0
    return-object v0

    .line 207
    :cond_0
    iget v0, p0, Lcl/birdie/toolkit/GifDecoder;->frameCount:I

    rem-int/2addr p1, v0

    .line 208
    iget-object v0, p0, Lcl/birdie/toolkit/GifDecoder;->frames:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/birdie/toolkit/GifDecoder$GifFrame;

    iget-object v0, v0, Lcl/birdie/toolkit/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public final getFrameCount()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcl/birdie/toolkit/GifDecoder;->frameCount:I

    return v0
.end method
