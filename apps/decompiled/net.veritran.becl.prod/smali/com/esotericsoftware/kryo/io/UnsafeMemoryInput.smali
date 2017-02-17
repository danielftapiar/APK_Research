.class public final Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;
.super Lcom/esotericsoftware/kryo/io/ByteBufferInput;
.source "UnsafeMemoryInput.java"


# instance fields
.field private bufaddress:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->varIntsEnabled:Z

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "bufferSize"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;-><init>(I)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->varIntsEnabled:Z

    .line 43
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->updateBufferAddress()V

    .line 44
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1
    .param p1, "address"    # J
    .param p3, "maxBufferSize"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;-><init>(JI)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->varIntsEnabled:Z

    .line 60
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->updateBufferAddress()V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;-><init>(Ljava/io/InputStream;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->varIntsEnabled:Z

    .line 66
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->updateBufferAddress()V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;-><init>(Ljava/io/InputStream;I)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->varIntsEnabled:Z

    .line 72
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->updateBufferAddress()V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;-><init>(Ljava/nio/ByteBuffer;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->varIntsEnabled:Z

    .line 55
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->updateBufferAddress()V

    .line 56
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "buffer"    # [B

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;-><init>([B)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->varIntsEnabled:Z

    .line 50
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->updateBufferAddress()V

    .line 51
    return-void
.end method

.method private final readBytes(Ljava/lang/Object;JJI)V
    .locals 12
    .param p1, "dstObj"    # Ljava/lang/Object;
    .param p2, "dstArrayTypeOffset"    # J
    .param p4, "offset"    # J
    .param p6, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 222
    iget v3, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->limit:I

    iget v4, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->position:I

    sub-int/2addr v3, v4

    move/from16 v0, p6

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 224
    .local v2, "copyCount":I
    :goto_0
    invoke-static {}, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->unsafe()Lsun/misc/Unsafe;

    move-result-object v3

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->bufaddress:J

    iget v5, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->position:I

    int-to-long v8, v5

    add-long v5, v6, v8

    add-long v8, p2, p4

    int-to-long v10, v2

    move-object v7, p1

    invoke-virtual/range {v3 .. v11}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 225
    iget v3, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->position:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->position:I

    .line 226
    sub-int p6, p6, v2

    .line 227
    if-nez p6, :cond_0

    .line 232
    return-void

    .line 228
    :cond_0
    int-to-long v4, v2

    add-long p4, p4, v4

    .line 229
    iget v3, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->capacity:I

    move/from16 v0, p6

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 230
    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->require(I)I

    goto :goto_0
.end method

.method private updateBufferAddress()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->niobuffer:Ljava/nio/ByteBuffer;

    check-cast v0, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v0}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->bufaddress:J

    .line 82
    return-void
.end method


# virtual methods
.method public readBoolean()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->niobuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 119
    invoke-super {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public readByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->niobuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 125
    invoke-super {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readByte()B

    move-result v0

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
    .line 214
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    const-wide/16 v2, 0x0

    long-to-int v6, p4

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->readBytes(Ljava/lang/Object;JJI)V

    .line 219
    return-void

    .line 217
    :cond_0
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    const-string v1, "Only bulk reads of arrays is supported"

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readChar()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->niobuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->position:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 131
    invoke-super {p0}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readChar()C

    move-result v0

    return v0
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
    .line 198
    shl-int/lit8 v6, p1, 0x1

    .line 199
    .local v6, "bytesToCopy":I
    new-array v1, p1, [C

    .line 200
    .local v1, "array":[C
    sget-wide v2, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->charArrayBaseOffset:J

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->readBytes(Ljava/lang/Object;JJI)V

    .line 201
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
    .line 136
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->require(I)I

    .line 137
    invoke-static {}, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->unsafe()Lsun/misc/Unsafe;

    move-result-object v2

    iget-wide v4, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->bufaddress:J

    iget v3, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->position:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lsun/misc/Unsafe;->getDouble(J)D

    move-result-wide v0

    .line 138
    .local v0, "result":D
    iget v2, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->position:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->position:I

    .line 139
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
    .line 206
    shl-int/lit8 v6, p1, 0x3

    .line 207
    .local v6, "bytesToCopy":I
    new-array v1, p1, [D

    .line 208
    .local v1, "array":[D
    sget-wide v2, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->doubleArrayBaseOffset:J

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->readBytes(Ljava/lang/Object;JJI)V

    .line 209
    return-object v1
.end method

.method public readFloat()F
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->require(I)I

    .line 95
    invoke-static {}, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->unsafe()Lsun/misc/Unsafe;

    move-result-object v1

    iget-wide v2, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->bufaddress:J

    iget v4, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->position:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lsun/misc/Unsafe;->getFloat(J)F

    move-result v0

    .line 96
    .local v0, "result":F
    iget v1, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->position:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->position:I

    .line 97
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
    .line 182
    shl-int/lit8 v6, p1, 0x2

    .line 183
    .local v6, "bytesToCopy":I
    new-array v1, p1, [F

    .line 184
    .local v1, "array":[F
    sget-wide v2, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->floatArrayBaseOffset:J

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->readBytes(Ljava/lang/Object;JJI)V

    .line 185
    return-object v1
.end method

.method public readInt()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 86
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->require(I)I

    .line 87
    invoke-static {}, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->unsafe()Lsun/misc/Unsafe;

    move-result-object v1

    iget-wide v2, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->bufaddress:J

    iget v4, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->position:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v0

    .line 88
    .local v0, "result":I
    iget v1, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->position:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->position:I

    .line 89
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
    .line 143
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->varIntsEnabled:Z

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->readInt()I

    move-result v0

    .line 146
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readInt(Z)I

    move-result v0

    goto :goto_0
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
    .line 160
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->varIntsEnabled:Z

    if-nez v0, :cond_0

    .line 161
    shl-int/lit8 v6, p1, 0x2

    .line 162
    .local v6, "bytesToCopy":I
    new-array v1, p1, [I

    .line 163
    .local v1, "array":[I
    sget-wide v2, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->intArrayBaseOffset:J

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->readBytes(Ljava/lang/Object;JJI)V

    .line 166
    .end local v1    # "array":[I
    .end local v6    # "bytesToCopy":I
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readInts(IZ)[I

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
    .line 110
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->require(I)I

    .line 111
    invoke-static {}, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->unsafe()Lsun/misc/Unsafe;

    move-result-object v2

    iget-wide v4, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->bufaddress:J

    iget v3, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->position:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v0

    .line 112
    .local v0, "result":J
    iget v2, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->position:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->position:I

    .line 113
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
    .line 150
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->varIntsEnabled:Z

    if-nez v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->readLong()J

    move-result-wide v0

    .line 153
    :goto_0
    return-wide v0

    :cond_0
    invoke-super {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readLong(Z)J

    move-result-wide v0

    goto :goto_0
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
    .line 171
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->varIntsEnabled:Z

    if-nez v0, :cond_0

    .line 172
    shl-int/lit8 v6, p1, 0x3

    .line 173
    .local v6, "bytesToCopy":I
    new-array v1, p1, [J

    .line 174
    .local v1, "array":[J
    sget-wide v2, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->longArrayBaseOffset:J

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->readBytes(Ljava/lang/Object;JJI)V

    .line 177
    .end local v1    # "array":[J
    .end local v6    # "bytesToCopy":I
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->readLongs(IZ)[J

    move-result-object v1

    goto :goto_0
.end method

.method public readShort()S
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/esotericsoftware/kryo/KryoException;
        }
    .end annotation

    .prologue
    .line 102
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->require(I)I

    .line 103
    invoke-static {}, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->unsafe()Lsun/misc/Unsafe;

    move-result-object v1

    iget-wide v2, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->bufaddress:J

    iget v4, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->position:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lsun/misc/Unsafe;->getShort(J)S

    move-result v0

    .line 104
    .local v0, "result":S
    iget v1, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->position:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->position:I

    .line 105
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
    .line 190
    shl-int/lit8 v6, p1, 0x1

    .line 191
    .local v6, "bytesToCopy":I
    new-array v1, p1, [S

    .line 192
    .local v1, "array":[S
    sget-wide v2, Lcom/esotericsoftware/kryo/util/UnsafeUtil;->shortArrayBaseOffset:J

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->readBytes(Ljava/lang/Object;JJI)V

    .line 193
    return-object v1
.end method

.method public setBuffer(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/esotericsoftware/kryo/io/ByteBufferInput;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 77
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/io/UnsafeMemoryInput;->updateBufferAddress()V

    .line 78
    return-void
.end method
