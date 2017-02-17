.class public final Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;
.super Ljava/lang/Object;
.source "DefaultExtractorInput.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/ExtractorInput;


# static fields
.field private static final a:[B


# instance fields
.field private final b:Lcom/google/android/exoplayer/upstream/DataSource;

.field private c:J

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0x1000

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->a:[B

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;JJ)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->b:Lcom/google/android/exoplayer/upstream/DataSource;

    .line 43
    iput-wide p2, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->c:J

    .line 44
    iput-wide p4, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->d:J

    .line 45
    return-void
.end method


# virtual methods
.method public final a([B)I
    .locals 6

    .prologue
    const/4 v0, -0x1

    .line 49
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->b:Lcom/google/android/exoplayer/upstream/DataSource;

    const/4 v2, 0x0

    const/16 v3, 0xc8

    invoke-interface {v1, p1, v2, v3}, Lcom/google/android/exoplayer/upstream/DataSource;->a([BII)I

    move-result v1

    .line 53
    if-ne v1, v0, :cond_1

    .line 57
    :goto_0
    return v0

    .line 56
    :cond_1
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->c:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->c:J

    move v0, v1

    .line 57
    goto :goto_0
.end method

.method public final a()J
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->c:J

    return-wide v0
.end method

.method public final a(I)V
    .locals 5

    .prologue
    .line 90
    move v0, p1

    .line 91
    :goto_0
    if-lez v0, :cond_2

    .line 92
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->b:Lcom/google/android/exoplayer/upstream/DataSource;

    sget-object v2, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->a:[B

    const/4 v3, 0x0

    sget-object v4, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->a:[B

    array-length v4, v4

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/exoplayer/upstream/DataSource;->a([BII)I

    move-result v1

    .line 96
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 97
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 99
    :cond_1
    sub-int/2addr v0, v1

    .line 100
    goto :goto_0

    .line 101
    :cond_2
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->c:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->c:J

    .line 102
    return-void
.end method

.method public final a([BII)V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->a([BIIZ)Z

    .line 86
    return-void
.end method

.method public final a([BIIZ)Z
    .locals 4

    .prologue
    .line 63
    move v0, p3

    .line 64
    :goto_0
    if-lez v0, :cond_3

    .line 65
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->b:Lcom/google/android/exoplayer/upstream/DataSource;

    invoke-interface {v1, p1, p2, v0}, Lcom/google/android/exoplayer/upstream/DataSource;->a([BII)I

    move-result v1

    .line 69
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 70
    if-eqz p4, :cond_1

    if-ne v0, p3, :cond_1

    .line 71
    const/4 v0, 0x0

    .line 79
    :goto_1
    return v0

    .line 73
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 75
    :cond_2
    add-int/2addr p2, v1

    .line 76
    sub-int/2addr v0, v1

    .line 77
    goto :goto_0

    .line 78
    :cond_3
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->c:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/DefaultExtractorInput;->c:J

    .line 79
    const/4 v0, 0x1

    goto :goto_1
.end method
