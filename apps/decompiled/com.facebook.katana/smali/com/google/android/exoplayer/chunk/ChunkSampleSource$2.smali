.class Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;
.super Ljava/lang/Object;
.source "ChunkSampleSource.java"

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

.field final synthetic i:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;JIILcom/google/android/exoplayer/chunk/Format;JJJJ)V
    .locals 1

    .prologue
    .line 600
    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->i:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    iput-wide p2, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->a:J

    iput p4, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->b:I

    iput p5, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->c:I

    iput-object p6, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->d:Lcom/google/android/exoplayer/chunk/Format;

    iput-wide p7, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->e:J

    iput-wide p9, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->f:J

    iput-wide p11, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->g:J

    iput-wide p13, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->h:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->i:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    invoke-static {v0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->b(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;)Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->i:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    invoke-static {v0}, Lcom/google/android/exoplayer/chunk/ChunkSampleSource;->a(Lcom/google/android/exoplayer/chunk/ChunkSampleSource;)I

    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->a:J

    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->b:I

    iget v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->c:I

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->d:Lcom/google/android/exoplayer/chunk/Format;

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->i:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->e:J

    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->i:Lcom/google/android/exoplayer/chunk/ChunkSampleSource;

    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->f:J

    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->g:J

    iget-wide v0, p0, Lcom/google/android/exoplayer/chunk/ChunkSampleSource$2;->h:J

    .line 605
    return-void
.end method
