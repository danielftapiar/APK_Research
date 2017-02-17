.class public final Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;
.super Ljava/lang/Object;
.source "Mp4Extractor.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/Extractor;
.implements Lcom/google/android/exoplayer/extractor/SeekMap;


# instance fields
.field private final a:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final b:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final c:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final d:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:J

.field private g:I

.field private h:J

.field private i:I

.field private j:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private k:I

.field private l:I

.field private m:I

.field private n:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

.field private o:[Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->c:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 74
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->d:Ljava/util/Stack;

    .line 75
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    sget-object v1, Lcom/google/android/exoplayer/util/H264Util;->a:[B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->a:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 76
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->b:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->e:I

    .line 78
    return-void
.end method

.method private a(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 219
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 220
    :goto_0
    iget-object v0, p1, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->ad:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 222
    iget-object v0, p1, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->ad:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    .line 223
    iget v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->aa:I

    sget v5, Lcom/google/android/exoplayer/extractor/mp4/Atom;->r:I

    if-ne v4, v5, :cond_1

    .line 224
    sget v4, Lcom/google/android/exoplayer/extractor/mp4/Atom;->q:I

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->d(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->a(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;)Lcom/google/android/exoplayer/extractor/mp4/Track;

    move-result-object v4

    .line 228
    if-eqz v4, :cond_1

    iget v5, v4, Lcom/google/android/exoplayer/extractor/mp4/Track;->b:I

    const v6, 0x736f756e

    if-eq v5, v6, :cond_0

    iget v5, v4, Lcom/google/android/exoplayer/extractor/mp4/Track;->b:I

    const v6, 0x76696465

    if-ne v5, v6, :cond_1

    .line 229
    :cond_0
    sget v5, Lcom/google/android/exoplayer/extractor/mp4/Atom;->s:I

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->e(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v0

    sget v5, Lcom/google/android/exoplayer/extractor/mp4/Atom;->t:I

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->e(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v0

    sget v5, Lcom/google/android/exoplayer/extractor/mp4/Atom;->u:I

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->e(I)Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    move-result-object v0

    .line 234
    invoke-static {v4, v0}, Lcom/google/android/exoplayer/extractor/mp4/AtomParsers;->a(Lcom/google/android/exoplayer/extractor/mp4/Track;Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    move-result-object v0

    .line 235
    iget v5, v0, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->a:I

    if-eqz v5, :cond_1

    .line 236
    new-instance v5, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    iget-object v6, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->n:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v6, v1}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->r_(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v6

    invoke-direct {v5, v4, v0, v6}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;-><init>(Lcom/google/android/exoplayer/extractor/mp4/Track;Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 240
    iget-object v6, v5, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->c:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-object v4, v4, Lcom/google/android/exoplayer/extractor/mp4/Track;->e:Lcom/google/android/exoplayer/MediaFormat;

    invoke-interface {v6, v4}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 241
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->b:[J

    .line 244
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 248
    :cond_2
    new-array v0, v2, [Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->o:[Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 249
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->n:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->a()V

    .line 250
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->n:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->a(Lcom/google/android/exoplayer/extractor/SeekMap;)V

    .line 251
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->e:I

    .line 252
    return-void
.end method

.method private static a(I)Z
    .locals 1

    .prologue
    .line 357
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->A:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->q:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->B:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->Q:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->R:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->C:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->b:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->v:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->f:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->d:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->T:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->U:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->V:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->W:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->X:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->Y:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->Z:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->z:I

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
    .locals 12

    .prologue
    const-wide/16 v10, 0x1

    const/16 v8, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 142
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->c:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    invoke-interface {p1, v0, v2, v8, v1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->a([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    :goto_0
    return v2

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->c:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->c:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->f()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->h:J

    .line 148
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->c:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->g()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->g:I

    .line 149
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->h:J

    cmp-long v0, v4, v10

    if-nez v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->c:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    invoke-interface {p1, v0, v8, v8}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->a([BII)V

    .line 152
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->c:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->h()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->h:J

    .line 153
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->f:J

    const-wide/16 v6, 0x10

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->f:J

    .line 154
    const/16 v0, 0x10

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->i:I

    .line 160
    :goto_1
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->g:I

    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->h:J

    cmp-long v0, v4, v10

    if-nez v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->d:Ljava/util/Stack;

    new-instance v3, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    iget v4, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->g:I

    iget-wide v6, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->f:J

    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->h:J

    add-long/2addr v6, v8

    iget v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->i:I

    int-to-long v8, v5

    sub-long/2addr v6, v8

    invoke-direct {v3, v4, v6, v7}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {v0, v3}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 168
    :goto_2
    iput v2, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->e:I

    :goto_3
    move v2, v1

    .line 179
    goto :goto_0

    .line 156
    :cond_1
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->f:J

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->f:J

    .line 157
    iput v8, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->i:I

    goto :goto_1

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->d:Ljava/util/Stack;

    new-instance v3, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    iget v4, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->g:I

    iget-wide v6, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->f:J

    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->h:J

    add-long/2addr v6, v8

    iget v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->i:I

    int-to-long v8, v5

    sub-long/2addr v6, v8

    invoke-direct {v3, v4, v6, v7}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {v0, v3}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 169
    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->g:I

    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 170
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->h:J

    const-wide/32 v6, 0x7fffffff

    cmp-long v0, v4, v6

    if-gez v0, :cond_4

    move v0, v1

    :goto_4
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 171
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->h:J

    long-to-int v3, v4

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->j:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 172
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->c:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->j:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v3, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    invoke-static {v0, v2, v3, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->e:I

    goto :goto_3

    :cond_4
    move v0, v2

    .line 170
    goto :goto_4

    .line 175
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->j:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 176
    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->e:I

    goto :goto_3
.end method

.method private static b(I)Z
    .locals 1

    .prologue
    .line 367
    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->p:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->r:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->s:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->t:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp4/Atom;->u:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 189
    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->e:I

    .line 190
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->f:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->h:J

    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->i:I

    int-to-long v6, v1

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->f:J

    .line 191
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->h:J

    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->i:I

    int-to-long v4, v1

    sub-long v4, v2, v4

    .line 192
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->j:Lcom/google/android/exoplayer/util/ParsableByteArray;

    if-nez v1, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->h:J

    const-wide/32 v6, 0x40000

    cmp-long v1, v2, v6

    if-gez v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->h:J

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v2, v6

    if-lez v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    move v2, v0

    .line 194
    :goto_0
    if-eqz v2, :cond_3

    .line 195
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->f:J

    iput-wide v0, p2, Lcom/google/android/exoplayer/extractor/PositionHolder;->a:J

    .line 205
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    iget-wide v0, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->ab:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->f:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_6

    .line 206
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    .line 207
    iget v1, v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->aa:I

    sget v3, Lcom/google/android/exoplayer/extractor/mp4/Atom;->p:I

    if-ne v1, v3, :cond_5

    .line 208
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->a(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_1

    :cond_2
    move v2, v0

    .line 192
    goto :goto_0

    .line 196
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->j:Lcom/google/android/exoplayer/util/ParsableByteArray;

    if-eqz v0, :cond_4

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->j:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->i:I

    long-to-int v3, v4

    invoke-interface {p1, v0, v1, v3}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->a([BII)V

    .line 198
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    new-instance v1, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;

    iget v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->g:I

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->j:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v1, v3, v4}, Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;-><init>(ILcom/google/android/exoplayer/util/ParsableByteArray;)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->a(Lcom/google/android/exoplayer/extractor/mp4/Atom$LeafAtom;)V

    goto :goto_1

    .line 202
    :cond_4
    long-to-int v0, v4

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->a(I)V

    goto :goto_1

    .line 209
    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->d:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->d:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;->a(Lcom/google/android/exoplayer/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_1

    .line 214
    :cond_6
    return v2
.end method

.method private c()I
    .locals 7

    .prologue
    .line 336
    const/4 v1, -0x1

    .line 337
    const-wide v2, 0x7fffffffffffffffL

    .line 338
    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->o:[Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 339
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->o:[Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v4, v4, v0

    .line 340
    iget v5, v4, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->d:I

    .line 341
    iget-object v6, v4, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->b:Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    iget v6, v6, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->a:I

    if-eq v5, v6, :cond_0

    .line 342
    iget-object v4, v4, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->b:Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    iget-object v4, v4, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->b:[J

    aget-wide v4, v4, v5

    .line 346
    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    move-wide v2, v4

    move v1, v0

    .line 338
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_1
    return v1
.end method

.method private c(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I
    .locals 10

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->c()I

    move-result v0

    .line 273
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 274
    const/4 v0, -0x1

    .line 328
    :goto_0
    return v0

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->o:[Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v0, v1, v0

    .line 277
    iget v4, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->d:I

    .line 278
    iget-object v1, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->b:Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    iget-object v1, v1, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->b:[J

    aget-wide v2, v1, v4

    .line 279
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->a()J

    move-result-wide v6

    sub-long v6, v2, v6

    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->l:I

    int-to-long v8, v1

    add-long/2addr v6, v8

    .line 280
    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-ltz v1, :cond_1

    const-wide/32 v8, 0x40000

    cmp-long v1, v6, v8

    if-ltz v1, :cond_2

    .line 281
    :cond_1
    iput-wide v2, p2, Lcom/google/android/exoplayer/extractor/PositionHolder;->a:J

    .line 282
    const/4 v0, 0x1

    goto :goto_0

    .line 284
    :cond_2
    long-to-int v1, v6

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->a(I)V

    .line 285
    iget-object v1, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->b:Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    iget-object v1, v1, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->c:[I

    aget v1, v1, v4

    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->k:I

    .line 286
    iget-object v1, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->a:Lcom/google/android/exoplayer/extractor/mp4/Track;

    iget v1, v1, Lcom/google/android/exoplayer/extractor/mp4/Track;->g:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 289
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->b:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    .line 290
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    .line 291
    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    .line 292
    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    .line 293
    iget-object v1, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->a:Lcom/google/android/exoplayer/extractor/mp4/Track;

    iget v1, v1, Lcom/google/android/exoplayer/extractor/mp4/Track;->g:I

    .line 294
    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->a:Lcom/google/android/exoplayer/extractor/mp4/Track;

    iget v2, v2, Lcom/google/android/exoplayer/extractor/mp4/Track;->g:I

    rsub-int/lit8 v2, v2, 0x4

    .line 298
    :goto_1
    iget v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->l:I

    iget v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->k:I

    if-ge v3, v5, :cond_5

    .line 299
    iget v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->m:I

    if-nez v3, :cond_3

    .line 301
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->b:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v3, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    invoke-interface {p1, v3, v2, v1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->a([BII)V

    .line 302
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->b:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 303
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->b:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v3

    iput v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->m:I

    .line 305
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->a:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 306
    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->c:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->a:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v6, 0x4

    invoke-interface {v3, v5, v6}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 307
    iget v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->l:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->l:I

    .line 308
    iget v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->k:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->k:I

    goto :goto_1

    .line 311
    :cond_3
    iget-object v3, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->c:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->m:I

    invoke-interface {v3, p1, v5}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)I

    move-result v3

    .line 312
    iget v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->l:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->l:I

    .line 313
    iget v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->m:I

    sub-int v3, v5, v3

    iput v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->m:I

    goto :goto_1

    .line 317
    :cond_4
    :goto_2
    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->l:I

    iget v2, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->k:I

    if-ge v1, v2, :cond_5

    .line 318
    iget-object v1, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->c:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget v2, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->k:I

    iget v3, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->l:I

    sub-int/2addr v2, v3

    invoke-interface {v1, p1, v2}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)I

    move-result v1

    .line 319
    iget v2, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->l:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->l:I

    .line 320
    iget v2, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->m:I

    sub-int v1, v2, v1

    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->m:I

    goto :goto_2

    .line 323
    :cond_5
    iget-object v1, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->c:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->b:Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    iget-object v2, v2, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->d:[J

    aget-wide v2, v2, v4

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->b:Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    iget-object v5, v5, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->e:[I

    aget v4, v5, v4

    iget v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->k:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(JIII[B)V

    .line 325
    iget v1, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->d:I

    .line 326
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->l:I

    .line 327
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->m:I

    .line 328
    const/4 v0, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I
    .locals 1

    .prologue
    .line 96
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->e:I

    packed-switch v0, :pswitch_data_0

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->c(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I

    move-result v0

    :goto_0
    return v0

    .line 98
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->a(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    const/4 v0, -0x1

    goto :goto_0

    .line 103
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->b(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x1

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->n:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .line 83
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public final b(J)J
    .locals 7

    .prologue
    .line 122
    const-wide v2, 0x7fffffffffffffffL

    .line 123
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->o:[Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 124
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->o:[Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v1, v1, v0

    iget-object v4, v1, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->b:Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;

    .line 125
    invoke-virtual {v4, p1, p2}, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->a(J)I

    move-result v1

    .line 126
    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .line 127
    invoke-virtual {v4, p1, p2}, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->b(J)I

    move-result v1

    .line 129
    :cond_0
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->o:[Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v5, v5, v0

    iput v1, v5, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->d:I

    .line 131
    iget-object v1, v4, Lcom/google/android/exoplayer/extractor/mp4/TrackSampleTable;->b:[J

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->o:[Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor$Mp4Track;->d:I

    aget-wide v4, v1, v4

    .line 132
    cmp-long v1, v4, v2

    if-gez v1, :cond_1

    move-wide v2, v4

    .line 123
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_2
    return-wide v2
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->f:J

    .line 88
    iput v2, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->l:I

    .line 89
    iput v2, p0, Lcom/google/android/exoplayer/extractor/mp4/Mp4Extractor;->m:I

    .line 90
    return-void
.end method
