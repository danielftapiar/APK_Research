.class public Lcom/esotericsoftware/kryo/io/Input;
.super Ljava/io/InputStream;
.source "Input.java"


# instance fields
.field protected buffer:[B

.field protected capacity:I

.field protected chars:[C

.field protected inputStream:Ljava/io/InputStream;

.field protected limit:I

.field protected position:I

.field protected total:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 21
    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    .line 26
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "bufferSize"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 21
    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    .line 31
    iput p1, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    .line 32
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 49
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;-><init>(I)V

    .line 50
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputStream cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I

    .prologue
    .line 56
    invoke-direct {p0, p2}, Lcom/esotericsoftware/kryo/io/Input;-><init>(I)V

    .line 57
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputStream cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    .line 59
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "buffer"    # [B

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 21
    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    .line 38
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/io/Input;->setBuffer([BII)V

    .line 39
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 21
    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    .line 44
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/io/Input;->setBuffer([BII)V

    .line 45
    return-void
.end method

.method private optional(I)I
    .locals 9
    .param p1, "optional"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v2, -0x1

    .line 194
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int v1, v3, v4

    .line 195
    .local v1, "remaining":I
    if-lt v1, p1, :cond_1

    move v2, p1

    .line 222
    :cond_0
    :goto_0
    return v2

    .line 196
    :cond_1
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 201
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    iget v6, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v3, v4, v5}, Lcom/esotericsoftware/kryo/io/Input;->fill([BII)I

    move-result v0

    .line 202
    .local v0, "count":I
    if-ne v0, v2, :cond_2

    if-eqz v1, :cond_0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    .line 203
    :cond_2
    add-int/2addr v1, v0

    .line 204
    if-lt v1, p1, :cond_3

    .line 205
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    move v2, p1

    .line 206
    goto :goto_0

    .line 210
    :cond_3
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget-object v5, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    invoke-static {v3, v4, v5, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    iget-wide v4, p0, Lcom/esotericsoftware/kryo/io/Input;->total:J

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/esotericsoftware/kryo/io/Input;->total:J

    .line 212
    iput v8, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 215
    :cond_4
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    sub-int/2addr v4, v1

    invoke-virtual {p0, v3, v1, v4}, Lcom/esotericsoftware/kryo/io/Input;->fill([BII)I

    move-result v0

    .line 216
    if-ne v0, v2, :cond_5

    .line 221
    :goto_1
    iput v1, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    .line 222
    if-eqz v1, :cond_0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    .line 217
    :cond_5
    add-int/2addr v1, v0

    .line 218
    if-lt v1, p1, :cond_4

    goto :goto_1
.end method

.method private readAscii()Ljava/lang/String;
    .locals 9

    .prologue
    .line 570
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 571
    .local v1, "buffer":[B
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 572
    .local v2, "end":I
    add-int/lit8 v5, v2, -0x1

    .line 573
    .local v5, "start":I
    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    .local v4, "limit":I
    move v3, v2

    .line 576
    .end local v2    # "end":I
    .local v3, "end":I
    :goto_0
    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Input;->readAscii_slow()Ljava/lang/String;

    move-result-object v6

    move v2, v3

    .line 583
    .end local v3    # "end":I
    .restart local v2    # "end":I
    :goto_1
    return-object v6

    .line 577
    .end local v2    # "end":I
    .restart local v3    # "end":I
    :cond_0
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "end":I
    .restart local v2    # "end":I
    aget-byte v0, v1, v3

    .line 578
    .local v0, "b":I
    and-int/lit16 v7, v0, 0x80

    if-eqz v7, :cond_1

    .line 579
    add-int/lit8 v7, v2, -0x1

    aget-byte v8, v1, v7

    and-int/lit8 v8, v8, 0x7f

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    .line 580
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    sub-int v8, v2, v5

    invoke-direct {v6, v1, v7, v5, v8}, Ljava/lang/String;-><init>([BIII)V

    .line 581
    .local v6, "value":Ljava/lang/String;
    add-int/lit8 v7, v2, -0x1

    aget-byte v8, v1, v7

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    .line 582
    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    goto :goto_1

    .end local v6    # "value":Ljava/lang/String;
    :cond_1
    move v3, v2

    .end local v2    # "end":I
    .restart local v3    # "end":I
    goto :goto_0
.end method

.method private readAscii_slow()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 587
    iget v9, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 589
    iget v9, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v10, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int v2, v9, v10

    .line 590
    .local v2, "charCount":I
    iget-object v9, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    array-length v9, v9

    if-le v2, v9, :cond_0

    mul-int/lit8 v9, v2, 0x2

    new-array v9, v9, [C

    iput-object v9, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    .line 591
    :cond_0
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    .line 592
    .local v4, "chars":[C
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 593
    .local v1, "buffer":[B
    iget v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .local v5, "i":I
    const/4 v6, 0x0

    .local v6, "ii":I
    iget v7, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    .local v7, "n":I
    :goto_0
    if-ge v5, v7, :cond_1

    .line 594
    aget-byte v9, v1, v5

    int-to-char v9, v9

    aput-char v9, v4, v6

    .line 593
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 595
    :cond_1
    iget v9, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iput v9, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    move v3, v2

    .line 598
    .end local v2    # "charCount":I
    .local v3, "charCount":I
    :goto_1
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 599
    iget v9, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v1, v9

    .line 600
    .local v0, "b":I
    array-length v9, v4

    if-ne v3, v9, :cond_2

    .line 601
    mul-int/lit8 v9, v3, 0x2

    new-array v8, v9, [C

    .line 602
    .local v8, "newChars":[C
    invoke-static {v4, v11, v8, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 603
    move-object v4, v8

    .line 604
    iput-object v8, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    .line 606
    .end local v8    # "newChars":[C
    :cond_2
    and-int/lit16 v9, v0, 0x80

    const/16 v10, 0x80

    if-ne v9, v10, :cond_3

    .line 607
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "charCount":I
    .restart local v2    # "charCount":I
    and-int/lit8 v9, v0, 0x7f

    int-to-char v9, v9

    aput-char v9, v4, v3

    .line 612
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v4, v11, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v9

    .line 610
    .end local v2    # "charCount":I
    .restart local v3    # "charCount":I
    :cond_3
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "charCount":I
    .restart local v2    # "charCount":I
    int-to-char v9, v0

    aput-char v9, v4, v3

    move v3, v2

    .line 611
    .end local v2    # "charCount":I
    .restart local v3    # "charCount":I
    goto :goto_1
.end method

.method private readInt_slow(Z)I
    .locals 7
    .param p1, "optimizePositive"    # Z

    .prologue
    const/4 v6, 0x1

    .line 380
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v3, v4

    .line 381
    .local v0, "b":I
    and-int/lit8 v2, v0, 0x7f

    .line 382
    .local v2, "result":I
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_0

    .line 383
    invoke-virtual {p0, v6}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 384
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 385
    .local v1, "buffer":[B
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v1, v3

    .line 386
    and-int/lit8 v3, v0, 0x7f

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v2, v3

    .line 387
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_0

    .line 388
    invoke-virtual {p0, v6}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 389
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v1, v3

    .line 390
    and-int/lit8 v3, v0, 0x7f

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v2, v3

    .line 391
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_0

    .line 392
    invoke-virtual {p0, v6}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 393
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v1, v3

    .line 394
    and-int/lit8 v3, v0, 0x7f

    shl-int/lit8 v3, v3, 0x15

    or-int/2addr v2, v3

    .line 395
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_0

    .line 396
    invoke-virtual {p0, v6}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 397
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v1, v3

    .line 398
    and-int/lit8 v3, v0, 0x7f

    shl-int/lit8 v3, v3, 0x1c

    or-int/2addr v2, v3

    .line 403
    .end local v1    # "buffer":[B
    :cond_0
    if-eqz p1, :cond_1

    .end local v2    # "result":I
    :goto_0
    return v2

    .restart local v2    # "result":I
    :cond_1
    ushr-int/lit8 v3, v2, 0x1

    and-int/lit8 v4, v2, 0x1

    neg-int v4, v4

    xor-int v2, v3, v4

    goto :goto_0
.end method

.method private readLong_slow(Z)J
    .locals 8
    .param p1, "optimizePositive"    # Z

    .prologue
    const/4 v7, 0x1

    .line 732
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v4, v5

    .line 733
    .local v0, "b":I
    and-int/lit8 v4, v0, 0x7f

    int-to-long v2, v4

    .line 734
    .local v2, "result":J
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_0

    .line 735
    invoke-virtual {p0, v7}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 736
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 737
    .local v1, "buffer":[B
    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v1, v4

    .line 738
    and-int/lit8 v4, v0, 0x7f

    shl-int/lit8 v4, v4, 0x7

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 739
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_0

    .line 740
    invoke-virtual {p0, v7}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 741
    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v1, v4

    .line 742
    and-int/lit8 v4, v0, 0x7f

    shl-int/lit8 v4, v4, 0xe

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 743
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_0

    .line 744
    invoke-virtual {p0, v7}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 745
    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v1, v4

    .line 746
    and-int/lit8 v4, v0, 0x7f

    shl-int/lit8 v4, v4, 0x15

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 747
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_0

    .line 748
    invoke-virtual {p0, v7}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 749
    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v1, v4

    .line 750
    and-int/lit8 v4, v0, 0x7f

    int-to-long v4, v4

    const/16 v6, 0x1c

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 751
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_0

    .line 752
    invoke-virtual {p0, v7}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 753
    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v1, v4

    .line 754
    and-int/lit8 v4, v0, 0x7f

    int-to-long v4, v4

    const/16 v6, 0x23

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 755
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_0

    .line 756
    invoke-virtual {p0, v7}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 757
    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v1, v4

    .line 758
    and-int/lit8 v4, v0, 0x7f

    int-to-long v4, v4

    const/16 v6, 0x2a

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 759
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_0

    .line 760
    invoke-virtual {p0, v7}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 761
    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v1, v4

    .line 762
    and-int/lit8 v4, v0, 0x7f

    int-to-long v4, v4

    const/16 v6, 0x31

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 763
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_0

    .line 764
    invoke-virtual {p0, v7}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 765
    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v1, v4

    .line 766
    int-to-long v4, v0

    const/16 v6, 0x38

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 775
    .end local v1    # "buffer":[B
    :cond_0
    if-nez p1, :cond_1

    ushr-long v4, v2, v7

    const-wide/16 v6, 0x1

    and-long/2addr v6, v2

    neg-long v6, v6

    xor-long v2, v4, v6

    .line 776
    :cond_1
    return-wide v2
.end method

.method private readUtf8(I)V
    .locals 9
    .param p1, "charCount"    # I

    .prologue
    .line 518
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 519
    .local v1, "buffer":[B
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    .line 521
    .local v4, "chars":[C
    const/4 v2, 0x0

    .line 522
    .local v2, "charIndex":I
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    move-result v8

    invoke-static {v8, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 523
    .local v5, "count":I
    iget v6, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .local v6, "position":I
    move v7, v6

    .end local v6    # "position":I
    .local v7, "position":I
    move v3, v2

    .line 525
    .end local v2    # "charIndex":I
    .local v3, "charIndex":I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 526
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "position":I
    .restart local v6    # "position":I
    aget-byte v0, v1, v7

    .line 527
    .local v0, "b":I
    if-gez v0, :cond_1

    .line 528
    add-int/lit8 v6, v6, -0x1

    .line 533
    .end local v0    # "b":I
    :goto_1
    iput v6, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 535
    if-ge v3, p1, :cond_0

    invoke-direct {p0, p1, v3}, Lcom/esotericsoftware/kryo/io/Input;->readUtf8_slow(II)V

    .line 536
    :cond_0
    return-void

    .line 531
    .restart local v0    # "b":I
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "charIndex":I
    .restart local v2    # "charIndex":I
    int-to-char v8, v0

    aput-char v8, v4, v3

    move v7, v6

    .end local v6    # "position":I
    .restart local v7    # "position":I
    move v3, v2

    .end local v2    # "charIndex":I
    .restart local v3    # "charIndex":I
    goto :goto_0

    .end local v0    # "b":I
    :cond_2
    move v6, v7

    .end local v7    # "position":I
    .restart local v6    # "position":I
    goto :goto_1
.end method

.method private readUtf8Length(I)I
    .locals 4
    .param p1, "b"    # I

    .prologue
    .line 470
    and-int/lit8 v1, p1, 0x3f

    .line 471
    .local v1, "result":I
    and-int/lit8 v2, p1, 0x40

    if-eqz v2, :cond_0

    .line 472
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 473
    .local v0, "buffer":[B
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte p1, v0, v2

    .line 474
    and-int/lit8 v2, p1, 0x7f

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    .line 475
    and-int/lit16 v2, p1, 0x80

    if-eqz v2, :cond_0

    .line 476
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte p1, v0, v2

    .line 477
    and-int/lit8 v2, p1, 0x7f

    shl-int/lit8 v2, v2, 0xd

    or-int/2addr v1, v2

    .line 478
    and-int/lit16 v2, p1, 0x80

    if-eqz v2, :cond_0

    .line 479
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte p1, v0, v2

    .line 480
    and-int/lit8 v2, p1, 0x7f

    shl-int/lit8 v2, v2, 0x14

    or-int/2addr v1, v2

    .line 481
    and-int/lit16 v2, p1, 0x80

    if-eqz v2, :cond_0

    .line 482
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte p1, v0, v2

    .line 483
    and-int/lit8 v2, p1, 0x7f

    shl-int/lit8 v2, v2, 0x1b

    or-int/2addr v1, v2

    .line 488
    .end local v0    # "buffer":[B
    :cond_0
    return v1
.end method

.method private readUtf8Length_slow(I)I
    .locals 5
    .param p1, "b"    # I

    .prologue
    const/4 v4, 0x1

    .line 492
    and-int/lit8 v1, p1, 0x3f

    .line 493
    .local v1, "result":I
    and-int/lit8 v2, p1, 0x40

    if-eqz v2, :cond_0

    .line 494
    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 495
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 496
    .local v0, "buffer":[B
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte p1, v0, v2

    .line 497
    and-int/lit8 v2, p1, 0x7f

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    .line 498
    and-int/lit16 v2, p1, 0x80

    if-eqz v2, :cond_0

    .line 499
    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 500
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte p1, v0, v2

    .line 501
    and-int/lit8 v2, p1, 0x7f

    shl-int/lit8 v2, v2, 0xd

    or-int/2addr v1, v2

    .line 502
    and-int/lit16 v2, p1, 0x80

    if-eqz v2, :cond_0

    .line 503
    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 504
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte p1, v0, v2

    .line 505
    and-int/lit8 v2, p1, 0x7f

    shl-int/lit8 v2, v2, 0x14

    or-int/2addr v1, v2

    .line 506
    and-int/lit16 v2, p1, 0x80

    if-eqz v2, :cond_0

    .line 507
    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 508
    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte p1, v0, v2

    .line 509
    and-int/lit8 v2, p1, 0x7f

    shl-int/lit8 v2, v2, 0x1b

    or-int/2addr v1, v2

    .line 514
    .end local v0    # "buffer":[B
    :cond_0
    return v1
.end method

.method private readUtf8_slow(II)V
    .locals 7
    .param p1, "charCount"    # I
    .param p2, "charIndex"    # I

    .prologue
    const/4 v6, 0x1

    .line 539
    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    .line 540
    .local v2, "chars":[C
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 541
    .local v1, "buffer":[B
    :goto_0
    if-ge p2, p1, :cond_2

    .line 542
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v3, v4, :cond_0

    invoke-virtual {p0, v6}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 543
    :cond_0
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v3, v1, v3

    and-int/lit16 v0, v3, 0xff

    .line 544
    .local v0, "b":I
    shr-int/lit8 v3, v0, 0x4

    packed-switch v3, :pswitch_data_0

    .line 565
    :goto_1
    :pswitch_0
    add-int/lit8 p2, p2, 0x1

    .line 566
    goto :goto_0

    .line 553
    :pswitch_1
    int-to-char v3, v0

    aput-char v3, v2, p2

    goto :goto_1

    .line 557
    :pswitch_2
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v3, v4, :cond_1

    invoke-virtual {p0, v6}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 558
    :cond_1
    and-int/lit8 v3, v0, 0x1f

    shl-int/lit8 v3, v3, 0x6

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v2, p2

    goto :goto_1

    .line 561
    :pswitch_3
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 562
    and-int/lit8 v3, v0, 0xf

    shl-int/lit8 v3, v3, 0xc

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v4, v1, v4

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v2, p2

    goto :goto_1

    .line 567
    .end local v0    # "b":I
    :cond_2
    return-void

    .line 544
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int v1, v0, v1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canReadInt()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x5

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 408
    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v4, v5

    if-lt v4, v6, :cond_1

    .line 419
    :cond_0
    :goto_0
    return v2

    .line 409
    :cond_1
    invoke-direct {p0, v6}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v4

    if-gtz v4, :cond_2

    move v2, v3

    goto :goto_0

    .line 410
    :cond_2
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 411
    .local v0, "p":I
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "p":I
    .local v1, "p":I
    aget-byte v4, v4, v0

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_0

    .line 412
    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v1, v4, :cond_3

    move v2, v3

    goto :goto_0

    .line 413
    :cond_3
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "p":I
    .restart local v0    # "p":I
    aget-byte v4, v4, v1

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_0

    .line 414
    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v0, v4, :cond_4

    move v2, v3

    goto :goto_0

    .line 415
    :cond_4
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "p":I
    .restart local v1    # "p":I
    aget-byte v4, v4, v0

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_0

    .line 416
    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v1, v4, :cond_5

    move v2, v3

    goto :goto_0

    .line 417
    :cond_5
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "p":I
    .restart local v0    # "p":I
    aget-byte v4, v4, v1

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_0

    .line 418
    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v0, v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public canReadLong()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 424
    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v4, v5

    const/16 v5, 0x9

    if-lt v4, v5, :cond_1

    .line 443
    :cond_0
    :goto_0
    return v2

    .line 425
    :cond_1
    const/4 v4, 0x5

    invoke-direct {p0, v4}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v4

    if-gtz v4, :cond_2

    move v2, v3

    goto :goto_0

    .line 426
    :cond_2
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 427
    .local v0, "p":I
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "p":I
    .local v1, "p":I
    aget-byte v4, v4, v0

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_0

    .line 428
    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v1, v4, :cond_3

    move v2, v3

    goto :goto_0

    .line 429
    :cond_3
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "p":I
    .restart local v0    # "p":I
    aget-byte v4, v4, v1

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_0

    .line 430
    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v0, v4, :cond_4

    move v2, v3

    goto :goto_0

    .line 431
    :cond_4
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "p":I
    .restart local v1    # "p":I
    aget-byte v4, v4, v0

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_0

    .line 432
    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v1, v4, :cond_5

    move v2, v3

    goto :goto_0

    .line 433
    :cond_5
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "p":I
    .restart local v0    # "p":I
    aget-byte v4, v4, v1

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_0

    .line 434
    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v0, v4, :cond_6

    move v2, v3

    goto :goto_0

    .line 435
    :cond_6
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "p":I
    .restart local v1    # "p":I
    aget-byte v4, v4, v0

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_0

    .line 436
    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v1, v4, :cond_7

    move v2, v3

    goto :goto_0

    .line 437
    :cond_7
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "p":I
    .restart local v0    # "p":I
    aget-byte v4, v4, v1

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_0

    .line 438
    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v0, v4, :cond_8

    move v2, v3

    goto :goto_0

    .line 439
    :cond_8
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "p":I
    .restart local v1    # "p":I
    aget-byte v4, v4, v0

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_0

    .line 440
    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v1, v4, :cond_9

    move v2, v3

    goto :goto_0

    .line 441
    :cond_9
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "p":I
    .restart local v0    # "p":I
    aget-byte v4, v4, v1

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_0

    .line 442
    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v0, v4, :cond_0

    move v2, v3

    goto/16 :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 286
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public eof()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 226
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v1

    if-gtz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected fill([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    .line 146
    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getBuffer()[B
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public final limit()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    return v0
.end method

.method public final position()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 237
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    .line 238
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 244
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/io/Input;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 250
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "bytes cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 251
    :cond_0
    move v1, p3

    .line 252
    .local v1, "startingCount":I
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v3, v4

    invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 254
    .local v0, "copyCount":I
    :cond_1
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    invoke-static {v3, v4, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 256
    sub-int/2addr p3, v0

    .line 257
    if-nez p3, :cond_3

    .line 267
    :cond_2
    :goto_0
    sub-int v2, v1, p3

    :goto_1
    return v2

    .line 258
    :cond_3
    add-int/2addr p2, v0

    .line 259
    invoke-direct {p0, p3}, Lcom/esotericsoftware/kryo/io/Input;->optional(I)I

    move-result v0

    .line 260
    if-ne v0, v2, :cond_4

    .line 262
    if-ne v1, p3, :cond_2

    goto :goto_1

    .line 265
    :cond_4
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    if-ne v3, v4, :cond_1

    goto :goto_0
.end method

.method public readBoolean()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 783
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 784
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v1, v1, v2

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 295
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 296
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public readByteUnsigned()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 301
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 302
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readBytes([B)V
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 314
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/io/Input;->readBytes([BII)V

    .line 315
    return-void
.end method

.method public readBytes([BII)V
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 319
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bytes cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 320
    :cond_0
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v1, v2

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 322
    .local v0, "copyCount":I
    :goto_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 324
    sub-int/2addr p3, v0

    .line 325
    if-nez p3, :cond_1

    .line 330
    return-void

    .line 326
    :cond_1
    add-int/2addr p2, v0

    .line 327
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 328
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    goto :goto_0
.end method

.method public readBytes(I)[B
    .locals 2
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 307
    new-array v0, p1, [B

    .line 308
    .local v0, "bytes":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/esotericsoftware/kryo/io/Input;->readBytes([BII)V

    .line 309
    return-object v0
.end method

.method public readChar()C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 791
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 792
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public readChars(I)[C
    .locals 3
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 859
    new-array v0, p1, [C

    .line 860
    .local v0, "array":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 861
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readChar()C

    move-result v2

    aput-char v2, v0, v1

    .line 860
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 862
    :cond_0
    return-object v0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 799
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readDouble(DZ)D
    .locals 3
    .param p1, "precision"    # D
    .param p3, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 804
    invoke-virtual {p0, p3}, Lcom/esotericsoftware/kryo/io/Input;->readLong(Z)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, p1

    return-wide v0
.end method

.method public readDoubles(I)[D
    .locals 4
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 867
    new-array v0, p1, [D

    .line 868
    .local v0, "array":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 869
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readDouble()D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 868
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 870
    :cond_0
    return-object v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 642
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readFloat(FZ)F
    .locals 1
    .param p1, "precision"    # F
    .param p2, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 647
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt(Z)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    return v0
.end method

.method public readFloats(I)[F
    .locals 3
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 843
    new-array v0, p1, [F

    .line 844
    .local v0, "array":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 845
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v2

    aput v2, v0, v1

    .line 844
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 846
    :cond_0
    return-object v0
.end method

.method public readInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 336
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 337
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 338
    .local v0, "buffer":[B
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 339
    .local v1, "position":I
    add-int/lit8 v2, v1, 0x4

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 340
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    return v2
.end method

.method public readInt(Z)I
    .locals 1
    .param p1, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 350
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    return v0
.end method

.method public readInts(I)[I
    .locals 3
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 827
    new-array v0, p1, [I

    .line 828
    .local v0, "array":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 829
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v2

    aput v2, v0, v1

    .line 828
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 830
    :cond_0
    return-object v0
.end method

.method public readInts(IZ)[I
    .locals 3
    .param p1, "length"    # I
    .param p2, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 811
    new-array v0, p1, [I

    .line 812
    .local v0, "array":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 813
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt(Z)I

    move-result v2

    aput v2, v0, v1

    .line 812
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 814
    :cond_0
    return-object v0
.end method

.method public readLong()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 668
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 669
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 670
    .local v0, "buffer":[B
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v1, v0, v1

    int-to-long v2, v1

    const/16 v1, 0x38

    shl-long/2addr v2, v1

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    const/16 v1, 0x30

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    const/16 v1, 0x28

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    const/16 v1, 0x20

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    const/16 v1, 0x18

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    int-to-long v4, v1

    or-long/2addr v2, v4

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    int-to-long v4, v1

    or-long/2addr v2, v4

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    or-long/2addr v2, v4

    return-wide v2
.end method

.method public readLong(Z)J
    .locals 2
    .param p1, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 685
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarLong(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public readLongs(I)[J
    .locals 4
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 835
    new-array v0, p1, [J

    .line 836
    .local v0, "array":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 837
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readLong()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 836
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 838
    :cond_0
    return-object v0
.end method

.method public readLongs(IZ)[J
    .locals 4
    .param p1, "length"    # I
    .param p2, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 819
    new-array v0, p1, [J

    .line 820
    .local v0, "array":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 821
    invoke-virtual {p0, p2}, Lcom/esotericsoftware/kryo/io/Input;->readLong(Z)J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 820
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 822
    :cond_0
    return-object v0
.end method

.method public readShort()S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 654
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 655
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public readShortUnsigned()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 660
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    .line 661
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public readShorts(I)[S
    .locals 3
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 851
    new-array v0, p1, [S

    .line 852
    .local v0, "array":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 853
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->readShort()S

    move-result v2

    aput-short v2, v0, v1

    .line 852
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 854
    :cond_0
    return-object v0
.end method

.method public readString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 452
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    move-result v0

    .line 453
    .local v0, "available":I
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v1, v3, v4

    .line 454
    .local v1, "b":I
    and-int/lit16 v3, v1, 0x80

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Input;->readAscii()Ljava/lang/String;

    move-result-object v3

    .line 466
    :goto_0
    return-object v3

    .line 456
    :cond_0
    const/4 v3, 0x5

    if-lt v0, v3, :cond_2

    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->readUtf8Length(I)I

    move-result v2

    .line 457
    .local v2, "charCount":I
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 463
    add-int/lit8 v2, v2, -0x1

    .line 464
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    array-length v3, v3

    if-ge v3, v2, :cond_1

    new-array v3, v2, [C

    iput-object v3, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    .line 465
    :cond_1
    invoke-direct {p0, v2}, Lcom/esotericsoftware/kryo/io/Input;->readUtf8(I)V

    .line 466
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 456
    .end local v2    # "charCount":I
    :cond_2
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->readUtf8Length_slow(I)I

    move-result v2

    goto :goto_1

    .line 459
    .restart local v2    # "charCount":I
    :pswitch_0
    const/4 v3, 0x0

    goto :goto_0

    .line 461
    :pswitch_1
    const-string v3, ""

    goto :goto_0

    .line 457
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public readStringBuilder()Ljava/lang/StringBuilder;
    .locals 7

    .prologue
    .line 619
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    move-result v0

    .line 620
    .local v0, "available":I
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v1, v4, v5

    .line 621
    .local v1, "b":I
    and-int/lit16 v4, v1, 0x80

    if-nez v4, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Input;->readAscii()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 635
    :goto_0
    return-object v2

    .line 623
    :cond_0
    const/4 v4, 0x5

    if-lt v0, v4, :cond_2

    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->readUtf8Length(I)I

    move-result v3

    .line 624
    .local v3, "charCount":I
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 630
    add-int/lit8 v3, v3, -0x1

    .line 631
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    array-length v4, v4

    if-ge v4, v3, :cond_1

    new-array v4, v3, [C

    iput-object v4, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    .line 632
    :cond_1
    invoke-direct {p0, v3}, Lcom/esotericsoftware/kryo/io/Input;->readUtf8(I)V

    .line 633
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 634
    .local v2, "builder":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/Input;->chars:[C

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 623
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "charCount":I
    :cond_2
    invoke-direct {p0, v1}, Lcom/esotericsoftware/kryo/io/Input;->readUtf8Length_slow(I)I

    move-result v3

    goto :goto_1

    .line 626
    .restart local v3    # "charCount":I
    :pswitch_0
    const/4 v2, 0x0

    goto :goto_0

    .line 628
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 624
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public readVarInt(Z)I
    .locals 6
    .param p1, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 355
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;->readInt_slow(Z)I

    move-result v2

    .line 375
    :cond_0
    :goto_0
    return v2

    .line 356
    :cond_1
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v3, v4

    .line 357
    .local v0, "b":I
    and-int/lit8 v2, v0, 0x7f

    .line 358
    .local v2, "result":I
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_2

    .line 359
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 360
    .local v1, "buffer":[B
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v1, v3

    .line 361
    and-int/lit8 v3, v0, 0x7f

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v2, v3

    .line 362
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_2

    .line 363
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v1, v3

    .line 364
    and-int/lit8 v3, v0, 0x7f

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v2, v3

    .line 365
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_2

    .line 366
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v1, v3

    .line 367
    and-int/lit8 v3, v0, 0x7f

    shl-int/lit8 v3, v3, 0x15

    or-int/2addr v2, v3

    .line 368
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_2

    .line 369
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v1, v3

    .line 370
    and-int/lit8 v3, v0, 0x7f

    shl-int/lit8 v3, v3, 0x1c

    or-int/2addr v2, v3

    .line 375
    .end local v1    # "buffer":[B
    :cond_2
    if-nez p1, :cond_0

    ushr-int/lit8 v3, v2, 0x1

    and-int/lit8 v4, v2, 0x1

    neg-int v4, v4

    xor-int v2, v3, v4

    goto :goto_0
.end method

.method public readVarLong(Z)J
    .locals 8
    .param p1, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 690
    invoke-virtual {p0, v7}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    move-result v4

    const/16 v5, 0x9

    if-ge v4, v5, :cond_1

    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;->readLong_slow(Z)J

    move-result-wide v2

    .line 727
    :cond_0
    :goto_0
    return-wide v2

    .line 691
    :cond_1
    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v4, v5

    .line 692
    .local v0, "b":I
    and-int/lit8 v4, v0, 0x7f

    int-to-long v2, v4

    .line 693
    .local v2, "result":J
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_2

    .line 694
    iget-object v1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 695
    .local v1, "buffer":[B
    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v1, v4

    .line 696
    and-int/lit8 v4, v0, 0x7f

    shl-int/lit8 v4, v4, 0x7

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 697
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_2

    .line 698
    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v1, v4

    .line 699
    and-int/lit8 v4, v0, 0x7f

    shl-int/lit8 v4, v4, 0xe

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 700
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_2

    .line 701
    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v1, v4

    .line 702
    and-int/lit8 v4, v0, 0x7f

    shl-int/lit8 v4, v4, 0x15

    int-to-long v4, v4

    or-long/2addr v2, v4

    .line 703
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_2

    .line 704
    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v1, v4

    .line 705
    and-int/lit8 v4, v0, 0x7f

    int-to-long v4, v4

    const/16 v6, 0x1c

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 706
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_2

    .line 707
    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v1, v4

    .line 708
    and-int/lit8 v4, v0, 0x7f

    int-to-long v4, v4

    const/16 v6, 0x23

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 709
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_2

    .line 710
    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v1, v4

    .line 711
    and-int/lit8 v4, v0, 0x7f

    int-to-long v4, v4

    const/16 v6, 0x2a

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 712
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_2

    .line 713
    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v1, v4

    .line 714
    and-int/lit8 v4, v0, 0x7f

    int-to-long v4, v4

    const/16 v6, 0x31

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 715
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_2

    .line 716
    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    aget-byte v0, v1, v4

    .line 717
    int-to-long v4, v0

    const/16 v6, 0x38

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 726
    .end local v1    # "buffer":[B
    :cond_2
    if-nez p1, :cond_0

    ushr-long v4, v2, v7

    const-wide/16 v6, 0x1

    and-long/2addr v6, v2

    neg-long v6, v6

    xor-long v2, v4, v6

    goto/16 :goto_0
.end method

.method protected require(I)I
    .locals 10
    .param p1, "required"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 156
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int v1, v3, v4

    .line 157
    .local v1, "remaining":I
    if-lt v1, p1, :cond_0

    move v2, v1

    .line 188
    .end local v1    # "remaining":I
    .local v2, "remaining":I
    :goto_0
    return v2

    .line 158
    .end local v2    # "remaining":I
    .restart local v1    # "remaining":I
    :cond_0
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    if-le p1, v3, :cond_1

    new-instance v3, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Buffer too small: capacity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", required: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 162
    :cond_1
    if-lez v1, :cond_3

    .line 163
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v5, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    iget v6, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v3, v4, v5}, Lcom/esotericsoftware/kryo/io/Input;->fill([BII)I

    move-result v0

    .line 164
    .local v0, "count":I
    if-ne v0, v8, :cond_2

    new-instance v3, Lcom/esotericsoftware/kryo/KryoException;

    const-string v4, "Buffer underflow."

    invoke-direct {v3, v4}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 165
    :cond_2
    add-int/2addr v1, v0

    .line 166
    if-lt v1, p1, :cond_3

    .line 167
    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    move v2, v1

    .line 168
    .end local v1    # "remaining":I
    .restart local v2    # "remaining":I
    goto :goto_0

    .line 173
    .end local v0    # "count":I
    .end local v2    # "remaining":I
    .restart local v1    # "remaining":I
    :cond_3
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    iget-object v5, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    invoke-static {v3, v4, v5, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    iget-wide v4, p0, Lcom/esotericsoftware/kryo/io/Input;->total:J

    iget v3, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/esotericsoftware/kryo/io/Input;->total:J

    .line 175
    iput v9, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 178
    :cond_4
    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    iget v4, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    sub-int/2addr v4, v1

    invoke-virtual {p0, v3, v1, v4}, Lcom/esotericsoftware/kryo/io/Input;->fill([BII)I

    move-result v0

    .line 179
    .restart local v0    # "count":I
    if-ne v0, v8, :cond_6

    .line 180
    if-lt v1, p1, :cond_5

    .line 187
    :goto_1
    iput v1, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    move v2, v1

    .line 188
    .end local v1    # "remaining":I
    .restart local v2    # "remaining":I
    goto :goto_0

    .line 181
    .end local v2    # "remaining":I
    .restart local v1    # "remaining":I
    :cond_5
    new-instance v3, Lcom/esotericsoftware/kryo/KryoException;

    const-string v4, "Buffer underflow."

    invoke-direct {v3, v4}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 183
    :cond_6
    add-int/2addr v1, v0

    .line 184
    if-lt v1, p1, :cond_4

    goto :goto_1
.end method

.method public rewind()V
    .locals 2

    .prologue
    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 126
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/esotericsoftware/kryo/io/Input;->total:J

    .line 127
    return-void
.end method

.method public setBuffer([B)V
    .locals 2
    .param p1, "bytes"    # [B

    .prologue
    .line 63
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/esotericsoftware/kryo/io/Input;->setBuffer([BII)V

    .line 64
    return-void
.end method

.method public setBuffer([BII)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 68
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/Input;->buffer:[B

    .line 70
    iput p2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 71
    add-int v0, p2, p3

    iput v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    .line 72
    array-length v0, p1

    iput v0, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/esotericsoftware/kryo/io/Input;->total:J

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    .line 75
    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/esotericsoftware/kryo/io/Input;->inputStream:Ljava/io/InputStream;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    .line 90
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/Input;->rewind()V

    .line 91
    return-void
.end method

.method public setLimit(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    .line 121
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 111
    return-void
.end method

.method public setTotal(I)V
    .locals 2
    .param p1, "total"    # I

    .prologue
    .line 100
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/esotericsoftware/kryo/io/Input;->total:J

    .line 101
    return-void
.end method

.method public skip(J)J
    .locals 7
    .param p1, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 272
    move-wide v0, p1

    .line 273
    .local v0, "remaining":J
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 274
    const-wide/32 v4, 0x7fffffff

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    .line 275
    .local v2, "skip":I
    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/Input;->skip(I)V

    .line 276
    int-to-long v4, v2

    sub-long/2addr v0, v4

    .line 277
    goto :goto_0

    .line 278
    .end local v2    # "skip":I
    :cond_0
    return-wide p1
.end method

.method public skip(I)V
    .locals 3
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 131
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->limit:I

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    sub-int/2addr v1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 133
    .local v0, "skipCount":I
    :goto_0
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    .line 134
    sub-int/2addr p1, v0

    .line 135
    if-nez p1, :cond_0

    .line 139
    return-void

    .line 136
    :cond_0
    iget v1, p0, Lcom/esotericsoftware/kryo/io/Input;->capacity:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 137
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/io/Input;->require(I)I

    goto :goto_0
.end method

.method public total()J
    .locals 4

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/esotericsoftware/kryo/io/Input;->total:J

    iget v2, p0, Lcom/esotericsoftware/kryo/io/Input;->position:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method
