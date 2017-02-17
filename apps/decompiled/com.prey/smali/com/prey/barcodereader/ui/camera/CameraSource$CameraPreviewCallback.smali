.class Lcom/prey/barcodereader/ui/camera/CameraSource$CameraPreviewCallback;
.super Ljava/lang/Object;
.source "CameraSource.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/barcodereader/ui/camera/CameraSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraPreviewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/barcodereader/ui/camera/CameraSource;


# direct methods
.method private constructor <init>(Lcom/prey/barcodereader/ui/camera/CameraSource;)V
    .locals 0

    .prologue
    .line 678
    iput-object p1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$CameraPreviewCallback;->this$0:Lcom/prey/barcodereader/ui/camera/CameraSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/prey/barcodereader/ui/camera/CameraSource;Lcom/prey/barcodereader/ui/camera/CameraSource$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/prey/barcodereader/ui/camera/CameraSource;
    .param p2, "x1"    # Lcom/prey/barcodereader/ui/camera/CameraSource$1;

    .prologue
    .line 678
    invoke-direct {p0, p1}, Lcom/prey/barcodereader/ui/camera/CameraSource$CameraPreviewCallback;-><init>(Lcom/prey/barcodereader/ui/camera/CameraSource;)V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 681
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$CameraPreviewCallback;->this$0:Lcom/prey/barcodereader/ui/camera/CameraSource;

    # getter for: Lcom/prey/barcodereader/ui/camera/CameraSource;->mFrameProcessor:Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;
    invoke-static {v0}, Lcom/prey/barcodereader/ui/camera/CameraSource;->access$800(Lcom/prey/barcodereader/ui/camera/CameraSource;)Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->setNextFrame([BLandroid/hardware/Camera;)V

    .line 682
    return-void
.end method
