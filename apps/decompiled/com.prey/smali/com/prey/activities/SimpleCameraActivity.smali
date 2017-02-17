.class public Lcom/prey/activities/SimpleCameraActivity;
.super Landroid/app/Activity;
.source "SimpleCameraActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final PHOTO_HEIGHT:I = 0x400

.field private static final PHOTO_WIDTH:I = 0x300

.field public static activity:Lcom/prey/activities/SimpleCameraActivity;

.field public static camera:Landroid/hardware/Camera;

.field public static dataImagen:[B

.field public static mHolder:Landroid/view/SurfaceHolder;


# instance fields
.field jpegCallback:Landroid/hardware/Camera$PictureCallback;

.field rawCallback:Landroid/hardware/Camera$PictureCallback;

.field shutterCallback:Landroid/hardware/Camera$ShutterCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    sput-object v0, Lcom/prey/activities/SimpleCameraActivity;->activity:Lcom/prey/activities/SimpleCameraActivity;

    .line 41
    sput-object v0, Lcom/prey/activities/SimpleCameraActivity;->dataImagen:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 209
    new-instance v0, Lcom/prey/activities/SimpleCameraActivity$1;

    invoke-direct {v0, p0}, Lcom/prey/activities/SimpleCameraActivity$1;-><init>(Lcom/prey/activities/SimpleCameraActivity;)V

    iput-object v0, p0, Lcom/prey/activities/SimpleCameraActivity;->shutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 214
    new-instance v0, Lcom/prey/activities/SimpleCameraActivity$2;

    invoke-direct {v0, p0}, Lcom/prey/activities/SimpleCameraActivity$2;-><init>(Lcom/prey/activities/SimpleCameraActivity;)V

    iput-object v0, p0, Lcom/prey/activities/SimpleCameraActivity;->rawCallback:Landroid/hardware/Camera$PictureCallback;

    .line 219
    new-instance v0, Lcom/prey/activities/SimpleCameraActivity$3;

    invoke-direct {v0, p0}, Lcom/prey/activities/SimpleCameraActivity$3;-><init>(Lcom/prey/activities/SimpleCameraActivity;)V

    iput-object v0, p0, Lcom/prey/activities/SimpleCameraActivity;->jpegCallback:Landroid/hardware/Camera$PictureCallback;

    return-void
.end method

.method private getCamera(ILjava/lang/Class;)Landroid/hardware/Camera;
    .locals 8
    .param p1, "idx"    # I
    .param p2, "clsCamera"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v3, 0x0

    .line 124
    .local v3, "mCamera":Landroid/hardware/Camera;
    const/4 v6, 0x1

    :try_start_0
    new-array v5, v6, [Ljava/lang/Class;

    .line 125
    .local v5, "param":[Ljava/lang/Class;
    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    .line 126
    const-string v6, "open"

    invoke-virtual {p2, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 127
    .local v4, "methodOpen":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v2, v6, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v6

    .line 128
    .local v2, "input":[Ljava/lang/Integer;
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/hardware/Camera;

    move-object v3, v0

    .line 129
    const-string v6, "Camera.open(camIdx)"

    invoke-static {v6}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v2    # "input":[Ljava/lang/Integer;
    .end local v4    # "methodOpen":Ljava/lang/reflect/Method;
    .end local v5    # "param":[Ljava/lang/Class;
    :goto_0
    return-object v3

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Camera failed to open: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getCamera(Ljava/lang/String;)Landroid/hardware/Camera;
    .locals 6
    .param p1, "focus"    # Ljava/lang/String;

    .prologue
    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCamera("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 81
    const/4 v2, 0x0

    .line 84
    .local v2, "mCamera":Landroid/hardware/Camera;
    :try_start_0
    const-string v4, "android.hardware.Camera"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 85
    .local v0, "clsCamera":Ljava/lang/Class;
    invoke-static {}, Lcom/prey/activities/SimpleCameraActivity;->getNumberOfCameras()Ljava/lang/Integer;

    move-result-object v3

    .line 86
    .local v3, "numberOfCamerasInt":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    .line 87
    const-string v4, "front"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 88
    const/4 v4, 0x0

    invoke-direct {p0, v4, v0}, Lcom/prey/activities/SimpleCameraActivity;->getCamera(ILjava/lang/Class;)Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 98
    .end local v0    # "clsCamera":Ljava/lang/Class;
    .end local v3    # "numberOfCamerasInt":Ljava/lang/Integer;
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 99
    :try_start_1
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 103
    :cond_1
    :goto_1
    return-object v2

    .line 90
    .restart local v0    # "clsCamera":Ljava/lang/Class;
    .restart local v3    # "numberOfCamerasInt":Ljava/lang/Integer;
    :cond_2
    const/4 v4, 0x1

    :try_start_2
    invoke-direct {p0, v4, v0}, Lcom/prey/activities/SimpleCameraActivity;->getCamera(ILjava/lang/Class;)Landroid/hardware/Camera;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    goto :goto_0

    .line 93
    .end local v0    # "clsCamera":Ljava/lang/Class;
    .end local v3    # "numberOfCamerasInt":Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e1":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Camera failed to open facing front: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 95
    const/4 v2, 0x0

    goto :goto_0

    .line 101
    .end local v1    # "e1":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public static getNumberOfCameras()Ljava/lang/Integer;
    .locals 7

    .prologue
    .line 107
    const/4 v4, 0x0

    .line 110
    .local v4, "numberOfCamerasInt":Ljava/lang/Integer;
    const/4 v5, 0x0

    :try_start_0
    new-array v3, v5, [Ljava/lang/Class;

    .line 112
    .local v3, "noparams":[Ljava/lang/Class;
    const-string v5, "android.hardware.Camera"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 113
    .local v1, "clsCamera":Ljava/lang/Class;
    const-string v5, "getNumberOfCameras"

    invoke-virtual {v1, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 114
    .local v2, "methodGetNumberOfCameras":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/Integer;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v1    # "clsCamera":Ljava/lang/Class;
    .end local v2    # "methodGetNumberOfCameras":Ljava/lang/reflect/Method;
    .end local v3    # "noparams":[Ljava/lang/Class;
    :goto_0
    return-object v4

    .line 115
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private setParameters1(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    .line 188
    const-string v0, "off"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 189
    const-string v0, "auto"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 190
    const-string v0, "auto"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 191
    return-object p1
.end method

.method private setParameters2(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 197
    return-object p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v3, 0x7f04004f

    invoke-virtual {p0, v3}, Lcom/prey/activities/SimpleCameraActivity;->setContentView(I)V

    .line 47
    invoke-virtual {p0, v4}, Lcom/prey/activities/SimpleCameraActivity;->setRequestedOrientation(I)V

    .line 48
    invoke-virtual {p0}, Lcom/prey/activities/SimpleCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 50
    .local v0, "extras":Landroid/os/Bundle;
    const-string v3, "kill"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 51
    const-string v3, "Kill"

    invoke-static {v3}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/prey/activities/SimpleCameraActivity;->finish()V

    .line 56
    :cond_0
    const/4 v1, 0x0

    .line 57
    .local v1, "focus":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 58
    const-string v3, "focus"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    :goto_0
    invoke-direct {p0, v1}, Lcom/prey/activities/SimpleCameraActivity;->getCamera(Ljava/lang/String;)Landroid/hardware/Camera;

    move-result-object v3

    sput-object v3, Lcom/prey/activities/SimpleCameraActivity;->camera:Landroid/hardware/Camera;

    .line 63
    sget-object v3, Lcom/prey/activities/SimpleCameraActivity;->camera:Landroid/hardware/Camera;

    if-eqz v3, :cond_1

    .line 65
    :try_start_0
    sget-object v3, Lcom/prey/activities/SimpleCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "focus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 70
    const v3, 0x7f100102

    invoke-virtual {p0, v3}, Lcom/prey/activities/SimpleCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceView;

    .line 71
    .local v2, "surfaceView":Landroid/view/SurfaceView;
    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    sput-object v3, Lcom/prey/activities/SimpleCameraActivity;->mHolder:Landroid/view/SurfaceHolder;

    .line 72
    sget-object v3, Lcom/prey/activities/SimpleCameraActivity;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 73
    sget-object v3, Lcom/prey/activities/SimpleCameraActivity;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 75
    sput-object p0, Lcom/prey/activities/SimpleCameraActivity;->activity:Lcom/prey/activities/SimpleCameraActivity;

    .line 76
    return-void

    .line 60
    .end local v2    # "surfaceView":Landroid/view/SurfaceView;
    :cond_2
    const-string v1, "front"

    goto :goto_0

    .line 66
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 202
    sget-object v0, Lcom/prey/activities/SimpleCameraActivity;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 203
    sget-object v0, Lcom/prey/activities/SimpleCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 204
    sget-object v0, Lcom/prey/activities/SimpleCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 205
    const/4 v0, 0x0

    sput-object v0, Lcom/prey/activities/SimpleCameraActivity;->camera:Landroid/hardware/Camera;

    .line 207
    :cond_0
    return-void
.end method

.method resizeImage([B)[B
    .locals 6
    .param p1, "input"    # [B

    .prologue
    .line 270
    const/4 v3, 0x0

    array-length v4, p1

    invoke-static {p1, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 271
    .local v1, "original":Landroid/graphics/Bitmap;
    const/16 v3, 0x300

    const/16 v4, 0x400

    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 273
    .local v2, "resized":Landroid/graphics/Bitmap;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 274
    .local v0, "blob":Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 276
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 227
    sget-object v1, Lcom/prey/activities/SimpleCameraActivity;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 229
    :try_start_0
    sget-object v1, Lcom/prey/activities/SimpleCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 230
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    sget-object v1, Lcom/prey/activities/SimpleCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 234
    .end local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :goto_0
    :try_start_1
    sget-object v1, Lcom/prey/activities/SimpleCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 238
    :cond_0
    :goto_1
    return-void

    .line 235
    :catch_0
    move-exception v1

    goto :goto_1

    .line 231
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 241
    const-string v1, "camera setPreviewDisplay()"

    invoke-static {v1}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 242
    sput-object p1, Lcom/prey/activities/SimpleCameraActivity;->mHolder:Landroid/view/SurfaceHolder;

    .line 244
    :try_start_0
    sget-object v1, Lcom/prey/activities/SimpleCameraActivity;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 245
    sget-object v1, Lcom/prey/activities/SimpleCameraActivity;->camera:Landroid/hardware/Camera;

    sget-object v2, Lcom/prey/activities/SimpleCameraActivity;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error PreviewDisplay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 252
    const-string v0, "camera surfaceDestroyed()"

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 253
    sget-object v0, Lcom/prey/activities/SimpleCameraActivity;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 255
    :try_start_0
    sget-object v0, Lcom/prey/activities/SimpleCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 259
    :goto_0
    :try_start_1
    sget-object v0, Lcom/prey/activities/SimpleCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 262
    :goto_1
    const/4 v0, 0x0

    sput-object v0, Lcom/prey/activities/SimpleCameraActivity;->camera:Landroid/hardware/Camera;

    .line 264
    :cond_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    goto :goto_1

    .line 256
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public takePicture(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "focus"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 140
    :try_start_0
    sget-object v1, Lcom/prey/activities/SimpleCameraActivity;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_4

    .line 141
    sget-object v1, Lcom/prey/activities/SimpleCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 142
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    const-string v1, "front"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 143
    invoke-virtual {p0}, Lcom/prey/activities/SimpleCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_0

    .line 144
    const-string v1, "orientation"

    const-string v2, "portrait"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v1, "rotation"

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/prey/activities/SimpleCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_1

    .line 148
    const-string v1, "orientation"

    const-string v2, "landscape"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v1, "rotation"

    const/16 v2, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 161
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prey/PreyConfig;->isEclairOrAbove()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    invoke-direct {p0, v0}, Lcom/prey/activities/SimpleCameraActivity;->setParameters1(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 165
    :cond_2
    const-string v1, "iso"

    const/16 v2, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 166
    invoke-static {p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prey/PreyConfig;->isFroyoOrAbove()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 167
    invoke-direct {p0, v0}, Lcom/prey/activities/SimpleCameraActivity;->setParameters2(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 170
    :cond_3
    sget-object v1, Lcom/prey/activities/SimpleCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_4
    :goto_1
    :try_start_1
    sget-object v1, Lcom/prey/activities/SimpleCameraActivity;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_5

    .line 179
    sget-object v1, Lcom/prey/activities/SimpleCameraActivity;->camera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/prey/activities/SimpleCameraActivity;->shutterCallback:Landroid/hardware/Camera$ShutterCallback;

    iget-object v3, p0, Lcom/prey/activities/SimpleCameraActivity;->rawCallback:Landroid/hardware/Camera$PictureCallback;

    iget-object v4, p0, Lcom/prey/activities/SimpleCameraActivity;->jpegCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 180
    const-string v1, "open takePicture()"

    invoke-static {v1}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 184
    :cond_5
    :goto_2
    return-void

    .line 152
    .restart local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_6
    :try_start_2
    invoke-virtual {p0}, Lcom/prey/activities/SimpleCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_7

    .line 153
    const-string v1, "orientation"

    const-string v2, "portrait"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v1, "rotation"

    const/16 v2, 0x10e

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 156
    :cond_7
    invoke-virtual {p0}, Lcom/prey/activities/SimpleCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_1

    .line 157
    const-string v1, "orientation"

    const-string v2, "landscape"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v1, "rotation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 173
    .end local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 182
    :catch_1
    move-exception v1

    goto :goto_2
.end method
