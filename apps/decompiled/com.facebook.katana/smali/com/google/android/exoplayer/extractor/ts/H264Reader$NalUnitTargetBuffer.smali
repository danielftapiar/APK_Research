.class final Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;
.super Ljava/lang/Object;
.source "H264Reader.java"


# instance fields
.field public a:[B

.field public b:I

.field private final c:I

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .prologue
    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    iput p1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->c:I

    .line 391
    const/16 v0, 0x84

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->a:[B

    .line 392
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->a:[B

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 393
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->a:[B

    const/4 v1, 0x3

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 394
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 400
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->d:Z

    .line 401
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->e:Z

    .line 402
    return-void
.end method

.method public final a(I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 417
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->d:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 418
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->c:I

    if-ne p1, v0, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->d:Z

    .line 419
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->d:Z

    if-eqz v0, :cond_0

    .line 421
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->b:I

    .line 422
    iput-boolean v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->e:Z

    .line 424
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 417
    goto :goto_0

    :cond_2
    move v1, v2

    .line 418
    goto :goto_1
.end method

.method public final a([BII)V
    .locals 3

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->d:Z

    if-nez v0, :cond_0

    .line 443
    :goto_0
    return-void

    .line 437
    :cond_0
    sub-int v0, p3, p2

    .line 438
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->a:[B

    array-length v1, v1

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->b:I

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_1

    .line 439
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->a:[B

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->b:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->a:[B

    .line 441
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->a:[B

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->b:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 442
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->b:I

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 408
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->e:Z

    return v0
.end method

.method public final b(I)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 453
    iget-boolean v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->d:Z

    if-nez v2, :cond_0

    .line 459
    :goto_0
    return v0

    .line 456
    :cond_0
    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->b:I

    sub-int/2addr v2, p1

    iput v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->b:I

    .line 457
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->d:Z

    .line 458
    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->e:Z

    move v0, v1

    .line 459
    goto :goto_0
.end method
