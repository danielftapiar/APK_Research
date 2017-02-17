.class public abstract Lorg/osmdroid/views/overlay/SafeDrawOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "SafeDrawOverlay.java"


# static fields
.field private static final sMatrix:Landroid/graphics/Matrix;

.field private static final sMatrixValues:[F

.field private static final sSafeCanvas:Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;


# instance fields
.field private mUseSafeCanvas:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;

    invoke-direct {v0}, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;-><init>()V

    sput-object v0, Lorg/osmdroid/views/overlay/SafeDrawOverlay;->sSafeCanvas:Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;

    .line 23
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lorg/osmdroid/views/overlay/SafeDrawOverlay;->sMatrix:Landroid/graphics/Matrix;

    .line 24
    const/16 v0, 0x9

    new-array v0, v0, [F

    sput-object v0, Lorg/osmdroid/views/overlay/SafeDrawOverlay;->sMatrixValues:[F

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/ResourceProxy;)V
    .locals 1
    .param p1, "pResourceProxy"    # Lorg/osmdroid/ResourceProxy;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/osmdroid/views/overlay/Overlay;-><init>(Lorg/osmdroid/ResourceProxy;)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/SafeDrawOverlay;->mUseSafeCanvas:Z

    .line 35
    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "osmv"    # Lorg/osmdroid/views/MapView;
    .param p3, "shadow"    # Z

    .prologue
    const/4 v4, 0x0

    .line 39
    sget-object v3, Lorg/osmdroid/views/overlay/SafeDrawOverlay;->sSafeCanvas:Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;

    invoke-virtual {v3, p1}, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->setCanvas(Landroid/graphics/Canvas;)V

    .line 41
    iget-boolean v3, p0, Lorg/osmdroid/views/overlay/SafeDrawOverlay;->mUseSafeCanvas:Z

    if-eqz v3, :cond_2

    .line 44
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/MapView$Projection;

    move-result-object v3

    invoke-virtual {v3}, Lorg/osmdroid/views/MapView$Projection;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 45
    .local v2, "screenRect":Landroid/graphics/Rect;
    sget-object v3, Lorg/osmdroid/views/overlay/SafeDrawOverlay;->sSafeCanvas:Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    iput v4, v3, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->xOffset:I

    .line 46
    sget-object v3, Lorg/osmdroid/views/overlay/SafeDrawOverlay;->sSafeCanvas:Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;

    iget v4, v2, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    iput v4, v3, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->yOffset:I

    .line 49
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 52
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_1

    .line 53
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getScaleX()F

    move-result v0

    .line 54
    .local v0, "scaleX":F
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getScaleY()F

    move-result v1

    .line 55
    .local v1, "scaleY":F
    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    iget v4, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 65
    .end local v0    # "scaleX":F
    .end local v1    # "scaleY":F
    .end local v2    # "screenRect":Landroid/graphics/Rect;
    :goto_0
    sget-object v3, Lorg/osmdroid/views/overlay/SafeDrawOverlay;->sSafeCanvas:Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;

    invoke-virtual {p0, v3, p2, p3}, Lorg/osmdroid/views/overlay/SafeDrawOverlay;->drawSafe(Lorg/osmdroid/views/safecanvas/ISafeCanvas;Lorg/osmdroid/views/MapView;Z)V

    .line 67
    iget-boolean v3, p0, Lorg/osmdroid/views/overlay/SafeDrawOverlay;->mUseSafeCanvas:Z

    if-eqz v3, :cond_0

    .line 68
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 70
    :cond_0
    return-void

    .line 57
    .restart local v2    # "screenRect":Landroid/graphics/Rect;
    :cond_1
    sget-object v3, Lorg/osmdroid/views/overlay/SafeDrawOverlay;->sMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 58
    sget-object v3, Lorg/osmdroid/views/overlay/SafeDrawOverlay;->sMatrix:Landroid/graphics/Matrix;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 59
    sget-object v3, Lorg/osmdroid/views/overlay/SafeDrawOverlay;->sMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 62
    .end local v2    # "screenRect":Landroid/graphics/Rect;
    :cond_2
    sget-object v3, Lorg/osmdroid/views/overlay/SafeDrawOverlay;->sSafeCanvas:Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;

    iput v4, v3, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->xOffset:I

    .line 63
    sget-object v3, Lorg/osmdroid/views/overlay/SafeDrawOverlay;->sSafeCanvas:Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;

    iput v4, v3, Lorg/osmdroid/views/safecanvas/SafeTranslatedCanvas;->yOffset:I

    goto :goto_0
.end method

.method protected abstract drawSafe(Lorg/osmdroid/views/safecanvas/ISafeCanvas;Lorg/osmdroid/views/MapView;Z)V
.end method

.method public final setUseSafeCanvas(Z)V
    .locals 0
    .param p1, "useSafeCanvas"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/SafeDrawOverlay;->mUseSafeCanvas:Z

    .line 78
    return-void
.end method
