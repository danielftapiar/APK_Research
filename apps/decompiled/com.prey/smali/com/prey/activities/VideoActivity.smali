.class public Lcom/prey/activities/VideoActivity;
.super Landroid/app/Activity;
.source "VideoActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field public static activity:Lcom/prey/activities/VideoActivity;

.field public static camera:Landroid/hardware/Camera;

.field public static filePath:Ljava/lang/String;


# instance fields
.field private holder:Landroid/view/SurfaceHolder;

.field private recorder:Landroid/media/MediaRecorder;

.field private recording:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/yerp.mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/prey/activities/VideoActivity;->filePath:Ljava/lang/String;

    .line 29
    sput-object v2, Lcom/prey/activities/VideoActivity;->camera:Landroid/hardware/Camera;

    .line 30
    sput-object v2, Lcom/prey/activities/VideoActivity;->activity:Lcom/prey/activities/VideoActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prey/activities/VideoActivity;->recording:Z

    return-void
.end method

.method private initRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 51
    iget-object v0, p0, Lcom/prey/activities/VideoActivity;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 52
    iget-object v0, p0, Lcom/prey/activities/VideoActivity;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 53
    iget-object v0, p0, Lcom/prey/activities/VideoActivity;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 55
    iget-object v0, p0, Lcom/prey/activities/VideoActivity;->recorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 56
    iget-object v0, p0, Lcom/prey/activities/VideoActivity;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 57
    iget-object v0, p0, Lcom/prey/activities/VideoActivity;->recorder:Landroid/media/MediaRecorder;

    sget-object v1, Lcom/prey/activities/VideoActivity;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/prey/activities/VideoActivity;->recorder:Landroid/media/MediaRecorder;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 61
    iget-object v0, p0, Lcom/prey/activities/VideoActivity;->recorder:Landroid/media/MediaRecorder;

    const/16 v1, 0x2d0

    const/16 v2, 0x1e0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 63
    return-void
.end method

.method private prepareRecorder()V
    .locals 3

    .prologue
    .line 66
    iget-object v1, p0, Lcom/prey/activities/VideoActivity;->recorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/prey/activities/VideoActivity;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/prey/activities/VideoActivity;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 77
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 72
    invoke-virtual {p0}, Lcom/prey/activities/VideoActivity;->finish()V

    goto :goto_0

    .line 73
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 74
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 75
    invoke-virtual {p0}, Lcom/prey/activities/VideoActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v1, p0, Lcom/prey/activities/VideoActivity;->recorder:Landroid/media/MediaRecorder;

    .line 37
    invoke-direct {p0}, Lcom/prey/activities/VideoActivity;->initRecorder()V

    .line 38
    const v1, 0x7f04001b

    invoke-virtual {p0, v1}, Lcom/prey/activities/VideoActivity;->setContentView(I)V

    .line 39
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/prey/activities/VideoActivity;->setRequestedOrientation(I)V

    .line 40
    const v1, 0x7f100099

    invoke-virtual {p0, v1}, Lcom/prey/activities/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 41
    .local v0, "cameraView":Landroid/view/SurfaceView;
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/prey/activities/VideoActivity;->holder:Landroid/view/SurfaceHolder;

    .line 42
    iget-object v1, p0, Lcom/prey/activities/VideoActivity;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 43
    iget-object v1, p0, Lcom/prey/activities/VideoActivity;->holder:Landroid/view/SurfaceHolder;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 44
    sput-object p0, Lcom/prey/activities/VideoActivity;->activity:Lcom/prey/activities/VideoActivity;

    .line 46
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/prey/activities/VideoActivity;->prepareRecorder()V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prey/activities/VideoActivity;->recording:Z

    .line 83
    iget-object v0, p0, Lcom/prey/activities/VideoActivity;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 85
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 88
    const-string v0, "stop"

    invoke-static {v0}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/prey/activities/VideoActivity;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prey/activities/VideoActivity;->recording:Z

    .line 93
    invoke-direct {p0}, Lcom/prey/activities/VideoActivity;->initRecorder()V

    .line 96
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 104
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 100
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/prey/activities/VideoActivity;->recording:Z

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/prey/activities/VideoActivity;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prey/activities/VideoActivity;->recording:Z

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/prey/activities/VideoActivity;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 112
    invoke-virtual {p0}, Lcom/prey/activities/VideoActivity;->finish()V

    .line 113
    return-void
.end method
