.class Lcom/google/android/exoplayer/hls/HlsSampleSource$5;
.super Ljava/lang/Object;
.source "HlsSampleSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer/chunk/Format;

.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:Lcom/google/android/exoplayer/hls/HlsSampleSource;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/hls/HlsSampleSource;Lcom/google/android/exoplayer/chunk/Format;IJ)V
    .locals 0

    .prologue
    .line 584
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$5;->d:Lcom/google/android/exoplayer/hls/HlsSampleSource;

    iput-object p2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$5;->a:Lcom/google/android/exoplayer/chunk/Format;

    iput p3, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$5;->b:I

    iput-wide p4, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$5;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$5;->d:Lcom/google/android/exoplayer/hls/HlsSampleSource;

    invoke-static {v0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->b(Lcom/google/android/exoplayer/hls/HlsSampleSource;)Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$5;->d:Lcom/google/android/exoplayer/hls/HlsSampleSource;

    invoke-static {v0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->a(Lcom/google/android/exoplayer/hls/HlsSampleSource;)I

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$5;->a:Lcom/google/android/exoplayer/chunk/Format;

    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$5;->b:I

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$5;->d:Lcom/google/android/exoplayer/hls/HlsSampleSource;

    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$5;->c:J

    .line 589
    return-void
.end method
