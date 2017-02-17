.class Lcom/google/android/exoplayer/hls/HlsSampleSource$2;
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

.field final synthetic g:J

.field final synthetic h:J

.field final synthetic i:Lcom/google/android/exoplayer/hls/HlsSampleSource;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/hls/HlsSampleSource;JIILcom/google/android/exoplayer/chunk/Format;JJJJ)V
    .locals 1

    .prologue
    .line 549
    iput-object p1, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$2;->i:Lcom/google/android/exoplayer/hls/HlsSampleSource;

    iput-wide p2, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$2;->a:J

    iput p4, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$2;->b:I

    iput p5, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$2;->c:I

    iput-object p6, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$2;->d:Lcom/google/android/exoplayer/chunk/Format;

    iput-wide p7, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$2;->e:J

    iput-wide p9, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$2;->f:J

    iput-wide p11, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$2;->g:J

    iput-wide p13, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$2;->h:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$2;->i:Lcom/google/android/exoplayer/hls/HlsSampleSource;

    invoke-static {v0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->b(Lcom/google/android/exoplayer/hls/HlsSampleSource;)Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$2;->i:Lcom/google/android/exoplayer/hls/HlsSampleSource;

    invoke-static {v0}, Lcom/google/android/exoplayer/hls/HlsSampleSource;->a(Lcom/google/android/exoplayer/hls/HlsSampleSource;)I

    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$2;->a:J

    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$2;->b:I

    iget v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$2;->c:I

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$2;->d:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$2;->i:Lcom/google/android/exoplayer/hls/HlsSampleSource;

    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$2;->e:J

    iget-object v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$2;->i:Lcom/google/android/exoplayer/hls/HlsSampleSource;

    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$2;->f:J

    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$2;->g:J

    iget-wide v0, p0, Lcom/google/android/exoplayer/hls/HlsSampleSource$2;->h:J

    .line 554
    return-void
.end method
