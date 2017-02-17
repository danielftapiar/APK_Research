.class public Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;
.super Ljava/lang/Object;
.source "AdtsExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/Extractor;
.implements Lcom/google/android/exoplayer/extractor/SeekMap;


# instance fields
.field private final a:J

.field private final b:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private c:Lcom/google/android/exoplayer/extractor/ts/AdtsReader;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;-><init>(J)V

    .line 44
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide p1, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->a:J

    .line 48
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->b:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->d:Z

    .line 50
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I
    .locals 6

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 68
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->b:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    invoke-interface {p1, v2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->a([B)I

    move-result v2

    .line 69
    if-ne v2, v0, :cond_0

    .line 81
    :goto_0
    return v0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->b:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 75
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->b:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->a(I)V

    .line 79
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->c:Lcom/google/android/exoplayer/extractor/ts/AdtsReader;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->b:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->a:J

    iget-boolean v3, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->d:Z

    invoke-virtual {v0, v2, v4, v5, v3}, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;JZ)V

    .line 80
    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->d:Z

    move v0, v1

    .line 81
    goto :goto_0
.end method

.method public final a(Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->r_(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->c:Lcom/google/android/exoplayer/extractor/ts/AdtsReader;

    .line 55
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->a()V

    .line 56
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->a(Lcom/google/android/exoplayer/extractor/SeekMap;)V

    .line 57
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public final b(J)J
    .locals 2

    .prologue
    .line 93
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->d:Z

    .line 62
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/AdtsExtractor;->c:Lcom/google/android/exoplayer/extractor/ts/AdtsReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/AdtsReader;->a()V

    .line 63
    return-void
.end method
