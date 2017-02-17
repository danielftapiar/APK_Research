.class public Lcom/prey/activities/SimpleVideoActivity;
.super Landroid/app/Activity;
.source "SimpleVideoActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field public static activity:Lcom/prey/activities/SimpleVideoActivity;

.field public static dataImagen:[B

.field private static mServiceCamera:Landroid/hardware/Camera;


# instance fields
.field private directory:Ljava/io/File;

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    sput-object v0, Lcom/prey/activities/SimpleVideoActivity;->activity:Lcom/prey/activities/SimpleVideoActivity;

    .line 47
    sput-object v0, Lcom/prey/activities/SimpleVideoActivity;->dataImagen:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

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
    .line 249
    const/4 v3, 0x0

    .line 251
    .local v3, "mCamera":Landroid/hardware/Camera;
    const/4 v6, 0x1

    :try_start_0
    new-array v5, v6, [Ljava/lang/Class;

    .line 252
    .local v5, "param":[Ljava/lang/Class;
    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    .line 253
    const-string v6, "open"

    invoke-virtual {p2, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 254
    .local v4, "methodOpen":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v2, v6, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v6

    .line 255
    .local v2, "input":[Ljava/lang/Integer;
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/hardware/Camera;

    move-object v3, v0

    .line 256
    const-string v6, "Camera.open(camIdx)"

    invoke-static {v6}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .end local v2    # "input":[Ljava/lang/Integer;
    .end local v4    # "methodOpen":Ljava/lang/reflect/Method;
    .end local v5    # "param":[Ljava/lang/Class;
    :goto_0
    return-object v3

    .line 258
    :catch_0
    move-exception v1

    .line 259
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

.method private getCamera(Landroid/content/Context;)Landroid/hardware/Camera;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 211
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method private getCameraGingerbreadOrAbove(Landroid/content/Context;)Landroid/hardware/Camera;
    .locals 9
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    .line 217
    const-string v6, "getCameraGingerbreadOrAbove"

    invoke-static {v6}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 218
    const/4 v2, 0x0

    .line 220
    .local v2, "mCamera":Landroid/hardware/Camera;
    const/4 v6, 0x0

    :try_start_0
    new-array v4, v6, [Ljava/lang/Class;

    .line 222
    .local v4, "noparams":[Ljava/lang/Class;
    const-string v6, "android.hardware.Camera"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 223
    .local v0, "clsCamera":Ljava/lang/Class;
    const-string v6, "getNumberOfCameras"

    invoke-virtual {v0, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 224
    .local v3, "methodGetNumberOfCameras":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 229
    .local v5, "numberOfCamerasInt":Ljava/lang/Integer;
    if-eqz v5, :cond_0

    .line 230
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v8, :cond_2

    .line 231
    const/4 v6, 0x0

    invoke-direct {p0, v6, v0}, Lcom/prey/activities/SimpleVideoActivity;->getCamera(ILjava/lang/Class;)Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 241
    .end local v0    # "clsCamera":Ljava/lang/Class;
    .end local v3    # "methodGetNumberOfCameras":Ljava/lang/reflect/Method;
    .end local v4    # "noparams":[Ljava/lang/Class;
    .end local v5    # "numberOfCamerasInt":Ljava/lang/Integer;
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 242
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v2

    .line 244
    :cond_1
    return-object v2

    .line 233
    .restart local v0    # "clsCamera":Ljava/lang/Class;
    .restart local v3    # "methodGetNumberOfCameras":Ljava/lang/reflect/Method;
    .restart local v4    # "noparams":[Ljava/lang/Class;
    .restart local v5    # "numberOfCamerasInt":Ljava/lang/Integer;
    :cond_2
    const/4 v6, 0x1

    :try_start_1
    invoke-direct {p0, v6, v0}, Lcom/prey/activities/SimpleVideoActivity;->getCamera(ILjava/lang/Class;)Landroid/hardware/Camera;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0

    .line 236
    .end local v0    # "clsCamera":Ljava/lang/Class;
    .end local v3    # "methodGetNumberOfCameras":Ljava/lang/reflect/Method;
    .end local v4    # "noparams":[Ljava/lang/Class;
    .end local v5    # "numberOfCamerasInt":Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 237
    .local v1, "e1":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Camera failed to open facing front: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 238
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v4, 0x7f04004f

    invoke-virtual {p0, v4}, Lcom/prey/activities/SimpleVideoActivity;->setContentView(I)V

    .line 55
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/prey/activities/SimpleVideoActivity;->setRequestedOrientation(I)V

    .line 56
    const/4 v4, 0x0

    sput-object v4, Lcom/prey/activities/SimpleVideoActivity;->activity:Lcom/prey/activities/SimpleVideoActivity;

    .line 58
    const v4, 0x7f100102

    invoke-virtual {p0, v4}, Lcom/prey/activities/SimpleVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceView;

    .line 59
    .local v3, "surfaceView":Landroid/view/SurfaceView;
    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    iput-object v4, p0, Lcom/prey/activities/SimpleVideoActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 60
    iget-object v4, p0, Lcom/prey/activities/SimpleVideoActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v4, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 61
    iget-object v4, p0, Lcom/prey/activities/SimpleVideoActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 64
    :try_start_0
    invoke-virtual {p0}, Lcom/prey/activities/SimpleVideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 65
    .local v0, "ctx":Landroid/content/Context;
    invoke-static {v0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v2

    .line 66
    .local v2, "preyConfig":Lcom/prey/PreyConfig;
    invoke-virtual {v2}, Lcom/prey/PreyConfig;->isGingerbreadOrAbove()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    invoke-direct {p0, v0}, Lcom/prey/activities/SimpleVideoActivity;->getCameraGingerbreadOrAbove(Landroid/content/Context;)Landroid/hardware/Camera;

    move-result-object v4

    sput-object v4, Lcom/prey/activities/SimpleVideoActivity;->mServiceCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v0    # "ctx":Landroid/content/Context;
    .end local v2    # "preyConfig":Lcom/prey/PreyConfig;
    :goto_0
    sput-object p0, Lcom/prey/activities/SimpleVideoActivity;->activity:Lcom/prey/activities/SimpleVideoActivity;

    .line 76
    return-void

    .line 69
    .restart local v0    # "ctx":Landroid/content/Context;
    .restart local v2    # "preyConfig":Lcom/prey/PreyConfig;
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/prey/activities/SimpleVideoActivity;->getCamera(Landroid/content/Context;)Landroid/hardware/Camera;

    move-result-object v4

    sput-object v4, Lcom/prey/activities/SimpleVideoActivity;->mServiceCamera:Landroid/hardware/Camera;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 71
    .end local v0    # "ctx":Landroid/content/Context;
    .end local v2    # "preyConfig":Lcom/prey/PreyConfig;
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error open camera:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 186
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 188
    return-void
.end method

.method public sendVideo(Landroid/content/Context;)V
    .locals 14
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-static {p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v6

    .line 81
    .local v6, "preyConfig":Lcom/prey/PreyConfig;
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    .line 82
    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/videooutput.mp4"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 83
    .local v8, "uniqueOutFile":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v3, "file":Ljava/io/File;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "size:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 86
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 87
    .local v4, "fis":Ljava/io/FileInputStream;
    new-instance v1, Lcom/prey/net/http/EntityFile;

    invoke-direct {v1}, Lcom/prey/net/http/EntityFile;-><init>()V

    .line 88
    .local v1, "entityFile":Lcom/prey/net/http/EntityFile;
    invoke-virtual {v1, v4}, Lcom/prey/net/http/EntityFile;->setFile(Ljava/io/InputStream;)V

    .line 89
    const-string v10, "video/mp4"

    invoke-virtual {v1, v10}, Lcom/prey/net/http/EntityFile;->setMimeType(Ljava/lang/String;)V

    .line 90
    const-string v10, "video.mp4"

    invoke-virtual {v1, v10}, Lcom/prey/net/http/EntityFile;->setName(Ljava/lang/String;)V

    .line 91
    const-string v10, "video"

    invoke-virtual {v1, v10}, Lcom/prey/net/http/EntityFile;->setType(Ljava/lang/String;)V

    .line 92
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 93
    .local v5, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/prey/net/PreyWebServices;->getFileUrlJson(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 94
    .local v9, "uri":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v2, "entityFiles":Ljava/util/List;, "Ljava/util/List<Lcom/prey/net/http/EntityFile;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    const/4 v7, 0x0

    .line 98
    .local v7, "preyHttpResponse":Lcom/prey/net/PreyHttpResponse;
    invoke-static {p1}, Lcom/prey/net/PreyRestHttpClient;->getInstance(Landroid/content/Context;)Lcom/prey/net/PreyRestHttpClient;

    move-result-object v10

    .line 99
    invoke-virtual {v10, v9, v5, v2}, Lcom/prey/net/PreyRestHttpClient;->postAutentication(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v7

    .line 101
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "status line:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lcom/prey/net/PreyHttpResponse;->getStatusCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v1    # "entityFile":Lcom/prey/net/http/EntityFile;
    .end local v2    # "entityFiles":Ljava/util/List;, "Ljava/util/List<Lcom/prey/net/http/EntityFile;>;"
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "preyHttpResponse":Lcom/prey/net/PreyHttpResponse;
    .end local v8    # "uniqueOutFile":Ljava/lang/String;
    .end local v9    # "uri":Ljava/lang/String;
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error causa:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v0}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public stopRecording()V
    .locals 1

    .prologue
    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/prey/activities/SimpleVideoActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 164
    iget-object v0, p0, Lcom/prey/activities/SimpleVideoActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 170
    :goto_0
    :try_start_1
    sget-object v0, Lcom/prey/activities/SimpleVideoActivity;->mServiceCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 171
    sget-object v0, Lcom/prey/activities/SimpleVideoActivity;->mServiceCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 172
    sget-object v0, Lcom/prey/activities/SimpleVideoActivity;->mServiceCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 173
    const/4 v0, 0x0

    sput-object v0, Lcom/prey/activities/SimpleVideoActivity;->mServiceCamera:Landroid/hardware/Camera;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 178
    :cond_0
    :goto_1
    const-string v0, "recording service stopped"

    invoke-static {v0}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 179
    return-void

    .line 175
    :catch_0
    move-exception v0

    goto :goto_1

    .line 166
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 183
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 191
    const-string v1, "camera setPreviewDisplay()"

    invoke-static {v1}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 192
    iput-object p1, p0, Lcom/prey/activities/SimpleVideoActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 194
    :try_start_0
    sget-object v1, Lcom/prey/activities/SimpleVideoActivity;->mServiceCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 195
    sget-object v1, Lcom/prey/activities/SimpleVideoActivity;->mServiceCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/prey/activities/SimpleVideoActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
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
    .line 202
    const-string v0, "camera surfaceDestroyed()"

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 203
    sget-object v0, Lcom/prey/activities/SimpleVideoActivity;->mServiceCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 204
    sget-object v0, Lcom/prey/activities/SimpleVideoActivity;->mServiceCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 205
    sget-object v0, Lcom/prey/activities/SimpleVideoActivity;->mServiceCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 206
    const/4 v0, 0x0

    sput-object v0, Lcom/prey/activities/SimpleVideoActivity;->mServiceCamera:Landroid/hardware/Camera;

    .line 208
    :cond_0
    return-void
.end method

.method public takeVideo()V
    .locals 8

    .prologue
    .line 112
    :try_start_0
    sget-object v5, Lcom/prey/activities/SimpleVideoActivity;->mServiceCamera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 113
    .local v3, "params":Landroid/hardware/Camera$Parameters;
    sget-object v5, Lcom/prey/activities/SimpleVideoActivity;->mServiceCamera:Landroid/hardware/Camera;

    invoke-virtual {v5, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 114
    sget-object v5, Lcom/prey/activities/SimpleVideoActivity;->mServiceCamera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 116
    .local v2, "p":Landroid/hardware/Camera$Parameters;
    sget-object v5, Lcom/prey/activities/SimpleVideoActivity;->mServiceCamera:Landroid/hardware/Camera;

    invoke-virtual {v5, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 120
    new-instance v5, Landroid/media/MediaRecorder;

    invoke-direct {v5}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v5, p0, Lcom/prey/activities/SimpleVideoActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 121
    iget-object v5, p0, Lcom/prey/activities/SimpleVideoActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    sget-object v6, Lcom/prey/activities/SimpleVideoActivity;->mServiceCamera:Landroid/hardware/Camera;

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 122
    iget-object v5, p0, Lcom/prey/activities/SimpleVideoActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 123
    iget-object v5, p0, Lcom/prey/activities/SimpleVideoActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 125
    iget-object v5, p0, Lcom/prey/activities/SimpleVideoActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 126
    iget-object v5, p0, Lcom/prey/activities/SimpleVideoActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 127
    iget-object v5, p0, Lcom/prey/activities/SimpleVideoActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 129
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 130
    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/prey/activities/SimpleVideoActivity;->directory:Ljava/io/File;

    .line 131
    iget-object v5, p0, Lcom/prey/activities/SimpleVideoActivity;->directory:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 132
    iget-object v5, p0, Lcom/prey/activities/SimpleVideoActivity;->directory:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 134
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 135
    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/videooutput.mp4"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, "uniqueOutFile":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lcom/prey/activities/SimpleVideoActivity;->directory:Ljava/io/File;

    invoke-direct {v1, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 137
    .local v1, "outFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 138
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 141
    :cond_1
    iget-object v5, p0, Lcom/prey/activities/SimpleVideoActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5, v4}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 144
    iget-object v5, p0, Lcom/prey/activities/SimpleVideoActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v6, 0x140

    const/16 v7, 0xf0

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 145
    iget-object v5, p0, Lcom/prey/activities/SimpleVideoActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v6, p0, Lcom/prey/activities/SimpleVideoActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v6}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 146
    iget-object v5, p0, Lcom/prey/activities/SimpleVideoActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v6, 0x4e20

    invoke-virtual {v5, v6}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 147
    iget-object v5, p0, Lcom/prey/activities/SimpleVideoActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-wide/32 v6, 0x1e8480

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 150
    iget-object v5, p0, Lcom/prey/activities/SimpleVideoActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->prepare()V

    .line 152
    iget-object v5, p0, Lcom/prey/activities/SimpleVideoActivity;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v1    # "outFile":Ljava/io/File;
    .end local v2    # "p":Landroid/hardware/Camera$Parameters;
    .end local v3    # "params":Landroid/hardware/Camera$Parameters;
    .end local v4    # "uniqueOutFile":Ljava/lang/String;
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "causa: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
