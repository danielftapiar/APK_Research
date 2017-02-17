.class public Lnet/veritran/utils/SessionImageHandler;
.super Ljava/lang/Object;
.source "SessionImageHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SessionImageHandler"


# instance fields
.field private sessionImages:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private svgImages:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private svgImagesSizes:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnet/veritran/utils/SessionImageHandler;->sessionImages:Ljava/util/Hashtable;

    .line 26
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnet/veritran/utils/SessionImageHandler;->svgImages:Ljava/util/Hashtable;

    .line 27
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnet/veritran/utils/SessionImageHandler;->svgImagesSizes:Ljava/util/Hashtable;

    .line 32
    return-void
.end method

.method private cleanImageFolder()V
    .locals 5

    .prologue
    .line 355
    invoke-direct {p0}, Lnet/veritran/utils/SessionImageHandler;->getSessionImageFolder()Ljava/io/File;

    move-result-object v1

    .line 357
    .local v1, "sessionImageFolder":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 358
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 357
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 360
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private deleteImage(Ljava/lang/String;)Z
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 45
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1
.end method

.method private generateImageFileName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 87
    invoke-direct {p0}, Lnet/veritran/utils/SessionImageHandler;->getSessionImageFolder()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "pathCachedImages":Ljava/lang/String;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSessionImageFolder()Ljava/io/File;
    .locals 3

    .prologue
    .line 82
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/VTUserApplicationSmart;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "images"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private saveImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "b"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "out":Ljava/io/FileOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 56
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 57
    return-void
.end method

.method private saveImage(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 62
    .local v1, "out":Ljava/io/FileOutputStream;
    const/16 v3, 0x1000

    new-array v0, v3, [B

    .line 67
    .local v0, "buffer":[B
    :goto_0
    :try_start_0
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "read":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 68
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 73
    .end local v2    # "read":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v3

    .restart local v2    # "read":I
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 78
    return-void
.end method


# virtual methods
.method public cleanAll()V
    .locals 1

    .prologue
    .line 363
    invoke-direct {p0}, Lnet/veritran/utils/SessionImageHandler;->cleanImageFolder()V

    .line 365
    iget-object v0, p0, Lnet/veritran/utils/SessionImageHandler;->sessionImages:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 366
    iget-object v0, p0, Lnet/veritran/utils/SessionImageHandler;->svgImages:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 367
    iget-object v0, p0, Lnet/veritran/utils/SessionImageHandler;->svgImagesSizes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 368
    return-void
.end method

.method public containsImage(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "idImg"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v0, p0, Lnet/veritran/utils/SessionImageHandler;->sessionImages:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public deleteIdImage(Ljava/lang/String;)Z
    .locals 2
    .param p1, "idImage"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lnet/veritran/utils/SessionImageHandler;->getImageFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "nameFile":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 38
    iget-object v1, p0, Lnet/veritran/utils/SessionImageHandler;->sessionImages:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-direct {p0, v0}, Lnet/veritran/utils/SessionImageHandler;->deleteImage(Ljava/lang/String;)Z

    move-result v1

    .line 41
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getImageFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "idImg"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v0, p0, Lnet/veritran/utils/SessionImageHandler;->sessionImages:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSvgFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "idImg"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v0, p0, Lnet/veritran/utils/SessionImageHandler;->svgImages:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSvgSize(Ljava/lang/String;)[I
    .locals 2
    .param p1, "idImg"    # Ljava/lang/String;

    .prologue
    .line 107
    iget-object v0, p0, Lnet/veritran/utils/SessionImageHandler;->svgImagesSizes:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public initializeSavedSVGImage(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 344
    iget-object v1, p0, Lnet/veritran/utils/SessionImageHandler;->svgImages:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lnet/veritran/utils/SessionImageHandler;->svgImages:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lnet/veritran/utils/SessionImageHandler;->deleteImage(Ljava/lang/String;)Z

    .line 349
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v2

    invoke-virtual {v2, p1}, Lnet/veritran/VTUserApplicationSmart;->getConfigurationResourceFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".svg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "filename":Ljava/lang/String;
    iget-object v1, p0, Lnet/veritran/utils/SessionImageHandler;->svgImages:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    return-void
.end method

.method public initializeSavedSessionImage(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 332
    iget-object v1, p0, Lnet/veritran/utils/SessionImageHandler;->sessionImages:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    iget-object v1, p0, Lnet/veritran/utils/SessionImageHandler;->sessionImages:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lnet/veritran/utils/SessionImageHandler;->deleteImage(Ljava/lang/String;)Z

    .line 337
    :cond_0
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/veritran/VTUserApplicationSmart;->getConfigurationResourceFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "filename":Ljava/lang/String;
    iget-object v1, p0, Lnet/veritran/utils/SessionImageHandler;->sessionImages:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    return-void
.end method

.method public putImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 282
    invoke-direct {p0}, Lnet/veritran/utils/SessionImageHandler;->generateImageFileName()Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "filename":Ljava/lang/String;
    const-string v2, "SessionImageHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "putSessionImage() Bitmap filename: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :try_start_0
    iget-object v2, p0, Lnet/veritran/utils/SessionImageHandler;->sessionImages:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    iget-object v2, p0, Lnet/veritran/utils/SessionImageHandler;->sessionImages:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lnet/veritran/utils/SessionImageHandler;->deleteImage(Ljava/lang/String;)Z

    .line 293
    :cond_0
    invoke-direct {p0, v1, p2}, Lnet/veritran/utils/SessionImageHandler;->saveImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 294
    iget-object v2, p0, Lnet/veritran/utils/SessionImageHandler;->sessionImages:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v2, "SessionImageHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "putSessionImage() Bitmap saved OK "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_0
    return-void

    .line 298
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "SessionImageHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "putSessionImage() Bitmap error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public putImage(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;

    .prologue
    .line 306
    invoke-direct {p0}, Lnet/veritran/utils/SessionImageHandler;->generateImageFileName()Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, "filename":Ljava/lang/String;
    const-string v2, "SessionImageHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "putSessionImage() InputStream filename: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :try_start_0
    iget-object v2, p0, Lnet/veritran/utils/SessionImageHandler;->sessionImages:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    iget-object v2, p0, Lnet/veritran/utils/SessionImageHandler;->sessionImages:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lnet/veritran/utils/SessionImageHandler;->deleteImage(Ljava/lang/String;)Z

    .line 317
    :cond_0
    invoke-direct {p0, v1, p2}, Lnet/veritran/utils/SessionImageHandler;->saveImage(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 318
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 320
    iget-object v2, p0, Lnet/veritran/utils/SessionImageHandler;->sessionImages:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string v2, "SessionImageHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "putSessionImage() InputStream() saved OK "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_0
    return-void

    .line 324
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "SessionImageHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "putSessionImage() InputStream() error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public putImageBase64(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 9
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "base64Data"    # Ljava/lang/StringBuffer;

    .prologue
    .line 116
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v6

    invoke-virtual {v6, p1}, Lnet/veritran/VTUserApplicationSmart;->getConfigurationResourceFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "filename":Ljava/lang/String;
    const-string v6, "SessionImageHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "putSessionImageBase64 filename: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v1, 0x0

    .line 122
    .local v1, "fileOut":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 126
    .local v4, "out":Ljava/io/BufferedOutputStream;
    :try_start_0
    iget-object v6, p0, Lnet/veritran/utils/SessionImageHandler;->sessionImages:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 128
    iget-object v6, p0, Lnet/veritran/utils/SessionImageHandler;->sessionImages:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lnet/veritran/utils/SessionImageHandler;->deleteImage(Ljava/lang/String;)Z

    .line 133
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .end local v1    # "fileOut":Ljava/io/FileOutputStream;
    .local v2, "fileOut":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 140
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .local v5, "out":Ljava/io/BufferedOutputStream;
    :try_start_2
    invoke-static {p2, v5}, Lnet/veritran/vtuserapplication/utils/Base64;->decode(Ljava/lang/StringBuffer;Ljava/io/OutputStream;)V

    .line 143
    iget-object v6, p0, Lnet/veritran/utils/SessionImageHandler;->sessionImages:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v6, "SessionImageHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "putSessionImageBase64 saved OK "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 153
    if-eqz v5, :cond_1

    .line 156
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 163
    :cond_1
    :goto_0
    if-eqz v2, :cond_6

    .line 166
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v4, v5

    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .line 173
    .end local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOut":Ljava/io/FileOutputStream;
    :cond_2
    :goto_1
    return-void

    .line 157
    .end local v1    # "fileOut":Ljava/io/FileOutputStream;
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "SessionImageHandler"

    const-string v7, "Catched exception empty (fortify)"

    invoke-static {v6, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 167
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 168
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "SessionImageHandler"

    const-string v7, "Catched exception empty (fortify)"

    invoke-static {v6, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .line 170
    .end local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOut":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 147
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 149
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v6, "SessionImageHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "putSessionImageBase64 error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 153
    if-eqz v4, :cond_3

    .line 156
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 163
    :cond_3
    :goto_3
    if-eqz v1, :cond_2

    .line 166
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 167
    :catch_3
    move-exception v0

    .line 168
    const-string v6, "SessionImageHandler"

    const-string v7, "Catched exception empty (fortify)"

    invoke-static {v6, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 157
    :catch_4
    move-exception v0

    .line 158
    const-string v6, "SessionImageHandler"

    const-string v7, "Catched exception empty (fortify)"

    invoke-static {v6, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 153
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v4, :cond_4

    .line 156
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 163
    :cond_4
    :goto_5
    if-eqz v1, :cond_5

    .line 166
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 170
    :cond_5
    :goto_6
    throw v6

    .line 157
    :catch_5
    move-exception v0

    .line 158
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "SessionImageHandler"

    const-string v8, "Catched exception empty (fortify)"

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 167
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 168
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "SessionImageHandler"

    const-string v8, "Catched exception empty (fortify)"

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 153
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOut":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOut":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v1    # "fileOut":Ljava/io/FileOutputStream;
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .end local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOut":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 147
    .end local v1    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOut":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOut":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v1    # "fileOut":Ljava/io/FileOutputStream;
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    :catch_8
    move-exception v0

    move-object v4, v5

    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .end local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOut":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v1    # "fileOut":Ljava/io/FileOutputStream;
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    :cond_6
    move-object v4, v5

    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .end local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOut":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public putPublicImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 9
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "b"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x0

    .line 239
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 240
    .local v5, "values":Landroid/content/ContentValues;
    const-string v6, "mime_type"

    const-string v7, "image/png"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const/4 v4, 0x0

    .line 243
    .local v4, "url":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 247
    .local v3, "stringUrl":Ljava/lang/String;
    :try_start_0
    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v6, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 249
    if-eqz p2, :cond_2

    .line 250
    new-instance v1, Ljava/io/File;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 253
    invoke-virtual {p1, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 255
    .local v2, "imageOut":Ljava/io/OutputStream;
    :try_start_1
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {p2, v6, v7, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 272
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "imageOut":Ljava/io/OutputStream;
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 273
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 276
    :cond_1
    const-string v6, "SharedLibrary"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "url: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-object v3

    .line 257
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "imageOut":Ljava/io/OutputStream;
    :catchall_0
    move-exception v6

    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    throw v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 265
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "imageOut":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/Exception;
    if-eqz v4, :cond_0

    .line 267
    invoke-virtual {p1, v4, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 268
    const/4 v4, 0x0

    goto :goto_0

    .line 262
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_4
    invoke-virtual {p1, v4, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 263
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public putSvgImageBase64(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 9
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "base64Data"    # Ljava/lang/StringBuffer;

    .prologue
    .line 177
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v7

    invoke-virtual {v7, p1}, Lnet/veritran/VTUserApplicationSmart;->getConfigurationResourceFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".svg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, "filename":Ljava/lang/String;
    const-string v6, "SessionImageHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "putSvgImageBase64 filename: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const/4 v1, 0x0

    .line 183
    .local v1, "fileOut":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 187
    .local v4, "out":Ljava/io/BufferedOutputStream;
    :try_start_0
    iget-object v6, p0, Lnet/veritran/utils/SessionImageHandler;->svgImages:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 189
    iget-object v6, p0, Lnet/veritran/utils/SessionImageHandler;->svgImages:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lnet/veritran/utils/SessionImageHandler;->deleteImage(Ljava/lang/String;)Z

    .line 194
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    .end local v1    # "fileOut":Ljava/io/FileOutputStream;
    .local v2, "fileOut":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 201
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .local v5, "out":Ljava/io/BufferedOutputStream;
    :try_start_2
    invoke-static {p2, v5}, Lnet/veritran/vtuserapplication/utils/Base64;->decode(Ljava/lang/StringBuffer;Ljava/io/OutputStream;)V

    .line 204
    iget-object v6, p0, Lnet/veritran/utils/SessionImageHandler;->svgImages:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v6, "SessionImageHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "putSvgImageBase64 saved OK "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 214
    if-eqz v5, :cond_1

    .line 217
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 224
    :cond_1
    :goto_0
    if-eqz v2, :cond_6

    .line 227
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v4, v5

    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .line 234
    .end local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOut":Ljava/io/FileOutputStream;
    :cond_2
    :goto_1
    return-void

    .line 218
    .end local v1    # "fileOut":Ljava/io/FileOutputStream;
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "SessionImageHandler"

    const-string v7, "Catched exception empty (fortify)"

    invoke-static {v6, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 228
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 229
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "SessionImageHandler"

    const-string v7, "Catched exception empty (fortify)"

    invoke-static {v6, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .line 231
    .end local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOut":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 208
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 210
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v6, "SessionImageHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "putSvgImageBase64 error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 214
    if-eqz v4, :cond_3

    .line 217
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 224
    :cond_3
    :goto_3
    if-eqz v1, :cond_2

    .line 227
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 228
    :catch_3
    move-exception v0

    .line 229
    const-string v6, "SessionImageHandler"

    const-string v7, "Catched exception empty (fortify)"

    invoke-static {v6, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 218
    :catch_4
    move-exception v0

    .line 219
    const-string v6, "SessionImageHandler"

    const-string v7, "Catched exception empty (fortify)"

    invoke-static {v6, v7}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 214
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v4, :cond_4

    .line 217
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 224
    :cond_4
    :goto_5
    if-eqz v1, :cond_5

    .line 227
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 231
    :cond_5
    :goto_6
    throw v6

    .line 218
    :catch_5
    move-exception v0

    .line 219
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "SessionImageHandler"

    const-string v8, "Catched exception empty (fortify)"

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 228
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 229
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "SessionImageHandler"

    const-string v8, "Catched exception empty (fortify)"

    invoke-static {v7, v8}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 214
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOut":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOut":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v1    # "fileOut":Ljava/io/FileOutputStream;
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .end local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOut":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 208
    .end local v1    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOut":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOut":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v1    # "fileOut":Ljava/io/FileOutputStream;
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    :catch_8
    move-exception v0

    move-object v4, v5

    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .end local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOut":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v1    # "fileOut":Ljava/io/FileOutputStream;
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    :cond_6
    move-object v4, v5

    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    move-object v1, v2

    .end local v2    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOut":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setSvgSize(Ljava/lang/String;[I)[I
    .locals 2
    .param p1, "idImg"    # Ljava/lang/String;
    .param p2, "size"    # [I

    .prologue
    .line 102
    iget-object v0, p0, Lnet/veritran/utils/SessionImageHandler;->svgImagesSizes:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
