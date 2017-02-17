.class Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;
.super Lcom/google/android/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;
.source "TsExtractor.java"


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

.field private final b:Lcom/google/android/exoplayer/util/ParsableBitArray;

.field private final c:Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:I

.field private i:I

.field private j:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/ts/TsExtractor;Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 393
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->a:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$TsPayloadReader;-><init>(B)V

    .line 394
    iput-object p2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->c:Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;

    .line 395
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v1, 0x9

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->b:Lcom/google/android/exoplayer/util/ParsableBitArray;

    .line 396
    iput v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->d:I

    .line 397
    return-void
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 478
    iput p1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->d:I

    .line 479
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->e:I

    .line 480
    return-void
.end method

.method private a(Lcom/google/android/exoplayer/util/ParsableByteArray;[BI)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 492
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->a()I

    move-result v1

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->e:I

    sub-int v2, p3, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 493
    if-gtz v1, :cond_1

    .line 501
    :cond_0
    :goto_0
    return v0

    .line 495
    :cond_1
    if-nez p2, :cond_2

    .line 496
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    .line 500
    :goto_1
    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->e:I

    .line 501
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->e:I

    if-eq v1, p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 498
    :cond_2
    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->e:I

    invoke-virtual {p1, p2, v2, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->a([BII)V

    goto :goto_1
.end method

.method private b()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v5, -0x1

    const/16 v4, 0x8

    .line 505
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->b:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->a()V

    .line 506
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->b:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->b(I)I

    move-result v1

    .line 507
    if-eq v1, v0, :cond_0

    .line 508
    const-string v0, "TsExtractor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected start code prefix: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iput v5, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->i:I

    .line 510
    const/4 v0, 0x0

    .line 530
    :goto_0
    return v0

    .line 513
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->b:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->a(I)V

    .line 514
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->b:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->b(I)I

    move-result v1

    .line 517
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->b:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->a(I)V

    .line 518
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->b:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->b()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->g:Z

    .line 521
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->b:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer/util/ParsableBitArray;->a(I)V

    .line 522
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->b:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->b(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->h:I

    .line 524
    if-nez v1, :cond_1

    .line 525
    iput v5, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->i:I

    goto :goto_0

    .line 527
    :cond_1
    add-int/lit8 v1, v1, 0x6

    add-int/lit8 v1, v1, -0x9

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->h:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->i:I

    goto :goto_0
.end method

.method private c()V
    .locals 6

    .prologue
    const/16 v5, 0xf

    const/4 v4, 0x1

    .line 534
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->b:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->a()V

    .line 535
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->j:J

    .line 536
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->g:Z

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->b:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->a(I)V

    .line 538
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->b:Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->b(I)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x1e

    shl-long/2addr v0, v2

    .line 539
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->b:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->a(I)V

    .line 540
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->b:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer/util/ParsableBitArray;->b(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0xf

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 541
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->b:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->a(I)V

    .line 542
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->b:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer/util/ParsableBitArray;->b(I)I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 543
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->b:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer/util/ParsableBitArray;->a(I)V

    .line 544
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->a:Lcom/google/android/exoplayer/extractor/ts/TsExtractor;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->j:J

    .line 546
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 401
    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->d:I

    .line 402
    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->e:I

    .line 403
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->f:Z

    .line 404
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->c:Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;->a()V

    .line 405
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/util/ParsableByteArray;ZLcom/google/android/exoplayer/extractor/ExtractorOutput;)V
    .locals 8

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 410
    if-eqz p2, :cond_1

    .line 411
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->d:I

    packed-switch v0, :pswitch_data_0

    .line 433
    :cond_0
    :goto_0
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->a(I)V

    .line 436
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->a()I

    move-result v0

    if-lez v0, :cond_7

    .line 437
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->d:I

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 439
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    goto :goto_1

    .line 417
    :pswitch_2
    const-string v0, "TsExtractor"

    const-string v2, "Unexpected start indicator reading extended header"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 424
    :pswitch_3
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->i:I

    if-eq v0, v5, :cond_2

    .line 425
    const-string v0, "TsExtractor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected start indicator: expected "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->i:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " more bytes"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->f:Z

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->c:Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;->b()V

    goto :goto_0

    .line 442
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->b:Lcom/google/android/exoplayer/util/ParsableBitArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableBitArray;->a:[B

    const/16 v2, 0x9

    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    :goto_2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->a(I)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 447
    :pswitch_5
    const/4 v0, 0x5

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->h:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 449
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->b:Lcom/google/android/exoplayer/util/ParsableBitArray;

    iget-object v2, v2, Lcom/google/android/exoplayer/util/ParsableBitArray;->a:[B

    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->h:I

    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->c()V

    .line 452
    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->f:Z

    .line 453
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->a(I)V

    goto/16 :goto_1

    .line 457
    :pswitch_6
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->a()I

    move-result v0

    .line 458
    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->i:I

    if-ne v2, v5, :cond_5

    move v2, v1

    .line 459
    :goto_3
    if-lez v2, :cond_4

    .line 460
    sub-int/2addr v0, v2

    .line 461
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->a(I)V

    .line 463
    :cond_4
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->c:Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;

    iget-wide v6, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->j:J

    iget-boolean v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->f:Z

    if-nez v2, :cond_6

    move v2, v3

    :goto_4
    invoke-virtual {v4, p1, v6, v7, v2}, Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;JZ)V

    .line 464
    iput-boolean v3, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->f:Z

    .line 465
    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->i:I

    if-eq v2, v5, :cond_1

    .line 466
    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->i:I

    sub-int v0, v2, v0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->i:I

    .line 467
    iget v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->i:I

    if-nez v0, :cond_1

    .line 468
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->c:Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;->b()V

    .line 469
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->a(I)V

    goto/16 :goto_1

    .line 458
    :cond_5
    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/TsExtractor$PesReader;->i:I

    sub-int v2, v0, v2

    goto :goto_3

    :cond_6
    move v2, v1

    .line 463
    goto :goto_4

    .line 475
    :cond_7
    return-void

    .line 411
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 437
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
