.class public final Lcom/google/android/exoplayer/extractor/mp4/Track;
.super Ljava/lang/Object;
.source "Track.java"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:Lcom/google/android/exoplayer/MediaFormat;

.field public final f:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

.field public final g:I


# direct methods
.method public constructor <init>(IIJJLcom/google/android/exoplayer/MediaFormat;[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;I)V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput p1, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->a:I

    .line 91
    iput p2, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->b:I

    .line 92
    iput-wide p3, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->c:J

    .line 93
    iput-wide p5, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->d:J

    .line 94
    iput-object p7, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->e:Lcom/google/android/exoplayer/MediaFormat;

    .line 95
    iput-object p8, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->f:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    .line 96
    iput p9, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->g:I

    .line 97
    return-void
.end method
