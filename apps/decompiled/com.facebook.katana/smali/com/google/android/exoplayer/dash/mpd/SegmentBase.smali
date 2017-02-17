.class public abstract Lcom/google/android/exoplayer/dash/mpd/SegmentBase;
.super Ljava/lang/Object;
.source "SegmentBase.java"


# instance fields
.field final a:Lcom/google/android/exoplayer/dash/mpd/RangedUri;

.field final b:J

.field final c:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/dash/mpd/RangedUri;JJ)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase;->a:Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    .line 42
    iput-wide p2, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase;->b:J

    .line 43
    iput-wide p4, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase;->c:J

    .line 44
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase;->c:J

    iget-wide v2, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase;->b:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer/util/Util;->b(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Lcom/google/android/exoplayer/dash/mpd/Representation;)Lcom/google/android/exoplayer/dash/mpd/RangedUri;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/SegmentBase;->a:Lcom/google/android/exoplayer/dash/mpd/RangedUri;

    return-object v0
.end method
