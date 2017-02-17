.class public final Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/Extractor;


# static fields
.field private static final a:[B


# instance fields
.field private final b:I

.field private final c:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final d:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final e:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final f:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final g:[B

.field private final h:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Lcom/google/android/exoplayer/extractor/mp4/Track;

.field private t:Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;

.field private u:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

.field private v:Lcom/google/android/exoplayer/extractor/TrackOutput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->a:[B

    return-void

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;-><init>(B)V

    .line 100
    return-void
.end method

.method private constructor <init>(B)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->b:I

    .line 108
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 109
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    sget-object v1, Lcom/google/android/exoplayer/util/H264Util;->a:[B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->c:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 110
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->d:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 111
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->e:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 112
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->g:[B

    .line 113
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->h:Ljava/util/Stack;

    .line 114
    new-instance v0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    invoke-direct {v0}, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->i:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    .line 115
    iput v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->j:I

    .line 116
    return-void
.end method

.method private static a(Lcom/google/android/exoplayer/util/ParsableByteArray;J)Lcom/google/android/exoplayer/extractor/ChunkIndex;
    .locals 23

    .prologue
    .line 527
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 528
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->g()I

    move-result v2

    .line 529
    invoke-static {v2}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->a(I)I

    move-result v2

    .line 531
    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    .line 532
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->f()J

    move-result-wide v10

    .line 535
    if-nez v2, :cond_0

    .line 536
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->f()J

    move-result-wide v2

    .line 537
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->f()J

    move-result-wide v4

    add-long v4, v4, p1

    .line 543
    :goto_0
    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    .line 545
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->e()I

    move-result v12

    .line 546
    new-array v13, v12, [I

    .line 547
    new-array v14, v12, [J

    .line 548
    new-array v15, v12, [J

    .line 549
    new-array v0, v12, [J

    move-object/from16 v16, v0

    .line 552
    invoke-static {v2, v3, v10, v11}, Lcom/google/android/exoplayer/util/Util;->b(JJ)J

    move-result-wide v8

    .line 553
    const/4 v6, 0x0

    move/from16 v20, v6

    move-wide v6, v2

    move/from16 v2, v20

    move-wide/from16 v21, v8

    move-wide v8, v4

    move-wide/from16 v4, v21

    :goto_1
    if-ge v2, v12, :cond_2

    .line 554
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->g()I

    move-result v3

    .line 556
    const/high16 v17, -0x80000000

    and-int v17, v17, v3

    .line 557
    if-eqz v17, :cond_1

    .line 558
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unhandled indirect reference"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 539
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->k()J

    move-result-wide v2

    .line 540
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->k()J

    move-result-wide v4

    add-long v4, v4, p1

    goto :goto_0

    .line 560
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->f()J

    move-result-wide v18

    .line 562
    const v17, 0x7fffffff

    and-int v3, v3, v17

    aput v3, v13, v2

    .line 563
    aput-wide v8, v14, v2

    .line 567
    aput-wide v4, v16, v2

    .line 568
    add-long v6, v6, v18

    .line 569
    invoke-static {v6, v7, v10, v11}, Lcom/google/android/exoplayer/util/Util;->b(JJ)J

    move-result-wide v4

    .line 570
    aget-wide v18, v16, v2

    sub-long v18, v4, v18

    aput-wide v18, v15, v2

    .line 572
    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    .line 573
    aget v3, v13, v2

    int-to-long v0, v3

    move-wide/from16 v18, v0

    add-long v8, v8, v18

    .line 553
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 576
    :cond_2
    new-instance v2, Lcom/google/android/exoplayer/extractor/ChunkIndex;

    move-object/from16 v0, v16

    invoke-direct {v2, v13, v14, v15, v0}, Lcom/google/android/exoplayer/extractor/ChunkIndex;-><init>([I[J[J[J)V

    return-object v2
.end method

.method private static a(Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;
    .locals 5

    .prologue
    const/16 v1, 0x8

    .line 378
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 379
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->g()I

    move-result v0

    .line 380
    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->b(I)I

    move-result v4

    .line 382
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    .line 383
    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    .line 387
    :cond_0
    and-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    .line 390
    :goto_0
    and-int/lit8 v0, v4, 0x8

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v0

    move v2, v0

    .line 392
    :goto_1
    and-int/lit8 v0, v4, 0x10

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v0

    move v1, v0

    .line 394
    :goto_2
    and-int/lit8 v0, v4, 0x20

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v0

    .line 396
    :goto_3
    new-instance v4, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;

    invoke-direct {v4, v3, v2, v1, v0}, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    return-object v4

    .line 387
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->a:I

    move v3, v0

    goto :goto_0

    .line 390
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->b:I

    move v2, v0

    goto :goto_1

    .line 392
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->c:I

    move v1, v0

    goto :goto_2

    .line 394
    :cond_4
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->d:I

    goto :goto_3
.end method

.method private static a(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;
    .locals 5

    .prologue
    .line 287
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 288
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 289
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v1

    .line 290
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v2

    .line 291
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->g()I

    move-result v3

    .line 292
    new-instance v4, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    return-object v4
.end method

.method private a(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V
    .locals 2

    .prologue
    .line 236
    iget v0, p1, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->aa:I

    sget v1, Lcom/google/android/exoplayer/extractor/mp4/Atom;->p:I

    if-ne v0, v1, :cond_1

    .line 237
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->b(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    iget v0, p1, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->aa:I

    sget v1, Lcom/google/android/exoplayer/extractor/mp4/Atom;->w:I

    if-ne v0, v1, :cond_2

    .line 239
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->c(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->h:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->h:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->a(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0
.end method

.method private a(Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;J)V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->h:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->h:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->a(Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;)V

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    iget v0, p1, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->aa:I

    sget v1, Lcom/google/android/exoplayer/extractor/mp4/Atom;->o:I

    if-ne v0, v1, :cond_0

    .line 230
    iget-object v0, p1, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->ab:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v0, p2, p3}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;J)Lcom/google/android/exoplayer/extractor/ChunkIndex;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->u:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->a(Lcom/google/android/exoplayer/extractor/SeekMap;)V

    goto :goto_0
.end method

.method private static a(Lcom/google/android/exoplayer/extractor/mp4/Track;Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;JILcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V
    .locals 22

    .prologue
    .line 424
    const/16 v2, 0x8

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 425
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->g()I

    move-result v2

    .line 426
    invoke-static {v2}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->b(I)I

    move-result v4

    .line 428
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v13

    .line 429
    and-int/lit8 v2, v4, 0x1

    if-eqz v2, :cond_0

    .line 430
    const/4 v2, 0x4

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    .line 433
    :cond_0
    and-int/lit8 v2, v4, 0x4

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    .line 434
    :goto_0
    move-object/from16 v0, p1

    iget v6, v0, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->d:I

    .line 435
    if-eqz v2, :cond_1

    .line 436
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v6

    .line 439
    :cond_1
    and-int/lit16 v3, v4, 0x100

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    move v12, v3

    .line 440
    :goto_1
    and-int/lit16 v3, v4, 0x200

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    move v11, v3

    .line 441
    :goto_2
    and-int/lit16 v3, v4, 0x400

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    move v10, v3

    .line 442
    :goto_3
    and-int/lit16 v3, v4, 0x800

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    .line 445
    :goto_4
    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->a(I)V

    .line 446
    move-object/from16 v0, p6

    iget-object v14, v0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->c:[I

    .line 447
    move-object/from16 v0, p6

    iget-object v15, v0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->d:[I

    .line 448
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->e:[J

    move-object/from16 v16, v0

    .line 449
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->f:[Z

    move-object/from16 v17, v0

    .line 451
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->c:J

    move-wide/from16 v18, v0

    .line 453
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->b:I

    const v5, 0x76696465

    if-ne v4, v5, :cond_8

    and-int/lit8 v4, p4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    const/4 v4, 0x1

    .line 456
    :goto_5
    const/4 v5, 0x0

    move v9, v5

    :goto_6
    if-ge v9, v13, :cond_f

    .line 458
    if-eqz v12, :cond_9

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v5

    move v8, v5

    .line 460
    :goto_7
    if-eqz v11, :cond_a

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v5

    move v7, v5

    .line 461
    :goto_8
    if-nez v9, :cond_b

    if-eqz v2, :cond_b

    move v5, v6

    .line 463
    :goto_9
    if-eqz v3, :cond_d

    .line 469
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->g()I

    move-result v20

    .line 470
    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    div-long v20, v20, v18

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    aput v20, v15, v9

    .line 474
    :goto_a
    const-wide/16 v20, 0x3e8

    mul-long v20, v20, p2

    div-long v20, v20, v18

    aput-wide v20, v16, v9

    .line 475
    aput v7, v14, v9

    .line 476
    shr-int/lit8 v5, v5, 0x10

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_e

    if-eqz v4, :cond_2

    if-nez v9, :cond_e

    :cond_2
    const/4 v5, 0x1

    :goto_b
    aput-boolean v5, v17, v9

    .line 478
    int-to-long v0, v8

    move-wide/from16 v20, v0

    add-long p2, p2, v20

    .line 456
    add-int/lit8 v5, v9, 0x1

    move v9, v5

    goto :goto_6

    .line 433
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 439
    :cond_4
    const/4 v3, 0x0

    move v12, v3

    goto/16 :goto_1

    .line 440
    :cond_5
    const/4 v3, 0x0

    move v11, v3

    goto/16 :goto_2

    .line 441
    :cond_6
    const/4 v3, 0x0

    move v10, v3

    goto/16 :goto_3

    .line 442
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 453
    :cond_8
    const/4 v4, 0x0

    goto :goto_5

    .line 458
    :cond_9
    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->b:I

    move v8, v5

    goto :goto_7

    .line 460
    :cond_a
    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->c:I

    move v7, v5

    goto :goto_8

    .line 461
    :cond_b
    if-eqz v10, :cond_c

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->g()I

    move-result v5

    goto :goto_9

    :cond_c
    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->d:I

    goto :goto_9

    .line 472
    :cond_d
    const/16 v20, 0x0

    aput v20, v15, v9

    goto :goto_a

    .line 476
    :cond_e
    const/4 v5, 0x0

    goto :goto_b

    .line 480
    :cond_f
    return-void
.end method

.method private static a(Lcom/google/android/exoplayer/extractor/mp4/Track;Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;I[B)V
    .locals 6

    .prologue
    .line 298
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->x:I

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->e(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->b(Lcom/google/android/exoplayer/extractor/mp4/Track;Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;I[B)V

    .line 300
    return-void
.end method

.method private static a(Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V
    .locals 9

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 340
    iget v5, p0, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;->b:I

    .line 341
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 342
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->g()I

    move-result v0

    .line 343
    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->b(I)I

    move-result v0

    .line 344
    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 345
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    .line 347
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->d()I

    move-result v0

    .line 349
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v6

    .line 350
    iget v3, p2, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->b:I

    if-eq v6, v3, :cond_1

    .line 351
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Length mismatch: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_1
    if-nez v0, :cond_3

    .line 356
    iget-object v7, p2, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->h:[Z

    move v3, v2

    move v0, v2

    .line 357
    :goto_0
    if-ge v3, v6, :cond_4

    .line 358
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->d()I

    move-result v8

    .line 359
    add-int v4, v0, v8

    .line 360
    if-le v8, v5, :cond_2

    move v0, v1

    :goto_1
    aput-boolean v0, v7, v3

    .line 357
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v2

    .line 360
    goto :goto_1

    .line 363
    :cond_3
    if-le v0, v5, :cond_5

    .line 364
    :goto_2
    mul-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x0

    .line 365
    iget-object v3, p2, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->h:[Z

    invoke-static {v3, v2, v6, v1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 367
    :cond_4
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->b(I)V

    .line 368
    return-void

    :cond_5
    move v1, v2

    .line 363
    goto :goto_2
.end method

.method private static a(Lcom/google/android/exoplayer/util/ParsableByteArray;ILcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 503
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 504
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->g()I

    move-result v0

    .line 505
    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->b(I)I

    move-result v0

    .line 507
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    .line 509
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Overriding TrackEncryptionBox parameters is unsupported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_0
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 513
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v2

    .line 514
    iget v3, p2, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->b:I

    if-eq v2, v3, :cond_2

    .line 515
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Length mismatch: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v1

    .line 512
    goto :goto_0

    .line 518
    :cond_2
    iget-object v3, p2, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->h:[Z

    invoke-static {v3, v1, v2, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 519
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->a()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->b(I)V

    .line 520
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;)V

    .line 521
    return-void
.end method

.method private static a(Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V
    .locals 1

    .prologue
    .line 499
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;ILcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V

    .line 500
    return-void
.end method

.method private static a(Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;[B)V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 484
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 485
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->a([BII)V

    .line 488
    sget-object v0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->a:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    :goto_0
    return-void

    .line 495
    :cond_0
    invoke-static {p0, v1, p1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;ILcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V

    goto :goto_0
.end method

.method private static a(I)Z
    .locals 1

    .prologue
    .line 692
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->b:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->c:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->d:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->B:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->e:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->A:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->w:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->p:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->f:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->q:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->o:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->C:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->k:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->l:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->z:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->x:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->r:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->m:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->n:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->y:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->s:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->t:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->u:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->D:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->L:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->M:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->N:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->O:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 171
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    invoke-interface {p1, v2, v0, v4, v1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->a([BIIZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 204
    :goto_0
    return v0

    .line 175
    :cond_0
    iget v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->k:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->k:I

    .line 176
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 177
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->g()I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->m:I

    .line 178
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->g()I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->l:I

    .line 180
    iget v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->l:I

    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->e:I

    if-ne v2, v3, :cond_2

    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->i:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget-boolean v0, v0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->k:Z

    if-eqz v0, :cond_1

    .line 182
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->j:I

    :goto_1
    move v0, v1

    .line 186
    goto :goto_0

    .line 184
    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->j:I

    goto :goto_1

    .line 189
    :cond_2
    iget v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->l:I

    invoke-static {v2}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->a(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 190
    iget v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->l:I

    invoke-static {v2}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->b(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 191
    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->j:I

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->h:Ljava/util/Stack;

    new-instance v2, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    iget v3, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->l:I

    iget v4, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->k:I

    iget v5, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->m:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x8

    int-to-long v4, v4

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {v0, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    :goto_2
    move v0, v1

    .line 204
    goto :goto_0

    .line 195
    :cond_3
    new-instance v2, Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget v3, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->m:I

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->n:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 196
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, v2, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->n:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v3, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    invoke-static {v2, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->j:I

    goto :goto_2

    .line 200
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->n:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 201
    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->j:I

    goto :goto_2
.end method

.method private static b(Lcom/google/android/exoplayer/util/ParsableByteArray;)J
    .locals 2

    .prologue
    .line 407
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 408
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->g()I

    move-result v0

    .line 409
    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->a(I)I

    move-result v0

    .line 410
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->k()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->f()J

    move-result-wide v0

    goto :goto_0
.end method

.method private b(Lcom/google/android/exoplayer/extractor/ExtractorInput;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 208
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->m:I

    add-int/lit8 v0, v0, -0x8

    .line 209
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->n:Lcom/google/android/exoplayer/util/ParsableByteArray;

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->n:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    const/16 v2, 0x8

    invoke-interface {p1, v1, v2, v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->a([BII)V

    .line 211
    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->k:I

    .line 212
    new-instance v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->l:I

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->n:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;-><init>(ILcom/google/android/exoplayer/util/ParsableByteArray;)V

    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->a()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->a(Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;J)V

    .line 217
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->h:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->h:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    iget-wide v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->ab:J

    iget v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->k:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->h:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->a(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    .line 214
    :cond_0
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->a(I)V

    .line 215
    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->k:I

    goto :goto_0

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->h:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    iput v4, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->k:I

    .line 223
    :cond_2
    iput v4, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->j:I

    .line 224
    return-void
.end method

.method private b(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 246
    iget-object v4, p1, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->ac:Ljava/util/List;

    .line 247
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 249
    const/4 v1, 0x0

    move v3, v2

    .line 250
    :goto_0
    if-ge v3, v5, :cond_0

    .line 251
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    .line 252
    iget v6, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->aa:I

    sget v7, Lcom/google/android/exoplayer/extractor/mp4/Atom;->D:I

    if-ne v6, v7, :cond_4

    .line 253
    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->ab:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 254
    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 255
    new-instance v6, Ljava/util/UUID;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->h()J

    move-result-wide v8

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->h()J

    move-result-wide v10

    invoke-direct {v6, v8, v9, v10, v11}, Ljava/util/UUID;-><init>(JJ)V

    .line 256
    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->g()I

    move-result v7

    .line 257
    new-array v8, v7, [B

    .line 258
    invoke-virtual {v0, v8, v2, v7}, Lcom/google/android/exoplayer/util/ParsableByteArray;->a([BII)V

    .line 259
    if-nez v1, :cond_3

    .line 260
    new-instance v0, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;

    const-string v1, "video/mp4"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;-><init>(Ljava/lang/String;)V

    .line 262
    :goto_1
    invoke-virtual {v0, v6, v8}, Lcom/google/android/exoplayer/drm/DrmInitData$Mapped;->a(Ljava/util/UUID;[B)V

    .line 250
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_0

    .line 265
    :cond_0
    if-eqz v1, :cond_1

    .line 266
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->u:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->a(Lcom/google/android/exoplayer/drm/DrmInitData;)V

    .line 269
    :cond_1
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->y:I

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->e(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v0

    .line 270
    sget v1, Lcom/google/android/exoplayer/extractor/mp4/Atom;->m:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->ab:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->t:Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;

    .line 271
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->r:I

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->e(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v0

    sget v1, Lcom/google/android/exoplayer/extractor/mp4/Atom;->q:I

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->a(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;)Lcom/google/android/exoplayer/extractor/mp4/Track;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->s:Lcom/google/android/exoplayer/extractor/mp4/Track;

    .line 273
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->s:Lcom/google/android/exoplayer/extractor/mp4/Track;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 274
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->v:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->s:Lcom/google/android/exoplayer/extractor/mp4/Track;

    iget-object v1, v1, Lcom/google/android/exoplayer/extractor/mp4/Track;->e:Lcom/google/android/exoplayer/MediaFormat;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 275
    return-void

    :cond_2
    move v0, v2

    .line 273
    goto :goto_3

    :cond_3
    move-object v0, v1

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method private static b(Lcom/google/android/exoplayer/extractor/mp4/Track;Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;I[B)V
    .locals 7

    .prologue
    .line 307
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->k:I

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    .line 308
    if-nez v0, :cond_3

    const-wide/16 v2, 0x0

    .line 310
    :goto_0
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->l:I

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    .line 311
    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->ab:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->a(Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;Lcom/google/android/exoplayer/util/ParsableByteArray;)Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;

    move-result-object v1

    .line 312
    iget v0, v1, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->a:I

    iput v0, p3, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->a:I

    .line 314
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->n:I

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    .line 315
    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->ab:Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-object v0, p0

    move v4, p4

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->a(Lcom/google/android/exoplayer/extractor/mp4/Track;Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;JILcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V

    .line 317
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->L:I

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    .line 318
    if-eqz v0, :cond_0

    .line 319
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp4/Track;->f:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    iget v1, v1, Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;->a:I

    aget-object v1, v2, v1

    .line 321
    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->ab:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v1, v0, p3}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->a(Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V

    .line 324
    :cond_0
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->N:I

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    .line 325
    if-eqz v0, :cond_1

    .line 326
    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->ab:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v0, p3}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;)V

    .line 329
    :cond_1
    iget-object v0, p2, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->ac:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 330
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_4

    .line 331
    iget-object v0, p2, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->ac:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    .line 332
    iget v3, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->aa:I

    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->M:I

    if-ne v3, v4, :cond_2

    .line 333
    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->ab:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v0, p3, p5}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;[B)V

    .line 330
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 308
    :cond_3
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->k:I

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;->ab:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->b(Lcom/google/android/exoplayer/util/ParsableByteArray;)J

    move-result-wide v2

    goto :goto_0

    .line 336
    :cond_4
    return-void
.end method

.method private static b(I)Z
    .locals 1

    .prologue
    .line 706
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->p:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->r:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->s:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->t:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->u:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->v:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->w:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->x:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->y:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/google/android/exoplayer/util/ParsableByteArray;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 667
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->s:Lcom/google/android/exoplayer/extractor/mp4/Track;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->f:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->i:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget v2, v2, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->a:I

    aget-object v0, v0, v2

    .line 669
    iget v2, v0, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;->b:I

    .line 670
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->i:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->h:[Z

    iget v3, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->o:I

    aget-boolean v3, v0, v3

    .line 673
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->e:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v4, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    if-eqz v3, :cond_0

    const/16 v0, 0x80

    :goto_0
    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, v4, v1

    .line 674
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->e:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 675
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->v:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->e:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v4, 0x1

    invoke-interface {v0, v1, v4}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 677
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->v:Lcom/google/android/exoplayer/extractor/TrackOutput;

    invoke-interface {v0, p1, v2}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 679
    if-nez v3, :cond_1

    .line 680
    add-int/lit8 v0, v2, 0x1

    .line 687
    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 673
    goto :goto_0

    .line 683
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->e()I

    move-result v0

    .line 684
    const/4 v1, -0x2

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c(I)V

    .line 685
    mul-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, 0x2

    .line 686
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->v:Lcom/google/android/exoplayer/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 687
    add-int/lit8 v1, v2, 0x1

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method private c(Lcom/google/android/exoplayer/extractor/ExtractorInput;)V
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->i:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->a(Lcom/google/android/exoplayer/extractor/ExtractorInput;)V

    .line 581
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->j:I

    .line 582
    return-void
.end method

.method private c(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V
    .locals 6

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->i:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->a()V

    .line 279
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->s:Lcom/google/android/exoplayer/extractor/mp4/Track;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->t:Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->i:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget v4, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->b:I

    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->g:[B

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->a(Lcom/google/android/exoplayer/extractor/mp4/Track;Lcom/google/android/exoplayer/extractor/mp4/DefaultSampleValues;Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;I[B)V

    .line 280
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->o:I

    .line 281
    return-void
.end method

.method private d(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .locals 10

    .prologue
    const/4 v5, 0x4

    const/4 v9, 0x3

    const/4 v0, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 599
    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->o:I

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->i:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget v2, v2, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->b:I

    if-lt v1, v2, :cond_0

    .line 601
    iput v6, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->j:I

    .line 663
    :goto_0
    return v6

    .line 605
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->j:I

    if-ne v1, v9, :cond_1

    .line 606
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->i:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget-object v1, v1, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->c:[I

    iget v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->o:I

    aget v1, v1, v2

    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->p:I

    .line 607
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->i:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget-boolean v1, v1, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->g:Z

    if-eqz v1, :cond_2

    .line 608
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->i:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget-object v1, v1, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->j:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->c(Lcom/google/android/exoplayer/util/ParsableByteArray;)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->q:I

    .line 609
    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->p:I

    iget v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->q:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->p:I

    .line 613
    :goto_1
    iput v6, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->r:I

    .line 614
    iput v5, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->j:I

    .line 617
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->s:Lcom/google/android/exoplayer/extractor/mp4/Track;

    iget v1, v1, Lcom/google/android/exoplayer/extractor/mp4/Track;->g:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 620
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->d:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    .line 621
    aput-byte v6, v1, v6

    .line 622
    aput-byte v6, v1, v8

    .line 623
    aput-byte v6, v1, v0

    .line 624
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->s:Lcom/google/android/exoplayer/extractor/mp4/Track;

    iget v1, v1, Lcom/google/android/exoplayer/extractor/mp4/Track;->g:I

    .line 625
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->s:Lcom/google/android/exoplayer/extractor/mp4/Track;

    iget v2, v2, Lcom/google/android/exoplayer/extractor/mp4/Track;->g:I

    rsub-int/lit8 v2, v2, 0x4

    .line 629
    :goto_2
    iget v3, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->q:I

    iget v4, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->p:I

    if-ge v3, v4, :cond_5

    .line 630
    iget v3, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->r:I

    if-nez v3, :cond_3

    .line 632
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->d:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v3, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    invoke-interface {p1, v3, v2, v1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->a([BII)V

    .line 633
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->d:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 634
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->d:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->r:I

    .line 636
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->c:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 637
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->v:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->c:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-interface {v3, v4, v5}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 638
    iget v3, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->q:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->q:I

    .line 639
    iget v3, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->p:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->p:I

    goto :goto_2

    .line 611
    :cond_2
    iput v6, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->q:I

    goto :goto_1

    .line 642
    :cond_3
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->v:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget v4, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->r:I

    invoke-interface {v3, p1, v4}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)I

    move-result v3

    .line 643
    iget v4, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->q:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->q:I

    .line 644
    iget v4, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->r:I

    sub-int v3, v4, v3

    iput v3, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->r:I

    goto :goto_2

    .line 648
    :cond_4
    :goto_3
    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->q:I

    iget v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->p:I

    if-ge v1, v2, :cond_5

    .line 649
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->v:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->p:I

    iget v3, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->q:I

    sub-int/2addr v2, v3

    invoke-interface {v1, p1, v2}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)I

    move-result v1

    .line 650
    iget v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->q:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->q:I

    goto :goto_3

    .line 654
    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->i:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget v2, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->o:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->c(I)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 655
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->i:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget-boolean v1, v1, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->g:Z

    if-eqz v1, :cond_6

    :goto_4
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->i:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget-object v1, v1, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->f:[Z

    iget v4, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->o:I

    aget-boolean v1, v1, v4

    if-eqz v1, :cond_7

    move v1, v8

    :goto_5
    or-int v4, v0, v1

    .line 657
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->i:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget-boolean v0, v0, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->g:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->s:Lcom/google/android/exoplayer/extractor/mp4/Track;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Track;->f:[Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->i:Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;

    iget v1, v1, Lcom/google/android/exoplayer/extractor/mp4/TrackFragment;->a:I

    aget-object v0, v0, v1

    iget-object v7, v0, Lcom/google/android/exoplayer/extractor/mp4/TrackEncryptionBox;->c:[B

    .line 659
    :goto_6
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->v:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget v5, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->p:I

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(JIII[B)V

    .line 661
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->o:I

    .line 662
    iput v9, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->j:I

    move v6, v8

    .line 663
    goto/16 :goto_0

    :cond_6
    move v0, v6

    .line 655
    goto :goto_4

    :cond_7
    move v1, v6

    goto :goto_5

    .line 657
    :cond_8
    const/4 v7, 0x0

    goto :goto_6
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I
    .locals 1

    .prologue
    .line 150
    :cond_0
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->j:I

    packed-switch v0, :pswitch_data_0

    .line 163
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->d(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 152
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->a(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    const/4 v0, -0x1

    goto :goto_1

    .line 157
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->b(Lcom/google/android/exoplayer/extractor/ExtractorInput;)V

    goto :goto_0

    .line 160
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->c(Lcom/google/android/exoplayer/extractor/ExtractorInput;)V

    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V
    .locals 1

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->u:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .line 135
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->r_(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->v:Lcom/google/android/exoplayer/extractor/TrackOutput;

    .line 136
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->u:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->a()V

    .line 137
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 141
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->h:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 142
    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->k:I

    .line 143
    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp4/FragmentedMp4Extractor;->j:I

    .line 144
    return-void
.end method
