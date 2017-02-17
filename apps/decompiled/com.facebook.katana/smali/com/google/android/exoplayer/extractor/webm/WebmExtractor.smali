.class public final Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;
.super Ljava/lang/Object;
.source "WebmExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/Extractor;


# instance fields
.field private A:I

.field private B:I

.field private C:J

.field private D:Z

.field private E:Z

.field private F:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

.field private final a:Lcom/google/android/exoplayer/extractor/webm/EbmlReader;

.field private final b:Lcom/google/android/exoplayer/extractor/webm/VarintReader;

.field private final c:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final d:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final e:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

.field private k:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

.field private l:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

.field private m:Z

.field private n:I

.field private o:J

.field private p:Z

.field private q:J

.field private r:J

.field private s:I

.field private t:J

.field private u:Lcom/google/android/exoplayer/util/LongArray;

.field private v:Lcom/google/android/exoplayer/util/LongArray;

.field private w:Z

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 164
    new-instance v0, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;

    invoke-direct {v0}, Lcom/google/android/exoplayer/extractor/webm/DefaultEbmlReader;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;-><init>(Lcom/google/android/exoplayer/extractor/webm/EbmlReader;)V

    .line 165
    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer/extractor/webm/EbmlReader;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    const-wide/16 v2, -0x1

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->f:J

    .line 126
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->g:J

    .line 127
    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->h:J

    .line 128
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->i:J

    .line 142
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->q:J

    .line 143
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->r:J

    .line 144
    iput v5, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->s:I

    .line 145
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->t:J

    .line 168
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->a:Lcom/google/android/exoplayer/extractor/webm/EbmlReader;

    .line 169
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->a:Lcom/google/android/exoplayer/extractor/webm/EbmlReader;

    new-instance v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;

    invoke-direct {v1, p0, v5}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$InnerEbmlReaderOutput;-><init>(Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;B)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/extractor/webm/EbmlReader;->a(Lcom/google/android/exoplayer/extractor/webm/EbmlReaderOutput;)V

    .line 170
    new-instance v0, Lcom/google/android/exoplayer/extractor/webm/VarintReader;

    invoke-direct {v0}, Lcom/google/android/exoplayer/extractor/webm/VarintReader;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->b:Lcom/google/android/exoplayer/extractor/webm/VarintReader;

    .line 171
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->c:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 172
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->d:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 173
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->e:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 174
    return-void
.end method

.method static a(I)I
    .locals 1

    .prologue
    .line 204
    sparse-switch p0, :sswitch_data_0

    .line 258
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 223
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 244
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 247
    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 253
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 256
    :sswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 204
    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_1
        0x86 -> :sswitch_2
        0x9f -> :sswitch_1
        0xa0 -> :sswitch_0
        0xa1 -> :sswitch_3
        0xa3 -> :sswitch_3
        0xae -> :sswitch_0
        0xb0 -> :sswitch_1
        0xb3 -> :sswitch_1
        0xb5 -> :sswitch_4
        0xb7 -> :sswitch_0
        0xba -> :sswitch_1
        0xbb -> :sswitch_0
        0xd7 -> :sswitch_1
        0xe0 -> :sswitch_0
        0xe1 -> :sswitch_0
        0xe7 -> :sswitch_1
        0xf1 -> :sswitch_1
        0xfb -> :sswitch_1
        0x4282 -> :sswitch_2
        0x4285 -> :sswitch_1
        0x42f7 -> :sswitch_1
        0x4489 -> :sswitch_4
        0x47e1 -> :sswitch_1
        0x47e2 -> :sswitch_3
        0x47e7 -> :sswitch_0
        0x47e8 -> :sswitch_1
        0x4dbb -> :sswitch_0
        0x5031 -> :sswitch_1
        0x5032 -> :sswitch_1
        0x5033 -> :sswitch_1
        0x5035 -> :sswitch_0
        0x53ab -> :sswitch_3
        0x53ac -> :sswitch_1
        0x56aa -> :sswitch_1
        0x56bb -> :sswitch_1
        0x6240 -> :sswitch_0
        0x63a2 -> :sswitch_3
        0x6d80 -> :sswitch_0
        0x2ad7b1 -> :sswitch_1
        0x114d9b74 -> :sswitch_0
        0x1549a966 -> :sswitch_0
        0x1654ae6b -> :sswitch_0
        0x18538067 -> :sswitch_0
        0x1a45dfa3 -> :sswitch_0
        0x1c53bb6b -> :sswitch_0
        0x1f43b675 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(J)J
    .locals 5

    .prologue
    .line 797
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->h:J

    mul-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private a()Lcom/google/android/exoplayer/MediaFormat;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, -0x1

    .line 645
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->l:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    if-eqz v0, :cond_0

    const-string v0, "V_VP8"

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->l:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v2, v2, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    const-string v0, "video/x-vnd.on2.vp8"

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->i:J

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->l:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v4, v4, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->f:I

    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->l:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v5, v5, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->g:I

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer/MediaFormat;->a(Ljava/lang/String;IJIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    .line 649
    :goto_0
    return-object v0

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->l:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    if-eqz v0, :cond_1

    const-string v0, "V_VP9"

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->l:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v2, v2, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 649
    const-string v0, "video/x-vnd.on2.vp9"

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->i:J

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->l:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v4, v4, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->f:I

    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->l:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v5, v5, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->g:I

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer/MediaFormat;->a(Ljava/lang/String;IJIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    goto :goto_0

    .line 652
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Unable to build format"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Lcom/google/android/exoplayer/extractor/TrackOutput;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 633
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->C:J

    iget v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->B:I

    iget v5, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->z:I

    const/4 v7, 0x0

    move-object v1, p1

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(JIII[B)V

    .line 634
    iput v6, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->y:I

    .line 635
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->D:Z

    .line 636
    return-void
.end method

.method private a(Lcom/google/android/exoplayer/extractor/PositionHolder;J)Z
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 779
    iget-boolean v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->p:Z

    if-eqz v2, :cond_0

    .line 780
    iput-wide p2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->r:J

    .line 781
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->q:J

    iput-wide v2, p1, Lcom/google/android/exoplayer/extractor/PositionHolder;->a:J

    .line 782
    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->s:I

    .line 783
    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->p:Z

    .line 793
    :goto_0
    return v0

    .line 788
    :cond_0
    iget v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->s:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->r:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 789
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->r:J

    iput-wide v2, p1, Lcom/google/android/exoplayer/extractor/PositionHolder;->a:J

    .line 790
    iput-wide v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->r:J

    goto :goto_0

    :cond_1
    move v0, v1

    .line 793
    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 801
    const-string v0, "V_VP8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "V_VP9"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "A_OPUS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "A_VORBIS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Lcom/google/android/exoplayer/MediaFormat;
    .locals 7

    .prologue
    const/16 v4, 0x40

    .line 663
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->k:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    if-eqz v0, :cond_0

    const-string v0, "A_VORBIS"

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->k:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v1, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    const-string v0, "audio/vorbis"

    const/16 v1, 0x2000

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->i:J

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->k:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v4, v4, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->h:I

    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->k:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v5, v5, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->i:I

    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->e()Ljava/util/ArrayList;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer/MediaFormat;->b(Ljava/lang/String;IJIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    .line 674
    :goto_0
    return-object v0

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->k:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    if-eqz v0, :cond_1

    const-string v0, "A_OPUS"

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->k:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v1, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 668
    new-instance v6, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 669
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->k:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->j:[B

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->k:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-wide v2, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->k:J

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->k:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-wide v2, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->l:J

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    const-string v0, "audio/opus"

    const/16 v1, 0x1680

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->i:J

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->k:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v4, v4, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->h:I

    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->k:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v5, v5, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->i:I

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer/MediaFormat;->b(Ljava/lang/String;IJIILjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    goto :goto_0

    .line 678
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Unable to build format"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d()Lcom/google/android/exoplayer/extractor/ChunkIndex;
    .locals 13

    .prologue
    const-wide/16 v4, -0x1

    const/4 v12, 0x0

    const/4 v0, 0x0

    .line 689
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->f:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 690
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Segment start/end offsets unknown"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 691
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->i:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 692
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Duration unknown"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 693
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->u:Lcom/google/android/exoplayer/util/LongArray;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->v:Lcom/google/android/exoplayer/util/LongArray;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->u:Lcom/google/android/exoplayer/util/LongArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/LongArray;->a()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->u:Lcom/google/android/exoplayer/util/LongArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/LongArray;->a()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->v:Lcom/google/android/exoplayer/util/LongArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/LongArray;->a()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 695
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Invalid/missing cue points"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->u:Lcom/google/android/exoplayer/util/LongArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/LongArray;->a()I

    move-result v2

    .line 698
    new-array v3, v2, [I

    .line 699
    new-array v4, v2, [J

    .line 700
    new-array v5, v2, [J

    .line 701
    new-array v6, v2, [J

    move v1, v0

    .line 702
    :goto_0
    if-ge v1, v2, :cond_4

    .line 703
    iget-object v7, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->u:Lcom/google/android/exoplayer/util/LongArray;

    invoke-virtual {v7, v1}, Lcom/google/android/exoplayer/util/LongArray;->a(I)J

    move-result-wide v8

    aput-wide v8, v6, v1

    .line 704
    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->f:J

    iget-object v7, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->v:Lcom/google/android/exoplayer/util/LongArray;

    invoke-virtual {v7, v1}, Lcom/google/android/exoplayer/util/LongArray;->a(I)J

    move-result-wide v10

    add-long/2addr v8, v10

    aput-wide v8, v4, v1

    .line 702
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 706
    :cond_4
    :goto_1
    add-int/lit8 v1, v2, -0x1

    if-ge v0, v1, :cond_5

    .line 707
    add-int/lit8 v1, v0, 0x1

    aget-wide v8, v4, v1

    aget-wide v10, v4, v0

    sub-long/2addr v8, v10

    long-to-int v1, v8

    aput v1, v3, v0

    .line 708
    add-int/lit8 v1, v0, 0x1

    aget-wide v8, v6, v1

    aget-wide v10, v6, v0

    sub-long/2addr v8, v10

    aput-wide v8, v5, v0

    .line 706
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 710
    :cond_5
    add-int/lit8 v0, v2, -0x1

    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->f:J

    iget-wide v10, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->g:J

    add-long/2addr v8, v10

    add-int/lit8 v1, v2, -0x1

    aget-wide v10, v4, v1

    sub-long/2addr v8, v10

    long-to-int v1, v8

    aput v1, v3, v0

    .line 712
    add-int/lit8 v0, v2, -0x1

    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->i:J

    add-int/lit8 v1, v2, -0x1

    aget-wide v10, v6, v1

    sub-long/2addr v8, v10

    aput-wide v8, v5, v0

    .line 713
    iput-object v12, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->u:Lcom/google/android/exoplayer/util/LongArray;

    .line 714
    iput-object v12, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->v:Lcom/google/android/exoplayer/util/LongArray;

    .line 715
    new-instance v0, Lcom/google/android/exoplayer/extractor/ChunkIndex;

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/android/exoplayer/extractor/ChunkIndex;-><init>([I[J[J[J)V

    return-object v0
.end method

.method private e()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v6, -0x1

    const/4 v0, 0x0

    .line 726
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->k:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v5, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->j:[B

    .line 727
    const/4 v1, 0x0

    aget-byte v1, v5, v1

    if-eq v1, v2, :cond_0

    .line 728
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Error parsing vorbis codec private"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Error parsing vorbis codec private"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v2, v0

    move v3, v4

    .line 732
    :goto_0
    :try_start_1
    aget-byte v1, v5, v3

    if-ne v1, v6, :cond_1

    .line 733
    add-int/lit16 v1, v2, 0xff

    .line 734
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_0

    .line 736
    :cond_1
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v5, v3

    add-int/2addr v2, v3

    .line 739
    :goto_1
    aget-byte v3, v5, v1

    if-ne v3, v6, :cond_2

    .line 740
    add-int/lit16 v0, v0, 0xff

    .line 741
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 743
    :cond_2
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v5, v1

    add-int/2addr v0, v1

    .line 745
    aget-byte v1, v5, v3

    if-eq v1, v4, :cond_3

    .line 746
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Error parsing vorbis codec private"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 748
    :cond_3
    new-array v1, v2, [B

    .line 749
    const/4 v4, 0x0

    invoke-static {v5, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 750
    add-int/2addr v2, v3

    .line 751
    aget-byte v3, v5, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    .line 752
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Error parsing vorbis codec private"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 754
    :cond_4
    add-int/2addr v0, v2

    .line 755
    aget-byte v2, v5, v0

    const/4 v3, 0x5

    if-eq v2, v3, :cond_5

    .line 756
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Error parsing vorbis codec private"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 758
    :cond_5
    array-length v2, v5

    sub-int/2addr v2, v0

    new-array v2, v2, [B

    .line 759
    const/4 v3, 0x0

    array-length v4, v5

    sub-int/2addr v4, v0

    invoke-static {v5, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 760
    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 761
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 763
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 192
    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->D:Z

    move v2, v0

    .line 194
    :cond_0
    if-eqz v2, :cond_1

    iget-boolean v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->D:Z

    if-nez v3, :cond_1

    .line 195
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->a:Lcom/google/android/exoplayer/extractor/webm/EbmlReader;

    invoke-interface {v2, p1}, Lcom/google/android/exoplayer/extractor/webm/EbmlReader;->a(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z

    move-result v2

    .line 196
    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->a()J

    move-result-wide v4

    invoke-direct {p0, p2, v4, v5}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->a(Lcom/google/android/exoplayer/extractor/PositionHolder;J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 200
    :goto_0
    return v0

    :cond_1
    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method final a(ID)V
    .locals 2

    .prologue
    .line 484
    sparse-switch p1, :sswitch_data_0

    .line 492
    :goto_0
    return-void

    .line 486
    :sswitch_0
    double-to-long v0, p2

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->i:J

    goto :goto_0

    .line 489
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->j:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    double-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->i:I

    goto :goto_0

    .line 484
    :sswitch_data_0
    .sparse-switch
        0xb5 -> :sswitch_1
        0x4489 -> :sswitch_0
    .end sparse-switch
.end method

.method final a(IILcom/google/android/exoplayer/extractor/ExtractorInput;)V
    .locals 10

    .prologue
    .line 514
    sparse-switch p1, :sswitch_data_0

    .line 628
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 516
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->e:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 517
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->e:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    rsub-int/lit8 v1, p2, 0x4

    invoke-interface {p3, v0, v1, p2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->a([BII)V

    .line 518
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->e:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 519
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->e:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->f()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->n:I

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 522
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->j:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    new-array v1, p2, [B

    iput-object v1, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->j:[B

    .line 523
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->j:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->j:[B

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1, p2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->a([BII)V

    goto :goto_0

    .line 526
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->j:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    new-array v1, p2, [B

    iput-object v1, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->e:[B

    .line 527
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->j:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->e:[B

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1, p2}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->a([BII)V

    goto :goto_0

    .line 536
    :sswitch_3
    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->y:I

    if-nez v0, :cond_1

    .line 537
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->b:Lcom/google/android/exoplayer/extractor/webm/VarintReader;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p3, v1, v2}, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->a(Lcom/google/android/exoplayer/extractor/ExtractorInput;ZZ)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->A:I

    .line 538
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->b:Lcom/google/android/exoplayer/extractor/webm/VarintReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->x:I

    .line 539
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->y:I

    .line 543
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->k:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->l:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->k:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->b:I

    iget v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->A:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->l:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->b:I

    iget v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->A:I

    if-ne v0, v1, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->k:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->l:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->k:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->b:I

    iget v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->A:I

    if-ne v0, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->k:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->l:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->l:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->b:I

    iget v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->A:I

    if-eq v0, v1, :cond_5

    .line 550
    :cond_4
    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->x:I

    sub-int v0, p2, v0

    invoke-interface {p3, v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->a(I)V

    .line 551
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->y:I

    goto :goto_0

    .line 555
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->k:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->A:I

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->k:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v1, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->b:I

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->k:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    .line 558
    :goto_1
    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->m:Lcom/google/android/exoplayer/extractor/TrackOutput;

    .line 560
    iget v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->y:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 561
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->c:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v3, v1, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    .line 563
    iget-boolean v1, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->d:Z

    if-eqz v1, :cond_7

    const/4 v1, 0x4

    .line 564
    :goto_2
    const/4 v2, 0x0

    invoke-interface {p3, v3, v2, v1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->a([BII)V

    .line 565
    iget v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->x:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->x:I

    .line 568
    const/4 v1, 0x0

    aget-byte v1, v3, v1

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 570
    iget-wide v6, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->t:J

    int-to-long v8, v1

    invoke-direct {p0, v8, v9}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->a(J)J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->C:J

    .line 573
    const/4 v1, 0x2

    aget-byte v1, v3, v1

    and-int/lit8 v1, v1, 0x6

    shr-int/lit8 v1, v1, 0x1

    .line 574
    if-eqz v1, :cond_8

    .line 575
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Lacing mode not supported: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 555
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->l:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    goto :goto_1

    .line 563
    :cond_7
    const/4 v1, 0x3

    goto :goto_2

    .line 577
    :cond_8
    const/4 v1, 0x2

    aget-byte v1, v3, v1

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_9

    const/4 v1, 0x1

    move v4, v1

    .line 578
    :goto_3
    const/16 v1, 0xa3

    if-ne p1, v1, :cond_a

    const/4 v1, 0x2

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_a

    const/4 v1, 0x1

    .line 580
    :goto_4
    const/4 v2, 0x0

    .line 583
    iget-boolean v6, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->d:Z

    if-eqz v6, :cond_14

    .line 584
    const/4 v2, 0x3

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0x80

    const/16 v6, 0x80

    if-ne v2, v6, :cond_b

    .line 585
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Extension bit is set in signal byte"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_9
    const/4 v1, 0x0

    move v4, v1

    goto :goto_3

    .line 578
    :cond_a
    const/4 v1, 0x0

    goto :goto_4

    .line 587
    :cond_b
    const/4 v2, 0x3

    aget-byte v2, v3, v2

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    const/4 v2, 0x1

    :goto_5
    move v3, v2

    .line 590
    :goto_6
    if-eqz v1, :cond_f

    const/4 v1, 0x1

    move v2, v1

    :goto_7
    if-eqz v4, :cond_10

    const/high16 v1, 0x8000000

    :goto_8
    or-int/2addr v2, v1

    if-eqz v3, :cond_11

    const/4 v1, 0x2

    :goto_9
    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->B:I

    .line 593
    iget v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->x:I

    sub-int v1, p2, v1

    iput v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->z:I

    .line 594
    if-eqz v3, :cond_c

    .line 596
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->c:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    const/4 v2, 0x0

    const/16 v3, 0x8

    aput-byte v3, v1, v2

    .line 597
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->c:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 598
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->c:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v2, 0x1

    invoke-interface {v5, v1, v2}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 599
    iget v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->z:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->z:I

    .line 601
    :cond_c
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->y:I

    .line 604
    :cond_d
    :goto_a
    iget v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->x:I

    if-ge v1, p2, :cond_12

    .line 605
    iget v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->x:I

    iget v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->x:I

    sub-int v2, p2, v2

    invoke-interface {v5, p3, v2}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->x:I

    goto :goto_a

    .line 587
    :cond_e
    const/4 v2, 0x0

    goto :goto_5

    .line 590
    :cond_f
    const/4 v1, 0x0

    move v2, v1

    goto :goto_7

    :cond_10
    const/4 v1, 0x0

    goto :goto_8

    :cond_11
    const/4 v1, 0x0

    goto :goto_9

    .line 608
    :cond_12
    const-string v1, "A_VORBIS"

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 615
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->d:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 616
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->d:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-interface {v5, v0, v1}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 617
    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->z:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->z:I

    .line 623
    :cond_13
    const/16 v0, 0xa3

    if-ne p1, v0, :cond_0

    .line 624
    invoke-direct {p0, v5}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->a(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    goto/16 :goto_0

    :cond_14
    move v3, v2

    goto :goto_6

    .line 514
    :sswitch_data_0
    .sparse-switch
        0xa1 -> :sswitch_3
        0xa3 -> :sswitch_3
        0x47e2 -> :sswitch_2
        0x53ab -> :sswitch_0
        0x63a2 -> :sswitch_1
    .end sparse-switch
.end method

.method final a(IJ)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const-wide/16 v0, 0x1

    .line 387
    sparse-switch p1, :sswitch_data_0

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 390
    :sswitch_0
    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 391
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EBMLReadVersion "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :sswitch_1
    cmp-long v0, p2, v0

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x2

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 397
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DocTypeReadVersion "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :sswitch_2
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->f:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->o:J

    goto :goto_0

    .line 406
    :sswitch_3
    iput-wide p2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->h:J

    goto :goto_0

    .line 409
    :sswitch_4
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->j:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->f:I

    goto :goto_0

    .line 412
    :sswitch_5
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->j:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->g:I

    goto :goto_0

    .line 415
    :sswitch_6
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->j:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->b:I

    goto :goto_0

    .line 418
    :sswitch_7
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->j:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->c:I

    goto :goto_0

    .line 421
    :sswitch_8
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->j:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iput-wide p2, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->k:J

    goto :goto_0

    .line 424
    :sswitch_9
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->j:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iput-wide p2, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->l:J

    goto :goto_0

    .line 427
    :sswitch_a
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->j:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->h:I

    goto :goto_0

    .line 430
    :sswitch_b
    iput-boolean v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->E:Z

    goto :goto_0

    .line 434
    :sswitch_c
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 435
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ContentEncodingOrder "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :sswitch_d
    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 442
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ContentEncodingScope "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :sswitch_e
    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 448
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ContentEncodingType "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :sswitch_f
    const-wide/16 v0, 0x5

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 454
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ContentEncAlgo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :sswitch_10
    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 460
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AESSettingsCipherMode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :sswitch_11
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->u:Lcom/google/android/exoplayer/util/LongArray;

    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->a(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer/util/LongArray;->a(J)V

    goto/16 :goto_0

    .line 467
    :sswitch_12
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->w:Z

    if-nez v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->v:Lcom/google/android/exoplayer/util/LongArray;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/exoplayer/util/LongArray;->a(J)V

    .line 472
    iput-boolean v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->w:Z

    goto/16 :goto_0

    .line 476
    :sswitch_13
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->t:J

    goto/16 :goto_0

    .line 387
    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_7
        0x9f -> :sswitch_a
        0xb0 -> :sswitch_4
        0xb3 -> :sswitch_11
        0xba -> :sswitch_5
        0xd7 -> :sswitch_6
        0xe7 -> :sswitch_13
        0xf1 -> :sswitch_12
        0xfb -> :sswitch_b
        0x4285 -> :sswitch_1
        0x42f7 -> :sswitch_0
        0x47e1 -> :sswitch_f
        0x47e8 -> :sswitch_10
        0x5031 -> :sswitch_c
        0x5032 -> :sswitch_d
        0x5033 -> :sswitch_e
        0x53ac -> :sswitch_2
        0x56aa -> :sswitch_8
        0x56bb -> :sswitch_9
        0x2ad7b1 -> :sswitch_3
    .end sparse-switch
.end method

.method final a(IJJ)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 264
    sparse-switch p1, :sswitch_data_0

    .line 303
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 266
    :sswitch_1
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->f:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 267
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Multiple Segment elements not supported"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_1
    iput-wide p2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->f:J

    .line 270
    iput-wide p4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->g:J

    goto :goto_0

    .line 273
    :sswitch_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->n:I

    .line 274
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->o:J

    goto :goto_0

    .line 277
    :sswitch_3
    new-instance v0, Lcom/google/android/exoplayer/util/LongArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/LongArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->u:Lcom/google/android/exoplayer/util/LongArray;

    .line 278
    new-instance v0, Lcom/google/android/exoplayer/util/LongArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/LongArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->v:Lcom/google/android/exoplayer/util/LongArray;

    goto :goto_0

    .line 281
    :sswitch_4
    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->w:Z

    goto :goto_0

    .line 286
    :sswitch_5
    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->s:I

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->q:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 287
    iput-boolean v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->p:Z

    goto :goto_0

    .line 291
    :sswitch_6
    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->E:Z

    goto :goto_0

    .line 297
    :sswitch_7
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->j:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iput-boolean v4, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->d:Z

    goto :goto_0

    .line 300
    :sswitch_8
    new-instance v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;-><init>(B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->j:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    goto :goto_0

    .line 264
    :sswitch_data_0
    .sparse-switch
        0xa0 -> :sswitch_6
        0xae -> :sswitch_8
        0xbb -> :sswitch_4
        0x4dbb -> :sswitch_2
        0x5035 -> :sswitch_7
        0x6240 -> :sswitch_0
        0x18538067 -> :sswitch_1
        0x1c53bb6b -> :sswitch_3
        0x1f43b675 -> :sswitch_5
    .end sparse-switch
.end method

.method final a(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 497
    sparse-switch p1, :sswitch_data_0

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 500
    :sswitch_0
    const-string v0, "webm"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DocType "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->j:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iput-object p2, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->a:Ljava/lang/String;

    goto :goto_0

    .line 497
    :sswitch_data_0
    .sparse-switch
        0x86 -> :sswitch_1
        0x4282 -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->F:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .line 179
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 183
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->t:J

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->y:I

    .line 185
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->a:Lcom/google/android/exoplayer/extractor/webm/EbmlReader;

    invoke-interface {v0}, Lcom/google/android/exoplayer/extractor/webm/EbmlReader;->a()V

    .line 186
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->b:Lcom/google/android/exoplayer/extractor/webm/VarintReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/webm/VarintReader;->a()V

    .line 187
    return-void
.end method

.method final b(I)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x2

    .line 308
    sparse-switch p1, :sswitch_data_0

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 310
    :sswitch_0
    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->n:I

    if-eq v0, v1, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->o:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 311
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Mandatory element SeekID or SeekPosition not found"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->n:I

    const v1, 0x1c53bb6b

    if-ne v0, v1, :cond_0

    .line 314
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->o:J

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->q:J

    goto :goto_0

    .line 318
    :sswitch_1
    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->s:I

    if-eq v0, v2, :cond_0

    .line 319
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->F:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->d()Lcom/google/android/exoplayer/extractor/ChunkIndex;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->a(Lcom/google/android/exoplayer/extractor/SeekMap;)V

    .line 320
    iput v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->s:I

    goto :goto_0

    .line 326
    :sswitch_2
    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->y:I

    if-ne v0, v2, :cond_0

    .line 331
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->E:Z

    if-nez v0, :cond_3

    .line 332
    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->B:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->B:I

    .line 334
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->k:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->A:I

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->k:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v1, v1, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->b:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->k:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->m:Lcom/google/android/exoplayer/extractor/TrackOutput;

    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->a(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->l:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->m:Lcom/google/android/exoplayer/extractor/TrackOutput;

    goto :goto_1

    .line 339
    :sswitch_3
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->j:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-boolean v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->d:Z

    if-nez v0, :cond_5

    .line 341
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Found an unsupported ContentEncoding"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->j:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->e:[B

    if-nez v0, :cond_6

    .line 344
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->m:Z

    if-nez v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->F:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    new-instance v1, Lcom/google/android/exoplayer/drm/DrmInitData$Universal;

    const-string v2, "video/webm"

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->j:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v3, v3, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->e:[B

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer/drm/DrmInitData$Universal;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->a(Lcom/google/android/exoplayer/drm/DrmInitData;)V

    .line 349
    iput-boolean v4, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->m:Z

    goto/16 :goto_0

    .line 353
    :sswitch_4
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->j:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->b:I

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->j:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->c:I

    if-ne v0, v1, :cond_8

    .line 354
    :cond_7
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "Mandatory element TrackNumber or TrackType not found"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->j:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->c:I

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->k:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    if-nez v0, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->j:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->c:I

    if-ne v0, v4, :cond_b

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->l:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    if-eqz v0, :cond_b

    .line 359
    :cond_a
    iput-object v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->j:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    goto/16 :goto_0

    .line 362
    :cond_b
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->j:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->c:I

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->j:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 363
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->j:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->k:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    .line 364
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->k:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->F:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->k:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v2, v2, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->b:I

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->r_(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->m:Lcom/google/android/exoplayer/extractor/TrackOutput;

    .line 365
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->k:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->m:Lcom/google/android/exoplayer/extractor/TrackOutput;

    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->c()Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 373
    :cond_c
    :goto_2
    iput-object v3, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->j:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    goto/16 :goto_0

    .line 366
    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->j:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->c:I

    if-ne v0, v4, :cond_c

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->j:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 367
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->j:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->l:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    .line 368
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->l:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->F:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->l:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget v2, v2, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->b:I

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->r_(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->m:Lcom/google/android/exoplayer/extractor/TrackOutput;

    .line 369
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->l:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;->m:Lcom/google/android/exoplayer/extractor/TrackOutput;

    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->a()Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(Lcom/google/android/exoplayer/MediaFormat;)V

    goto :goto_2

    .line 376
    :sswitch_5
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->l:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->k:Lcom/google/android/exoplayer/extractor/webm/WebmExtractor$TrackFormat;

    if-nez v0, :cond_e

    .line 377
    new-instance v0, Lcom/google/android/exoplayer/ParserException;

    const-string v1, "No valid tracks were found"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_e
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/webm/WebmExtractor;->F:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    invoke-interface {v0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->a()V

    goto/16 :goto_0

    .line 308
    nop

    :sswitch_data_0
    .sparse-switch
        0xa0 -> :sswitch_2
        0xae -> :sswitch_4
        0x4dbb -> :sswitch_0
        0x6240 -> :sswitch_3
        0x1654ae6b -> :sswitch_5
        0x1c53bb6b -> :sswitch_1
    .end sparse-switch
.end method
