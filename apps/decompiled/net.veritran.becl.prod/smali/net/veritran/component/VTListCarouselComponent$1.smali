.class Lnet/veritran/component/VTListCarouselComponent$1;
.super Ljava/lang/Object;
.source "VTListCarouselComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/component/VTListCarouselComponent;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/component/VTListCarouselComponent;


# direct methods
.method constructor <init>(Lnet/veritran/component/VTListCarouselComponent;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/component/VTListCarouselComponent;

    .prologue
    .line 127
    iput-object p1, p0, Lnet/veritran/component/VTListCarouselComponent$1;->this$0:Lnet/veritran/component/VTListCarouselComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 131
    iget-object v0, p0, Lnet/veritran/component/VTListCarouselComponent$1;->this$0:Lnet/veritran/component/VTListCarouselComponent;

    # getter for: Lnet/veritran/component/VTListCarouselComponent;->imagesPreloaded:Z
    invoke-static {v0}, Lnet/veritran/component/VTListCarouselComponent;->access$000(Lnet/veritran/component/VTListCarouselComponent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 135
    new-instance v0, Lnet/veritran/component/VTListCarouselComponent$GetImagesAsyncTask;

    iget-object v1, p0, Lnet/veritran/component/VTListCarouselComponent$1;->this$0:Lnet/veritran/component/VTListCarouselComponent;

    invoke-direct {v0, v1, v3}, Lnet/veritran/component/VTListCarouselComponent$GetImagesAsyncTask;-><init>(Lnet/veritran/component/VTListCarouselComponent;Lnet/veritran/component/VTListCarouselComponent$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lnet/veritran/component/VTListCarouselComponent$GetImagesAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 139
    :goto_0
    iget-object v0, p0, Lnet/veritran/component/VTListCarouselComponent$1;->this$0:Lnet/veritran/component/VTListCarouselComponent;

    const/4 v1, 0x1

    # setter for: Lnet/veritran/component/VTListCarouselComponent;->imagesPreloaded:Z
    invoke-static {v0, v1}, Lnet/veritran/component/VTListCarouselComponent;->access$002(Lnet/veritran/component/VTListCarouselComponent;Z)Z

    .line 141
    :cond_0
    return-void

    .line 137
    :cond_1
    new-instance v0, Lnet/veritran/component/VTListCarouselComponent$GetImagesAsyncTask;

    iget-object v1, p0, Lnet/veritran/component/VTListCarouselComponent$1;->this$0:Lnet/veritran/component/VTListCarouselComponent;

    invoke-direct {v0, v1, v3}, Lnet/veritran/component/VTListCarouselComponent$GetImagesAsyncTask;-><init>(Lnet/veritran/component/VTListCarouselComponent;Lnet/veritran/component/VTListCarouselComponent$1;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lnet/veritran/component/VTListCarouselComponent$GetImagesAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
