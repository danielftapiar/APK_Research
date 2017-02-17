.class public abstract Lcom/prey/barcodereader/ui/camera/GraphicOverlay$Graphic;
.super Ljava/lang/Object;
.source "GraphicOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/barcodereader/ui/camera/GraphicOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Graphic"
.end annotation


# instance fields
.field private mOverlay:Lcom/prey/barcodereader/ui/camera/GraphicOverlay;


# direct methods
.method public constructor <init>(Lcom/prey/barcodereader/ui/camera/GraphicOverlay;)V
    .locals 0
    .param p1, "overlay"    # Lcom/prey/barcodereader/ui/camera/GraphicOverlay;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/prey/barcodereader/ui/camera/GraphicOverlay$Graphic;->mOverlay:Lcom/prey/barcodereader/ui/camera/GraphicOverlay;

    .line 28
    return-void
.end method


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public postInvalidate()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/GraphicOverlay$Graphic;->mOverlay:Lcom/prey/barcodereader/ui/camera/GraphicOverlay;

    invoke-virtual {v0}, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->postInvalidate()V

    .line 54
    return-void
.end method

.method public scaleX(F)F
    .locals 1
    .param p1, "horizontal"    # F

    .prologue
    .line 33
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/GraphicOverlay$Graphic;->mOverlay:Lcom/prey/barcodereader/ui/camera/GraphicOverlay;

    # getter for: Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->mWidthScaleFactor:F
    invoke-static {v0}, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->access$000(Lcom/prey/barcodereader/ui/camera/GraphicOverlay;)F

    move-result v0

    mul-float/2addr v0, p1

    return v0
.end method

.method public scaleY(F)F
    .locals 1
    .param p1, "vertical"    # F

    .prologue
    .line 37
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/GraphicOverlay$Graphic;->mOverlay:Lcom/prey/barcodereader/ui/camera/GraphicOverlay;

    # getter for: Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->mHeightScaleFactor:F
    invoke-static {v0}, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->access$100(Lcom/prey/barcodereader/ui/camera/GraphicOverlay;)F

    move-result v0

    mul-float/2addr v0, p1

    return v0
.end method

.method public translateX(F)F
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 41
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/GraphicOverlay$Graphic;->mOverlay:Lcom/prey/barcodereader/ui/camera/GraphicOverlay;

    # getter for: Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->mFacing:I
    invoke-static {v0}, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->access$200(Lcom/prey/barcodereader/ui/camera/GraphicOverlay;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/GraphicOverlay$Graphic;->mOverlay:Lcom/prey/barcodereader/ui/camera/GraphicOverlay;

    invoke-virtual {v0}, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p1}, Lcom/prey/barcodereader/ui/camera/GraphicOverlay$Graphic;->scaleX(F)F

    move-result v1

    sub-float/2addr v0, v1

    .line 44
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/prey/barcodereader/ui/camera/GraphicOverlay$Graphic;->scaleX(F)F

    move-result v0

    goto :goto_0
.end method

.method public translateY(F)F
    .locals 1
    .param p1, "y"    # F

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/prey/barcodereader/ui/camera/GraphicOverlay$Graphic;->scaleY(F)F

    move-result v0

    return v0
.end method
