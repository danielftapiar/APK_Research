.class Lcom/google/android/exoplayer/chunk/ChunkSampleSource$3;
.super Ljava/lang/Object;
.source "ChunkSampleSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;J)V
    .locals 0

    .prologue
    .line 612
    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$3;->b:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    iput-wide p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$3;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$3;->b:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    invoke-static {v0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->b(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;)Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$3;->b:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    invoke-static {v0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->a(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;)I

    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$3;->a:J

    .line 616
    return-void
.end method
