.class public abstract Lcom/google/android/exoplayer/TrackRenderer;
.super Ljava/lang/Object;
.source "TrackRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(J)I
.end method

.method public a(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 351
    return-void
.end method

.method protected abstract a(JJ)V
.end method

.method protected a(JZ)V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method protected abstract a()Z
.end method

.method protected abstract b(J)V
.end method

.method final b(JZ)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 147
    iget v1, p0, Lcom/google/android/exoplayer/TrackRenderer;->a:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 148
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->a:I

    .line 149
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer/TrackRenderer;->a(JZ)V

    .line 150
    return-void

    .line 147
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract b()Z
.end method

.method final c(J)I
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 115
    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->a:I

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 116
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer/TrackRenderer;->a(J)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->a:I

    .line 117
    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->a:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->a:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->a:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    invoke-static {v2}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 120
    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->a:I

    return v0

    :cond_2
    move v0, v2

    .line 115
    goto :goto_0
.end method

.method protected abstract c()J
.end method

.method protected abstract d()J
.end method

.method protected abstract e()J
.end method

.method protected g()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method protected h()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method protected i()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method protected j()V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method protected o()V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method protected final q()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->a:I

    return v0
.end method

.method final r()V
    .locals 2

    .prologue
    .line 172
    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 173
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->a:I

    .line 174
    invoke-virtual {p0}, Lcom/google/android/exoplayer/TrackRenderer;->h()V

    .line 175
    return-void

    .line 172
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final s()V
    .locals 2

    .prologue
    .line 192
    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 193
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->a:I

    .line 194
    invoke-virtual {p0}, Lcom/google/android/exoplayer/TrackRenderer;->i()V

    .line 195
    return-void

    .line 192
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final t()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 212
    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->a:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 213
    iput v1, p0, Lcom/google/android/exoplayer/TrackRenderer;->a:I

    .line 214
    invoke-virtual {p0}, Lcom/google/android/exoplayer/TrackRenderer;->j()V

    .line 215
    return-void

    .line 212
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final u()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 232
    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->a:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/TrackRenderer;->a:I

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 235
    iput v2, p0, Lcom/google/android/exoplayer/TrackRenderer;->a:I

    .line 236
    invoke-virtual {p0}, Lcom/google/android/exoplayer/TrackRenderer;->o()V

    .line 237
    return-void

    .line 232
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
