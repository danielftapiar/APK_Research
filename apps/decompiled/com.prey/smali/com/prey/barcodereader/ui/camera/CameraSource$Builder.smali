.class public Lcom/prey/barcodereader/ui/camera/CameraSource$Builder;
.super Ljava/lang/Object;
.source "CameraSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/barcodereader/ui/camera/CameraSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCameraSource:Lcom/prey/barcodereader/ui/camera/CameraSource;

.field private final mDetector:Lcom/google/android/gms/vision/Detector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/vision/Detector",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/vision/Detector;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/vision/Detector",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p2, "detector":Lcom/google/android/gms/vision/Detector;, "Lcom/google/android/gms/vision/Detector<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Lcom/prey/barcodereader/ui/camera/CameraSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prey/barcodereader/ui/camera/CameraSource;-><init>(Lcom/prey/barcodereader/ui/camera/CameraSource$1;)V

    iput-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$Builder;->mCameraSource:Lcom/prey/barcodereader/ui/camera/CameraSource;

    .line 108
    if-nez p1, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No context supplied."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    if-nez p2, :cond_1

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No detector supplied."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_1
    iput-object p2, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$Builder;->mDetector:Lcom/google/android/gms/vision/Detector;

    .line 116
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$Builder;->mCameraSource:Lcom/prey/barcodereader/ui/camera/CameraSource;

    # setter for: Lcom/prey/barcodereader/ui/camera/CameraSource;->mContext:Landroid/content/Context;
    invoke-static {v0, p1}, Lcom/prey/barcodereader/ui/camera/CameraSource;->access$102(Lcom/prey/barcodereader/ui/camera/CameraSource;Landroid/content/Context;)Landroid/content/Context;

    .line 117
    return-void
.end method


# virtual methods
.method public build()Lcom/prey/barcodereader/ui/camera/CameraSource;
    .locals 4

    .prologue
    .line 156
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$Builder;->mCameraSource:Lcom/prey/barcodereader/ui/camera/CameraSource;

    new-instance v1, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;

    iget-object v2, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$Builder;->mCameraSource:Lcom/prey/barcodereader/ui/camera/CameraSource;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$Builder;->mDetector:Lcom/google/android/gms/vision/Detector;

    invoke-direct {v1, v2, v3}, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;-><init>(Lcom/prey/barcodereader/ui/camera/CameraSource;Lcom/google/android/gms/vision/Detector;)V

    # setter for: Lcom/prey/barcodereader/ui/camera/CameraSource;->mFrameProcessor:Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;
    invoke-static {v0, v1}, Lcom/prey/barcodereader/ui/camera/CameraSource;->access$802(Lcom/prey/barcodereader/ui/camera/CameraSource;Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;)Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;

    .line 157
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$Builder;->mCameraSource:Lcom/prey/barcodereader/ui/camera/CameraSource;

    return-object v0
.end method

.method public setFacing(I)Lcom/prey/barcodereader/ui/camera/CameraSource$Builder;
    .locals 3
    .param p1, "facing"    # I

    .prologue
    .line 148
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid camera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$Builder;->mCameraSource:Lcom/prey/barcodereader/ui/camera/CameraSource;

    # setter for: Lcom/prey/barcodereader/ui/camera/CameraSource;->mFacing:I
    invoke-static {v0, p1}, Lcom/prey/barcodereader/ui/camera/CameraSource;->access$702(Lcom/prey/barcodereader/ui/camera/CameraSource;I)I

    .line 152
    return-object p0
.end method

.method public setFlashMode(Ljava/lang/String;)Lcom/prey/barcodereader/ui/camera/CameraSource$Builder;
    .locals 1
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$Builder;->mCameraSource:Lcom/prey/barcodereader/ui/camera/CameraSource;

    # setter for: Lcom/prey/barcodereader/ui/camera/CameraSource;->mFlashMode:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/prey/barcodereader/ui/camera/CameraSource;->access$402(Lcom/prey/barcodereader/ui/camera/CameraSource;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    return-object p0
.end method

.method public setFocusMode(Ljava/lang/String;)Lcom/prey/barcodereader/ui/camera/CameraSource$Builder;
    .locals 1
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$Builder;->mCameraSource:Lcom/prey/barcodereader/ui/camera/CameraSource;

    # setter for: Lcom/prey/barcodereader/ui/camera/CameraSource;->mFocusMode:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/prey/barcodereader/ui/camera/CameraSource;->access$302(Lcom/prey/barcodereader/ui/camera/CameraSource;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    return-object p0
.end method

.method public setRequestedFps(F)Lcom/prey/barcodereader/ui/camera/CameraSource$Builder;
    .locals 3
    .param p1, "fps"    # F

    .prologue
    .line 120
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid fps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$Builder;->mCameraSource:Lcom/prey/barcodereader/ui/camera/CameraSource;

    # setter for: Lcom/prey/barcodereader/ui/camera/CameraSource;->mRequestedFps:F
    invoke-static {v0, p1}, Lcom/prey/barcodereader/ui/camera/CameraSource;->access$202(Lcom/prey/barcodereader/ui/camera/CameraSource;F)F

    .line 124
    return-object p0
.end method

.method public setRequestedPreviewSize(II)Lcom/prey/barcodereader/ui/camera/CameraSource$Builder;
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const v1, 0xf4240

    .line 138
    const v0, 0xf4240

    .line 139
    .local v0, "MAX":I
    if-lez p1, :cond_0

    if-gt p1, v1, :cond_0

    if-lez p2, :cond_0

    if-le p2, v1, :cond_1

    .line 140
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid preview size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$Builder;->mCameraSource:Lcom/prey/barcodereader/ui/camera/CameraSource;

    # setter for: Lcom/prey/barcodereader/ui/camera/CameraSource;->mRequestedPreviewWidth:I
    invoke-static {v1, p1}, Lcom/prey/barcodereader/ui/camera/CameraSource;->access$502(Lcom/prey/barcodereader/ui/camera/CameraSource;I)I

    .line 143
    iget-object v1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$Builder;->mCameraSource:Lcom/prey/barcodereader/ui/camera/CameraSource;

    # setter for: Lcom/prey/barcodereader/ui/camera/CameraSource;->mRequestedPreviewHeight:I
    invoke-static {v1, p2}, Lcom/prey/barcodereader/ui/camera/CameraSource;->access$602(Lcom/prey/barcodereader/ui/camera/CameraSource;I)I

    .line 144
    return-object p0
.end method
