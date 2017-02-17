.class Lnet/veritran/VTUserApplicationSmart$serializeTask;
.super Ljava/lang/Object;
.source "VTUserApplicationSmart.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/VTUserApplicationSmart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "serializeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private prefix:Ljava/lang/String;

.field private result:Z

.field private sem:Ljava/util/concurrent/Semaphore;

.field final synthetic this$0:Lnet/veritran/VTUserApplicationSmart;


# direct methods
.method public constructor <init>(Lnet/veritran/VTUserApplicationSmart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 1357
    .local p0, "this":Lnet/veritran/VTUserApplicationSmart$serializeTask;, "Lnet/veritran/VTUserApplicationSmart$serializeTask<TT;>;"
    .local p4, "object":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lnet/veritran/VTUserApplicationSmart$serializeTask;->this$0:Lnet/veritran/VTUserApplicationSmart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1347
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lnet/veritran/VTUserApplicationSmart$serializeTask;->sem:Ljava/util/concurrent/Semaphore;

    .line 1358
    iput-object p2, p0, Lnet/veritran/VTUserApplicationSmart$serializeTask;->prefix:Ljava/lang/String;

    .line 1359
    iput-object p3, p0, Lnet/veritran/VTUserApplicationSmart$serializeTask;->name:Ljava/lang/String;

    .line 1360
    iput-object p4, p0, Lnet/veritran/VTUserApplicationSmart$serializeTask;->object:Ljava/lang/Object;

    .line 1363
    :try_start_0
    iget-object v1, p0, Lnet/veritran/VTUserApplicationSmart$serializeTask;->sem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1367
    :goto_0
    return-void

    .line 1364
    :catch_0
    move-exception v0

    .line 1365
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "VTUserApplicationSmart"

    const-string v2, "Semaphore: Interrupted Exception"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getResult()Z
    .locals 3

    .prologue
    .line 1372
    .local p0, "this":Lnet/veritran/VTUserApplicationSmart$serializeTask;, "Lnet/veritran/VTUserApplicationSmart$serializeTask<TT;>;"
    :try_start_0
    iget-object v1, p0, Lnet/veritran/VTUserApplicationSmart$serializeTask;->sem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 1373
    iget-object v1, p0, Lnet/veritran/VTUserApplicationSmart$serializeTask;->sem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1378
    :goto_0
    iget-boolean v1, p0, Lnet/veritran/VTUserApplicationSmart$serializeTask;->result:Z

    return v1

    .line 1374
    :catch_0
    move-exception v0

    .line 1375
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "VTUserApplicationSmart"

    const-string v2, "Semaphore: Interrupted Exception"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 1385
    .local p0, "this":Lnet/veritran/VTUserApplicationSmart$serializeTask;, "Lnet/veritran/VTUserApplicationSmart$serializeTask<TT;>;"
    iget-object v0, p0, Lnet/veritran/VTUserApplicationSmart$serializeTask;->this$0:Lnet/veritran/VTUserApplicationSmart;

    iget-object v1, p0, Lnet/veritran/VTUserApplicationSmart$serializeTask;->prefix:Ljava/lang/String;

    iget-object v2, p0, Lnet/veritran/VTUserApplicationSmart$serializeTask;->name:Ljava/lang/String;

    iget-object v3, p0, Lnet/veritran/VTUserApplicationSmart$serializeTask;->object:Ljava/lang/Object;

    # invokes: Lnet/veritran/VTUserApplicationSmart;->serializeObjectBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z
    invoke-static {v0, v1, v2, v3}, Lnet/veritran/VTUserApplicationSmart;->access$000(Lnet/veritran/VTUserApplicationSmart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/veritran/VTUserApplicationSmart$serializeTask;->result:Z

    .line 1387
    iget-object v0, p0, Lnet/veritran/VTUserApplicationSmart$serializeTask;->sem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1388
    return-void
.end method
