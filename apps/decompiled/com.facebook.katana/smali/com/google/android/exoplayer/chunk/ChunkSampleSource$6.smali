.class Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;
.super Ljava/lang/Object;
.source "ChunkSampleSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer/chunk/Format;

.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;Lcom/google/android/exoplayer/chunk/Format;IJ)V
    .locals 0

    .prologue
    .line 647
    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;->d:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    iput-object p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;->a:Lcom/google/android/exoplayer/chunk/Format;

    iput p3, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;->b:I

    iput-wide p4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 650
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;->d:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    invoke-static {v0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->b(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;)Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;->d:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    invoke-static {v0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->a(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;)I

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;->a:Lcom/google/android/exoplayer/chunk/Format;

    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;->b:I

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;->d:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$6;->c:J

    .line 652
    return-void
.end method
