.class Lcom/google/android/exoplayer/chunk/ChunkSampleSource$5;
.super Ljava/lang/Object;
.source "ChunkSampleSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;JJ)V
    .locals 0

    .prologue
    .line 634
    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$5;->c:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    iput-wide p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$5;->a:J

    iput-wide p4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$5;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 637
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$5;->c:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    invoke-static {v0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->b(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;)Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$5;->c:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    invoke-static {v0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->a(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;)I

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$5;->c:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$5;->a:J

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$5;->c:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$5;->b:J

    .line 639
    return-void
.end method
