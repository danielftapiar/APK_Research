.class final Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;
.super Ljava/lang/Object;
.source "RollingSampleBuffer.java"


# instance fields
.field private final a:Lcom/google/android/exoplayer/upstream/Allocator;

.field private final b:I

.field private final c:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

.field private final d:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Lcom/google/android/exoplayer/upstream/Allocation;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;

.field private final f:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private g:J

.field private h:J

.field private i:Lcom/google/android/exoplayer/upstream/Allocation;

.field private j:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/Allocator;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->a:Lcom/google/android/exoplayer/upstream/Allocator;

    .line 58
    invoke-interface {p1}, Lcom/google/android/exoplayer/upstream/Allocator;->c()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->b:I

    .line 59
    new-instance v0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    invoke-direct {v0}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->c:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    .line 60
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 61
    new-instance v0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;-><init>(B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->e:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;

    .line 62
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 63
    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->b:I

    iput v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->j:I

    .line 64
    return-void
.end method

.method private a(JLjava/nio/ByteBuffer;I)V
    .locals 5

    .prologue
    .line 280
    .line 281
    :goto_0
    if-lez p4, :cond_0

    .line 282
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->c(J)V

    .line 283
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->g:J

    sub-long v0, p1, v0

    long-to-int v1, v0

    .line 284
    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->b:I

    sub-int/2addr v0, v1

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 285
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/upstream/Allocation;

    .line 286
    iget-object v3, v0, Lcom/google/android/exoplayer/upstream/Allocation;->a:[B

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer/upstream/Allocation;->a(I)I

    move-result v0

    invoke-virtual {p3, v3, v0, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 287
    int-to-long v0, v2

    add-long/2addr p1, v0

    .line 288
    sub-int/2addr p4, v2

    .line 289
    goto :goto_0

    .line 290
    :cond_0
    return-void
.end method

.method private a(J[BI)V
    .locals 7

    .prologue
    .line 301
    const/4 v0, 0x0

    move v1, v0

    .line 302
    :goto_0
    if-ge v1, p4, :cond_0

    .line 303
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->c(J)V

    .line 304
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->g:J

    sub-long v2, p1, v2

    long-to-int v2, v2

    .line 305
    sub-int v0, p4, v1

    iget v3, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->b:I

    sub-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 306
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/upstream/Allocation;

    .line 307
    iget-object v4, v0, Lcom/google/android/exoplayer/upstream/Allocation;->a:[B

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/upstream/Allocation;->a(I)I

    move-result v0

    invoke-static {v4, v0, p3, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    int-to-long v4, v3

    add-long/2addr p1, v4

    .line 310
    add-int v0, v1, v3

    move v1, v0

    .line 311
    goto :goto_0

    .line 312
    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/exoplayer/SampleHolder;Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 211
    iget-wide v2, p2, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;->a:J

    .line 214
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->a(J[BI)V

    .line 215
    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    .line 216
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    aget-byte v5, v0, v4

    .line 217
    and-int/lit16 v0, v5, 0x80

    if-eqz v0, :cond_5

    move v0, v1

    .line 218
    :goto_0
    and-int/lit8 v5, v5, 0x7f

    .line 221
    iget-object v6, p1, Lcom/google/android/exoplayer/SampleHolder;->a:Lcom/google/android/exoplayer/CryptoInfo;

    iget-object v6, v6, Lcom/google/android/exoplayer/CryptoInfo;->a:[B

    if-nez v6, :cond_0

    .line 222
    iget-object v6, p1, Lcom/google/android/exoplayer/SampleHolder;->a:Lcom/google/android/exoplayer/CryptoInfo;

    const/16 v7, 0x10

    new-array v7, v7, [B

    iput-object v7, v6, Lcom/google/android/exoplayer/CryptoInfo;->a:[B

    .line 224
    :cond_0
    iget-object v6, p1, Lcom/google/android/exoplayer/SampleHolder;->a:Lcom/google/android/exoplayer/CryptoInfo;

    iget-object v6, v6, Lcom/google/android/exoplayer/CryptoInfo;->a:[B

    invoke-direct {p0, v2, v3, v6, v5}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->a(J[BI)V

    .line 225
    int-to-long v6, v5

    add-long/2addr v2, v6

    .line 229
    if-eqz v0, :cond_6

    .line 230
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    const/4 v5, 0x2

    invoke-direct {p0, v2, v3, v1, v5}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->a(J[BI)V

    .line 231
    const-wide/16 v6, 0x2

    add-long/2addr v2, v6

    .line 232
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 233
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->e()I

    move-result v1

    move-wide v6, v2

    .line 239
    :goto_1
    iget-object v2, p1, Lcom/google/android/exoplayer/SampleHolder;->a:Lcom/google/android/exoplayer/CryptoInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer/CryptoInfo;->d:[I

    .line 240
    if-eqz v2, :cond_1

    array-length v3, v2

    if-ge v3, v1, :cond_2

    .line 241
    :cond_1
    new-array v2, v1, [I

    .line 243
    :cond_2
    iget-object v3, p1, Lcom/google/android/exoplayer/SampleHolder;->a:Lcom/google/android/exoplayer/CryptoInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer/CryptoInfo;->e:[I

    .line 244
    if-eqz v3, :cond_3

    array-length v5, v3

    if-ge v5, v1, :cond_4

    .line 245
    :cond_3
    new-array v3, v1, [I

    .line 247
    :cond_4
    if-eqz v0, :cond_7

    .line 248
    mul-int/lit8 v0, v1, 0x6

    .line 249
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-static {v5, v0}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->b(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 250
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v5, v5, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    invoke-direct {p0, v6, v7, v5, v0}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->a(J[BI)V

    .line 251
    int-to-long v8, v0

    add-long/2addr v6, v8

    .line 252
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b(I)V

    .line 253
    :goto_2
    if-ge v4, v1, :cond_8

    .line 254
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->e()I

    move-result v0

    aput v0, v2, v4

    .line 255
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->f:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->j()I

    move-result v0

    aput v0, v3, v4

    .line 253
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    move v0, v4

    .line 217
    goto :goto_0

    :cond_6
    move-wide v6, v2

    .line 235
    goto :goto_1

    .line 258
    :cond_7
    aput v4, v2, v4

    .line 259
    iget v0, p1, Lcom/google/android/exoplayer/SampleHolder;->c:I

    iget-wide v8, p2, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;->a:J

    sub-long v8, v6, v8

    long-to-int v5, v8

    sub-int/2addr v0, v5

    aput v0, v3, v4

    .line 263
    :cond_8
    iget-object v0, p1, Lcom/google/android/exoplayer/SampleHolder;->a:Lcom/google/android/exoplayer/CryptoInfo;

    iget-object v4, p2, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;->b:[B

    iget-object v5, p1, Lcom/google/android/exoplayer/SampleHolder;->a:Lcom/google/android/exoplayer/CryptoInfo;

    iget-object v5, v5, Lcom/google/android/exoplayer/CryptoInfo;->a:[B

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer/CryptoInfo;->a(I[I[I[B[B)V

    .line 267
    iget-wide v0, p2, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;->a:J

    sub-long v0, v6, v0

    long-to-int v0, v0

    .line 268
    iget-wide v2, p2, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;->a:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p2, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;->a:J

    .line 269
    iget v1, p1, Lcom/google/android/exoplayer/SampleHolder;->c:I

    sub-int v0, v1, v0

    iput v0, p1, Lcom/google/android/exoplayer/SampleHolder;->c:I

    .line 270
    return-void
.end method

.method private b(J)V
    .locals 5

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->g:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    .line 108
    iget v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->b:I

    div-int v1, v0, v1

    .line 109
    iget v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->b:I

    rem-int v2, v0, v2

    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v0

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 112
    if-nez v2, :cond_2

    .line 114
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    .line 117
    :goto_0
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v1, :cond_0

    .line 118
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->a:Lcom/google/android/exoplayer/upstream/Allocator;

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/upstream/Allocation;

    invoke-interface {v4, v0}, Lcom/google/android/exoplayer/upstream/Allocator;->a(Lcom/google/android/exoplayer/upstream/Allocation;)V

    .line 117
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/upstream/Allocation;

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->i:Lcom/google/android/exoplayer/upstream/Allocation;

    .line 122
    if-nez v2, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->b:I

    :goto_2
    iput v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->j:I

    .line 123
    return-void

    :cond_1
    move v0, v2

    .line 122
    goto :goto_2

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method private static b(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V
    .locals 1

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 334
    new-array v0, p1, [B

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->a([BI)V

    .line 336
    :cond_0
    return-void
.end method

.method private c(J)V
    .locals 9

    .prologue
    .line 321
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->g:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    .line 322
    iget v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->b:I

    div-int v2, v0, v1

    .line 323
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 324
    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->a:Lcom/google/android/exoplayer/upstream/Allocator;

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/upstream/Allocation;

    invoke-interface {v3, v0}, Lcom/google/android/exoplayer/upstream/Allocator;->a(Lcom/google/android/exoplayer/upstream/Allocation;)V

    .line 325
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->g:J

    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->b:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->g:J

    .line 323
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 327
    :cond_0
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 430
    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->j:I

    iget v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->b:I

    if-ne v0, v1, :cond_0

    .line 431
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->j:I

    .line 432
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->a:Lcom/google/android/exoplayer/upstream/Allocator;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/Allocator;->a()Lcom/google/android/exoplayer/upstream/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->i:Lcom/google/android/exoplayer/upstream/Allocation;

    .line 433
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->i:Lcom/google/android/exoplayer/upstream/Allocation;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    .line 435
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)I
    .locals 6

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->f()V

    .line 385
    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->b:I

    iget v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->j:I

    sub-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 386
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->i:Lcom/google/android/exoplayer/upstream/Allocation;

    iget-object v1, v1, Lcom/google/android/exoplayer/upstream/Allocation;->a:[B

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->i:Lcom/google/android/exoplayer/upstream/Allocation;

    iget v3, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->j:I

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer/upstream/Allocation;->a(I)I

    move-result v2

    invoke-interface {p1, v1, v2, v0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->a([BII)V

    .line 388
    iget v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->j:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->j:I

    .line 389
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->h:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->h:J

    .line 390
    return v0
.end method

.method public final a(Lcom/google/android/exoplayer/upstream/DataSource;I)I
    .locals 6

    .prologue
    const/4 v0, -0x1

    .line 359
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->f()V

    .line 360
    iget v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->b:I

    iget v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->j:I

    sub-int/2addr v1, v2

    .line 361
    const v2, 0x7fffffff

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 364
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->i:Lcom/google/android/exoplayer/upstream/Allocation;

    iget-object v2, v2, Lcom/google/android/exoplayer/upstream/Allocation;->a:[B

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->i:Lcom/google/android/exoplayer/upstream/Allocation;

    iget v4, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->j:I

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer/upstream/Allocation;->a(I)I

    move-result v3

    invoke-interface {p1, v2, v3, v1}, Lcom/google/android/exoplayer/upstream/DataSource;->a([BII)I

    move-result v1

    .line 366
    if-ne v1, v0, :cond_0

    .line 372
    :goto_0
    return v0

    .line 370
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->j:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->j:I

    .line 371
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->h:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->h:J

    move v0, v1

    .line 372
    goto :goto_0
.end method

.method public final a()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 72
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->c:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->a()V

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->a:Lcom/google/android/exoplayer/upstream/Allocator;

    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/upstream/Allocation;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/upstream/Allocator;->a(Lcom/google/android/exoplayer/upstream/Allocation;)V

    goto :goto_0

    .line 76
    :cond_0
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->g:J

    .line 77
    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->h:J

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->i:Lcom/google/android/exoplayer/upstream/Allocation;

    .line 79
    iget v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->b:I

    iput v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->j:I

    .line 80
    return-void
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->c:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->a(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->h:J

    .line 96
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->h:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->b(J)V

    .line 97
    return-void
.end method

.method public final a(JIJI[B)V
    .locals 8

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->c:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->a(JIJI[B)V

    .line 424
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V
    .locals 5

    .prologue
    .line 400
    move v0, p2

    .line 401
    :goto_0
    if-lez v0, :cond_0

    .line 402
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->f()V

    .line 403
    iget v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->b:I

    iget v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->j:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 404
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->i:Lcom/google/android/exoplayer/upstream/Allocation;

    iget-object v2, v2, Lcom/google/android/exoplayer/upstream/Allocation;->a:[B

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->i:Lcom/google/android/exoplayer/upstream/Allocation;

    iget v4, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->j:I

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer/upstream/Allocation;->a(I)I

    move-result v3

    invoke-virtual {p1, v2, v3, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->a([BII)V

    .line 406
    iget v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->j:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->j:I

    .line 407
    sub-int/2addr v0, v1

    .line 408
    goto :goto_0

    .line 409
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->h:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->h:J

    .line 410
    return-void
.end method

.method public final a(J)Z
    .locals 5

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->c:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->a(J)J

    move-result-wide v0

    .line 163
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 167
    :goto_0
    return v0

    .line 166
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->c(J)V

    .line 167
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Lcom/google/android/exoplayer/SampleHolder;)Z
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->c:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->e:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->a(Lcom/google/android/exoplayer/SampleHolder;Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;)Z

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->c:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->b()I

    move-result v0

    return v0
.end method

.method public final b(Lcom/google/android/exoplayer/SampleHolder;)Z
    .locals 4

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->c:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->e:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->a(Lcom/google/android/exoplayer/SampleHolder;Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;)Z

    move-result v0

    .line 179
    if-nez v0, :cond_0

    .line 180
    const/4 v0, 0x0

    .line 197
    :goto_0
    return v0

    .line 184
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer/SampleHolder;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->e:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->a(Lcom/google/android/exoplayer/SampleHolder;Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;)V

    .line 188
    :cond_1
    iget-object v0, p1, Lcom/google/android/exoplayer/SampleHolder;->b:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/exoplayer/SampleHolder;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p1, Lcom/google/android/exoplayer/SampleHolder;->c:I

    if-ge v0, v1, :cond_3

    .line 189
    :cond_2
    iget v0, p1, Lcom/google/android/exoplayer/SampleHolder;->c:I

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer/SampleHolder;->a(I)Z

    .line 191
    :cond_3
    iget-object v0, p1, Lcom/google/android/exoplayer/SampleHolder;->b:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->e:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;

    iget-wide v0, v0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;->a:J

    iget-object v2, p1, Lcom/google/android/exoplayer/SampleHolder;->b:Ljava/nio/ByteBuffer;

    iget v3, p1, Lcom/google/android/exoplayer/SampleHolder;->c:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->a(JLjava/nio/ByteBuffer;I)V

    .line 195
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->c:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->d()J

    move-result-wide v0

    .line 196
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->c(J)V

    .line 197
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->c:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->c()I

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->c:Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->d()J

    move-result-wide v0

    .line 152
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->c(J)V

    .line 153
    return-void
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 346
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/RollingSampleBuffer;->h:J

    return-wide v0
.end method
