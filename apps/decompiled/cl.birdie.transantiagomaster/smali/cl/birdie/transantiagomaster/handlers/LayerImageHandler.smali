.class public final Lcl/birdie/transantiagomaster/handlers/LayerImageHandler;
.super Ljava/lang/Object;
.source "LayerImageHandler.java"


# static fields
.field private static baseDir:Ljava/lang/String;

.field private static images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcl/birdie/transantiagomaster/newobjetos/LayerImage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcl/birdie/transantiagomaster/handlers/LayerImageHandler;->images:Ljava/util/List;

    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcl/birdie/transantiagomaster/handlers/LayerImageHandler;->baseDir:Ljava/lang/String;

    return-void
.end method

.method public static anadirImagen(Ljava/lang/String;)V
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {p0}, Lcl/birdie/transantiagomaster/handlers/LayerImageHandler;->existeImagen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 45
    :cond_0
    sget-object v2, Lcl/birdie/transantiagomaster/handlers/LayerImageHandler;->images:Ljava/util/List;

    monitor-enter v2

    .line 46
    :try_start_0
    sget-object v1, Lcl/birdie/transantiagomaster/handlers/LayerImageHandler;->images:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 45
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 54
    new-instance v0, Lcl/birdie/transantiagomaster/newobjetos/LayerImage;

    invoke-direct {v0}, Lcl/birdie/transantiagomaster/newobjetos/LayerImage;-><init>()V

    .line 55
    .local v0, "img":Lcl/birdie/transantiagomaster/newobjetos/LayerImage;
    iput-object p0, v0, Lcl/birdie/transantiagomaster/newobjetos/LayerImage;->url:Ljava/lang/String;

    .line 56
    invoke-static {p0}, Lcl/birdie/transantiagomaster/handlers/LayerImageHandler;->construyeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcl/birdie/transantiagomaster/newobjetos/LayerImage;->filename:Ljava/lang/String;

    .line 57
    const/4 v1, 0x0

    iput v1, v0, Lcl/birdie/transantiagomaster/newobjetos/LayerImage;->state:I

    .line 58
    sget-object v2, Lcl/birdie/transantiagomaster/handlers/LayerImageHandler;->images:Ljava/util/List;

    monitor-enter v2

    .line 59
    :try_start_1
    sget-object v1, Lcl/birdie/transantiagomaster/handlers/LayerImageHandler;->images:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 46
    .end local v0    # "img":Lcl/birdie/transantiagomaster/newobjetos/LayerImage;
    :cond_2
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcl/birdie/transantiagomaster/newobjetos/LayerImage;

    .line 47
    iget-object v1, v1, Lcl/birdie/transantiagomaster/newobjetos/LayerImage;->url:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 45
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static construyeFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "lastPath":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcl/birdie/transantiagomaster/handlers/LayerImageHandler;->baseDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static existeImagen(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 85
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcl/birdie/transantiagomaster/handlers/LayerImageHandler;->construyeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "fname":Ljava/lang/String;
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    .end local v0    # "fname":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "fname":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static inicializar$faab20d()V
    .locals 5

    .prologue
    .line 20
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->TMCacheDir:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/images/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcl/birdie/transantiagomaster/handlers/LayerImageHandler;->baseDir:Ljava/lang/String;

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "usando baseDir "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcl/birdie/transantiagomaster/handlers/LayerImageHandler;->baseDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcl/birdie/transantiagomaster/handlers/LayerImageHandler;->baseDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 26
    const-string v2, "LayerImageHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "creando directorio "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcl/birdie/transantiagomaster/handlers/LayerImageHandler;->baseDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LayerImageHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "excepcion inicializar: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static procesar(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;)V
    .locals 7
    .param p0, "listener"    # Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    .prologue
    .line 68
    sget-object v2, Lcl/birdie/transantiagomaster/handlers/LayerImageHandler;->images:Ljava/util/List;

    monitor-enter v2

    .line 69
    :try_start_0
    sget-object v1, Lcl/birdie/transantiagomaster/handlers/LayerImageHandler;->images:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 68
    monitor-exit v2

    return-void

    .line 69
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/newobjetos/LayerImage;

    .line 70
    .local v0, "img":Lcl/birdie/transantiagomaster/newobjetos/LayerImage;
    iget v3, v0, Lcl/birdie/transantiagomaster/newobjetos/LayerImage;->state:I

    if-eqz v3, :cond_2

    iget v3, v0, Lcl/birdie/transantiagomaster/newobjetos/LayerImage;->state:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 71
    :cond_2
    new-instance v3, Lcl/birdie/transantiagomaster/handlers/DescargadorImagenLayer;

    invoke-direct {v3, v0, p0}, Lcl/birdie/transantiagomaster/handlers/DescargadorImagenLayer;-><init>(Lcl/birdie/transantiagomaster/newobjetos/LayerImage;Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, v0, Lcl/birdie/transantiagomaster/newobjetos/LayerImage;->url:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcl/birdie/transantiagomaster/handlers/DescargadorImagenLayer;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 68
    .end local v0    # "img":Lcl/birdie/transantiagomaster/newobjetos/LayerImage;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
