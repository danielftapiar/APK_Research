.class public Lcom/prey/actions/picture/PictureUtil;
.super Ljava/lang/Object;
.source "PictureUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPicture(Landroid/content/Context;)Lcom/prey/actions/HttpDataService;
    .locals 13
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x1

    .line 31
    const/4 v1, 0x0

    .line 34
    .local v1, "data":Lcom/prey/actions/HttpDataService;
    :try_start_0
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x17

    if-lt v10, v11, :cond_0

    const-string v10, "android.permission.CAMERA"

    .line 35
    invoke-static {p0, v10}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_3

    .line 37
    :cond_0
    const-string v10, "front"

    invoke-static {p0, v10}, Lcom/prey/actions/picture/PictureUtil;->getPicture(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v6

    .line 38
    .local v6, "frontPicture":[B
    new-instance v2, Lcom/prey/actions/HttpDataService;

    const-string v10, "webcam"

    invoke-direct {v2, v10}, Lcom/prey/actions/HttpDataService;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v1    # "data":Lcom/prey/actions/HttpDataService;
    .local v2, "data":Lcom/prey/actions/HttpDataService;
    const/4 v10, 0x1

    :try_start_1
    invoke-virtual {v2, v10}, Lcom/prey/actions/HttpDataService;->setList(Z)V

    .line 40
    if-eqz v6, :cond_1

    .line 41
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "front data length="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 42
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 43
    .local v5, "file":Ljava/io/InputStream;
    new-instance v4, Lcom/prey/net/http/EntityFile;

    invoke-direct {v4}, Lcom/prey/net/http/EntityFile;-><init>()V

    .line 44
    .local v4, "entityFile":Lcom/prey/net/http/EntityFile;
    invoke-virtual {v4, v5}, Lcom/prey/net/http/EntityFile;->setFile(Ljava/io/InputStream;)V

    .line 45
    const-string v10, "image/png"

    invoke-virtual {v4, v10}, Lcom/prey/net/http/EntityFile;->setMimeType(Ljava/lang/String;)V

    .line 46
    const-string v10, "picture.jpg"

    invoke-virtual {v4, v10}, Lcom/prey/net/http/EntityFile;->setName(Ljava/lang/String;)V

    .line 47
    const-string v10, "picture"

    invoke-virtual {v4, v10}, Lcom/prey/net/http/EntityFile;->setType(Ljava/lang/String;)V

    .line 48
    array-length v10, v6

    invoke-virtual {v4, v10}, Lcom/prey/net/http/EntityFile;->setLength(I)V

    .line 49
    invoke-virtual {v2, v4}, Lcom/prey/actions/HttpDataService;->addEntityFile(Lcom/prey/net/http/EntityFile;)V

    .line 51
    .end local v4    # "entityFile":Lcom/prey/net/http/EntityFile;
    .end local v5    # "file":Ljava/io/InputStream;
    :cond_1
    invoke-static {}, Lcom/prey/activities/SimpleCameraActivity;->getNumberOfCameras()Ljava/lang/Integer;

    move-result-object v9

    .line 52
    .local v9, "numberOfCameras":Ljava/lang/Integer;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v10, v12, :cond_2

    .line 53
    const-wide/16 v10, 0x1770

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 54
    const-string v10, "back"

    invoke-static {p0, v10}, Lcom/prey/actions/picture/PictureUtil;->getPicture(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    .line 55
    .local v0, "backPicture":[B
    if-eqz v0, :cond_2

    .line 56
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "back data length="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 57
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 58
    .restart local v5    # "file":Ljava/io/InputStream;
    new-instance v4, Lcom/prey/net/http/EntityFile;

    invoke-direct {v4}, Lcom/prey/net/http/EntityFile;-><init>()V

    .line 59
    .restart local v4    # "entityFile":Lcom/prey/net/http/EntityFile;
    invoke-virtual {v4, v5}, Lcom/prey/net/http/EntityFile;->setFile(Ljava/io/InputStream;)V

    .line 60
    const-string v10, "image/png"

    invoke-virtual {v4, v10}, Lcom/prey/net/http/EntityFile;->setMimeType(Ljava/lang/String;)V

    .line 61
    const-string v10, "screenshot.jpg"

    invoke-virtual {v4, v10}, Lcom/prey/net/http/EntityFile;->setName(Ljava/lang/String;)V

    .line 62
    const-string v10, "screenshot"

    invoke-virtual {v4, v10}, Lcom/prey/net/http/EntityFile;->setType(Ljava/lang/String;)V

    .line 63
    array-length v10, v0

    invoke-virtual {v4, v10}, Lcom/prey/net/http/EntityFile;->setLength(I)V

    .line 64
    invoke-virtual {v2, v4}, Lcom/prey/actions/HttpDataService;->addEntityFile(Lcom/prey/net/http/EntityFile;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0    # "backPicture":[B
    .end local v4    # "entityFile":Lcom/prey/net/http/EntityFile;
    .end local v5    # "file":Ljava/io/InputStream;
    :cond_2
    move-object v1, v2

    .line 68
    .end local v2    # "data":Lcom/prey/actions/HttpDataService;
    .end local v6    # "frontPicture":[B
    .end local v9    # "numberOfCameras":Ljava/lang/Integer;
    .restart local v1    # "data":Lcom/prey/actions/HttpDataService;
    :cond_3
    :try_start_2
    new-instance v7, Landroid/content/Intent;

    const-class v10, Lcom/prey/activities/SimpleCameraActivity;

    invoke-direct {v7, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v7, "intent2":Landroid/content/Intent;
    const/high16 v10, 0x10000000

    invoke-virtual {v7, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 70
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 71
    .local v8, "myKillerBundle":Landroid/os/Bundle;
    const-string v10, "kill"

    const/4 v11, 0x1

    invoke-virtual {v8, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    invoke-virtual {v7, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 79
    .end local v7    # "intent2":Landroid/content/Intent;
    .end local v8    # "myKillerBundle":Landroid/os/Bundle;
    :goto_0
    return-object v1

    .line 76
    :catch_0
    move-exception v3

    .line 77
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v3}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 76
    .end local v1    # "data":Lcom/prey/actions/HttpDataService;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "data":Lcom/prey/actions/HttpDataService;
    .restart local v6    # "frontPicture":[B
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "data":Lcom/prey/actions/HttpDataService;
    .restart local v1    # "data":Lcom/prey/actions/HttpDataService;
    goto :goto_1
.end method

.method private static getPicture(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "focus"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 83
    const/4 v3, 0x0

    .line 84
    .local v3, "mgr":Landroid/media/AudioManager;
    sput-object v8, Lcom/prey/activities/SimpleCameraActivity;->dataImagen:[B

    .line 85
    const/4 v5, 0x1

    .line 86
    .local v5, "streamType":I
    sput-object v8, Lcom/prey/activities/SimpleCameraActivity;->activity:Lcom/prey/activities/SimpleCameraActivity;

    .line 87
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/prey/activities/SimpleCameraActivity;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 89
    const-string v6, "focus"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 91
    const/4 v1, 0x0

    .line 92
    .local v1, "i":I
    const-string v6, "audio"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "mgr":Landroid/media/AudioManager;
    check-cast v3, Landroid/media/AudioManager;

    .line 93
    .restart local v3    # "mgr":Landroid/media/AudioManager;
    invoke-virtual {v3, v5, v7}, Landroid/media/AudioManager;->setStreamSolo(IZ)V

    .line 94
    invoke-virtual {v3, v9}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 95
    invoke-virtual {v3, v5, v7}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 96
    :goto_0
    sget-object v6, Lcom/prey/activities/SimpleCameraActivity;->activity:Lcom/prey/activities/SimpleCameraActivity;

    if-nez v6, :cond_0

    const/16 v6, 0xa

    if-ge v1, v6, :cond_0

    .line 98
    const-wide/16 v6, 0x3e8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_0
    sget-object v6, Lcom/prey/activities/SimpleCameraActivity;->activity:Lcom/prey/activities/SimpleCameraActivity;

    if-eqz v6, :cond_1

    .line 104
    sget-object v6, Lcom/prey/activities/SimpleCameraActivity;->activity:Lcom/prey/activities/SimpleCameraActivity;

    invoke-virtual {v6, p0, p1}, Lcom/prey/activities/SimpleCameraActivity;->takePicture(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    :cond_1
    const-wide/16 v6, 0xfa0

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 110
    :goto_2
    invoke-virtual {v3, v5, v9}, Landroid/media/AudioManager;->setStreamSolo(IZ)V

    .line 111
    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 112
    invoke-virtual {v3, v5, v9}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 114
    const/4 v1, 0x0

    .line 115
    :goto_3
    :try_start_2
    sget-object v6, Lcom/prey/activities/SimpleCameraActivity;->activity:Lcom/prey/activities/SimpleCameraActivity;

    if-eqz v6, :cond_2

    sget-object v6, Lcom/prey/activities/SimpleCameraActivity;->dataImagen:[B

    if-nez v6, :cond_2

    const/4 v6, 0x5

    if-ge v1, v6, :cond_2

    .line 116
    const-wide/16 v6, 0x7d0

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 122
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    const/4 v4, 0x0

    .line 123
    .local v4, "out":[B
    sget-object v6, Lcom/prey/activities/SimpleCameraActivity;->activity:Lcom/prey/activities/SimpleCameraActivity;

    if-eqz v6, :cond_3

    .line 124
    sget-object v4, Lcom/prey/activities/SimpleCameraActivity;->dataImagen:[B

    .line 125
    sget-object v6, Lcom/prey/activities/SimpleCameraActivity;->activity:Lcom/prey/activities/SimpleCameraActivity;

    invoke-virtual {v6}, Lcom/prey/activities/SimpleCameraActivity;->finish()V

    .line 126
    sput-object v8, Lcom/prey/activities/SimpleCameraActivity;->activity:Lcom/prey/activities/SimpleCameraActivity;

    .line 127
    sput-object v8, Lcom/prey/activities/SimpleCameraActivity;->dataImagen:[B

    .line 130
    :cond_3
    return-object v4

    .line 99
    .end local v4    # "out":[B
    :catch_1
    move-exception v6

    goto :goto_1

    .line 108
    :catch_2
    move-exception v6

    goto :goto_2
.end method
