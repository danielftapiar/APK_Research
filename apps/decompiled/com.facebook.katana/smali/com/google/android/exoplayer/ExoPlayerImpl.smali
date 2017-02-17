.class final Lcom/google/android/exoplayer/ExoPlayerImpl;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Lcom/google/android/exoplayer/ExoPlayer;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/google/android/exoplayer/ExoPlayerImplInternal;

.field private final c:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/google/android/exoplayer/ExoPlayer$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final d:[Z

.field private e:Z

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(III)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->e:Z

    .line 57
    iput v2, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->f:I

    .line 58
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 59
    const/4 v1, 0x2

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->d:[Z

    .line 60
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->d:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->d:[Z

    aput-boolean v2, v1, v0

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer/ExoPlayerImpl$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer/ExoPlayerImpl$1;-><init>(Lcom/google/android/exoplayer/ExoPlayerImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->a:Landroid/os/Handler;

    .line 69
    new-instance v0, Lcom/google/android/exoplayer/ExoPlayerImplInternal;

    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->a:Landroid/os/Handler;

    iget-boolean v2, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->e:Z

    iget-object v3, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->d:[Z

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;-><init>(Landroid/os/Handler;Z[ZII)V

    iput-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->b:Lcom/google/android/exoplayer/ExoPlayerImplInternal;

    .line 71
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->f:I

    return v0
.end method

.method public final a(IZ)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->d:[Z

    aget-boolean v0, v0, p1

    if-eq v0, p2, :cond_0

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->d:[Z

    aput-boolean p2, v0, p1

    .line 102
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->b:Lcom/google/android/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a(IZ)V

    .line 104
    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->b:Lcom/google/android/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a(J)V

    .line 136
    return-void
.end method

.method final a(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 184
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 206
    :cond_0
    return-void

    .line 186
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->f:I

    .line 187
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/ExoPlayer$Listener;

    .line 188
    iget-boolean v2, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->e:Z

    iget v3, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->f:I

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer/ExoPlayer$Listener;->a(ZI)V

    goto :goto_0

    .line 193
    :pswitch_1
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->g:I

    .line 194
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->g:I

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    .line 202
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer/ExoPlaybackException;

    .line 203
    iget-object v1, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/ExoPlayer$Listener;

    .line 204
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/ExoPlayer$Listener;->a(Lcom/google/android/exoplayer/ExoPlaybackException;)V

    goto :goto_2

    .line 184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->b:Lcom/google/android/exoplayer/ExoPlayerImplInternal;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    .line 152
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/ExoPlayer$Listener;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->e:Z

    if-eq v0, p1, :cond_0

    .line 114
    iput-boolean p1, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->e:Z

    .line 115
    iget v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->g:I

    .line 116
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->b:Lcom/google/android/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a(Z)V

    .line 117
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/ExoPlayer$Listener;

    .line 118
    iget v2, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->f:I

    invoke-interface {v0, p1, v2}, Lcom/google/android/exoplayer/ExoPlayer$Listener;->a(ZI)V

    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method

.method public final varargs a([Lcom/google/android/exoplayer/TrackRenderer;)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->b:Lcom/google/android/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a([Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 96
    return-void
.end method

.method public final b(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->b:Lcom/google/android/exoplayer/ExoPlayerImplInternal;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->b(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    .line 157
    return-void
.end method

.method public final b(Lcom/google/android/exoplayer/ExoPlayer$Listener;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->c:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->e:Z

    return v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->b:Lcom/google/android/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->d()V

    .line 141
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->b:Lcom/google/android/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->e()V

    .line 146
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 147
    return-void
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->b:Lcom/google/android/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->b:Lcom/google/android/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/exoplayer/ExoPlayerImpl;->b:Lcom/google/android/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/ExoPlayerImplInternal;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()I
    .locals 10

    .prologue
    const-wide/16 v0, 0x64

    const-wide/16 v8, -0x1

    .line 176
    invoke-virtual {p0}, Lcom/google/android/exoplayer/ExoPlayerImpl;->g()J

    move-result-wide v2

    .line 177
    invoke-virtual {p0}, Lcom/google/android/exoplayer/ExoPlayerImpl;->e()J

    move-result-wide v4

    .line 178
    cmp-long v6, v2, v8

    if-eqz v6, :cond_0

    cmp-long v6, v4, v8

    if-nez v6, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    :goto_1
    long-to-int v0, v0

    goto :goto_0

    :cond_2
    mul-long/2addr v0, v2

    div-long/2addr v0, v4

    goto :goto_1
.end method
