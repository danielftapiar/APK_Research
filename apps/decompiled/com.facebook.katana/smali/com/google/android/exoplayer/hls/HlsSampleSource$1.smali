.class Lcom/google/android/exoplayer/hls/HlsSampleSource$1;
.super Ljava/lang/Object;
.source "HlsSampleSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/google/android/exoplayer/chunk/Format;

.field final synthetic e:J

.field final synthetic f:J

.field final synthetic g:Lcom/google/android/exoplayer/hls/HlsSampleSource;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/hls/HlsSampleSource;JIILcom/google/android/exoplayer/chunk/Format;JJ)V
    .locals 1

    .prologue
    .line 535
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$1;->g:Lcom/google/android/exoplayer/hls/HlsSampleSource;

    iput-wide p2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$1;->a:J

    iput p4, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$1;->b:I

    iput p5, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$1;->c:I

    iput-object p6, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$1;->d:Lcom/google/android/exoplayer/chunk/Format;

    iput-wide p7, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$1;->e:J

    iput-wide p9, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$1;->f:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$1;->g:Lcom/google/android/exoplayer/hls/HlsSampleSource;

    invoke-static {v0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->b(Lcom/google/android/exoplayer/hls/HlsSampleSource;)Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$1;->g:Lcom/google/android/exoplayer/hls/HlsSampleSource;

    invoke-static {v0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->a(Lcom/google/android/exoplayer/hls/HlsSampleSource;)I

    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$1;->a:J

    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$1;->b:I

    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$1;->c:I

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$1;->d:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$1;->g:Lcom/google/android/exoplayer/hls/HlsSampleSource;

    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$1;->e:J

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$1;->g:Lcom/google/android/exoplayer/hls/HlsSampleSource;

    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$1;->f:J

    .line 540
    return-void
.end method
