.class Lcom/google/android/exoplayer/chunk/ChunkSampleSource$4;
.super Ljava/lang/Object;
.source "ChunkSampleSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/io/IOException;

.field final synthetic b:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 623
    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$4;->b:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    iput-object p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$4;->a:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$4;->b:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    invoke-static {v0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->b(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;)Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$4;->b:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    invoke-static {v0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->a(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;)I

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$4;->a:Ljava/io/IOException;

    .line 627
    return-void
.end method
