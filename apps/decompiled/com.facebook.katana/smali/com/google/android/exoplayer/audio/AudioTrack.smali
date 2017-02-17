.class public final Lcom/google/android/exoplayer/audio/AudioTrack;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field public static a:Z


# instance fields
.field private A:I

.field private B:I

.field private C:Z

.field private D:Z

.field private E:I

.field private final b:Landroid/os/ConditionVariable;

.field private final c:[J

.field private final d:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

.field private e:Landroid/media/AudioTrack;

.field private f:Landroid/media/AudioTrack;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:J

.field private p:J

.field private q:Z

.field private r:J

.field private s:Ljava/lang/reflect/Method;

.field private t:J

.field private u:I

.field private v:J

.field private w:J

.field private x:J

.field private y:F

.field private z:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/exoplayer/audio/AudioTrack;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-boolean v3, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->D:Z

    .line 186
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->b:Landroid/os/ConditionVariable;

    .line 187
    sget v0, Lcom/google/android/exoplayer/util/Util;->a:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 189
    :try_start_0
    const-class v0, Landroid/media/AudioTrack;

    const-string v1, "getLatency"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->s:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :cond_0
    :goto_0
    sget v0, Lcom/google/android/exoplayer/util/Util;->a:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 196
    new-instance v0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;

    invoke-direct {v0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtilV19;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->d:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    .line 200
    :goto_1
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->c:[J

    .line 201
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->y:F

    .line 202
    iput v3, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->u:I

    .line 203
    return-void

    .line 198
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;-><init>(B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->d:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 541
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method private a(J)J
    .locals 5

    .prologue
    .line 746
    iget-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->C:Z

    if-eqz v0, :cond_1

    .line 747
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->E:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 750
    :goto_0
    return-wide v0

    .line 747
    :cond_0
    const-wide/16 v0, 0x8

    mul-long/2addr v0, p1

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->g:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->E:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_0

    .line 750
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->j:I

    int-to-long v0, v0

    div-long v0, p1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/exoplayer/audio/AudioTrack;)Landroid/os/ConditionVariable;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->b:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method private static a(Landroid/media/AudioTrack;F)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 572
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 573
    return-void
.end method

.method private b(J)J
    .locals 5

    .prologue
    .line 755
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p1

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->g:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static b(Landroid/media/AudioTrack;F)V
    .locals 0

    .prologue
    .line 577
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 578
    return-void
.end method

.method private b(Landroid/media/MediaFormat;)V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 337
    const-string v0, "channel-count"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 339
    packed-switch v4, :pswitch_data_0

    .line 353
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported channel count: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :pswitch_1
    const/4 v0, 0x4

    .line 356
    :goto_0
    const-string v1, "sample-rate"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    .line 357
    const-string v1, "mime"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 360
    invoke-static {v1}, Lcom/google/android/exoplayer/util/MimeTypes;->e(Ljava/lang/String;)I

    move-result v6

    .line 361
    const/4 v1, 0x5

    if-eq v6, v1, :cond_0

    const/4 v1, 0x6

    if-ne v6, v1, :cond_1

    :cond_0
    move v1, v3

    .line 362
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->a()Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->g:I

    if-ne v7, v5, :cond_2

    iget v7, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->h:I

    if-ne v7, v0, :cond_2

    iget-boolean v7, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->C:Z

    if-nez v7, :cond_2

    if-nez v1, :cond_2

    .line 390
    :goto_2
    return-void

    .line 344
    :pswitch_2
    const/16 v0, 0xc

    .line 345
    goto :goto_0

    .line 347
    :pswitch_3
    const/16 v0, 0xfc

    .line 348
    goto :goto_0

    .line 350
    :pswitch_4
    const/16 v0, 0x3fc

    .line 351
    goto :goto_0

    :cond_1
    move v1, v2

    .line 361
    goto :goto_1

    .line 368
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->i()V

    .line 370
    iput v6, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->i:I

    .line 371
    iput v5, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->g:I

    .line 372
    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->h:I

    .line 373
    iput-boolean v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->C:Z

    .line 374
    iput v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->E:I

    .line 375
    mul-int/lit8 v1, v4, 0x2

    iput v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->j:I

    .line 376
    invoke-static {v5, v0, v6}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->k:I

    .line 377
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->k:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_3

    :goto_3
    invoke-static {v3}, Lcom/google/android/exoplayer/util/Assertions;->b(Z)V

    .line 379
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->k:I

    mul-int/lit8 v2, v0, 0x4

    .line 383
    const-wide/32 v0, 0x3d090

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/audio/AudioTrack;->c(J)J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->j:I

    mul-int/2addr v0, v1

    .line 384
    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->k:I

    int-to-long v4, v1

    const-wide/32 v6, 0xb71b0

    invoke-direct {p0, v6, v7}, Lcom/google/android/exoplayer/audio/AudioTrack;->c(J)J

    move-result-wide v6

    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->j:I

    int-to-long v8, v1

    mul-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    .line 386
    if-ge v2, v0, :cond_4

    :goto_4
    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->l:I

    goto :goto_2

    :cond_3
    move v3, v2

    .line 377
    goto :goto_3

    .line 386
    :cond_4
    if-le v2, v1, :cond_5

    move v0, v1

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_4

    .line 339
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private c(J)J
    .locals 5

    .prologue
    .line 759
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->g:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 630
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->e:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    .line 643
    :goto_0
    return-void

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->e:Landroid/media/AudioTrack;

    .line 636
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->e:Landroid/media/AudioTrack;

    .line 637
    new-instance v1, Lcom/google/android/exoplayer/audio/AudioTrack$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer/audio/AudioTrack$2;-><init>(Lcom/google/android/exoplayer/audio/AudioTrack;Landroid/media/AudioTrack;)V

    invoke-virtual {v1}, Lcom/google/android/exoplayer/audio/AudioTrack$2;->start()V

    goto :goto_0
.end method

.method private l()Z
    .locals 1

    .prologue
    .line 647
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->u:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()V
    .locals 12

    .prologue
    .line 652
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->d:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->c()J

    move-result-wide v2

    .line 653
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 657
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    .line 658
    iget-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->p:J

    sub-long v0, v4, v0

    const-wide/16 v6, 0x7530

    cmp-long v0, v0, v6

    if-ltz v0, :cond_3

    .line 660
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->c:[J

    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->m:I

    sub-long v6, v2, v4

    aput-wide v6, v0, v1

    .line 661
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->m:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->m:I

    .line 662
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->n:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    .line 663
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->n:I

    .line 665
    :cond_2
    iput-wide v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->p:J

    .line 666
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->o:J

    .line 667
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->n:I

    if-ge v0, v1, :cond_3

    .line 668
    iget-wide v6, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->o:J

    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->c:[J

    aget-wide v8, v1, v0

    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->n:I

    int-to-long v10, v1

    div-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->o:J

    .line 667
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 674
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->C:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->r:J

    sub-long v0, v4, v0

    const-wide/32 v6, 0x7a120

    cmp-long v0, v0, v6

    if-ltz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->d:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->q:Z

    .line 676
    iget-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->q:Z

    if-eqz v0, :cond_4

    .line 678
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->d:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->e()J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    .line 679
    iget-object v6, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->d:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v6}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->f()J

    move-result-wide v6

    .line 680
    iget-wide v8, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->w:J

    cmp-long v8, v0, v8

    if-gez v8, :cond_6

    .line 682
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->q:Z

    .line 698
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->s:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_5

    .line 702
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->s:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->f:Landroid/media/AudioTrack;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->l:I

    int-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer/audio/AudioTrack;->a(J)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer/audio/AudioTrack;->b(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->x:J

    .line 705
    iget-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->x:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->x:J

    .line 707
    iget-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->x:J

    const-wide/32 v2, 0x4c4b40

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 708
    const-string v0, "AudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring impossibly large audio latency: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->x:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->x:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    :cond_5
    :goto_3
    iput-wide v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->r:J

    goto/16 :goto_0

    .line 683
    :cond_6
    sub-long v8, v0, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v10, 0x4c4b40

    cmp-long v8, v8, v10

    if-lez v8, :cond_7

    .line 685
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->q:Z

    .line 686
    const-string v8, "AudioTrack"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Spurious audio timestamp (system clock mismatch): "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 689
    :cond_7
    invoke-direct {p0, v6, v7}, Lcom/google/android/exoplayer/audio/AudioTrack;->b(J)J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v10, 0x4c4b40

    cmp-long v8, v8, v10

    if-lez v8, :cond_4

    .line 692
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->q:Z

    .line 693
    const-string v8, "AudioTrack"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Spurious audio timestamp (frame position mismatch): "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 713
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->s:Ljava/lang/reflect/Method;

    goto/16 :goto_3
.end method

.method private n()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 728
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->f:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    .line 729
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 730
    return-void

    .line 734
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->f:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    iput-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->f:Landroid/media/AudioTrack;

    .line 742
    :goto_0
    new-instance v1, Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->g:I

    iget v3, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->h:I

    iget v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->l:I

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;-><init>(IIII)V

    throw v1

    .line 739
    :catch_0
    move-exception v1

    iput-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->f:Landroid/media/AudioTrack;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->f:Landroid/media/AudioTrack;

    throw v0
.end method

.method private o()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 763
    iput-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->o:J

    .line 764
    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->n:I

    .line 765
    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->m:I

    .line 766
    iput-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->p:J

    .line 767
    iput-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->q:Z

    .line 768
    iput-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->r:J

    .line 769
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x3

    .line 282
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->b:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 284
    if-nez p1, :cond_2

    .line 285
    new-instance v0, Landroid/media/AudioTrack;

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->g:I

    iget v3, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->h:I

    iget v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->i:I

    iget v5, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->l:I

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->f:Landroid/media/AudioTrack;

    .line 292
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->n()V

    .line 294
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->f:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v7

    .line 295
    sget-boolean v0, Lcom/google/android/exoplayer/audio/AudioTrack;->a:Z

    if-eqz v0, :cond_1

    .line 296
    sget v0, Lcom/google/android/exoplayer/util/Util;->a:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_1

    .line 299
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->e:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->e:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    if-eq v7, v0, :cond_0

    .line 301
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->k()V

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->e:Landroid/media/AudioTrack;

    if-nez v0, :cond_1

    .line 304
    new-instance v0, Landroid/media/AudioTrack;

    const/16 v2, 0xfa0

    const/4 v3, 0x4

    const/4 v6, 0x0

    move v4, v8

    move v5, v8

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->e:Landroid/media/AudioTrack;

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->d:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->f:Landroid/media/AudioTrack;

    iget-boolean v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->C:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->a(Landroid/media/AudioTrack;Z)V

    .line 316
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->y:F

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->a(F)V

    .line 318
    return v7

    .line 289
    :cond_2
    new-instance v0, Landroid/media/AudioTrack;

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->g:I

    iget v3, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->h:I

    iget v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->i:I

    iget v5, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->l:I

    move v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->f:Landroid/media/AudioTrack;

    goto :goto_0
.end method

.method public final a(Ljava/nio/ByteBuffer;IIJ)I
    .locals 10

    .prologue
    .line 429
    if-nez p3, :cond_1

    .line 430
    const/4 v0, 0x2

    .line 535
    :cond_0
    :goto_0
    return v0

    .line 434
    :cond_1
    sget v0, Lcom/google/android/exoplayer/util/Util;->a:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->C:Z

    if-eqz v0, :cond_3

    .line 437
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->f:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 438
    const/4 v0, 0x0

    goto :goto_0

    .line 444
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->f:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->d:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 446
    const/4 v0, 0x0

    goto :goto_0

    .line 450
    :cond_3
    const/4 v0, 0x0

    .line 451
    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->B:I

    if-nez v1, :cond_5

    .line 452
    iget-boolean v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->C:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->E:I

    if-nez v1, :cond_4

    .line 453
    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->g:I

    invoke-static {p3, v1}, Lcom/google/android/exoplayer/util/Ac3Util;->a(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->E:I

    .line 458
    :cond_4
    int-to-long v2, p3

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer/audio/AudioTrack;->a(J)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer/audio/AudioTrack;->b(J)J

    move-result-wide v2

    sub-long v2, p4, v2

    .line 459
    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->u:I

    if-nez v1, :cond_a

    .line 460
    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->v:J

    .line 461
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->u:I

    .line 482
    :cond_5
    :goto_1
    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->B:I

    if-nez v1, :cond_8

    .line 483
    iput p3, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->B:I

    .line 484
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 485
    sget v1, Lcom/google/android/exoplayer/util/Util;->a:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_8

    .line 487
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->z:[B

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->z:[B

    array-length v1, v1

    if-ge v1, p3, :cond_7

    .line 488
    :cond_6
    new-array v1, p3, [B

    iput-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->z:[B

    .line 490
    :cond_7
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->z:[B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 491
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->A:I

    .line 495
    :cond_8
    const/4 v1, 0x0

    .line 496
    sget v2, Lcom/google/android/exoplayer/util/Util;->a:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_e

    .line 498
    iget-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->t:J

    iget-object v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->d:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->b()J

    move-result-wide v4

    iget v6, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->j:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    long-to-int v2, v2

    .line 500
    iget v3, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->l:I

    sub-int v2, v3, v2

    .line 501
    if-lez v2, :cond_9

    .line 502
    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->B:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 503
    iget-boolean v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->D:Z

    if-nez v2, :cond_c

    .line 504
    iget-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->f:Landroid/media/AudioTrack;

    iget-object v3, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->z:[B

    iget v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->A:I

    invoke-virtual {v2, v3, v4, v1}, Landroid/media/AudioTrack;->write([BII)I

    move-result v1

    .line 518
    :goto_2
    if-ltz v1, :cond_9

    .line 519
    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->A:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->A:I

    .line 526
    :cond_9
    :goto_3
    if-gez v1, :cond_f

    .line 527
    new-instance v0, Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;-><init>(I)V

    throw v0

    .line 464
    :cond_a
    iget-wide v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->v:J

    iget-wide v6, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->t:J

    invoke-direct {p0, v6, v7}, Lcom/google/android/exoplayer/audio/AudioTrack;->a(J)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/google/android/exoplayer/audio/AudioTrack;->b(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 466
    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->u:I

    const/4 v6, 0x1

    if-ne v1, v6, :cond_b

    sub-long v6, v4, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0x30d40

    cmp-long v1, v6, v8

    if-lez v1, :cond_b

    .line 468
    const-string v1, "AudioTrack"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Discontinuity detected [expected "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->u:I

    .line 472
    :cond_b
    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->u:I

    const/4 v6, 0x2

    if-ne v1, v6, :cond_5

    .line 475
    iget-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->v:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->v:J

    .line 476
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->u:I

    .line 477
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 508
    :cond_c
    iget-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->z:[B

    iget v3, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->A:I

    invoke-static {v2, v3, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 509
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 510
    div-int/lit8 v3, v1, 0x2

    .line 511
    new-array v4, v3, [S

    .line 512
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v3, :cond_d

    .line 513
    mul-int/lit8 v5, v1, 0x2

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    aput-short v5, v4, v1

    .line 512
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 515
    :cond_d
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->f:Landroid/media/AudioTrack;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2, v3}, Landroid/media/AudioTrack;->write([SII)I

    move-result v1

    .line 516
    mul-int/lit8 v1, v1, 0x2

    goto/16 :goto_2

    .line 523
    :cond_e
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->f:Landroid/media/AudioTrack;

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->B:I

    invoke-static {v1, p1, v2}, Lcom/google/android/exoplayer/audio/AudioTrack;->a(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v1

    goto/16 :goto_3

    .line 530
    :cond_f
    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->B:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->B:I

    .line 531
    iget-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->t:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->t:J

    .line 532
    iget v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->B:I

    if-nez v1, :cond_0

    .line 533
    or-int/lit8 v0, v0, 0x2

    goto/16 :goto_0
.end method

.method public final a(Z)J
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 225
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    const-wide/high16 v0, -0x8000000000000000L

    .line 257
    :cond_0
    :goto_0
    return-wide v0

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->f:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 230
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->m()V

    .line 233
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    div-long/2addr v0, v4

    .line 235
    iget-boolean v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->q:Z

    if-eqz v2, :cond_3

    .line 237
    iget-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->d:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->e()J

    move-result-wide v2

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 238
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/audio/AudioTrack;->c(J)J

    move-result-wide v0

    .line 240
    iget-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->d:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->f()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 241
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/audio/AudioTrack;->b(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->v:J

    add-long/2addr v0, v2

    .line 242
    goto :goto_0

    .line 243
    :cond_3
    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->n:I

    if-nez v2, :cond_4

    .line 245
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->d:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->v:J

    add-long/2addr v0, v2

    .line 252
    :goto_1
    if-nez p1, :cond_0

    .line 253
    iget-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->x:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 250
    :cond_4
    iget-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->o:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->v:J

    add-long/2addr v0, v2

    goto :goto_1
.end method

.method public final a(F)V
    .locals 2

    .prologue
    .line 560
    iput p1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->y:F

    .line 561
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    sget v0, Lcom/google/android/exoplayer/util/Util;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 563
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->f:Landroid/media/AudioTrack;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer/audio/AudioTrack;->a(Landroid/media/AudioTrack;F)V

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->f:Landroid/media/AudioTrack;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer/audio/AudioTrack;->b(Landroid/media/AudioTrack;F)V

    goto :goto_0
.end method

.method public final a(Landroid/media/MediaFormat;)V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/audio/AudioTrack;->b(Landroid/media/MediaFormat;)V

    .line 327
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->f:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/audio/AudioTrack;->a(I)I

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->D:Z

    .line 394
    return-void
.end method

.method public final d()V
    .locals 4

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->w:J

    .line 400
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->f:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 402
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 407
    iget v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->u:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 408
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->u:I

    .line 410
    :cond_0
    return-void
.end method

.method public final f()Z
    .locals 4

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->t:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/audio/AudioTrack;->a(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->d:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->d:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->a()Z

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

.method public final g()Z
    .locals 4

    .prologue
    .line 555
    iget-wide v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->t:J

    iget v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->k:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->o()V

    .line 584
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->f:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 586
    :cond_0
    return-void
.end method

.method public final i()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 594
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 595
    iput-wide v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->t:J

    .line 596
    iput v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->B:I

    .line 597
    iput v2, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->u:I

    .line 598
    iput-wide v4, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->x:J

    .line 599
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->o()V

    .line 600
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->f:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    .line 601
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 602
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->f:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->f:Landroid/media/AudioTrack;

    .line 606
    iput-object v3, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->f:Landroid/media/AudioTrack;

    .line 607
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->d:Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v1, v3, v2}, Lcom/google/android/exoplayer/audio/AudioTrack$AudioTrackUtil;->a(Landroid/media/AudioTrack;Z)V

    .line 608
    iget-object v1, p0, Lcom/google/android/exoplayer/audio/AudioTrack;->b:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 609
    new-instance v1, Lcom/google/android/exoplayer/audio/AudioTrack$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplayer/audio/AudioTrack$1;-><init>(Lcom/google/android/exoplayer/audio/AudioTrack;Landroid/media/AudioTrack;)V

    invoke-virtual {v1}, Lcom/google/android/exoplayer/audio/AudioTrack$1;->start()V

    .line 620
    :cond_1
    return-void
.end method

.method public final j()V
    .locals 0

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->i()V

    .line 625
    invoke-direct {p0}, Lcom/google/android/exoplayer/audio/AudioTrack;->k()V

    .line 626
    return-void
.end method
