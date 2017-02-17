.class Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter$1;
.super Ljava/lang/Object;
.source "DefaultBandwidthMeter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;IJJ)V
    .locals 1

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter$1;->d:Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;

    iput p2, p0, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter$1;->a:I

    iput-wide p3, p0, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter$1;->b:J

    iput-wide p5, p0, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter$1;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter$1;->d:Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;

    invoke-static {v0}, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;->a(Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;)Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;

    iget v0, p0, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter$1;->a:I

    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter$1;->b:J

    iget-wide v0, p0, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter$1;->c:J

    .line 112
    return-void
.end method
