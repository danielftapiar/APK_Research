.class final Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 598
    return-void
.end method

.method private static a(Lcom/google/android/exoplayer/util/ParsableByteArray;)J
    .locals 2

    .prologue
    const/16 v0, 0x8

    .line 252
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 254
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->g()I

    move-result v1

    .line 255
    invoke-static {v1}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->a(I)I

    move-result v1

    .line 257
    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    .line 259
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->f()J

    move-result-wide v0

    return-wide v0

    .line 257
    :cond_0
    const/16 v0, 0x10

    goto :goto_0
.end method

.method private static a(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 393
    add-int/lit8 v1, p1, 0x8

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 395
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->d()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    add-int/lit8 v2, v1, 0x1

    .line 396
    const/4 v1, 0x3

    if-ne v2, v1, :cond_0

    .line 397
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 399
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 402
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->d()I

    move-result v1

    and-int/lit8 v4, v1, 0x1f

    move v1, v0

    .line 403
    :goto_0
    if-ge v1, v4, :cond_1

    .line 404
    invoke-static {p0}, Lcom/google/android/exoplayer/util/H264Util;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;)[B

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 406
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->d()I

    move-result v1

    .line 407
    :goto_1
    if-ge v0, v1, :cond_2

    .line 408
    invoke-static {p0}, Lcom/google/android/exoplayer/util/H264Util;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;)[B

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 410
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/google/android/exoplayer/util/ParsableByteArray;IIJ)Lcom/google/android/exoplayer/MediaFormat;
    .locals 9

    .prologue
    const/4 v1, 0x1

    .line 468
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 470
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    .line 471
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->e()I

    move-result v4

    .line 472
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->e()I

    move-result v5

    .line 473
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    .line 475
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 476
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c()I

    move-result v0

    move v2, v0

    .line 477
    :goto_0
    sub-int v0, v2, p1

    if-ge v0, p2, :cond_2

    .line 478
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 479
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c()I

    move-result v3

    .line 480
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->g()I

    move-result v7

    .line 481
    if-lez v7, :cond_1

    move v0, v1

    :goto_1
    const-string v8, "childAtomSize should be positive"

    invoke-static {v0, v8}, Lcom/google/android/exoplayer/util/Assertions;->a(ZLjava/lang/Object;)V

    .line 482
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->g()I

    move-result v0

    .line 483
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->d:I

    if-ne v0, v8, :cond_0

    .line 484
    invoke-static {p0, v3}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->c(Lcom/google/android/exoplayer/util/ParsableByteArray;I)[B

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    :cond_0
    add-int v0, v2, v7

    move v2, v0

    .line 487
    goto :goto_0

    .line 481
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 489
    :cond_2
    const-string v0, "video/mp4v-es"

    const/4 v1, -0x1

    move-wide v2, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer/MediaFormat;->a(Ljava/lang/String;IJIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/google/android/exoplayer/util/ParsableByteArray;J)Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 325
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 326
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->g()I

    move-result v9

    .line 327
    new-instance v6, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;

    invoke-direct {v6, v9}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;-><init>(I)V

    move v7, v8

    .line 328
    :goto_0
    if-ge v7, v9, :cond_7

    .line 329
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c()I

    move-result v2

    .line 330
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->g()I

    move-result v3

    .line 331
    if-lez v3, :cond_2

    const/4 v0, 0x1

    :goto_1
    const-string v1, "childAtomSize should be positive"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/util/Assertions;->a(ZLjava/lang/Object;)V

    .line 332
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->g()I

    move-result v1

    .line 333
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->b:I

    if-eq v1, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->c:I

    if-eq v1, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->I:I

    if-ne v1, v0, :cond_3

    :cond_0
    move-object v1, p0

    move-wide v4, p1

    .line 335
    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;IIJLcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;I)V

    .line 346
    :cond_1
    :goto_2
    add-int v0, v2, v3

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 328
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    move v0, v8

    .line 331
    goto :goto_1

    .line 336
    :cond_3
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->f:I

    if-eq v1, v0, :cond_4

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->J:I

    if-eq v1, v0, :cond_4

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->g:I

    if-ne v1, v0, :cond_5

    :cond_4
    move-object v0, p0

    move-wide v4, p1

    .line 338
    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;IIIJLcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;I)V

    goto :goto_2

    .line 340
    :cond_5
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->P:I

    if-ne v1, v0, :cond_6

    .line 341
    invoke-static {}, Lcom/google/android/exoplayer/MediaFormat;->c()Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;->b:Lcom/google/android/exoplayer/MediaFormat;

    goto :goto_2

    .line 342
    :cond_6
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->S:I

    if-ne v1, v0, :cond_1

    .line 343
    invoke-static {p0, v2, v3, p1, p2}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;IIJ)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;->b:Lcom/google/android/exoplayer/MediaFormat;

    goto :goto_2

    .line 348
    :cond_7
    return-object v6
.end method

.method public static a(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;)Lcom/google/android/exoplayer/extractor/mp4/Track;
    .locals 11

    .prologue
    const-wide/16 v6, -0x1

    .line 45
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->s:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->e(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v1

    .line 46
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->B:I

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->ab:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->c(Lcom/google/android/exoplayer/util/ParsableByteArray;)I

    move-result v3

    .line 47
    const v0, 0x736f756e

    if-eq v3, v0, :cond_0

    const v0, 0x76696465

    if-eq v3, v0, :cond_0

    const v0, 0x74657874

    if-eq v3, v0, :cond_0

    const v0, 0x746d6364

    if-eq v3, v0, :cond_0

    .line 49
    const/4 v1, 0x0

    .line 67
    :goto_0
    return-object v1

    .line 52
    :cond_0
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->z:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->ab:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->b(Lcom/google/android/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v4

    .line 53
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 54
    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 55
    iget-object v0, p1, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->ab:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;)J

    move-result-wide v8

    .line 57
    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    .line 62
    :goto_1
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->t:I

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->e(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v0

    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->u:I

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->e(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v0

    .line 65
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->A:I

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->ab:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v1}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->d(Lcom/google/android/exoplayer/util/ParsableByteArray;)J

    move-result-wide v4

    .line 66
    sget v1, Lcom/google/android/exoplayer/extractor/mp4/Atom;->C:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->ab:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v0, v6, v7}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;J)Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;

    move-result-object v0

    .line 67
    new-instance v1, Lcom/google/android/exoplayer/extractor/mp4/Track;

    iget-object v8, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;->b:Lcom/google/android/exoplayer/MediaFormat;

    iget-object v9, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;->a:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    iget v10, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;->c:I

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer/extractor/mp4/Track;-><init>(IIJJLcom/google/android/exoplayer/MediaFormat;[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;I)V

    goto :goto_0

    .line 60
    :cond_1
    invoke-static {v4, v5, v8, v9}, Lcom/google/android/exoplayer/util/Util;->b(JJ)J

    move-result-wide v6

    goto :goto_1
.end method

.method private static a(Lcom/google/android/exoplayer/util/ParsableByteArray;II)Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;
    .locals 5

    .prologue
    .line 415
    add-int/lit8 v1, p1, 0x8

    .line 417
    const/4 v0, 0x0

    .line 418
    :goto_0
    sub-int v2, v1, p1

    if-ge v2, p2, :cond_3

    .line 419
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 420
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->g()I

    move-result v2

    .line 421
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->g()I

    move-result v3

    .line 422
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->K:I

    if-ne v3, v4, :cond_1

    .line 423
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->g()I

    .line 431
    :cond_0
    :goto_1
    add-int/2addr v1, v2

    .line 432
    goto :goto_0

    .line 424
    :cond_1
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->F:I

    if-ne v3, v4, :cond_2

    .line 425
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    .line 426
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->g()I

    .line 427
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->g()I

    goto :goto_1

    .line 428
    :cond_2
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->G:I

    if-ne v3, v4, :cond_0

    .line 429
    invoke-static {p0, v1, v2}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->b(Lcom/google/android/exoplayer/util/ParsableByteArray;II)Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    move-result-object v0

    goto :goto_1

    .line 434
    :cond_3
    return-object v0
.end method

.method public static a(Lcom/google/android/exoplayer/extractor/mp4/Track;Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;
    .locals 43

    .prologue
    .line 80
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->X:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    iget-object v0, v4, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->ab:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v29, v0

    .line 84
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->Y:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    .line 85
    if-nez v4, :cond_0

    .line 86
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->Z:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    .line 88
    :cond_0
    iget-object v0, v4, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->ab:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v30, v0

    .line 90
    sget v5, Lcom/google/android/exoplayer/extractor/mp4/Atom;->W:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v5

    iget-object v0, v5, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->ab:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v31, v0

    .line 92
    sget v5, Lcom/google/android/exoplayer/extractor/mp4/Atom;->T:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v5

    iget-object v0, v5, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->ab:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object/from16 v32, v0

    .line 94
    sget v5, Lcom/google/android/exoplayer/extractor/mp4/Atom;->U:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v5

    .line 95
    if-eqz v5, :cond_6

    iget-object v5, v5, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->ab:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 97
    :goto_0
    sget v6, Lcom/google/android/exoplayer/extractor/mp4/Atom;->V:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v6

    .line 98
    if-eqz v6, :cond_7

    iget-object v6, v6, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->ab:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 101
    :goto_1
    const/16 v7, 0xc

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 102
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v12

    .line 103
    invoke-virtual/range {v29 .. v29}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v33

    .line 105
    move/from16 v0, v33

    new-array v0, v0, [I

    move-object/from16 v34, v0

    .line 106
    move/from16 v0, v33

    new-array v0, v0, [J

    move-object/from16 v35, v0

    .line 107
    move/from16 v0, v33

    new-array v0, v0, [J

    move-object/from16 v36, v0

    .line 108
    move/from16 v0, v33

    new-array v0, v0, [I

    move-object/from16 v37, v0

    .line 111
    const/16 v7, 0xc

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 112
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v38

    .line 114
    const/16 v7, 0xc

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 115
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v7

    add-int/lit8 v24, v7, -0x1

    .line 116
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/exoplayer/util/ParsableByteArray;->g()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    const/4 v7, 0x1

    :goto_2
    const-string v8, "stsc first chunk must be 1"

    invoke-static {v7, v8}, Lcom/google/android/exoplayer/util/Assertions;->b(ZLjava/lang/Object;)V

    .line 117
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v22

    .line 118
    const/4 v7, 0x4

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    .line 119
    const/4 v7, -0x1

    .line 120
    if-lez v24, :cond_1

    .line 122
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .line 125
    :cond_1
    const/16 v23, 0x0

    .line 129
    const/16 v8, 0xc

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 130
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v8

    add-int/lit8 v21, v8, -0x1

    .line 131
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v20

    .line 132
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v19

    .line 135
    const/16 v18, 0x0

    .line 136
    const/16 v17, 0x0

    .line 137
    const/16 v16, 0x0

    .line 138
    if-eqz v6, :cond_2

    .line 139
    const/16 v8, 0xc

    invoke-virtual {v6, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 140
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v8

    add-int/lit8 v17, v8, -0x1

    .line 141
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v18

    .line 147
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->g()I

    move-result v16

    .line 150
    :cond_2
    const/4 v9, -0x1

    .line 151
    const/4 v8, 0x0

    .line 152
    if-eqz v5, :cond_3

    .line 153
    const/16 v8, 0xc

    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 154
    invoke-virtual {v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v8

    .line 155
    invoke-virtual {v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    .line 160
    :cond_3
    iget v10, v4, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->aa:I

    sget v11, Lcom/google/android/exoplayer/extractor/mp4/Atom;->Y:I

    if-ne v10, v11, :cond_9

    .line 161
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/exoplayer/util/ParsableByteArray;->f()J

    move-result-wide v10

    .line 166
    :goto_3
    const-wide/16 v14, 0x0

    .line 167
    const/4 v13, 0x0

    move-wide/from16 v26, v14

    move/from16 v25, v20

    move/from16 v28, v22

    move/from16 v20, v8

    move/from16 v14, v22

    move/from16 v15, v24

    move/from16 v24, v13

    move v13, v7

    move/from16 v42, v19

    move/from16 v19, v21

    move/from16 v21, v9

    move-wide v8, v10

    move/from16 v11, v23

    move/from16 v10, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v42

    :goto_4
    move/from16 v0, v24

    move/from16 v1, v33

    if-ge v0, v1, :cond_e

    .line 168
    aput-wide v8, v36, v24

    .line 169
    if-nez v12, :cond_a

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v7

    :goto_5
    aput v7, v34, v24

    .line 170
    int-to-long v0, v10

    move-wide/from16 v22, v0

    add-long v22, v22, v26

    aput-wide v22, v35, v24

    .line 173
    if-nez v5, :cond_b

    const/4 v7, 0x1

    :goto_6
    aput v7, v37, v24

    .line 174
    move/from16 v0, v24

    move/from16 v1, v21

    if-ne v0, v1, :cond_1a

    .line 175
    const/4 v7, 0x1

    aput v7, v37, v24

    .line 176
    add-int/lit8 v7, v20, -0x1

    .line 177
    if-lez v7, :cond_19

    .line 178
    invoke-virtual {v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v22, v7

    move/from16 v23, v20

    .line 183
    :goto_7
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v26, v26, v20

    .line 184
    add-int/lit8 v7, v25, -0x1

    .line 185
    if-nez v7, :cond_18

    if-lez v19, :cond_18

    .line 186
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v18

    .line 187
    invoke-virtual/range {v32 .. v32}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v7

    .line 188
    add-int/lit8 v19, v19, -0x1

    move/from16 v20, v18

    move/from16 v21, v19

    move/from16 v19, v7

    .line 192
    :goto_8
    if-eqz v6, :cond_17

    .line 193
    add-int/lit8 v7, v17, -0x1

    .line 194
    if-nez v7, :cond_16

    if-lez v16, :cond_16

    .line 195
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v17

    .line 197
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->g()I

    move-result v7

    .line 198
    add-int/lit8 v10, v16, -0x1

    move/from16 v16, v7

    move/from16 v18, v17

    move/from16 v17, v10

    .line 203
    :goto_9
    add-int/lit8 v10, v28, -0x1

    .line 204
    if-nez v10, :cond_d

    .line 205
    add-int/lit8 v11, v11, 0x1

    .line 206
    move/from16 v0, v38

    if-ge v11, v0, :cond_4

    .line 207
    iget v7, v4, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->aa:I

    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->Y:I

    if-ne v7, v8, :cond_c

    .line 208
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/exoplayer/util/ParsableByteArray;->f()J

    move-result-wide v8

    .line 215
    :cond_4
    :goto_a
    if-ne v11, v13, :cond_15

    .line 216
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v7

    .line 217
    const/4 v14, 0x4

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    .line 218
    add-int/lit8 v14, v15, -0x1

    .line 219
    if-lez v14, :cond_5

    .line 220
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    .line 225
    :cond_5
    :goto_b
    move/from16 v0, v38

    if-ge v11, v0, :cond_14

    move v10, v11

    move v11, v13

    move v13, v7

    .line 167
    :goto_c
    add-int/lit8 v15, v24, 0x1

    move/from16 v24, v15

    move/from16 v25, v20

    move/from16 v28, v7

    move/from16 v20, v22

    move v15, v14

    move v14, v13

    move v13, v11

    move v11, v10

    move/from16 v10, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v21

    move/from16 v21, v23

    goto/16 :goto_4

    .line 95
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 98
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 116
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 163
    :cond_9
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/exoplayer/util/ParsableByteArray;->k()J

    move-result-wide v10

    goto/16 :goto_3

    :cond_a
    move v7, v12

    .line 169
    goto/16 :goto_5

    .line 173
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_6

    .line 210
    :cond_c
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/exoplayer/util/ParsableByteArray;->k()J

    move-result-wide v8

    goto :goto_a

    .line 230
    :cond_d
    aget v7, v34, v24

    int-to-long v0, v7

    move-wide/from16 v40, v0

    add-long v8, v8, v40

    move v7, v10

    move v10, v11

    move v11, v13

    move v13, v14

    move v14, v15

    goto :goto_c

    .line 234
    :cond_e
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->c:J

    move-object/from16 v0, v35

    invoke-static {v0, v4, v5}, Lcom/google/android/exoplayer/util/Util;->b([JJ)V

    .line 237
    if-nez v20, :cond_f

    const/4 v4, 0x1

    :goto_d
    invoke-static {v4}, Lcom/google/android/exoplayer/util/Assertions;->a(Z)V

    .line 238
    if-nez v25, :cond_10

    const/4 v4, 0x1

    :goto_e
    invoke-static {v4}, Lcom/google/android/exoplayer/util/Assertions;->a(Z)V

    .line 239
    if-nez v28, :cond_11

    const/4 v4, 0x1

    :goto_f
    invoke-static {v4}, Lcom/google/android/exoplayer/util/Assertions;->a(Z)V

    .line 240
    if-nez v19, :cond_12

    const/4 v4, 0x1

    :goto_10
    invoke-static {v4}, Lcom/google/android/exoplayer/util/Assertions;->a(Z)V

    .line 241
    if-nez v16, :cond_13

    const/4 v4, 0x1

    :goto_11
    invoke-static {v4}, Lcom/google/android/exoplayer/util/Assertions;->a(Z)V

    .line 242
    new-instance v4, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v37

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;-><init>([J[I[J[I)V

    return-object v4

    .line 237
    :cond_f
    const/4 v4, 0x0

    goto :goto_d

    .line 238
    :cond_10
    const/4 v4, 0x0

    goto :goto_e

    .line 239
    :cond_11
    const/4 v4, 0x0

    goto :goto_f

    .line 240
    :cond_12
    const/4 v4, 0x0

    goto :goto_10

    .line 241
    :cond_13
    const/4 v4, 0x0

    goto :goto_11

    :cond_14
    move/from16 v42, v10

    move v10, v11

    move v11, v13

    move v13, v7

    move/from16 v7, v42

    goto/16 :goto_c

    :cond_15
    move v7, v14

    move v14, v15

    goto/16 :goto_b

    :cond_16
    move/from16 v17, v16

    move/from16 v18, v7

    move/from16 v16, v10

    goto/16 :goto_9

    :cond_17
    move/from16 v18, v17

    move/from16 v17, v16

    move/from16 v16, v10

    goto/16 :goto_9

    :cond_18
    move/from16 v20, v7

    move/from16 v21, v19

    move/from16 v19, v18

    goto/16 :goto_8

    :cond_19
    move/from16 v22, v7

    move/from16 v23, v21

    goto/16 :goto_7

    :cond_1a
    move/from16 v22, v20

    move/from16 v23, v21

    goto/16 :goto_7
.end method

.method private static a(Lcom/google/android/exoplayer/util/ParsableByteArray;IIIJLcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;I)V
    .locals 12

    .prologue
    .line 495
    add-int/lit8 v2, p2, 0x8

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 496
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    .line 497
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->e()I

    move-result v6

    .line 498
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->e()I

    move-result v3

    .line 499
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    .line 500
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->i()I

    move-result v7

    .line 502
    const/4 v4, 0x0

    .line 503
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c()I

    move-result v2

    move v5, v2

    .line 504
    :goto_0
    sub-int v2, v5, p2

    if-ge v2, p3, :cond_5

    .line 505
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 506
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c()I

    move-result v8

    .line 507
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->g()I

    move-result v9

    .line 508
    if-lez v9, :cond_1

    const/4 v2, 0x1

    :goto_1
    const-string v10, "childAtomSize should be positive"

    invoke-static {v2, v10}, Lcom/google/android/exoplayer/util/Assertions;->a(ZLjava/lang/Object;)V

    .line 509
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->g()I

    move-result v2

    .line 510
    sget v10, Lcom/google/android/exoplayer/extractor/mp4/Atom;->f:I

    if-eq p1, v10, :cond_0

    sget v10, Lcom/google/android/exoplayer/extractor/mp4/Atom;->J:I

    if-ne p1, v10, :cond_3

    .line 511
    :cond_0
    sget v10, Lcom/google/android/exoplayer/extractor/mp4/Atom;->d:I

    if-ne v2, v10, :cond_2

    .line 512
    invoke-static {p0, v8}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->c(Lcom/google/android/exoplayer/util/ParsableByteArray;I)[B

    move-result-object v4

    .line 515
    invoke-static {v4}, Lcom/google/android/exoplayer/util/CodecSpecificDataUtil;->a([B)Landroid/util/Pair;

    move-result-object v6

    .line 517
    iget-object v2, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 518
    iget-object v2, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v2, v4

    .line 534
    :goto_2
    add-int v4, v5, v9

    move v5, v4

    move-object v4, v2

    .line 535
    goto :goto_0

    .line 508
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 519
    :cond_2
    sget v10, Lcom/google/android/exoplayer/extractor/mp4/Atom;->E:I

    if-ne v2, v10, :cond_9

    .line 520
    move-object/from16 v0, p6

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;->a:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    invoke-static {p0, v8, v9}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;II)Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    move-result-object v8

    aput-object v8, v2, p7

    move-object v2, v4

    goto :goto_2

    .line 523
    :cond_3
    sget v10, Lcom/google/android/exoplayer/extractor/mp4/Atom;->g:I

    if-ne p1, v10, :cond_4

    sget v10, Lcom/google/android/exoplayer/extractor/mp4/Atom;->h:I

    if-ne v2, v10, :cond_4

    .line 526
    add-int/lit8 v2, v8, 0x8

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 527
    invoke-static {p0}, Lcom/google/android/exoplayer/util/Ac3Util;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v2

    move-object/from16 v0, p6

    iput-object v2, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;->b:Lcom/google/android/exoplayer/MediaFormat;

    .line 550
    :goto_3
    return-void

    .line 529
    :cond_4
    sget v10, Lcom/google/android/exoplayer/extractor/mp4/Atom;->i:I

    if-ne p1, v10, :cond_9

    sget v10, Lcom/google/android/exoplayer/extractor/mp4/Atom;->j:I

    if-ne v2, v10, :cond_9

    .line 530
    add-int/lit8 v2, v8, 0x8

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 531
    invoke-static {p0}, Lcom/google/android/exoplayer/util/Ac3Util;->b(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v2

    move-object/from16 v0, p6

    iput-object v2, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;->b:Lcom/google/android/exoplayer/MediaFormat;

    goto :goto_3

    .line 539
    :cond_5
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->g:I

    if-ne p1, v2, :cond_6

    .line 540
    const-string v2, "audio/ac3"

    .line 547
    :goto_4
    if-nez v4, :cond_8

    const/4 v8, 0x0

    :goto_5
    move-wide/from16 v4, p4

    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplayer/MediaFormat;->b(Ljava/lang/String;IJIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v2

    move-object/from16 v0, p6

    iput-object v2, v0, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;->b:Lcom/google/android/exoplayer/MediaFormat;

    goto :goto_3

    .line 541
    :cond_6
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->i:I

    if-ne p1, v2, :cond_7

    .line 542
    const-string v2, "audio/eac3"

    goto :goto_4

    .line 544
    :cond_7
    const-string v2, "audio/mp4a-latm"

    goto :goto_4

    .line 547
    :cond_8
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    goto :goto_5

    :cond_9
    move-object v2, v4

    goto :goto_2
.end method

.method private static a(Lcom/google/android/exoplayer/util/ParsableByteArray;IIJLcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;I)V
    .locals 9

    .prologue
    .line 354
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 356
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    .line 357
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->e()I

    move-result v4

    .line 358
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->e()I

    move-result v5

    .line 359
    const/high16 v6, 0x3f800000    # 1.0f

    .line 360
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    .line 362
    const/4 v7, 0x0

    .line 363
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c()I

    move-result v0

    move v2, v0

    .line 364
    :goto_0
    sub-int v0, v2, p1

    if-ge v0, p2, :cond_5

    .line 365
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 366
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c()I

    move-result v1

    .line 367
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->g()I

    move-result v3

    .line 368
    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c()I

    move-result v0

    sub-int/2addr v0, p1

    if-eq v0, p2, :cond_5

    .line 370
    :cond_0
    if-lez v3, :cond_2

    const/4 v0, 0x1

    :goto_1
    const-string v8, "childAtomSize should be positive"

    invoke-static {v0, v8}, Lcom/google/android/exoplayer/util/Assertions;->a(ZLjava/lang/Object;)V

    .line 373
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->g()I

    move-result v0

    .line 374
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->v:I

    if-ne v0, v8, :cond_3

    .line 375
    invoke-static {p0, v1}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v7

    .line 376
    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 377
    iget-object v0, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p5, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;->c:I

    move-object v7, v1

    .line 384
    :cond_1
    :goto_2
    add-int v0, v2, v3

    move v2, v0

    .line 385
    goto :goto_0

    .line 370
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 378
    :cond_3
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->E:I

    if-ne v0, v8, :cond_4

    .line 379
    iget-object v0, p5, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;->a:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    invoke-static {p0, v1, v3}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;II)Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    move-result-object v1

    aput-object v1, v0, p6

    goto :goto_2

    .line 381
    :cond_4
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->O:I

    if-ne v0, v8, :cond_1

    .line 382
    invoke-static {p0, v1}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->b(Lcom/google/android/exoplayer/util/ParsableByteArray;I)F

    move-result v6

    goto :goto_2

    .line 387
    :cond_5
    const-string v0, "video/avc"

    const/4 v1, -0x1

    move-wide v2, p3

    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer/MediaFormat;->a(Ljava/lang/String;IJIIFLjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    iput-object v0, p5, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers$StsdDataHolder;->b:Lcom/google/android/exoplayer/MediaFormat;

    .line 389
    return-void
.end method

.method private static b(Lcom/google/android/exoplayer/util/ParsableByteArray;I)F
    .locals 2

    .prologue
    .line 438
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 439
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v0

    .line 440
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v1

    .line 441
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private static b(Lcom/google/android/exoplayer/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x0

    const/16 v1, 0x8

    .line 269
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 270
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->g()I

    move-result v0

    .line 271
    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->a(I)I

    move-result v4

    .line 273
    if-nez v4, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    .line 275
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->g()I

    move-result v5

    .line 276
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    .line 278
    const/4 v0, 0x1

    .line 279
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c()I

    move-result v6

    .line 280
    if-nez v4, :cond_0

    move v1, v2

    :cond_0
    move v2, v3

    .line 281
    :goto_1
    if-ge v2, v1, :cond_1

    .line 282
    iget-object v7, p0, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    add-int v8, v6, v2

    aget-byte v7, v7, v8

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    move v0, v3

    .line 288
    :cond_1
    if-eqz v0, :cond_4

    .line 289
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    .line 290
    const-wide/16 v0, -0x1

    .line 295
    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 273
    :cond_2
    const/16 v0, 0x10

    goto :goto_0

    .line 281
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 292
    :cond_4
    if-nez v4, :cond_5

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->f()J

    move-result-wide v0

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->k()J

    move-result-wide v0

    goto :goto_2
.end method

.method private static b(Lcom/google/android/exoplayer/util/ParsableByteArray;II)Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;
    .locals 7

    .prologue
    const/16 v6, 0x10

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 446
    add-int/lit8 v2, p1, 0x8

    .line 447
    :goto_0
    sub-int v3, v2, p1

    if-ge v3, p2, :cond_2

    .line 448
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 449
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->g()I

    move-result v3

    .line 450
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->g()I

    move-result v4

    .line 451
    sget v5, Lcom/google/android/exoplayer/extractor/mp4/Atom;->H:I

    if-ne v4, v5, :cond_1

    .line 452
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    .line 453
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->g()I

    move-result v2

    .line 454
    shr-int/lit8 v3, v2, 0x8

    if-ne v3, v0, :cond_0

    .line 455
    :goto_1
    and-int/lit16 v2, v2, 0xff

    .line 456
    new-array v3, v6, [B

    .line 457
    invoke-virtual {p0, v3, v1, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->a([BII)V

    .line 458
    new-instance v1, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;-><init>(ZI[B)V

    move-object v0, v1

    .line 462
    :goto_2
    return-object v0

    :cond_0
    move v0, v1

    .line 454
    goto :goto_1

    .line 460
    :cond_1
    add-int/2addr v2, v3

    .line 461
    goto :goto_0

    .line 462
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static c(Lcom/google/android/exoplayer/util/ParsableByteArray;)I
    .locals 1

    .prologue
    .line 305
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 306
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->g()I

    move-result v0

    return v0
.end method

.method private static c(Lcom/google/android/exoplayer/util/ParsableByteArray;I)[B
    .locals 5

    .prologue
    const/16 v4, 0x7f

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 554
    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 556
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    .line 557
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->d()I

    move-result v0

    .line 558
    :goto_0
    if-le v0, v4, :cond_0

    .line 559
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->d()I

    move-result v0

    goto :goto_0

    .line 561
    :cond_0
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    .line 563
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->d()I

    move-result v0

    .line 564
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    .line 565
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    .line 567
    :cond_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    .line 568
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->e()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    .line 570
    :cond_2
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_3

    .line 571
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    .line 575
    :cond_3
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    .line 576
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->d()I

    move-result v0

    .line 577
    :goto_1
    if-le v0, v4, :cond_4

    .line 578
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->d()I

    move-result v0

    goto :goto_1

    .line 580
    :cond_4
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    .line 583
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    .line 584
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->d()I

    move-result v1

    .line 585
    and-int/lit8 v0, v1, 0x7f

    .line 586
    :goto_2
    if-le v1, v4, :cond_5

    .line 587
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->d()I

    move-result v1

    .line 588
    shl-int/lit8 v0, v0, 0x8

    .line 589
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    goto :goto_2

    .line 591
    :cond_5
    new-array v1, v0, [B

    .line 592
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->a([BII)V

    .line 593
    return-object v1
.end method

.method private static d(Lcom/google/android/exoplayer/util/ParsableByteArray;)J
    .locals 2

    .prologue
    const/16 v0, 0x8

    .line 316
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 317
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->g()I

    move-result v1

    .line 318
    invoke-static {v1}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->a(I)I

    move-result v1

    .line 320
    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    .line 321
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->f()J

    move-result-wide v0

    return-wide v0

    .line 320
    :cond_0
    const/16 v0, 0x10

    goto :goto_0
.end method
