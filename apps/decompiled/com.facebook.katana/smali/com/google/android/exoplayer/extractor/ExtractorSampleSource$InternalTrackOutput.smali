.class Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;
.super Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;
.source "ExtractorSampleSource.java"


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;Lcom/google/android/exoplayer/upstream/Allocator;)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->a:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;

    .line 556
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;-><init>(Lcom/google/android/exoplayer/upstream/Allocator;)V

    .line 557
    return-void
.end method


# virtual methods
.method public final a(JIII[B)V
    .locals 1

    .prologue
    .line 561
    invoke-super/range {p0 .. p6}, Lcom/google/android/exoplayer/extractor/DefaultTrackOutput;->a(JIII[B)V

    .line 562
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource$InternalTrackOutput;->a:Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;

    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;->a(Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;)I

    .line 563
    return-void
.end method
