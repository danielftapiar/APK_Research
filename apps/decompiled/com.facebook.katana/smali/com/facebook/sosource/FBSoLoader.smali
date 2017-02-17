.class public Lcom/facebook/sosource/FBSoLoader;
.super Ljava/lang/Object;
.source "FBSoLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Z)V
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 35
    const-class v1, Lcom/facebook/sosource/FBSoLoader;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 37
    if-nez p0, :cond_0

    .line 38
    :try_start_1
    invoke-static {p0, p1}, Lcom/facebook/soloader/SoLoader;->a(Landroid/content/Context;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 68
    :try_start_2
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    :goto_0
    monitor-exit v1

    return-void

    .line 41
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 42
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 46
    :goto_1
    if-eqz p1, :cond_2

    .line 47
    new-instance v0, Lcom/facebook/soloader/ExoSoSource;

    invoke-direct {v0, p0}, Lcom/facebook/soloader/ExoSoSource;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/facebook/soloader/SoLoader;->a(Landroid/content/Context;Lcom/facebook/soloader/SoSource;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 68
    :goto_2
    :try_start_4
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 42
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 48
    :cond_2
    if-eqz v0, :cond_3

    .line 49
    :try_start_5
    new-instance v0, Lcom/facebook/soloader/ApkSoSource;

    invoke-direct {v0, p0}, Lcom/facebook/soloader/ApkSoSource;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/facebook/soloader/SoLoader;->a(Landroid/content/Context;Lcom/facebook/soloader/SoSource;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 65
    :catch_0
    move-exception v0

    .line 66
    :try_start_6
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 68
    :catchall_1
    move-exception v0

    :try_start_7
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 51
    :cond_3
    :try_start_8
    new-instance v0, Lcom/facebook/sosource/DirectorySoSourceWithAssets;

    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v3}, Lcom/facebook/sosource/DirectorySoSourceWithAssets;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 62
    invoke-static {p0, v0}, Lcom/facebook/soloader/SoLoader;->a(Landroid/content/Context;Lcom/facebook/soloader/SoSource;)V

    .line 63
    invoke-virtual {v0}, Lcom/facebook/sosource/DirectorySoSourceWithAssets;->a()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 87
    const-class v0, Lcom/facebook/sosource/FBSoLoader;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/facebook/soloader/SoLoader;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit v0

    return-void

    .line 87
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
