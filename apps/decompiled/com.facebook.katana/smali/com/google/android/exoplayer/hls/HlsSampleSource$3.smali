.class Lcom/google/android/exoplayer/hls/HlsSampleSource$3;
.super Ljava/lang/Object;
.source "HlsSampleSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/google/android/exoplayer/hls/HlsSampleSource;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/hls/HlsSampleSource;J)V
    .locals 0

    .prologue
    .line 561
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$3;->b:Lcom/google/android/exoplayer/hls/HlsSampleSource;

    iput-wide p2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$3;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$3;->b:Lcom/google/android/exoplayer/hls/HlsSampleSource;

    invoke-static {v0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->b(Lcom/google/android/exoplayer/hls/HlsSampleSource;)Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$3;->b:Lcom/google/android/exoplayer/hls/HlsSampleSource;

    invoke-static {v0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->a(Lcom/google/android/exoplayer/hls/HlsSampleSource;)I

    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$3;->a:J

    .line 565
    return-void
.end method
