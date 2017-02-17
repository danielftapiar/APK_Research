.class Lnet/veritran/utils/ImageHandler$DownloadImageAsync;
.super Ljava/lang/Object;
.source "ImageHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/utils/ImageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadImageAsync"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private result:Z

.field private sem:Ljava/util/concurrent/Semaphore;

.field final synthetic this$0:Lnet/veritran/utils/ImageHandler;


# direct methods
.method public constructor <init>(Lnet/veritran/utils/ImageHandler;Ljava/lang/String;)V
    .locals 3
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lnet/veritran/utils/ImageHandler$DownloadImageAsync;->this$0:Lnet/veritran/utils/ImageHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lnet/veritran/utils/ImageHandler$DownloadImageAsync;->sem:Ljava/util/concurrent/Semaphore;

    .line 54
    iput-object p2, p0, Lnet/veritran/utils/ImageHandler$DownloadImageAsync;->name:Ljava/lang/String;

    .line 56
    :try_start_0
    iget-object v1, p0, Lnet/veritran/utils/ImageHandler$DownloadImageAsync;->sem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "ImageHandler"

    const-string v2, "Semaphore: Interrupted Exception"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getResult()Z
    .locals 3

    .prologue
    .line 65
    :try_start_0
    iget-object v1, p0, Lnet/veritran/utils/ImageHandler$DownloadImageAsync;->sem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 66
    iget-object v1, p0, Lnet/veritran/utils/ImageHandler$DownloadImageAsync;->sem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    iget-boolean v1, p0, Lnet/veritran/utils/ImageHandler$DownloadImageAsync;->result:Z

    return v1

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "ImageHandler"

    const-string v2, "Semaphore: Interrupted Exception"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 78
    iget-object v0, p0, Lnet/veritran/utils/ImageHandler$DownloadImageAsync;->this$0:Lnet/veritran/utils/ImageHandler;

    iget-object v1, p0, Lnet/veritran/utils/ImageHandler$DownloadImageAsync;->name:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lnet/veritran/utils/ImageHandler;->preLoadImage(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 80
    iget-object v0, p0, Lnet/veritran/utils/ImageHandler$DownloadImageAsync;->sem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 81
    return-void
.end method
