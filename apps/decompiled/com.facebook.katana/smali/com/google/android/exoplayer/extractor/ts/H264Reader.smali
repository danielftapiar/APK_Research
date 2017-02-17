.class Lcom/google/android/exoplayer/extractor/ts/H264Reader;
.super Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
.source "H264Reader.java"


# static fields
.field private static final b:[F


# instance fields
.field private c:Z

.field private final d:Lcom/google/android/exoplayer/extractor/ts/SeiReader;

.field private final e:[Z

.field private final f:Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;

.field private final g:Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;

.field private final h:Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;

.field private i:Z

.field private j:J

.field private k:Z

.field private l:J

.field private m:J

.field private final n:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private o:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0x11

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->b:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/exoplayer/extractor/TrackOutput;Lcom/google/android/exoplayer/extractor/ts/SeiReader;)V
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 89
    iput-object p2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->d:Lcom/google/android/exoplayer/extractor/ts/SeiReader;

    .line 90
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->e:[Z

    .line 91
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->f:Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;

    .line 92
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->g:Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;

    .line 93
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->h:Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;

    .line 94
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->n:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 95
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->o:[I

    .line 96
    return-void
.end method

.method private a([BI)I
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 334
    move v3, v0

    move v1, v0

    .line 336
    :goto_0
    if-ge v1, p2, :cond_1

    .line 337
    invoke-static {p1, v1, p2}, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->b([BII)I

    move-result v2

    .line 338
    if-ge v2, p2, :cond_3

    .line 339
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->o:[I

    array-length v1, v1

    if-gt v1, v3, :cond_0

    .line 341
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->o:[I

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->o:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->o:[I

    .line 344
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->o:[I

    add-int/lit8 v1, v3, 0x1

    aput v2, v4, v3

    .line 345
    add-int/lit8 v2, v2, 0x3

    move v3, v1

    move v1, v2

    goto :goto_0

    .line 349
    :cond_1
    sub-int v4, p2, v3

    move v1, v0

    move v2, v0

    .line 352
    :goto_1
    if-ge v0, v3, :cond_2

    .line 353
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->o:[I

    aget v5, v5, v0

    .line 354
    sub-int/2addr v5, v2

    .line 355
    invoke-static {p1, v2, p1, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 356
    add-int/lit8 v6, v5, 0x3

    add-int/2addr v2, v6

    .line 357
    add-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 360
    :cond_2
    sub-int v0, v4, v1

    .line 361
    invoke-static {p1, v2, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 362
    return v4

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->c:Z

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->f:Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->a(I)V

    .line 176
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->g:Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->a(I)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->h:Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->a(I)V

    .line 179
    return-void
.end method

.method private a(JI)V
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->f:Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;

    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->b(I)Z

    .line 191
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->g:Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;

    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->b(I)Z

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->h:Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;

    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->h:Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->a:[B

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->h:Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;

    iget v1, v1, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->b:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->a([BI)I

    move-result v0

    .line 194
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->n:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->h:Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;

    iget-object v2, v2, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->a:[B

    invoke-virtual {v1, v2, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->a([BI)V

    .line 195
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->d:Lcom/google/android/exoplayer/extractor/ts/SeiReader;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->n:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/exoplayer/extractor/ts/SeiReader;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;JZ)V

    .line 197
    :cond_0
    return-void
.end method

.method private a(Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;)V
    .locals 12

    .prologue
    .line 200
    iget v0, p1, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->b:I

    new-array v0, v0, [B

    .line 201
    iget v1, p2, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->b:I

    new-array v1, v1, [B

    .line 202
    iget-object v2, p1, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->a:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p1, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->b:I

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    iget-object v2, p2, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->a:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p2, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->b:I

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 205
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v0, p1, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->a:[B

    iget v1, p1, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->b:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->a([BI)I

    .line 210
    new-instance v6, Lcom/google/android/exoplayer/util/ParsableBitArray;

    iget-object v0, p1, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->a:[B

    invoke-direct {v6, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>([B)V

    .line 211
    const/16 v0, 0x20

    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->a(I)V

    .line 212
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->b(I)I

    move-result v1

    .line 213
    const/16 v0, 0x10

    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->a(I)V

    .line 214
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->c()I

    .line 216
    const/4 v0, 0x1

    .line 217
    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    const/16 v2, 0x6e

    if-eq v1, v2, :cond_0

    const/16 v2, 0x7a

    if-eq v1, v2, :cond_0

    const/16 v2, 0xf4

    if-eq v1, v2, :cond_0

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_0

    const/16 v2, 0x53

    if-eq v1, v2, :cond_0

    const/16 v2, 0x56

    if-eq v1, v2, :cond_0

    const/16 v2, 0x76

    if-eq v1, v2, :cond_0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_0

    const/16 v2, 0x8a

    if-ne v1, v2, :cond_6

    .line 220
    :cond_0
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->c()I

    move-result v2

    .line 221
    const/4 v0, 0x3

    if-ne v2, v0, :cond_1

    .line 222
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->a(I)V

    .line 224
    :cond_1
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->c()I

    .line 225
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->c()I

    .line 226
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->a(I)V

    .line 227
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->b()Z

    move-result v0

    .line 228
    if-eqz v0, :cond_5

    .line 229
    const/4 v0, 0x3

    if-eq v2, v0, :cond_3

    const/16 v0, 0x8

    .line 230
    :goto_0
    const/4 v1, 0x0

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_5

    .line 231
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->b()Z

    move-result v1

    .line 232
    if-eqz v1, :cond_2

    .line 233
    const/4 v1, 0x6

    if-ge v3, v1, :cond_4

    const/16 v1, 0x10

    :goto_2
    invoke-static {v6, v1}, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->a(Lcom/google/android/exoplayer/util/ParsableBitArray;I)V

    .line 230
    :cond_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 229
    :cond_3
    const/16 v0, 0xc

    goto :goto_0

    .line 233
    :cond_4
    const/16 v1, 0x40

    goto :goto_2

    :cond_5
    move v0, v2

    .line 239
    :cond_6
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->c()I

    .line 240
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->c()I

    move-result v1

    int-to-long v2, v1

    .line 241
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_b

    .line 242
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->c()I

    .line 252
    :cond_7
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->c()I

    .line 253
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->a(I)V

    .line 255
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->c()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 256
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->c()I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    .line 257
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->b()Z

    move-result v8

    .line 258
    if-eqz v8, :cond_c

    const/4 v1, 0x1

    :goto_3
    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v1, v3

    .line 259
    if-nez v8, :cond_8

    .line 260
    const/4 v3, 0x1

    invoke-virtual {v6, v3}, Lcom/google/android/exoplayer/util/ParsableBitArray;->a(I)V

    .line 263
    :cond_8
    const/4 v3, 0x1

    invoke-virtual {v6, v3}, Lcom/google/android/exoplayer/util/ParsableBitArray;->a(I)V

    .line 264
    mul-int/lit8 v4, v2, 0x10

    .line 265
    mul-int/lit8 v5, v1, 0x10

    .line 266
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->b()Z

    move-result v1

    .line 267
    if-eqz v1, :cond_9

    .line 268
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->c()I

    move-result v3

    .line 269
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->c()I

    move-result v9

    .line 270
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->c()I

    move-result v10

    .line 271
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->c()I

    move-result v11

    .line 273
    if-nez v0, :cond_e

    .line 274
    const/4 v1, 0x1

    .line 275
    if-eqz v8, :cond_d

    const/4 v0, 0x1

    :goto_4
    rsub-int/lit8 v0, v0, 0x2

    .line 282
    :goto_5
    add-int v2, v3, v9

    mul-int/2addr v1, v2

    sub-int/2addr v4, v1

    .line 283
    add-int v1, v10, v11

    mul-int/2addr v0, v1

    sub-int/2addr v5, v0

    .line 286
    :cond_9
    const/high16 v0, 0x3f800000    # 1.0f

    .line 287
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->b()Z

    move-result v1

    .line 288
    if-eqz v1, :cond_14

    .line 289
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->b()Z

    move-result v1

    .line 290
    if-eqz v1, :cond_14

    .line 291
    const/16 v1, 0x8

    invoke-virtual {v6, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->b(I)I

    move-result v1

    .line 292
    const/16 v2, 0xff

    if-ne v1, v2, :cond_12

    .line 293
    const/16 v1, 0x10

    invoke-virtual {v6, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->b(I)I

    move-result v1

    .line 294
    const/16 v2, 0x10

    invoke-virtual {v6, v2}, Lcom/google/android/exoplayer/util/ParsableBitArray;->b(I)I

    move-result v2

    .line 295
    if-eqz v1, :cond_a

    if-eqz v2, :cond_a

    .line 296
    int-to-float v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    :cond_a
    move v6, v0

    .line 306
    :goto_6
    iget-object v8, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->a:Lcom/google/android/exoplayer/extractor/TrackOutput;

    const-string v0, "video/avc"

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer/MediaFormat;->a(Ljava/lang/String;IJIIFLjava/util/List;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->c:Z

    .line 309
    return-void

    .line 243
    :cond_b
    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_7

    .line 244
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;->a(I)V

    .line 245
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->d()I

    .line 246
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->d()I

    .line 247
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->c()I

    move-result v1

    int-to-long v2, v1

    .line 248
    const/4 v1, 0x0

    :goto_7
    int-to-long v4, v1

    cmp-long v4, v4, v2

    if-gez v4, :cond_7

    .line 249
    invoke-virtual {v6}, Lcom/google/android/exoplayer/util/ParsableBitArray;->c()I

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 258
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 275
    :cond_d
    const/4 v0, 0x0

    goto :goto_4

    .line 277
    :cond_e
    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    const/4 v1, 0x1

    .line 278
    :goto_8
    const/4 v2, 0x1

    if-ne v0, v2, :cond_10

    const/4 v0, 0x2

    move v2, v0

    .line 280
    :goto_9
    if-eqz v8, :cond_11

    const/4 v0, 0x1

    :goto_a
    rsub-int/lit8 v0, v0, 0x2

    mul-int/2addr v0, v2

    goto :goto_5

    .line 277
    :cond_f
    const/4 v1, 0x2

    goto :goto_8

    .line 278
    :cond_10
    const/4 v0, 0x1

    move v2, v0

    goto :goto_9

    .line 280
    :cond_11
    const/4 v0, 0x0

    goto :goto_a

    .line 298
    :cond_12
    sget-object v2, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->b:[F

    array-length v2, v2

    if-ge v1, v2, :cond_13

    .line 299
    sget-object v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->b:[F

    aget v0, v0, v1

    move v6, v0

    goto :goto_6

    .line 301
    :cond_13
    const-string v2, "H264Reader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Unexpected aspect_ratio_idc value: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    move v6, v0

    goto :goto_6
.end method

.method private static a(Lcom/google/android/exoplayer/util/ParsableBitArray;I)V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 312
    .line 314
    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    if-ge v2, p1, :cond_2

    .line 315
    if-eqz v1, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableBitArray;->d()I

    move-result v1

    .line 317
    add-int/2addr v1, v0

    add-int/lit16 v1, v1, 0x100

    rem-int/lit16 v1, v1, 0x100

    .line 319
    :cond_0
    if-nez v1, :cond_1

    .line 314
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 319
    goto :goto_1

    .line 321
    :cond_2
    return-void
.end method

.method private a([BII)V
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->c:Z

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->f:Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->a([BII)V

    .line 184
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->g:Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->a([BII)V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->h:Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->a([BII)V

    .line 187
    return-void
.end method

.method private static b([BII)I
    .locals 3

    .prologue
    .line 366
    move v0, p1

    :goto_0
    add-int/lit8 v1, p2, -0x2

    if-ge v0, v1, :cond_0

    .line 367
    aget-byte v1, p0, v0

    if-nez v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_1

    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p0, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    move p2, v0

    .line 371
    :cond_0
    return p2

    .line 366
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->d:Lcom/google/android/exoplayer/extractor/ts/SeiReader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/SeiReader;->a()V

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->e:[Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/H264Util;->a([Z)V

    .line 102
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->f:Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->a()V

    .line 103
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->g:Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->a()V

    .line 104
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->h:Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->a()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->i:Z

    .line 106
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->j:J

    .line 107
    return-void
.end method

.method public final a(Lcom/google/android/exoplayer/util/ParsableByteArray;JZ)V
    .locals 18

    .prologue
    .line 111
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->a()I

    move-result v4

    if-lez v4, :cond_9

    .line 112
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->c()I

    move-result v4

    .line 113
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->b()I

    move-result v12

    .line 114
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->a:[B

    .line 117
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->j:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->a()I

    move-result v5

    int-to-long v8, v5

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->j:J

    .line 118
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->a:Lcom/google/android/exoplayer/extractor/TrackOutput;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->a()I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v5, v0, v6}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 121
    :goto_0
    if-ge v4, v12, :cond_0

    .line 122
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->e:[Z

    invoke-static {v13, v4, v12, v5}, Lcom/google/android/exoplayer/util/H264Util;->a([BII[Z)I

    move-result v14

    .line 123
    if-ge v14, v12, :cond_8

    .line 128
    sub-int v15, v14, v4

    .line 129
    if-lez v15, :cond_1

    .line 130
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4, v14}, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->a([BII)V

    .line 133
    :cond_1
    invoke-static {v13, v14}, Lcom/google/android/exoplayer/util/H264Util;->a([BI)I

    move-result v16

    .line 134
    sub-int v10, v12, v14

    .line 135
    const/16 v4, 0x9

    move/from16 v0, v16

    if-ne v0, v4, :cond_6

    .line 136
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->i:Z

    if-eqz v4, :cond_3

    .line 137
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->k:Z

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->c:Z

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->f:Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->g:Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 138
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->f:Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->g:Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->a(Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;Lcom/google/android/exoplayer/extractor/ts/H264Reader$NalUnitTargetBuffer;)V

    .line 140
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->k:Z

    if-eqz v4, :cond_5

    const/4 v8, 0x1

    .line 141
    :goto_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->j:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->l:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    sub-int v9, v4, v10

    .line 142
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->a:Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->m:J

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/google/android/exoplayer/extractor/TrackOutput;->a(JIII[B)V

    .line 143
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->i:Z

    .line 145
    :cond_3
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->i:Z

    .line 146
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->k:Z

    .line 147
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->m:J

    .line 148
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->j:J

    int-to-long v6, v10

    sub-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->l:J

    .line 155
    :cond_4
    :goto_2
    if-gez v15, :cond_7

    neg-int v4, v15

    :goto_3
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2, v4}, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->a(JI)V

    .line 157
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->a(I)V

    .line 159
    add-int/lit8 v4, v14, 0x4

    .line 160
    goto/16 :goto_0

    .line 140
    :cond_5
    const/4 v8, 0x0

    goto :goto_1

    .line 149
    :cond_6
    const/4 v4, 0x5

    move/from16 v0, v16

    if-ne v0, v4, :cond_4

    .line 150
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->k:Z

    goto :goto_2

    .line 155
    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    .line 161
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4, v12}, Lcom/google/android/exoplayer/extractor/ts/H264Reader;->a([BII)V

    move v4, v12

    .line 164
    goto/16 :goto_0

    .line 166
    :cond_9
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method
