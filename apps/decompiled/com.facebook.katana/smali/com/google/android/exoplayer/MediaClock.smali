.class Lcom/google/android/exoplayer/MediaClock;
.super Ljava/lang/Object;
.source "MediaClock.java"


# instance fields
.field private a:Z

.field private b:J

.field private c:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(J)J
    .locals 4

    .prologue
    .line 76
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    sub-long/2addr v0, p0

    return-wide v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaClock;->a:Z

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaClock;->a:Z

    .line 46
    iget-wide v0, p0, Lcom/google/android/exoplayer/MediaClock;->b:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/MediaClock;->b(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/MediaClock;->c:J

    .line 48
    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/google/android/exoplayer/MediaClock;->b:J

    .line 65
    invoke-static {p1, p2}, Lcom/google/android/exoplayer/MediaClock;->b(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/MediaClock;->c:J

    .line 66
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaClock;->a:Z

    if-eqz v0, :cond_0

    .line 55
    iget-wide v0, p0, Lcom/google/android/exoplayer/MediaClock;->c:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/MediaClock;->b(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/MediaClock;->b:J

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/MediaClock;->a:Z

    .line 58
    :cond_0
    return-void
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/google/android/exoplayer/MediaClock;->a:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer/MediaClock;->c:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/MediaClock;->b(J)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer/MediaClock;->b:J

    goto :goto_0
.end method
