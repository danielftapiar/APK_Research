.class public Lcom/prey/actions/camera/CameraAction;
.super Lcom/prey/actions/PreyAction;
.source "CameraAction.java"


# static fields
.field public static final DATA_ID:Ljava/lang/String; = "webcam"

.field public static actionJob:Lcom/prey/actions/observer/ActionJob;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/prey/actions/PreyAction;-><init>()V

    .line 30
    return-void
.end method

.method private existWebcamMessage(Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 64
    const/4 v1, 0x0

    .line 65
    .local v1, "isWebcamMessage":Z
    invoke-virtual {p0}, Lcom/prey/actions/camera/CameraAction;->getConfig()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 66
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 67
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 68
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 69
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v5, "webcam_message"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, ""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 71
    const/4 v1, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    return v1
.end method


# virtual methods
.method public execute(Lcom/prey/actions/observer/ActionJob;Landroid/content/Context;)V
    .locals 5
    .param p1, "actionJob2"    # Lcom/prey/actions/observer/ActionJob;
    .param p2, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prey/exceptions/PreyException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 40
    :try_start_0
    sput-object p1, Lcom/prey/actions/camera/CameraAction;->actionJob:Lcom/prey/actions/observer/ActionJob;

    .line 41
    invoke-static {p2}, Lcom/prey/actions/picture/PictureUtil;->getPicture(Landroid/content/Context;)Lcom/prey/actions/HttpDataService;

    move-result-object v0

    .line 42
    .local v0, "data":Lcom/prey/actions/HttpDataService;
    new-instance v1, Lcom/prey/actions/observer/ActionResult;

    invoke-direct {v1}, Lcom/prey/actions/observer/ActionResult;-><init>()V

    .line 43
    .local v1, "result":Lcom/prey/actions/observer/ActionResult;
    invoke-virtual {v1, v0}, Lcom/prey/actions/observer/ActionResult;->setDataToSend(Lcom/prey/actions/HttpDataService;)V

    .line 44
    sget-object v2, Lcom/prey/actions/camera/CameraAction;->actionJob:Lcom/prey/actions/observer/ActionJob;

    invoke-virtual {v2, v1}, Lcom/prey/actions/observer/ActionJob;->finish(Lcom/prey/actions/observer/ActionResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    sput-object v4, Lcom/prey/activities/SimpleCameraActivity;->activity:Lcom/prey/activities/SimpleCameraActivity;

    .line 47
    sput-object v4, Lcom/prey/activities/SimpleCameraActivity;->dataImagen:[B

    .line 49
    :try_start_1
    sget-object v2, Lcom/prey/activities/SimpleCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 54
    :goto_0
    :try_start_2
    sget-object v2, Lcom/prey/activities/SimpleCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 58
    :goto_1
    sput-object v4, Lcom/prey/activities/SimpleCameraActivity;->camera:Landroid/hardware/Camera;

    .line 59
    sput-object v4, Lcom/prey/activities/SimpleCameraActivity;->mHolder:Landroid/view/SurfaceHolder;

    .line 61
    return-void

    .line 46
    .end local v0    # "data":Lcom/prey/actions/HttpDataService;
    .end local v1    # "result":Lcom/prey/actions/observer/ActionResult;
    :catchall_0
    move-exception v2

    sput-object v4, Lcom/prey/activities/SimpleCameraActivity;->activity:Lcom/prey/activities/SimpleCameraActivity;

    .line 47
    sput-object v4, Lcom/prey/activities/SimpleCameraActivity;->dataImagen:[B

    .line 49
    :try_start_3
    sget-object v3, Lcom/prey/activities/SimpleCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 54
    :goto_2
    :try_start_4
    sget-object v3, Lcom/prey/activities/SimpleCameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 58
    :goto_3
    sput-object v4, Lcom/prey/activities/SimpleCameraActivity;->camera:Landroid/hardware/Camera;

    .line 59
    sput-object v4, Lcom/prey/activities/SimpleCameraActivity;->mHolder:Landroid/view/SurfaceHolder;

    throw v2

    .line 55
    :catch_0
    move-exception v3

    goto :goto_3

    .line 50
    :catch_1
    move-exception v3

    goto :goto_2

    .line 55
    .restart local v0    # "data":Lcom/prey/actions/HttpDataService;
    .restart local v1    # "result":Lcom/prey/actions/observer/ActionResult;
    :catch_2
    move-exception v2

    goto :goto_1

    .line 50
    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x3

    return v0
.end method

.method public isSyncAction()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public shouldNotify()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public textToNotifyUserOnEachReport(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 34
    const-string v0, ""

    return-object v0
.end method
