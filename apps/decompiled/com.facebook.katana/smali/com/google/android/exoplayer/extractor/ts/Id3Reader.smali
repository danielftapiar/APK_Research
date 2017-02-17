.class Lcom/google/android/exoplayer/extractor/ts/Id3Reader;
.super Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
.source "Id3Reader.java"


# instance fields
.field private b:Z

.field private c:J

.field private d:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 37
    invoke-static {}, Lcom/google/android/exoplayer/MediaFormat;->a()Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 38
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->b:Z

    .line 43
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/util/ParsableByteArray;JZ)V
    .locals 2

    .prologue
    .line 47
    if-eqz p4, :cond_0

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->b:Z

    .line 49
    iput-wide p2, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->c:J

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->d:I

    .line 52
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->b:Z

    if-eqz v0, :cond_1

    .line 53
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->d:I

    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->a()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->d:I

    .line 54
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->a:Lcom/google/android/exoplayer/extractor/TrackOutput;

    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->a()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 56
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 60
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->a:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->c:J

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->d:I

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(JIII[B)V

    .line 61
    iput-boolean v6, p0, Lcom/google/android/exoplayer/extractor/ts/Id3Reader;->b:Z

    .line 62
    return-void
.end method
