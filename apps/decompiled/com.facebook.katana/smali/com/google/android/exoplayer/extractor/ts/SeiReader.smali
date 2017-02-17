.class Lcom/google/android/exoplayer/extractor/ts/SeiReader;
.super Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
.source "SeiReader.java"


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 34
    invoke-static {}, Lcom/google/android/exoplayer/MediaFormat;->b()Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 35
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/util/ParsableByteArray;JZ)V
    .locals 10

    .prologue
    const/16 v8, 0xff

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 45
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    .line 48
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->a()I

    move-result v0

    if-le v0, v4, :cond_3

    move v0, v6

    .line 52
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->d()I

    move-result v1

    .line 53
    add-int/2addr v0, v1

    .line 54
    if-eq v1, v8, :cond_0

    move v5, v6

    .line 58
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->d()I

    move-result v1

    .line 59
    add-int/2addr v5, v1

    .line 60
    if-eq v1, v8, :cond_1

    .line 62
    invoke-static {v0, v5, p1}, Lcom/google/android/exoplayer/text/eia608/Eia608Parser;->a(IILcom/google/android/exoplayer/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/SeiReader;->a:Lcom/google/android/exoplayer/extractor/TrackOutput;

    invoke-interface {v0, p1, v5}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 64
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/SeiReader;->a:Lcom/google/android/exoplayer/extractor/TrackOutput;

    const/4 v7, 0x0

    move-wide v2, p2

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(JIII[B)V

    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    goto :goto_0

    .line 69
    :cond_3
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method
