.class public Lcom/prey/barcodereader/ui/camera/CameraSource;
.super Ljava/lang/Object;
.source "CameraSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;,
        Lcom/prey/barcodereader/ui/camera/CameraSource$CameraPreviewCallback;,
        Lcom/prey/barcodereader/ui/camera/CameraSource$SizePair;,
        Lcom/prey/barcodereader/ui/camera/CameraSource$CameraAutoFocusMoveCallback;,
        Lcom/prey/barcodereader/ui/camera/CameraSource$CameraAutoFocusCallback;,
        Lcom/prey/barcodereader/ui/camera/CameraSource$PictureDoneCallback;,
        Lcom/prey/barcodereader/ui/camera/CameraSource$PictureStartCallback;,
        Lcom/prey/barcodereader/ui/camera/CameraSource$AutoFocusMoveCallback;,
        Lcom/prey/barcodereader/ui/camera/CameraSource$AutoFocusCallback;,
        Lcom/prey/barcodereader/ui/camera/CameraSource$PictureCallback;,
        Lcom/prey/barcodereader/ui/camera/CameraSource$ShutterCallback;,
        Lcom/prey/barcodereader/ui/camera/CameraSource$Builder;,
        Lcom/prey/barcodereader/ui/camera/CameraSource$FlashMode;,
        Lcom/prey/barcodereader/ui/camera/CameraSource$FocusMode;
    }
.end annotation


# static fields
.field private static final ASPECT_RATIO_TOLERANCE:F = 0.01f

.field public static final CAMERA_FACING_BACK:I = 0x0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field public static final CAMERA_FACING_FRONT:I = 0x1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field private static final DUMMY_TEXTURE_NAME:I = 0x64


# instance fields
.field private mBytesToByteBuffer:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<[B",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mCamera:Landroid/hardware/Camera;

.field private final mCameraLock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mDummySurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mDummySurfaceView:Landroid/view/SurfaceView;

.field private mFacing:I

.field private mFlashMode:Ljava/lang/String;

.field private mFocusMode:Ljava/lang/String;

.field private mFrameProcessor:Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;

.field private mPreviewSize:Lcom/google/android/gms/common/images/Size;

.field private mProcessingThread:Ljava/lang/Thread;

.field private mRequestedFps:F

.field private mRequestedPreviewHeight:I

.field private mRequestedPreviewWidth:I

.field private mRotation:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCameraLock:Ljava/lang/Object;

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mFacing:I

    .line 85
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mRequestedFps:F

    .line 86
    const/16 v0, 0x400

    iput v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mRequestedPreviewWidth:I

    .line 87
    const/16 v0, 0x300

    iput v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mRequestedPreviewHeight:I

    .line 90
    iput-object v1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mFocusMode:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mFlashMode:Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mBytesToByteBuffer:Ljava/util/Map;

    .line 404
    return-void
.end method

.method synthetic constructor <init>(Lcom/prey/barcodereader/ui/camera/CameraSource$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/prey/barcodereader/ui/camera/CameraSource$1;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/prey/barcodereader/ui/camera/CameraSource;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/prey/barcodereader/ui/camera/CameraSource;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/prey/barcodereader/ui/camera/CameraSource;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/prey/barcodereader/ui/camera/CameraSource;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/prey/barcodereader/ui/camera/CameraSource;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCameraLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/prey/barcodereader/ui/camera/CameraSource;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/prey/barcodereader/ui/camera/CameraSource;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/prey/barcodereader/ui/camera/CameraSource;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/prey/barcodereader/ui/camera/CameraSource;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mProcessingThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$202(Lcom/prey/barcodereader/ui/camera/CameraSource;F)F
    .locals 0
    .param p0, "x0"    # Lcom/prey/barcodereader/ui/camera/CameraSource;
    .param p1, "x1"    # F

    .prologue
    .line 37
    iput p1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mRequestedFps:F

    return p1
.end method

.method static synthetic access$2100(Lcom/prey/barcodereader/ui/camera/CameraSource;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/prey/barcodereader/ui/camera/CameraSource;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mBytesToByteBuffer:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/prey/barcodereader/ui/camera/CameraSource;)I
    .locals 1
    .param p0, "x0"    # Lcom/prey/barcodereader/ui/camera/CameraSource;

    .prologue
    .line 37
    iget v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mRotation:I

    return v0
.end method

.method static synthetic access$2300(Lcom/prey/barcodereader/ui/camera/CameraSource;)Lcom/google/android/gms/common/images/Size;
    .locals 1
    .param p0, "x0"    # Lcom/prey/barcodereader/ui/camera/CameraSource;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mPreviewSize:Lcom/google/android/gms/common/images/Size;

    return-object v0
.end method

.method static synthetic access$302(Lcom/prey/barcodereader/ui/camera/CameraSource;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/prey/barcodereader/ui/camera/CameraSource;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mFocusMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/prey/barcodereader/ui/camera/CameraSource;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/prey/barcodereader/ui/camera/CameraSource;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mFlashMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/prey/barcodereader/ui/camera/CameraSource;I)I
    .locals 0
    .param p0, "x0"    # Lcom/prey/barcodereader/ui/camera/CameraSource;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mRequestedPreviewWidth:I

    return p1
.end method

.method static synthetic access$602(Lcom/prey/barcodereader/ui/camera/CameraSource;I)I
    .locals 0
    .param p0, "x0"    # Lcom/prey/barcodereader/ui/camera/CameraSource;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mRequestedPreviewHeight:I

    return p1
.end method

.method static synthetic access$702(Lcom/prey/barcodereader/ui/camera/CameraSource;I)I
    .locals 0
    .param p0, "x0"    # Lcom/prey/barcodereader/ui/camera/CameraSource;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mFacing:I

    return p1
.end method

.method static synthetic access$800(Lcom/prey/barcodereader/ui/camera/CameraSource;)Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/prey/barcodereader/ui/camera/CameraSource;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mFrameProcessor:Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;

    return-object v0
.end method

.method static synthetic access$802(Lcom/prey/barcodereader/ui/camera/CameraSource;Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;)Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;
    .locals 0
    .param p0, "x0"    # Lcom/prey/barcodereader/ui/camera/CameraSource;
    .param p1, "x1"    # Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mFrameProcessor:Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;

    return-object p1
.end method

.method private createCamera()Landroid/hardware/Camera;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 458
    iget v6, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mFacing:I

    invoke-static {v6}, Lcom/prey/barcodereader/ui/camera/CameraSource;->getIdForRequestedCamera(I)I

    move-result v4

    .line 459
    .local v4, "requestedCameraId":I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_0

    .line 460
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Could not find requested camera."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 462
    :cond_0
    invoke-static {v4}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    .line 464
    .local v0, "camera":Landroid/hardware/Camera;
    iget v6, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mRequestedPreviewWidth:I

    iget v7, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mRequestedPreviewHeight:I

    invoke-static {v0, v6, v7}, Lcom/prey/barcodereader/ui/camera/CameraSource;->selectSizePair(Landroid/hardware/Camera;II)Lcom/prey/barcodereader/ui/camera/CameraSource$SizePair;

    move-result-object v5

    .line 465
    .local v5, "sizePair":Lcom/prey/barcodereader/ui/camera/CameraSource$SizePair;
    if-nez v5, :cond_1

    .line 466
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Could not find suitable preview size."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 468
    :cond_1
    invoke-virtual {v5}, Lcom/prey/barcodereader/ui/camera/CameraSource$SizePair;->pictureSize()Lcom/google/android/gms/common/images/Size;

    move-result-object v2

    .line 469
    .local v2, "pictureSize":Lcom/google/android/gms/common/images/Size;
    invoke-virtual {v5}, Lcom/prey/barcodereader/ui/camera/CameraSource$SizePair;->previewSize()Lcom/google/android/gms/common/images/Size;

    move-result-object v6

    iput-object v6, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mPreviewSize:Lcom/google/android/gms/common/images/Size;

    .line 471
    iget v6, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mRequestedFps:F

    invoke-direct {p0, v0, v6}, Lcom/prey/barcodereader/ui/camera/CameraSource;->selectPreviewFpsRange(Landroid/hardware/Camera;F)[I

    move-result-object v3

    .line 472
    .local v3, "previewFpsRange":[I
    if-nez v3, :cond_2

    .line 473
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Could not find suitable preview frames per second range."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 476
    :cond_2
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 478
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    if-eqz v2, :cond_3

    .line 479
    invoke-virtual {v2}, Lcom/google/android/gms/common/images/Size;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Lcom/google/android/gms/common/images/Size;->getHeight()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 482
    :cond_3
    iget-object v6, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mPreviewSize:Lcom/google/android/gms/common/images/Size;

    invoke-virtual {v6}, Lcom/google/android/gms/common/images/Size;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mPreviewSize:Lcom/google/android/gms/common/images/Size;

    invoke-virtual {v7}, Lcom/google/android/gms/common/images/Size;->getHeight()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 483
    const/4 v6, 0x0

    aget v6, v3, v6

    const/4 v7, 0x1

    aget v7, v3, v7

    invoke-virtual {v1, v6, v7}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 486
    const/16 v6, 0x11

    invoke-virtual {v1, v6}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 488
    invoke-direct {p0, v0, v1, v4}, Lcom/prey/barcodereader/ui/camera/CameraSource;->setRotation(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;I)V

    .line 490
    iget-object v6, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mFocusMode:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 491
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mFocusMode:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 493
    iget-object v6, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 499
    :cond_4
    :goto_0
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mFocusMode:Ljava/lang/String;

    .line 501
    iget-object v6, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mFlashMode:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 502
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mFlashMode:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 504
    iget-object v6, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mFlashMode:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 510
    :cond_5
    :goto_1
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mFlashMode:Ljava/lang/String;

    .line 512
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 515
    new-instance v6, Lcom/prey/barcodereader/ui/camera/CameraSource$CameraPreviewCallback;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/prey/barcodereader/ui/camera/CameraSource$CameraPreviewCallback;-><init>(Lcom/prey/barcodereader/ui/camera/CameraSource;Lcom/prey/barcodereader/ui/camera/CameraSource$1;)V

    invoke-virtual {v0, v6}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 516
    iget-object v6, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mPreviewSize:Lcom/google/android/gms/common/images/Size;

    invoke-direct {p0, v6}, Lcom/prey/barcodereader/ui/camera/CameraSource;->createPreviewBuffer(Lcom/google/android/gms/common/images/Size;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 517
    iget-object v6, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mPreviewSize:Lcom/google/android/gms/common/images/Size;

    invoke-direct {p0, v6}, Lcom/prey/barcodereader/ui/camera/CameraSource;->createPreviewBuffer(Lcom/google/android/gms/common/images/Size;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 518
    iget-object v6, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mPreviewSize:Lcom/google/android/gms/common/images/Size;

    invoke-direct {p0, v6}, Lcom/prey/barcodereader/ui/camera/CameraSource;->createPreviewBuffer(Lcom/google/android/gms/common/images/Size;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 519
    iget-object v6, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mPreviewSize:Lcom/google/android/gms/common/images/Size;

    invoke-direct {p0, v6}, Lcom/prey/barcodereader/ui/camera/CameraSource;->createPreviewBuffer(Lcom/google/android/gms/common/images/Size;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 521
    return-object v0

    .line 495
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Camera focus mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not supported on this device."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 506
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Camera flash mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mFlashMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not supported on this device."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private createPreviewBuffer(Lcom/google/android/gms/common/images/Size;)[B
    .locals 10
    .param p1, "previewSize"    # Lcom/google/android/gms/common/images/Size;

    .prologue
    .line 664
    const/16 v6, 0x11

    invoke-static {v6}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v0

    .line 665
    .local v0, "bitsPerPixel":I
    invoke-virtual {p1}, Lcom/google/android/gms/common/images/Size;->getHeight()I

    move-result v6

    invoke-virtual {p1}, Lcom/google/android/gms/common/images/Size;->getWidth()I

    move-result v7

    mul-int/2addr v6, v7

    mul-int/2addr v6, v0

    int-to-long v4, v6

    .line 666
    .local v4, "sizeInBits":J
    long-to-double v6, v4

    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    add-int/lit8 v2, v6, 0x1

    .line 668
    .local v2, "bufferSize":I
    new-array v3, v2, [B

    .line 669
    .local v3, "byteArray":[B
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 670
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    if-eq v6, v3, :cond_1

    .line 671
    :cond_0
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Failed to create valid buffer for camera source."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 674
    :cond_1
    iget-object v6, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mBytesToByteBuffer:Ljava/util/Map;

    invoke-interface {v6, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    return-object v3
.end method

.method private static generateValidPreviewSizeList(Landroid/hardware/Camera;)Ljava/util/List;
    .locals 12
    .param p0, "camera"    # Landroid/hardware/Camera;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/prey/barcodereader/ui/camera/CameraSource$SizePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 576
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 578
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v6

    .line 580
    .local v6, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v5

    .line 581
    .local v5, "supportedPictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 582
    .local v7, "validPreviewSizes":Ljava/util/List;, "Ljava/util/List<Lcom/prey/barcodereader/ui/camera/CameraSource$SizePair;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 583
    .local v4, "previewSize":Landroid/hardware/Camera$Size;
    iget v9, v4, Landroid/hardware/Camera$Size;->width:I

    int-to-float v9, v9

    iget v10, v4, Landroid/hardware/Camera$Size;->height:I

    int-to-float v10, v10

    div-float v3, v9, v10

    .line 585
    .local v3, "previewAspectRatio":F
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 586
    .local v2, "pictureSize":Landroid/hardware/Camera$Size;
    iget v10, v2, Landroid/hardware/Camera$Size;->width:I

    int-to-float v10, v10

    iget v11, v2, Landroid/hardware/Camera$Size;->height:I

    int-to-float v11, v11

    div-float v1, v10, v11

    .line 587
    .local v1, "pictureAspectRatio":F
    sub-float v10, v3, v1

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const v11, 0x3c23d70a    # 0.01f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1

    .line 588
    new-instance v9, Lcom/prey/barcodereader/ui/camera/CameraSource$SizePair;

    invoke-direct {v9, v4, v2}, Lcom/prey/barcodereader/ui/camera/CameraSource$SizePair;-><init>(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 594
    .end local v1    # "pictureAspectRatio":F
    .end local v2    # "pictureSize":Landroid/hardware/Camera$Size;
    .end local v3    # "previewAspectRatio":F
    .end local v4    # "previewSize":Landroid/hardware/Camera$Size;
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_3

    .line 595
    const-string v8, "No preview sizes have a corresponding same-aspect-ratio picture size"

    invoke-static {v8}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 596
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 597
    .restart local v4    # "previewSize":Landroid/hardware/Camera$Size;
    new-instance v9, Lcom/prey/barcodereader/ui/camera/CameraSource$SizePair;

    const/4 v10, 0x0

    invoke-direct {v9, v4, v10}, Lcom/prey/barcodereader/ui/camera/CameraSource$SizePair;-><init>(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 601
    .end local v4    # "previewSize":Landroid/hardware/Camera$Size;
    :cond_3
    return-object v7
.end method

.method private static getIdForRequestedCamera(I)I
    .locals 3
    .param p0, "facing"    # I

    .prologue
    .line 525
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 526
    .local v0, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 527
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 528
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v2, p0, :cond_0

    .line 532
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 526
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 532
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private selectPreviewFpsRange(Landroid/hardware/Camera;F)[I
    .locals 11
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "desiredPreviewFps"    # F

    .prologue
    .line 605
    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v8, p2

    float-to-int v2, v8

    .line 607
    .local v2, "desiredPreviewFpsScaled":I
    const/4 v7, 0x0

    .line 608
    .local v7, "selectedFpsRange":[I
    const v4, 0x7fffffff

    .line 609
    .local v4, "minDiff":I
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v8

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v5

    .line 610
    .local v5, "previewFpsRangeList":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    .line 611
    .local v6, "range":[I
    const/4 v9, 0x0

    aget v9, v6, v9

    sub-int v1, v2, v9

    .line 612
    .local v1, "deltaMin":I
    const/4 v9, 0x1

    aget v9, v6, v9

    sub-int v0, v2, v9

    .line 613
    .local v0, "deltaMax":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v10

    add-int v3, v9, v10

    .line 614
    .local v3, "diff":I
    if-ge v3, v4, :cond_0

    .line 615
    move-object v7, v6

    .line 616
    move v4, v3

    goto :goto_0

    .line 619
    .end local v0    # "deltaMax":I
    .end local v1    # "deltaMin":I
    .end local v3    # "diff":I
    .end local v6    # "range":[I
    :cond_1
    return-object v7
.end method

.method private static selectSizePair(Landroid/hardware/Camera;II)Lcom/prey/barcodereader/ui/camera/CameraSource$SizePair;
    .locals 9
    .param p0, "camera"    # Landroid/hardware/Camera;
    .param p1, "desiredWidth"    # I
    .param p2, "desiredHeight"    # I

    .prologue
    .line 536
    invoke-static {p0}, Lcom/prey/barcodereader/ui/camera/CameraSource;->generateValidPreviewSizeList(Landroid/hardware/Camera;)Ljava/util/List;

    move-result-object v5

    .line 538
    .local v5, "validPreviewSizes":Ljava/util/List;, "Ljava/util/List<Lcom/prey/barcodereader/ui/camera/CameraSource$SizePair;>;"
    const/4 v2, 0x0

    .line 539
    .local v2, "selectedPair":Lcom/prey/barcodereader/ui/camera/CameraSource$SizePair;
    const v1, 0x7fffffff

    .line 540
    .local v1, "minDiff":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prey/barcodereader/ui/camera/CameraSource$SizePair;

    .line 541
    .local v4, "sizePair":Lcom/prey/barcodereader/ui/camera/CameraSource$SizePair;
    invoke-virtual {v4}, Lcom/prey/barcodereader/ui/camera/CameraSource$SizePair;->previewSize()Lcom/google/android/gms/common/images/Size;

    move-result-object v3

    .line 542
    .local v3, "size":Lcom/google/android/gms/common/images/Size;
    invoke-virtual {v3}, Lcom/google/android/gms/common/images/Size;->getWidth()I

    move-result v7

    sub-int/2addr v7, p1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 543
    invoke-virtual {v3}, Lcom/google/android/gms/common/images/Size;->getHeight()I

    move-result v8

    sub-int/2addr v8, p2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int v0, v7, v8

    .line 544
    .local v0, "diff":I
    if-ge v0, v1, :cond_0

    .line 545
    move-object v2, v4

    .line 546
    move v1, v0

    goto :goto_0

    .line 550
    .end local v0    # "diff":I
    .end local v3    # "size":Lcom/google/android/gms/common/images/Size;
    .end local v4    # "sizePair":Lcom/prey/barcodereader/ui/camera/CameraSource$SizePair;
    :cond_1
    return-object v2
.end method

.method private setRotation(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;I)V
    .locals 8
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p3, "cameraId"    # I

    .prologue
    .line 623
    iget-object v6, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mContext:Landroid/content/Context;

    const-string v7, "window"

    .line 624
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 625
    .local v5, "windowManager":Landroid/view/WindowManager;
    const/4 v2, 0x0

    .line 626
    .local v2, "degrees":I
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 627
    .local v4, "rotation":I
    packed-switch v4, :pswitch_data_0

    .line 641
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad rotation value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 644
    :goto_0
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 645
    .local v1, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    invoke-static {p3, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 649
    iget v6, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 650
    iget v6, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v6, v2

    rem-int/lit16 v0, v6, 0x168

    .line 651
    .local v0, "angle":I
    rsub-int v3, v0, 0x168

    .line 657
    .local v3, "displayAngle":I
    :goto_1
    div-int/lit8 v6, v0, 0x5a

    iput v6, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mRotation:I

    .line 659
    invoke-virtual {p1, v3}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 660
    invoke-virtual {p2, v0}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 661
    return-void

    .line 629
    .end local v0    # "angle":I
    .end local v1    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    .end local v3    # "displayAngle":I
    :pswitch_0
    const/4 v2, 0x0

    .line 630
    goto :goto_0

    .line 632
    :pswitch_1
    const/16 v2, 0x5a

    .line 633
    goto :goto_0

    .line 635
    :pswitch_2
    const/16 v2, 0xb4

    .line 636
    goto :goto_0

    .line 638
    :pswitch_3
    const/16 v2, 0x10e

    .line 639
    goto :goto_0

    .line 653
    .restart local v1    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    :cond_0
    iget v6, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v6, v2

    add-int/lit16 v6, v6, 0x168

    rem-int/lit16 v0, v6, 0x168

    .line 654
    .restart local v0    # "angle":I
    move v3, v0

    .restart local v3    # "displayAngle":I
    goto :goto_1

    .line 627
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public autoFocus(Lcom/prey/barcodereader/ui/camera/CameraSource$AutoFocusCallback;)V
    .locals 3
    .param p1, "cb"    # Lcom/prey/barcodereader/ui/camera/CameraSource$AutoFocusCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 363
    iget-object v2, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCameraLock:Ljava/lang/Object;

    monitor-enter v2

    .line 364
    :try_start_0
    iget-object v1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    .line 365
    const/4 v0, 0x0

    .line 366
    .local v0, "autoFocusCallback":Lcom/prey/barcodereader/ui/camera/CameraSource$CameraAutoFocusCallback;
    if-eqz p1, :cond_0

    .line 367
    new-instance v0, Lcom/prey/barcodereader/ui/camera/CameraSource$CameraAutoFocusCallback;

    .end local v0    # "autoFocusCallback":Lcom/prey/barcodereader/ui/camera/CameraSource$CameraAutoFocusCallback;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/prey/barcodereader/ui/camera/CameraSource$CameraAutoFocusCallback;-><init>(Lcom/prey/barcodereader/ui/camera/CameraSource;Lcom/prey/barcodereader/ui/camera/CameraSource$1;)V

    .line 368
    .restart local v0    # "autoFocusCallback":Lcom/prey/barcodereader/ui/camera/CameraSource$CameraAutoFocusCallback;
    # setter for: Lcom/prey/barcodereader/ui/camera/CameraSource$CameraAutoFocusCallback;->mDelegate:Lcom/prey/barcodereader/ui/camera/CameraSource$AutoFocusCallback;
    invoke-static {v0, p1}, Lcom/prey/barcodereader/ui/camera/CameraSource$CameraAutoFocusCallback;->access$1402(Lcom/prey/barcodereader/ui/camera/CameraSource$CameraAutoFocusCallback;Lcom/prey/barcodereader/ui/camera/CameraSource$AutoFocusCallback;)Lcom/prey/barcodereader/ui/camera/CameraSource$AutoFocusCallback;

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 372
    .end local v0    # "autoFocusCallback":Lcom/prey/barcodereader/ui/camera/CameraSource$CameraAutoFocusCallback;
    :cond_1
    monitor-exit v2

    .line 373
    return-void

    .line 372
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public cancelAutoFocus()V
    .locals 2

    .prologue
    .line 376
    iget-object v1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCameraLock:Ljava/lang/Object;

    monitor-enter v1

    .line 377
    :try_start_0
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 380
    :cond_0
    monitor-exit v1

    .line 381
    return-void

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doZoom(F)I
    .locals 7
    .param p1, "scale"    # F

    .prologue
    .line 272
    iget-object v5, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCameraLock:Ljava/lang/Object;

    monitor-enter v5

    .line 273
    :try_start_0
    iget-object v4, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCamera:Landroid/hardware/Camera;

    if-nez v4, :cond_0

    .line 274
    const/4 v0, 0x0

    monitor-exit v5

    .line 300
    :goto_0
    return v0

    .line 276
    :cond_0
    const/4 v0, 0x0

    .line 278
    .local v0, "currentZoom":I
    iget-object v4, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 279
    .local v3, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v4

    if-nez v4, :cond_1

    .line 280
    const-string v4, "Zoom is not supported on this device"

    invoke-static {v4}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 281
    monitor-exit v5

    goto :goto_0

    .line 301
    .end local v0    # "currentZoom":I
    .end local v3    # "parameters":Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 283
    .restart local v0    # "currentZoom":I
    .restart local v3    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    .line 285
    .local v1, "maxZoom":I
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v4

    add-int/lit8 v0, v4, 0x1

    .line 287
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, p1, v4

    if-lez v4, :cond_3

    .line 288
    int-to-float v4, v0

    div-int/lit8 v6, v1, 0xa

    int-to-float v6, v6

    mul-float/2addr v6, p1

    add-float v2, v4, v6

    .line 292
    .local v2, "newZoom":F
    :goto_1
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 293
    if-gez v0, :cond_4

    .line 294
    const/4 v0, 0x0

    .line 298
    :cond_2
    :goto_2
    invoke-virtual {v3, v0}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 299
    iget-object v4, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 300
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 290
    .end local v2    # "newZoom":F
    :cond_3
    int-to-float v4, v0

    mul-float v2, v4, p1

    .restart local v2    # "newZoom":F
    goto :goto_1

    .line 295
    :cond_4
    if-le v0, v1, :cond_2

    .line 296
    move v0, v1

    goto :goto_2
.end method

.method public getCameraFacing()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mFacing:I

    return v0
.end method

.method public getFlashMode()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 341
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mFlashMode:Ljava/lang/String;

    return-object v0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mFocusMode:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewSize()Lcom/google/android/gms/common/images/Size;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mPreviewSize:Lcom/google/android/gms/common/images/Size;

    return-object v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 179
    iget-object v1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCameraLock:Ljava/lang/Object;

    monitor-enter v1

    .line 180
    :try_start_0
    invoke-virtual {p0}, Lcom/prey/barcodereader/ui/camera/CameraSource;->stop()V

    .line 181
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mFrameProcessor:Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;

    invoke-virtual {v0}, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->release()V

    .line 182
    monitor-exit v1

    .line 183
    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAutoFocusMoveCallback(Lcom/prey/barcodereader/ui/camera/CameraSource$AutoFocusMoveCallback;)Z
    .locals 3
    .param p1, "cb"    # Lcom/prey/barcodereader/ui/camera/CameraSource$AutoFocusMoveCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 385
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 386
    const/4 v1, 0x0

    .line 400
    :goto_0
    return v1

    .line 389
    :cond_0
    iget-object v2, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCameraLock:Ljava/lang/Object;

    monitor-enter v2

    .line 390
    :try_start_0
    iget-object v1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_2

    .line 391
    const/4 v0, 0x0

    .line 392
    .local v0, "autoFocusMoveCallback":Lcom/prey/barcodereader/ui/camera/CameraSource$CameraAutoFocusMoveCallback;
    if-eqz p1, :cond_1

    .line 393
    new-instance v0, Lcom/prey/barcodereader/ui/camera/CameraSource$CameraAutoFocusMoveCallback;

    .end local v0    # "autoFocusMoveCallback":Lcom/prey/barcodereader/ui/camera/CameraSource$CameraAutoFocusMoveCallback;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/prey/barcodereader/ui/camera/CameraSource$CameraAutoFocusMoveCallback;-><init>(Lcom/prey/barcodereader/ui/camera/CameraSource;Lcom/prey/barcodereader/ui/camera/CameraSource$1;)V

    .line 394
    .restart local v0    # "autoFocusMoveCallback":Lcom/prey/barcodereader/ui/camera/CameraSource$CameraAutoFocusMoveCallback;
    # setter for: Lcom/prey/barcodereader/ui/camera/CameraSource$CameraAutoFocusMoveCallback;->mDelegate:Lcom/prey/barcodereader/ui/camera/CameraSource$AutoFocusMoveCallback;
    invoke-static {v0, p1}, Lcom/prey/barcodereader/ui/camera/CameraSource$CameraAutoFocusMoveCallback;->access$1602(Lcom/prey/barcodereader/ui/camera/CameraSource$CameraAutoFocusMoveCallback;Lcom/prey/barcodereader/ui/camera/CameraSource$AutoFocusMoveCallback;)Lcom/prey/barcodereader/ui/camera/CameraSource$AutoFocusMoveCallback;

    .line 396
    :cond_1
    iget-object v1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 398
    .end local v0    # "autoFocusMoveCallback":Lcom/prey/barcodereader/ui/camera/CameraSource$CameraAutoFocusMoveCallback;
    :cond_2
    monitor-exit v2

    .line 400
    const/4 v1, 0x1

    goto :goto_0

    .line 398
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFlashMode(Ljava/lang/String;)Z
    .locals 3
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 346
    iget-object v2, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCameraLock:Ljava/lang/Object;

    monitor-enter v2

    .line 347
    :try_start_0
    iget-object v1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 348
    iget-object v1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 349
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 352
    iput-object p1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mFlashMode:Ljava/lang/String;

    .line 353
    const/4 v1, 0x1

    monitor-exit v2

    .line 357
    .end local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 358
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFocusMode(Ljava/lang/String;)Z
    .locals 3
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 323
    iget-object v2, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCameraLock:Ljava/lang/Object;

    monitor-enter v2

    .line 324
    :try_start_0
    iget-object v1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 326
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 328
    iget-object v1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 329
    iput-object p1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mFocusMode:Ljava/lang/String;

    .line 330
    const/4 v1, 0x1

    monitor-exit v2

    .line 334
    .end local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 335
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public start()Lcom/prey/barcodereader/ui/camera/CameraSource;
    .locals 3
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.CAMERA"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    iget-object v1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCameraLock:Ljava/lang/Object;

    monitor-enter v1

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 189
    monitor-exit v1

    .line 208
    :goto_0
    return-object p0

    .line 192
    :cond_0
    invoke-direct {p0}, Lcom/prey/barcodereader/ui/camera/CameraSource;->createCamera()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCamera:Landroid/hardware/Camera;

    .line 195
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_1

    .line 196
    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/16 v2, 0x64

    invoke-direct {v0, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mDummySurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 197
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mDummySurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 202
    :goto_1
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 204
    new-instance v0, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mFrameProcessor:Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mProcessingThread:Ljava/lang/Thread;

    .line 205
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mFrameProcessor:Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->setActive(Z)V

    .line 206
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mProcessingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 207
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 199
    :cond_1
    :try_start_1
    new-instance v0, Landroid/view/SurfaceView;

    iget-object v2, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mDummySurfaceView:Landroid/view/SurfaceView;

    .line 200
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mDummySurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public start(Landroid/view/SurfaceHolder;)Lcom/prey/barcodereader/ui/camera/CameraSource;
    .locals 3
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.CAMERA"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    iget-object v1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCameraLock:Ljava/lang/Object;

    monitor-enter v1

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 215
    monitor-exit v1

    .line 226
    :goto_0
    return-object p0

    .line 218
    :cond_0
    invoke-direct {p0}, Lcom/prey/barcodereader/ui/camera/CameraSource;->createCamera()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCamera:Landroid/hardware/Camera;

    .line 219
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 220
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 222
    new-instance v0, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mFrameProcessor:Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mProcessingThread:Ljava/lang/Thread;

    .line 223
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mFrameProcessor:Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->setActive(Z)V

    .line 224
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mProcessingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 225
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 230
    iget-object v2, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCameraLock:Ljava/lang/Object;

    monitor-enter v2

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mFrameProcessor:Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/prey/barcodereader/ui/camera/CameraSource$FrameProcessingRunnable;->setActive(Z)V

    .line 232
    iget-object v1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mProcessingThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 234
    :try_start_1
    iget-object v1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mProcessingThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mProcessingThread:Ljava/lang/Thread;

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mBytesToByteBuffer:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 243
    iget-object v1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    .line 244
    iget-object v1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 245
    iget-object v1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCamera:Landroid/hardware/Camera;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    :try_start_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_2

    .line 249
    iget-object v1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCamera:Landroid/hardware/Camera;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 257
    :goto_1
    :try_start_4
    iget-object v1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 258
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCamera:Landroid/hardware/Camera;

    .line 260
    :cond_1
    monitor-exit v2

    .line 261
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "Frame processing thread interrupted on release."

    invoke-static {v1, v0}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 260
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 252
    :cond_2
    :try_start_5
    iget-object v1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCamera:Landroid/hardware/Camera;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 254
    :catch_1
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to clear camera preview: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public takePicture(Lcom/prey/barcodereader/ui/camera/CameraSource$ShutterCallback;Lcom/prey/barcodereader/ui/camera/CameraSource$PictureCallback;)V
    .locals 6
    .param p1, "shutter"    # Lcom/prey/barcodereader/ui/camera/CameraSource$ShutterCallback;
    .param p2, "jpeg"    # Lcom/prey/barcodereader/ui/camera/CameraSource$PictureCallback;

    .prologue
    .line 305
    iget-object v3, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCameraLock:Ljava/lang/Object;

    monitor-enter v3

    .line 306
    :try_start_0
    iget-object v2, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    .line 307
    new-instance v1, Lcom/prey/barcodereader/ui/camera/CameraSource$PictureStartCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/prey/barcodereader/ui/camera/CameraSource$PictureStartCallback;-><init>(Lcom/prey/barcodereader/ui/camera/CameraSource;Lcom/prey/barcodereader/ui/camera/CameraSource$1;)V

    .line 308
    .local v1, "startCallback":Lcom/prey/barcodereader/ui/camera/CameraSource$PictureStartCallback;
    # setter for: Lcom/prey/barcodereader/ui/camera/CameraSource$PictureStartCallback;->mDelegate:Lcom/prey/barcodereader/ui/camera/CameraSource$ShutterCallback;
    invoke-static {v1, p1}, Lcom/prey/barcodereader/ui/camera/CameraSource$PictureStartCallback;->access$1002(Lcom/prey/barcodereader/ui/camera/CameraSource$PictureStartCallback;Lcom/prey/barcodereader/ui/camera/CameraSource$ShutterCallback;)Lcom/prey/barcodereader/ui/camera/CameraSource$ShutterCallback;

    .line 309
    new-instance v0, Lcom/prey/barcodereader/ui/camera/CameraSource$PictureDoneCallback;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/prey/barcodereader/ui/camera/CameraSource$PictureDoneCallback;-><init>(Lcom/prey/barcodereader/ui/camera/CameraSource;Lcom/prey/barcodereader/ui/camera/CameraSource$1;)V

    .line 310
    .local v0, "doneCallback":Lcom/prey/barcodereader/ui/camera/CameraSource$PictureDoneCallback;
    # setter for: Lcom/prey/barcodereader/ui/camera/CameraSource$PictureDoneCallback;->mDelegate:Lcom/prey/barcodereader/ui/camera/CameraSource$PictureCallback;
    invoke-static {v0, p2}, Lcom/prey/barcodereader/ui/camera/CameraSource$PictureDoneCallback;->access$1202(Lcom/prey/barcodereader/ui/camera/CameraSource$PictureDoneCallback;Lcom/prey/barcodereader/ui/camera/CameraSource$PictureCallback;)Lcom/prey/barcodereader/ui/camera/CameraSource$PictureCallback;

    .line 311
    iget-object v2, p0, Lcom/prey/barcodereader/ui/camera/CameraSource;->mCamera:Landroid/hardware/Camera;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v4, v5, v0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 313
    .end local v0    # "doneCallback":Lcom/prey/barcodereader/ui/camera/CameraSource$PictureDoneCallback;
    .end local v1    # "startCallback":Lcom/prey/barcodereader/ui/camera/CameraSource$PictureStartCallback;
    :cond_0
    monitor-exit v3

    .line 314
    return-void

    .line 313
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
