.class Lnet/veritran/VTUserApplicationSmart$deserializeTask;
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
    name = "deserializeTask"
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
.field private ex:Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException;

.field private name:Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private sem:Ljava/util/concurrent/Semaphore;

.field final synthetic this$0:Lnet/veritran/VTUserApplicationSmart;

.field private type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/veritran/VTUserApplicationSmart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1407
    .local p0, "this":Lnet/veritran/VTUserApplicationSmart$deserializeTask;, "Lnet/veritran/VTUserApplicationSmart$deserializeTask<TT;>;"
    .local p4, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iput-object p1, p0, Lnet/veritran/VTUserApplicationSmart$deserializeTask;->this$0:Lnet/veritran/VTUserApplicationSmart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1394
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lnet/veritran/VTUserApplicationSmart$deserializeTask;->sem:Ljava/util/concurrent/Semaphore;

    .line 1403
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/veritran/VTUserApplicationSmart$deserializeTask;->ex:Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException;

    .line 1408
    iput-object p2, p0, Lnet/veritran/VTUserApplicationSmart$deserializeTask;->prefix:Ljava/lang/String;

    .line 1409
    iput-object p3, p0, Lnet/veritran/VTUserApplicationSmart$deserializeTask;->name:Ljava/lang/String;

    .line 1410
    iput-object p4, p0, Lnet/veritran/VTUserApplicationSmart$deserializeTask;->type:Ljava/lang/Class;

    .line 1413
    :try_start_0
    iget-object v1, p0, Lnet/veritran/VTUserApplicationSmart$deserializeTask;->sem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1417
    :goto_0
    return-void

    .line 1414
    :catch_0
    move-exception v0

    .line 1415
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "VTUserApplicationSmart"

    const-string v2, "Semaphore: Interrupted Exception"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1422
    .local p0, "this":Lnet/veritran/VTUserApplicationSmart$deserializeTask;, "Lnet/veritran/VTUserApplicationSmart$deserializeTask<TT;>;"
    :try_start_0
    iget-object v1, p0, Lnet/veritran/VTUserApplicationSmart$deserializeTask;->sem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 1423
    iget-object v1, p0, Lnet/veritran/VTUserApplicationSmart$deserializeTask;->sem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1428
    :goto_0
    iget-object v1, p0, Lnet/veritran/VTUserApplicationSmart$deserializeTask;->ex:Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException;

    if-eqz v1, :cond_0

    .line 1430
    iget-object v1, p0, Lnet/veritran/VTUserApplicationSmart$deserializeTask;->ex:Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException;

    throw v1

    .line 1424
    :catch_0
    move-exception v0

    .line 1425
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "VTUserApplicationSmart"

    const-string v2, "CDLDS: Interrupted Exception"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1433
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    iget-object v1, p0, Lnet/veritran/VTUserApplicationSmart$deserializeTask;->result:Ljava/lang/Object;

    return-object v1
.end method

.method public run()V
    .locals 5

    .prologue
    .line 1442
    .local p0, "this":Lnet/veritran/VTUserApplicationSmart$deserializeTask;, "Lnet/veritran/VTUserApplicationSmart$deserializeTask<TT;>;"
    :try_start_0
    iget-object v1, p0, Lnet/veritran/VTUserApplicationSmart$deserializeTask;->this$0:Lnet/veritran/VTUserApplicationSmart;

    iget-object v2, p0, Lnet/veritran/VTUserApplicationSmart$deserializeTask;->prefix:Ljava/lang/String;

    iget-object v3, p0, Lnet/veritran/VTUserApplicationSmart$deserializeTask;->name:Ljava/lang/String;

    iget-object v4, p0, Lnet/veritran/VTUserApplicationSmart$deserializeTask;->type:Ljava/lang/Class;

    # invokes: Lnet/veritran/VTUserApplicationSmart;->deserializeObjectBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v1, v2, v3, v4}, Lnet/veritran/VTUserApplicationSmart;->access$100(Lnet/veritran/VTUserApplicationSmart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lnet/veritran/VTUserApplicationSmart$deserializeTask;->result:Ljava/lang/Object;
    :try_end_0
    .catch Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1451
    :goto_0
    iget-object v1, p0, Lnet/veritran/VTUserApplicationSmart$deserializeTask;->sem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1452
    return-void

    .line 1445
    :catch_0
    move-exception v0

    .line 1447
    .local v0, "ex":Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException;
    iput-object v0, p0, Lnet/veritran/VTUserApplicationSmart$deserializeTask;->ex:Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException;

    goto :goto_0
.end method
