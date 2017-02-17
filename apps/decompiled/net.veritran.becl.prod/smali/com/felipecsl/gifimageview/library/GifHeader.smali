.class public Lcom/felipecsl/gifimageview/library/GifHeader;
.super Ljava/lang/Object;
.source "GifHeader.java"


# instance fields
.field bgColor:I

.field bgIndex:I

.field currentFrame:Lcom/felipecsl/gifimageview/library/GifFrame;

.field frameCount:I

.field frames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/felipecsl/gifimageview/library/GifFrame;",
            ">;"
        }
    .end annotation
.end field

.field gct:[I

.field gctFlag:Z

.field gctSize:I

.field height:I

.field loopCount:I

.field pixelAspect:I

.field status:I

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeader;->gct:[I

    .line 32
    iput v1, p0, Lcom/felipecsl/gifimageview/library/GifHeader;->status:I

    .line 33
    iput v1, p0, Lcom/felipecsl/gifimageview/library/GifHeader;->frameCount:I

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/felipecsl/gifimageview/library/GifHeader;->frames:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/felipecsl/gifimageview/library/GifHeader;->height:I

    return v0
.end method

.method public getNumFrames()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/felipecsl/gifimageview/library/GifHeader;->frameCount:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/felipecsl/gifimageview/library/GifHeader;->status:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/felipecsl/gifimageview/library/GifHeader;->width:I

    return v0
.end method
