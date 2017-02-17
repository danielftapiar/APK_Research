.class public Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;
.super Landroid/view/ViewGroup;
.source "CameraSourcePreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prey/barcodereader/ui/camera/CameraSourcePreview$SurfaceCallback;
    }
.end annotation


# instance fields
.field private mCameraSource:Lcom/prey/barcodereader/ui/camera/CameraSource;

.field private mContext:Landroid/content/Context;

.field private mOverlay:Lcom/prey/barcodereader/ui/camera/GraphicOverlay;

.field private mStartRequested:Z

.field private mSurfaceAvailable:Z

.field private mSurfaceView:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput-object p1, p0, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->mContext:Landroid/content/Context;

    .line 30
    iput-boolean v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->mStartRequested:Z

    .line 31
    iput-boolean v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->mSurfaceAvailable:Z

    .line 33
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->mSurfaceView:Landroid/view/SurfaceView;

    .line 34
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview$SurfaceCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview$SurfaceCallback;-><init>(Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;Lcom/prey/barcodereader/ui/camera/CameraSourcePreview$1;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 35
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->addView(Landroid/view/View;)V

    .line 36
    return-void
.end method

.method static synthetic access$102(Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->mSurfaceAvailable:Z

    return p1
.end method

.method static synthetic access$200(Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;)V
    .locals 0
    .param p0, "x0"    # Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->startIfReady()V

    return-void
.end method

.method private isPortraitMode()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 156
    iget-object v3, p0, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->orientation:I

    .line 157
    .local v0, "orientation":I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 165
    :goto_0
    return v1

    .line 160
    :cond_0
    if-ne v0, v2, :cond_1

    move v1, v2

    .line 161
    goto :goto_0

    .line 164
    :cond_1
    const-string v2, "isPortraitMode returning false by default"

    invoke-static {v2}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startIfReady()V
    .locals 5
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.CAMERA"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 73
    iget-boolean v3, p0, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->mStartRequested:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->mSurfaceAvailable:Z

    if-eqz v3, :cond_1

    .line 74
    iget-object v3, p0, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->mCameraSource:Lcom/prey/barcodereader/ui/camera/CameraSource;

    iget-object v4, p0, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/prey/barcodereader/ui/camera/CameraSource;->start(Landroid/view/SurfaceHolder;)Lcom/prey/barcodereader/ui/camera/CameraSource;

    .line 75
    iget-object v3, p0, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->mOverlay:Lcom/prey/barcodereader/ui/camera/GraphicOverlay;

    if-eqz v3, :cond_0

    .line 76
    iget-object v3, p0, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->mCameraSource:Lcom/prey/barcodereader/ui/camera/CameraSource;

    invoke-virtual {v3}, Lcom/prey/barcodereader/ui/camera/CameraSource;->getPreviewSize()Lcom/google/android/gms/common/images/Size;

    move-result-object v2

    .line 77
    .local v2, "size":Lcom/google/android/gms/common/images/Size;
    invoke-virtual {v2}, Lcom/google/android/gms/common/images/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/gms/common/images/Size;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 78
    .local v1, "min":I
    invoke-virtual {v2}, Lcom/google/android/gms/common/images/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/gms/common/images/Size;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 79
    .local v0, "max":I
    invoke-direct {p0}, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->isPortraitMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 80
    iget-object v3, p0, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->mOverlay:Lcom/prey/barcodereader/ui/camera/GraphicOverlay;

    iget-object v4, p0, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->mCameraSource:Lcom/prey/barcodereader/ui/camera/CameraSource;

    invoke-virtual {v4}, Lcom/prey/barcodereader/ui/camera/CameraSource;->getCameraFacing()I

    move-result v4

    invoke-virtual {v3, v1, v0, v4}, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->setCameraInfo(III)V

    .line 84
    :goto_0
    iget-object v3, p0, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->mOverlay:Lcom/prey/barcodereader/ui/camera/GraphicOverlay;

    invoke-virtual {v3}, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->clear()V

    .line 86
    .end local v0    # "max":I
    .end local v1    # "min":I
    .end local v2    # "size":Lcom/google/android/gms/common/images/Size;
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->mStartRequested:Z

    .line 88
    :cond_1
    return-void

    .line 82
    .restart local v0    # "max":I
    .restart local v1    # "min":I
    .restart local v2    # "size":Lcom/google/android/gms/common/images/Size;
    :cond_2
    iget-object v3, p0, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->mOverlay:Lcom/prey/barcodereader/ui/camera/GraphicOverlay;

    iget-object v4, p0, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->mCameraSource:Lcom/prey/barcodereader/ui/camera/CameraSource;

    invoke-virtual {v4}, Lcom/prey/barcodereader/ui/camera/CameraSource;->getCameraFacing()I

    move-result v4

    invoke-virtual {v3, v0, v1, v4}, Lcom/prey/barcodereader/ui/camera/GraphicOverlay;->setCameraInfo(III)V

    goto :goto_0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 115
    const/16 v10, 0x140

    .line 116
    .local v10, "width":I
    const/16 v3, 0xf0

    .line 117
    .local v3, "height":I
    iget-object v11, p0, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->mCameraSource:Lcom/prey/barcodereader/ui/camera/CameraSource;

    if-eqz v11, :cond_0

    .line 118
    iget-object v11, p0, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->mCameraSource:Lcom/prey/barcodereader/ui/camera/CameraSource;

    invoke-virtual {v11}, Lcom/prey/barcodereader/ui/camera/CameraSource;->getPreviewSize()Lcom/google/android/gms/common/images/Size;

    move-result-object v8

    .line 119
    .local v8, "size":Lcom/google/android/gms/common/images/Size;
    if-eqz v8, :cond_0

    .line 120
    invoke-virtual {v8}, Lcom/google/android/gms/common/images/Size;->getWidth()I

    move-result v10

    .line 121
    invoke-virtual {v8}, Lcom/google/android/gms/common/images/Size;->getHeight()I

    move-result v3

    .line 125
    .end local v8    # "size":Lcom/google/android/gms/common/images/Size;
    :cond_0
    invoke-direct {p0}, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->isPortraitMode()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 126
    move v9, v10

    .line 127
    .local v9, "tmp":I
    move v10, v3

    .line 128
    move v3, v9

    .line 131
    .end local v9    # "tmp":I
    :cond_1
    sub-int v6, p4, p2

    .line 132
    .local v6, "layoutWidth":I
    sub-int v5, p5, p3

    .line 134
    .local v5, "layoutHeight":I
    move v1, v6

    .line 135
    .local v1, "childWidth":I
    int-to-float v11, v6

    int-to-float v12, v10

    div-float/2addr v11, v12

    int-to-float v12, v3

    mul-float/2addr v11, v12

    float-to-int v0, v11

    .line 137
    .local v0, "childHeight":I
    if-le v0, v5, :cond_2

    .line 138
    move v0, v5

    .line 139
    int-to-float v11, v5

    int-to-float v12, v3

    div-float/2addr v11, v12

    int-to-float v12, v10

    mul-float/2addr v11, v12

    float-to-int v1, v11

    .line 142
    :cond_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->getChildCount()I

    move-result v11

    if-ge v4, v11, :cond_3

    .line 143
    invoke-virtual {p0, v4}, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13, v1, v0}, Landroid/view/View;->layout(IIII)V

    .line 142
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 147
    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->startIfReady()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 153
    :goto_1
    return-void

    .line 148
    :catch_0
    move-exception v7

    .line 149
    .local v7, "se":Ljava/lang/SecurityException;
    const-string v11, "Do not have permission to start the camera"

    invoke-static {v11, v7}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 150
    .end local v7    # "se":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    .line 151
    .local v2, "e":Ljava/io/IOException;
    const-string v11, "Could not start camera source."

    invoke-static {v11, v2}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public release()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->mCameraSource:Lcom/prey/barcodereader/ui/camera/CameraSource;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->mCameraSource:Lcom/prey/barcodereader/ui/camera/CameraSource;

    invoke-virtual {v0}, Lcom/prey/barcodereader/ui/camera/CameraSource;->release()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->mCameraSource:Lcom/prey/barcodereader/ui/camera/CameraSource;

    .line 69
    :cond_0
    return-void
.end method

.method public start(Lcom/prey/barcodereader/ui/camera/CameraSource;)V
    .locals 1
    .param p1, "cameraSource"    # Lcom/prey/barcodereader/ui/camera/CameraSource;
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.CAMERA"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 40
    if-nez p1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->stop()V

    .line 44
    :cond_0
    iput-object p1, p0, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->mCameraSource:Lcom/prey/barcodereader/ui/camera/CameraSource;

    .line 46
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->mCameraSource:Lcom/prey/barcodereader/ui/camera/CameraSource;

    if-eqz v0, :cond_1

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->mStartRequested:Z

    .line 48
    invoke-direct {p0}, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->startIfReady()V

    .line 50
    :cond_1
    return-void
.end method

.method public start(Lcom/prey/barcodereader/ui/camera/CameraSource;Lcom/prey/barcodereader/ui/camera/GraphicOverlay;)V
    .locals 0
    .param p1, "cameraSource"    # Lcom/prey/barcodereader/ui/camera/CameraSource;
    .param p2, "overlay"    # Lcom/prey/barcodereader/ui/camera/GraphicOverlay;
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.CAMERA"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 54
    iput-object p2, p0, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->mOverlay:Lcom/prey/barcodereader/ui/camera/GraphicOverlay;

    .line 55
    invoke-virtual {p0, p1}, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->start(Lcom/prey/barcodereader/ui/camera/CameraSource;)V

    .line 56
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->mCameraSource:Lcom/prey/barcodereader/ui/camera/CameraSource;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSourcePreview;->mCameraSource:Lcom/prey/barcodereader/ui/camera/CameraSource;

    invoke-virtual {v0}, Lcom/prey/barcodereader/ui/camera/CameraSource;->stop()V

    .line 62
    :cond_0
    return-void
.end method
