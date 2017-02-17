.class public Lcom/prey/barcodereader/ui/camera/GraphicOverlay;
.super Landroid/view/View;
.source "GraphicOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prey/barcodereader/ui/camera/GraphicOverlay$Graphic;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/prey/barcodereader/ui/camera/GraphicOverlay$Graphic;",
        ">",
        "Landroid/view/View;"
    }
.end annotation


# instance fields
.field private mFacing:I

.field private mFirstGraphic:Lcom/prey/barcodereader/ui/camera/GraphicOverlay$Graphic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mGraphics:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mHeightScaleFactor:F

.field private final mLock:Ljava/lang/Object;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mWidthScaleFactor:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lcom/prey/barcodereader/ui/camera/GraphicOverlay;, "Lcom/prey/barcodereader/ui/camera/GraphicOverlay<TT;>;"
    const/high16 v1, 0x3f800000    # 1.0f

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->mLock:Ljava/lang/Object;

    .line 16
    iput v1, p0, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->mWidthScaleFactor:F

    .line 18
    iput v1, p0, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->mHeightScaleFactor:F

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->mFacing:I

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->mGraphics:Ljava/util/Set;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/prey/barcodereader/ui/camera/GraphicOverlay;)F
    .locals 1
    .param p0, "x0"    # Lcom/prey/barcodereader/ui/camera/GraphicOverlay;

    .prologue
    .line 13
    iget v0, p0, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->mWidthScaleFactor:F

    return v0
.end method

.method static synthetic access$100(Lcom/prey/barcodereader/ui/camera/GraphicOverlay;)F
    .locals 1
    .param p0, "x0"    # Lcom/prey/barcodereader/ui/camera/GraphicOverlay;

    .prologue
    .line 13
    iget v0, p0, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->mHeightScaleFactor:F

    return v0
.end method

.method static synthetic access$200(Lcom/prey/barcodereader/ui/camera/GraphicOverlay;)I
    .locals 1
    .param p0, "x0"    # Lcom/prey/barcodereader/ui/camera/GraphicOverlay;

    .prologue
    .line 13
    iget v0, p0, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->mFacing:I

    return v0
.end method


# virtual methods
.method public add(Lcom/prey/barcodereader/ui/camera/GraphicOverlay$Graphic;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lcom/prey/barcodereader/ui/camera/GraphicOverlay;, "Lcom/prey/barcodereader/ui/camera/GraphicOverlay<TT;>;"
    .local p1, "graphic":Lcom/prey/barcodereader/ui/camera/GraphicOverlay$Graphic;, "TT;"
    iget-object v1, p0, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->mGraphics:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->mFirstGraphic:Lcom/prey/barcodereader/ui/camera/GraphicOverlay$Graphic;

    if-nez v0, :cond_0

    .line 73
    iput-object p1, p0, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->mFirstGraphic:Lcom/prey/barcodereader/ui/camera/GraphicOverlay$Graphic;

    .line 75
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-virtual {p0}, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->postInvalidate()V

    .line 77
    return-void

    .line 75
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 62
    .local p0, "this":Lcom/prey/barcodereader/ui/camera/GraphicOverlay;, "Lcom/prey/barcodereader/ui/camera/GraphicOverlay<TT;>;"
    iget-object v1, p0, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->mGraphics:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->mFirstGraphic:Lcom/prey/barcodereader/ui/camera/GraphicOverlay$Graphic;

    .line 65
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-virtual {p0}, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->postInvalidate()V

    .line 67
    return-void

    .line 65
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getFirstGraphic()Lcom/prey/barcodereader/ui/camera/GraphicOverlay$Graphic;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lcom/prey/barcodereader/ui/camera/GraphicOverlay;, "Lcom/prey/barcodereader/ui/camera/GraphicOverlay<TT;>;"
    iget-object v1, p0, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->mFirstGraphic:Lcom/prey/barcodereader/ui/camera/GraphicOverlay$Graphic;

    monitor-exit v1

    return-object v0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 106
    .local p0, "this":Lcom/prey/barcodereader/ui/camera/GraphicOverlay;, "Lcom/prey/barcodereader/ui/camera/GraphicOverlay<TT;>;"
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 108
    iget-object v2, p0, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 109
    :try_start_0
    iget v1, p0, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->mPreviewWidth:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->mPreviewHeight:I

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->mPreviewWidth:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    iput v1, p0, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->mWidthScaleFactor:F

    .line 111
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->mPreviewHeight:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    iput v1, p0, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->mHeightScaleFactor:F

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->mGraphics:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prey/barcodereader/ui/camera/GraphicOverlay$Graphic;

    .line 115
    .local v0, "graphic":Lcom/prey/barcodereader/ui/camera/GraphicOverlay$Graphic;
    invoke-virtual {v0, p1}, Lcom/prey/barcodereader/ui/camera/GraphicOverlay$Graphic;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 117
    .end local v0    # "graphic":Lcom/prey/barcodereader/ui/camera/GraphicOverlay$Graphic;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    return-void
.end method

.method public remove(Lcom/prey/barcodereader/ui/camera/GraphicOverlay$Graphic;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lcom/prey/barcodereader/ui/camera/GraphicOverlay;, "Lcom/prey/barcodereader/ui/camera/GraphicOverlay<TT;>;"
    .local p1, "graphic":Lcom/prey/barcodereader/ui/camera/GraphicOverlay$Graphic;, "TT;"
    iget-object v1, p0, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->mGraphics:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->mFirstGraphic:Lcom/prey/barcodereader/ui/camera/GraphicOverlay$Graphic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->mFirstGraphic:Lcom/prey/barcodereader/ui/camera/GraphicOverlay$Graphic;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->mFirstGraphic:Lcom/prey/barcodereader/ui/camera/GraphicOverlay$Graphic;

    .line 85
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-virtual {p0}, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->postInvalidate()V

    .line 87
    return-void

    .line 85
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setCameraInfo(III)V
    .locals 2
    .param p1, "previewWidth"    # I
    .param p2, "previewHeight"    # I
    .param p3, "facing"    # I

    .prologue
    .line 96
    .local p0, "this":Lcom/prey/barcodereader/ui/camera/GraphicOverlay;, "Lcom/prey/barcodereader/ui/camera/GraphicOverlay<TT;>;"
    iget-object v1, p0, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    :try_start_0
    iput p1, p0, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->mPreviewWidth:I

    .line 98
    iput p2, p0, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->mPreviewHeight:I

    .line 99
    iput p3, p0, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->mFacing:I

    .line 100
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-virtual {p0}, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->postInvalidate()V

    .line 102
    return-void

    .line 100
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
