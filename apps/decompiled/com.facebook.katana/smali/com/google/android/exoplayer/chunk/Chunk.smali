.class public abstract Lcom/google/android/exoplayer/chunk/Chunk;
.super Ljava/lang/Object;
.source "Chunk.java"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/Loader$Loadable;


# instance fields
.field public final b:I

.field public final c:I

.field public final d:Lcom/google/android/exoplayer/chunk/Format;

.field public final e:Lcom/google/android/exoplayer/upstream/DataSpec;

.field protected final f:Lcom/google/android/exoplayer/upstream/DataSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;IILcom/google/android/exoplayer/chunk/Format;)V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-static {p1}, Lcom/google/android/exoplayer/util/Assertions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/upstream/DataSource;

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/Chunk;->f:Lcom/google/android/exoplayer/upstream/DataSource;

    .line 107
    invoke-static {p2}, Lcom/google/android/exoplayer/util/Assertions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/upstream/DataSpec;

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/Chunk;->e:Lcom/google/android/exoplayer/upstream/DataSpec;

    .line 108
    iput p3, p0, Lcom/google/android/exoplayer/chunk/Chunk;->b:I

    .line 109
    iput p4, p0, Lcom/google/android/exoplayer/chunk/Chunk;->c:I

    .line 110
    iput-object p5, p0, Lcom/google/android/exoplayer/chunk/Chunk;->d:Lcom/google/android/exoplayer/chunk/Format;

    .line 111
    return-void
.end method


# virtual methods
.method public abstract e()J
.end method
