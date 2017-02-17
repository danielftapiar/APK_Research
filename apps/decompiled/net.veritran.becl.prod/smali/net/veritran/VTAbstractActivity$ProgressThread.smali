.class Lnet/veritran/VTAbstractActivity$ProgressThread;
.super Ljava/lang/Thread;
.source "VTAbstractActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/veritran/VTAbstractActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressThread"
.end annotation


# static fields
.field static final STATE_DONE:I = 0x0

.field static final STATE_RUNNING:I = 0x1


# instance fields
.field mHandler:Landroid/os/Handler;

.field mState:I

.field final synthetic this$0:Lnet/veritran/VTAbstractActivity;

.field total:I


# direct methods
.method constructor <init>(Lnet/veritran/VTAbstractActivity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 373
    iput-object p1, p0, Lnet/veritran/VTAbstractActivity$ProgressThread;->this$0:Lnet/veritran/VTAbstractActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 374
    iput-object p2, p0, Lnet/veritran/VTAbstractActivity$ProgressThread;->mHandler:Landroid/os/Handler;

    .line 375
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 378
    iput v4, p0, Lnet/veritran/VTAbstractActivity$ProgressThread;->mState:I

    .line 379
    const/4 v2, 0x0

    iput v2, p0, Lnet/veritran/VTAbstractActivity$ProgressThread;->total:I

    .line 380
    :goto_0
    iget v2, p0, Lnet/veritran/VTAbstractActivity$ProgressThread;->mState:I

    if-ne v2, v4, :cond_0

    .line 382
    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :goto_1
    iget-object v2, p0, Lnet/veritran/VTAbstractActivity$ProgressThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 387
    .local v1, "msg":Landroid/os/Message;
    iget v2, p0, Lnet/veritran/VTAbstractActivity$ProgressThread;->total:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 388
    iget-object v2, p0, Lnet/veritran/VTAbstractActivity$ProgressThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 389
    iget v2, p0, Lnet/veritran/VTAbstractActivity$ProgressThread;->total:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lnet/veritran/VTAbstractActivity$ProgressThread;->total:I

    goto :goto_0

    .line 383
    .end local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "ERROR"

    const-string v3, "Thread Interrupted"

    invoke-static {v2, v3}, Lnet/veritran/vtuserapplication/utils/VTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 391
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 397
    iput p1, p0, Lnet/veritran/VTAbstractActivity$ProgressThread;->mState:I

    .line 398
    return-void
.end method
