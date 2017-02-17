.class public final Lcl/birdie/toolkit/BannerRotator;
.super Ljava/lang/Thread;
.source "BannerRotator.java"


# instance fields
.field hecho:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcl/birdie/toolkit/BannerRotator;->hecho:Z

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 13
    :goto_0
    iget-boolean v1, p0, Lcl/birdie/toolkit/BannerRotator;->hecho:Z

    if-eqz v1, :cond_0

    .line 36
    :goto_1
    return-void

    .line 14
    :cond_0
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v2

    .line 15
    :try_start_0
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->movieBanner:Lcl/birdie/toolkit/GifDecoder;

    if-nez v1, :cond_2

    .line 16
    const/16 v0, 0x3e8

    .line 14
    .local v0, "dormir":I
    :cond_1
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    int-to-long v1, v0

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 32
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 18
    .end local v0    # "dormir":I
    :cond_2
    :try_start_2
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget v3, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->movieFrame:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->movieFrame:I

    .line 19
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget v1, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->movieFrame:I

    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v3, v3, Lcl/birdie/transantiagomaster/PantallaDatos;->movieBanner:Lcl/birdie/toolkit/GifDecoder;

    invoke-virtual {v3}, Lcl/birdie/toolkit/GifDecoder;->getFrameCount()I

    move-result v3

    if-lt v1, v3, :cond_3

    .line 20
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    const/4 v3, 0x0

    iput v3, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->movieFrame:I

    .line 21
    :cond_3
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->movieBanner:Lcl/birdie/toolkit/GifDecoder;

    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget v3, v3, Lcl/birdie/transantiagomaster/PantallaDatos;->movieFrame:I

    invoke-virtual {v1, v3}, Lcl/birdie/toolkit/GifDecoder;->getDelay(I)I

    move-result v0

    .line 22
    .restart local v0    # "dormir":I
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v3, v3, Lcl/birdie/transantiagomaster/PantallaDatos;->movieBanner:Lcl/birdie/toolkit/GifDecoder;

    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget v4, v4, Lcl/birdie/transantiagomaster/PantallaDatos;->movieFrame:I

    invoke-virtual {v3, v4}, Lcl/birdie/toolkit/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->bmpBanner:Landroid/graphics/Bitmap;

    .line 23
    const/4 v1, 0x1

    sput-boolean v1, Lcl/birdie/transantiagomaster/TileHandler;->refresh:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    if-gez v0, :cond_1

    .line 25
    const/4 v0, 0x0

    goto :goto_2

    .line 14
    .end local v0    # "dormir":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
