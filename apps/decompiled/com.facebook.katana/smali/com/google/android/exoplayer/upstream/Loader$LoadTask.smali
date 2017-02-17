.class final Lcom/google/android/exoplayer/upstream/Loader$LoadTask;
.super Landroid/os/Handler;
.source "Loader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer/upstream/Loader;

.field private final b:Lcom/google/android/exoplayer/upstream/Loader$Loadable;

.field private final c:Lcom/google/android/exoplayer/upstream/Loader$Callback;

.field private final d:I

.field private volatile e:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/Loader;Landroid/os/Looper;Lcom/google/android/exoplayer/upstream/Loader$Loadable;Lcom/google/android/exoplayer/upstream/Loader$Callback;I)V
    .locals 1

    .prologue
    .line 220
    iput-object p1, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->a:Lcom/google/android/exoplayer/upstream/Loader;

    .line 221
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 222
    iput-object p3, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->b:Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    .line 223
    iput-object p4, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->c:Lcom/google/android/exoplayer/upstream/Loader$Callback;

    .line 224
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->d:I

    .line 225
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->a:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-static {v0}, Lcom/google/android/exoplayer/upstream/Loader;->a(Lcom/google/android/exoplayer/upstream/Loader;)Z

    .line 287
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->a:Lcom/google/android/exoplayer/upstream/Loader;

    invoke-static {v0}, Lcom/google/android/exoplayer/upstream/Loader;->b(Lcom/google/android/exoplayer/upstream/Loader;)Lcom/google/android/exoplayer/upstream/Loader$LoadTask;

    .line 288
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->b:Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/Loader$Loadable;->f()V

    .line 229
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->e:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 232
    :cond_0
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 267
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 268
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 270
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->b()V

    .line 271
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->b:Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/Loader$Loadable;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->c:Lcom/google/android/exoplayer/upstream/Loader$Callback;

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->b:Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/Loader$Callback;->d()V

    .line 283
    :goto_0
    return-void

    .line 275
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 277
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->c:Lcom/google/android/exoplayer/upstream/Loader$Callback;

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->b:Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/upstream/Loader$Callback;->a(Lcom/google/android/exoplayer/upstream/Loader$Loadable;)V

    goto :goto_0

    .line 280
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->c:Lcom/google/android/exoplayer/upstream/Loader$Callback;

    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->b:Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/io/IOException;

    invoke-interface {v1, v2, v0}, Lcom/google/android/exoplayer/upstream/Loader$Callback;->a(Lcom/google/android/exoplayer/upstream/Loader$Loadable;Ljava/io/IOException;)V

    goto :goto_0

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 237
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->e:Ljava/lang/Thread;

    .line 238
    iget v0, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->d:I

    if-lez v0, :cond_0

    .line 239
    iget v0, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->d:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->b:Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/Loader$Loadable;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->b:Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/Loader$Loadable;->h()V

    .line 244
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3

    .line 262
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    invoke-virtual {p0, v3, v0}, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 249
    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->b:Lcom/google/android/exoplayer/upstream/Loader$Loadable;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/Loader$Loadable;->g()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 250
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 251
    :catch_2
    move-exception v0

    .line 253
    const-string v1, "LoadTask"

    const-string v2, "Unexpected exception loading stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    new-instance v1, Lcom/google/android/exoplayer/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p0, v3, v1}, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 255
    :catch_3
    move-exception v0

    .line 259
    const-string v1, "LoadTask"

    const-string v2, "Unexpected error loading stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 261
    throw v0
.end method
