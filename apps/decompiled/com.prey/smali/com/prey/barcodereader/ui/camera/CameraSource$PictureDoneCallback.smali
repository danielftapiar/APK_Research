.class Lcom/prey/barcodereader/ui/camera/CameraSource$PictureDoneCallback;
.super Ljava/lang/Object;
.source "CameraSource.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/barcodereader/ui/camera/CameraSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PictureDoneCallback"
.end annotation


# instance fields
.field private mDelegate:Lcom/prey/barcodereader/ui/camera/CameraSource$PictureCallback;

.field final synthetic this$0:Lcom/prey/barcodereader/ui/camera/CameraSource;


# direct methods
.method private constructor <init>(Lcom/prey/barcodereader/ui/camera/CameraSource;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$PictureDoneCallback;->this$0:Lcom/prey/barcodereader/ui/camera/CameraSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/prey/barcodereader/ui/camera/CameraSource;Lcom/prey/barcodereader/ui/camera/CameraSource$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/prey/barcodereader/ui/camera/CameraSource;
    .param p2, "x1"    # Lcom/prey/barcodereader/ui/camera/CameraSource$1;

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lcom/prey/barcodereader/ui/camera/CameraSource$PictureDoneCallback;-><init>(Lcom/prey/barcodereader/ui/camera/CameraSource;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/prey/barcodereader/ui/camera/CameraSource$PictureDoneCallback;Lcom/prey/barcodereader/ui/camera/CameraSource$PictureCallback;)Lcom/prey/barcodereader/ui/camera/CameraSource$PictureCallback;
    .locals 0
    .param p0, "x0"    # Lcom/prey/barcodereader/ui/camera/CameraSource$PictureDoneCallback;
    .param p1, "x1"    # Lcom/prey/barcodereader/ui/camera/CameraSource$PictureCallback;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$PictureDoneCallback;->mDelegate:Lcom/prey/barcodereader/ui/camera/CameraSource$PictureCallback;

    return-object p1
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 422
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$PictureDoneCallback;->mDelegate:Lcom/prey/barcodereader/ui/camera/CameraSource$PictureCallback;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$PictureDoneCallback;->mDelegate:Lcom/prey/barcodereader/ui/camera/CameraSource$PictureCallback;

    invoke-interface {v0, p1}, Lcom/prey/barcodereader/ui/camera/CameraSource$PictureCallback;->onPictureTaken([B)V

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$PictureDoneCallback;->this$0:Lcom/prey/barcodereader/ui/camera/CameraSource;

    # getter for: Lcom/prey/barcodereader/ui/camera/CameraSource;->mCameraLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/prey/barcodereader/ui/camera/CameraSource;->access$1700(Lcom/prey/barcodereader/ui/camera/CameraSource;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 426
    :try_start_0
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$PictureDoneCallback;->this$0:Lcom/prey/barcodereader/ui/camera/CameraSource;

    # getter for: Lcom/prey/barcodereader/ui/camera/CameraSource;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/prey/barcodereader/ui/camera/CameraSource;->access$1800(Lcom/prey/barcodereader/ui/camera/CameraSource;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/prey/barcodereader/ui/camera/CameraSource$PictureDoneCallback;->this$0:Lcom/prey/barcodereader/ui/camera/CameraSource;

    # getter for: Lcom/prey/barcodereader/ui/camera/CameraSource;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/prey/barcodereader/ui/camera/CameraSource;->access$1800(Lcom/prey/barcodereader/ui/camera/CameraSource;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 429
    :cond_1
    monitor-exit v1

    .line 430
    return-void

    .line 429
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
