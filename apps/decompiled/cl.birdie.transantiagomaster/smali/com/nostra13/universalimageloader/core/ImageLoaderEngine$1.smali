.class final Lcom/nostra13/universalimageloader/core/ImageLoaderEngine$1;
.super Ljava/lang/Object;
.source "ImageLoaderEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->submit(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

.field final synthetic val$task:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;


# direct methods
.method constructor <init>(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine$1;->this$0:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine$1;->val$task:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 69
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine$1;->this$0:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->discCache:Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine$1;->val$task:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    iget-object v2, v2, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->uri:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 70
    .local v0, "isImageCachedOnDisc":Z
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine$1;->this$0:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    # invokes: Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->initExecutorsIfNeed()V
    invoke-static {v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->access$000(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;)V

    .line 71
    if-eqz v0, :cond_0

    .line 72
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine$1;->this$0:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    # getter for: Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;
    invoke-static {v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->access$100(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;)Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine$1;->val$task:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine$1;->this$0:Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;

    # getter for: Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutor:Ljava/util/concurrent/Executor;
    invoke-static {v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;->access$200(Lcom/nostra13/universalimageloader/core/ImageLoaderEngine;)Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderEngine$1;->val$task:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
