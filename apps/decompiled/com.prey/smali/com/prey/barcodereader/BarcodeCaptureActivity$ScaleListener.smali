.class Lcom/prey/barcodereader/BarcodeCaptureActivity$ScaleListener;
.super Ljava/lang/Object;
.source "BarcodeCaptureActivity.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/barcodereader/BarcodeCaptureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/barcodereader/BarcodeCaptureActivity;


# direct methods
.method private constructor <init>(Lcom/prey/barcodereader/BarcodeCaptureActivity;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/prey/barcodereader/BarcodeCaptureActivity$ScaleListener;->this$0:Lcom/prey/barcodereader/BarcodeCaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/prey/barcodereader/BarcodeCaptureActivity;Lcom/prey/barcodereader/BarcodeCaptureActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/prey/barcodereader/BarcodeCaptureActivity;
    .param p2, "x1"    # Lcom/prey/barcodereader/BarcodeCaptureActivity$1;

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/prey/barcodereader/BarcodeCaptureActivity$ScaleListener;-><init>(Lcom/prey/barcodereader/BarcodeCaptureActivity;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 288
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/prey/barcodereader/BarcodeCaptureActivity$ScaleListener;->this$0:Lcom/prey/barcodereader/BarcodeCaptureActivity;

    # getter for: Lcom/prey/barcodereader/BarcodeCaptureActivity;->mCameraSource:Lcom/prey/barcodereader/ui/camera/CameraSource;
    invoke-static {v0}, Lcom/prey/barcodereader/BarcodeCaptureActivity;->access$300(Lcom/prey/barcodereader/BarcodeCaptureActivity;)Lcom/prey/barcodereader/ui/camera/CameraSource;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/prey/barcodereader/ui/camera/CameraSource;->doZoom(F)I

    .line 294
    return-void
.end method
