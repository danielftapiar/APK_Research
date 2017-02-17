.class public final Lcom/esotericsoftware/kryo/io/UnsafeInput;
.super Lcom/esotericsoftware/kryo/io/Input;
.source "UnsafeInput.java"


# instance fields
.field private varIntsEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/Input;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/io/UnsafeInput;->varIntsEnabled:Z

    .line 30
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "bufferSize"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;-><init>(I)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/io/UnsafeInput;->varIntsEnabled:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;-><init>(Ljava/io/InputStream;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/io/UnsafeInput;->varIntsEnabled:Z

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/Input;-><init>(Ljava/io/InputStream;I)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/io/UnsafeInput;->varIntsEnabled:Z

    .line 58
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "buffer"    # [B

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;-><init>([B)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/io/UnsafeInput;->varIntsEnabled:Z

    .line 42
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/io/Input;-><init>([BII)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/io/UnsafeInput;->varIntsEnabled:Z

    .line 48
    return-void
.end method

.method private final readBytes(Ljava/lang/Object;JJI)V
    .locals 12
    .param p1, "dstArray"    # Ljava/lang/Object;
    .param p2, "dstArrayTypeOffset"    # J
    .param p4, "offset"    # J
    .param p6, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 207
    iget v3, p0, Lcom/esotericsoftware/kryo/io/UnsafeInput;->limit:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/UnsafeInput;->position:I

    sub-int/2addr v3, v4

    move/from16 v0, p6

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 209
    .local v2, "copyCount":I
    :goto_0
    invoke-static {}, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->unsafe()Lsun/misc/Unsafe;

    move-result-object v3

    iget-object v4, p0, Lcom/esotericsoftware/kryo/io/UnsafeInput;->buffer:[B

    sget-wide v6, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->byteArrayBaseOffset:J

    iget v5, p0, Lcom/esotericsoftware/kryo/io/UnsafeInput;->position:I

    int-to-long v8, v5

    add-long v5, v6, v8

    add-long v8, p2, p4

    int-to-long v10, v2

    move-object v7, p1

    invoke-virtual/range {v3 .. v11}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 210
    iget v3, p0, Lcom/esotericsoftware/kryo/io/UnsafeInput;->position:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/esotericsoftware/kryo/io/UnsafeInput;->position:I

    .line 211
    sub-int p6, p6, v2

    .line 212
    if-nez p6, :cond_0

    .line 217
    return-void

    .line 213
    :cond_0
    int-to-long v4, v2

    add-long p4, p4, v4

    .line 214
    iget v3, p0, Lcom/esotericsoftware/kryo/io/UnsafeInput;->capacity:I

    move/from16 v0, p6

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 215
    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/UnsafeInput;->require(I)I

    goto :goto_0
.end method


# virtual methods
.method public getVarIntsEnabled()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/UnsafeInput;->varIntsEnabled:Z

    return v0
.end method

.method public final readBytes(Ljava/lang/Object;JJ)V
    .locals 8
    .param p1, "dstObj"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    const-wide/16 v2, 0x0

    long-to-int v6, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/esotericsoftware/kryo/io/UnsafeInput;->readBytes(Ljava/lang/Object;JJI)V

    .line 204
    return-void

    .line 202
    :cond_0
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    const-string v1, "Only bulk reads of arrays is supported"

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final readChars(I)[C
    .locals 7
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 182
    shl-int/lit8 v6, p1, 0x1

    .line 183
    .local v6, "bytesToCopy":I
    new-array v1, p1, [C

    .line 184
    .local v1, "array":[C
    sget-wide v2, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->charArrayBaseOffset:J

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/esotericsoftware/kryo/io/UnsafeInput;->readBytes(Ljava/lang/Object;JJI)V

    .line 185
    return-object v1
.end method

.method public readDouble()D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 104
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/UnsafeInput;->require(I)I

    .line 105
    invoke-static {}, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->unsafe()Lsun/misc/Unsafe;

    move-result-object v2

    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/UnsafeInput;->buffer:[B

    sget-wide v4, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->byteArrayBaseOffset:J

    iget v6, p0, Lcom/esotericsoftware/kryo/io/UnsafeInput;->position:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v0

    .line 106
    .local v0, "result":D
    iget v2, p0, Lcom/esotericsoftware/kryo/io/UnsafeInput;->position:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/esotericsoftware/kryo/io/UnsafeInput;->position:I

    .line 107
    return-wide v0
.end method

.method public final readDoubles(I)[D
    .locals 7
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 190
    shl-int/lit8 v6, p1, 0x3

    .line 191
    .local v6, "bytesToCopy":I
    new-array v1, p1, [D

    .line 192
    .local v1, "array":[D
    sget-wide v2, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->doubleArrayBaseOffset:J

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/esotericsoftware/kryo/io/UnsafeInput;->readBytes(Ljava/lang/Object;JJI)V

    .line 193
    return-object v1
.end method

.method public readFloat()F
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 74
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/UnsafeInput;->require(I)I

    .line 75
    invoke-static {}, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->unsafe()Lsun/misc/Unsafe;

    move-result-object v1

    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/UnsafeInput;->buffer:[B

    sget-wide v4, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->byteArrayBaseOffset:J

    iget v3, p0, Lcom/esotericsoftware/kryo/io/UnsafeInput;->position:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Lsun/misc/Unsafe;->getFloat(Ljava/lang/Object;J)F

    move-result v0

    .line 76
    .local v0, "result":F
    iget v1, p0, Lcom/esotericsoftware/kryo/io/UnsafeInput;->position:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/esotericsoftware/kryo/io/UnsafeInput;->position:I

    .line 77
    return v0
.end method

.method public final readFloats(I)[F
    .locals 7
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 166
    shl-int/lit8 v6, p1, 0x2

    .line 167
    .local v6, "bytesToCopy":I
    new-array v1, p1, [F

    .line 168
    .local v1, "array":[F
    sget-wide v2, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->floatArrayBaseOffset:J

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/esotericsoftware/kryo/io/UnsafeInput;->readBytes(Ljava/lang/Object;JJI)V

    .line 169
    return-object v1
.end method

.method public readInt()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 64
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/UnsafeInput;->require(I)I

    .line 65
    invoke-static {}, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->unsafe()Lsun/misc/Unsafe;

    move-result-object v1

    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/UnsafeInput;->buffer:[B

    sget-wide v4, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->byteArrayBaseOffset:J

    iget v3, p0, Lcom/esotericsoftware/kryo/io/UnsafeInput;->position:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    .line 66
    .local v0, "result":I
    iget v1, p0, Lcom/esotericsoftware/kryo/io/UnsafeInput;->position:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/esotericsoftware/kryo/io/UnsafeInput;->position:I

    .line 67
    return v0
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
    .line 111
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/UnsafeInput;->varIntsEnabled:Z

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/UnsafeInput;->readInt()I

    move-result v0

    .line 114
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;->readInt(Z)I

    move-result v0

    goto :goto_0
.end method

.method public final readInts(I)[I
    .locals 7
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 150
    shl-int/lit8 v6, p1, 0x2

    .line 151
    .local v6, "bytesToCopy":I
    new-array v1, p1, [I

    .line 152
    .local v1, "array":[I
    sget-wide v2, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->intArrayBaseOffset:J

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/esotericsoftware/kryo/io/UnsafeInput;->readBytes(Ljava/lang/Object;JJI)V

    .line 153
    return-object v1
.end method

.method public final readInts(IZ)[I
    .locals 7
    .param p1, "length"    # I
    .param p2, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/UnsafeInput;->varIntsEnabled:Z

    if-nez v0, :cond_0

    .line 129
    shl-int/lit8 v6, p1, 0x2

    .line 130
    .local v6, "bytesToCopy":I
    new-array v1, p1, [I

    .line 131
    .local v1, "array":[I
    sget-wide v2, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->intArrayBaseOffset:J

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/esotericsoftware/kryo/io/UnsafeInput;->readBytes(Ljava/lang/Object;JJI)V

    .line 134
    .end local v1    # "array":[I
    .end local v6    # "bytesToCopy":I
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/Input;->readInts(IZ)[I

    move-result-object v1

    goto :goto_0
.end method

.method public readLong()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 94
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/UnsafeInput;->require(I)I

    .line 95
    invoke-static {}, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->unsafe()Lsun/misc/Unsafe;

    move-result-object v2

    iget-object v3, p0, Lcom/esotericsoftware/kryo/io/UnsafeInput;->buffer:[B

    sget-wide v4, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->byteArrayBaseOffset:J

    iget v6, p0, Lcom/esotericsoftware/kryo/io/UnsafeInput;->position:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    .line 96
    .local v0, "result":J
    iget v2, p0, Lcom/esotericsoftware/kryo/io/UnsafeInput;->position:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/esotericsoftware/kryo/io/UnsafeInput;->position:I

    .line 97
    return-wide v0
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
    .line 118
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/UnsafeInput;->varIntsEnabled:Z

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/UnsafeInput;->readLong()J

    move-result-wide v0

    .line 121
    :goto_0
    return-wide v0

    :cond_0
    invoke-super {p0, p1}, Lcom/esotericsoftware/kryo/io/Input;->readLong(Z)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final readLongs(I)[J
    .locals 7
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 158
    shl-int/lit8 v6, p1, 0x3

    .line 159
    .local v6, "bytesToCopy":I
    new-array v1, p1, [J

    .line 160
    .local v1, "array":[J
    sget-wide v2, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->longArrayBaseOffset:J

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/esotericsoftware/kryo/io/UnsafeInput;->readBytes(Ljava/lang/Object;JJI)V

    .line 161
    return-object v1
.end method

.method public final readLongs(IZ)[J
    .locals 7
    .param p1, "length"    # I
    .param p2, "optimizePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/UnsafeInput;->varIntsEnabled:Z

    if-nez v0, :cond_0

    .line 140
    shl-int/lit8 v6, p1, 0x3

    .line 141
    .local v6, "bytesToCopy":I
    new-array v1, p1, [J

    .line 142
    .local v1, "array":[J
    sget-wide v2, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->longArrayBaseOffset:J

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/esotericsoftware/kryo/io/UnsafeInput;->readBytes(Ljava/lang/Object;JJI)V

    .line 145
    .end local v1    # "array":[J
    .end local v6    # "bytesToCopy":I
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/Input;->readLongs(IZ)[J

    move-result-object v1

    goto :goto_0
.end method

.method public readShort()S
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/UnsafeInput;->require(I)I

    .line 85
    invoke-static {}, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->unsafe()Lsun/misc/Unsafe;

    move-result-object v1

    iget-object v2, p0, Lcom/esotericsoftware/kryo/io/UnsafeInput;->buffer:[B

    sget-wide v4, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->byteArrayBaseOffset:J

    iget v3, p0, Lcom/esotericsoftware/kryo/io/UnsafeInput;->position:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result v0

    .line 86
    .local v0, "result":S
    iget v1, p0, Lcom/esotericsoftware/kryo/io/UnsafeInput;->position:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/esotericsoftware/kryo/io/UnsafeInput;->position:I

    .line 87
    return v0
.end method

.method public final readShorts(I)[S
    .locals 7
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 174
    shl-int/lit8 v6, p1, 0x1

    .line 175
    .local v6, "bytesToCopy":I
    new-array v1, p1, [S

    .line 176
    .local v1, "array":[S
    sget-wide v2, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->shortArrayBaseOffset:J

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/esotericsoftware/kryo/io/UnsafeInput;->readBytes(Ljava/lang/Object;JJI)V

    .line 177
    return-object v1
.end method

.method public setVarIntsEnabled(Z)V
    .locals 0
    .param p1, "varIntsEnabled"    # Z

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/io/UnsafeInput;->varIntsEnabled:Z

    .line 230
    return-void
.end method
