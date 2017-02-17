.class public Lorg/mapsforge/map/reader/ReadBuffer;
.super Ljava/lang/Object;
.source "ReadBuffer.java"


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private bufferData:[B

.field private bufferPosition:I

.field private final inputFile:Ljava/io/RandomAccessFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/mapsforge/map/reader/ReadBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/map/reader/ReadBuffer;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 0
    .param p1, "inputFile"    # Ljava/io/RandomAccessFile;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/mapsforge/map/reader/ReadBuffer;->inputFile:Ljava/io/RandomAccessFile;

    .line 40
    return-void
.end method


# virtual methods
.method final getBufferPosition()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    return v0
.end method

.method final getBufferSize()I
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferData:[B

    array-length v0, v0

    return v0
.end method

.method public final readByte()B
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferData:[B

    iget v1, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public final readFromFile(I)Z
    .locals 4
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 63
    iget-object v1, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferData:[B

    array-length v1, v1

    if-ge v1, p1, :cond_3

    .line 65
    :cond_0
    const v1, 0x2625a0

    if-le p1, v1, :cond_2

    .line 66
    sget-object v1, Lorg/mapsforge/map/reader/ReadBuffer;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalid read length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 74
    :cond_1
    :goto_0
    return v0

    .line 69
    :cond_2
    new-array v1, p1, [B

    iput-object v1, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferData:[B

    .line 73
    :cond_3
    iput v0, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    .line 74
    iget-object v1, p0, Lorg/mapsforge/map/reader/ReadBuffer;->inputFile:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferData:[B

    invoke-virtual {v1, v2, v0, p1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final readInt()I
    .locals 4

    .prologue
    .line 85
    iget v0, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    .line 86
    iget-object v0, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferData:[B

    iget v1, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    add-int/lit8 v1, v1, -0x4

    aget-byte v2, v0, v1

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

    add-int/lit8 v1, v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    return v0
.end method

.method public final readLong()J
    .locals 9

    .prologue
    const-wide/16 v7, 0xff

    .line 97
    iget v0, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    .line 98
    iget-object v0, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferData:[B

    iget v1, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    add-int/lit8 v1, v1, -0x8

    aget-byte v2, v0, v1

    int-to-long v2, v2

    and-long/2addr v2, v7

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x2

    aget-byte v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x3

    aget-byte v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x4

    aget-byte v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x5

    aget-byte v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x6

    aget-byte v4, v0, v4

    int-to-long v4, v4

    and-long/2addr v4, v7

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x7

    aget-byte v0, v0, v1

    int-to-long v0, v0

    and-long/2addr v0, v7

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final readShort()I
    .locals 3

    .prologue
    .line 109
    iget v0, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    .line 110
    iget-object v0, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferData:[B

    iget v1, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    add-int/lit8 v1, v1, -0x2

    aget-byte v2, v0, v1

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    return v0
.end method

.method public final readSignedInt()I
    .locals 5

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "variableByteDecode":I
    const/4 v1, 0x0

    .line 126
    .local v1, "variableByteShift":B
    :goto_0
    iget-object v2, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferData:[B

    iget v3, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    .line 127
    iget-object v2, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferData:[B

    iget v3, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0x7f

    shl-int/2addr v2, v1

    or-int/2addr v0, v2

    .line 128
    add-int/lit8 v2, v1, 0x7

    int-to-byte v1, v2

    goto :goto_0

    .line 132
    :cond_0
    iget-object v2, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferData:[B

    iget v3, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_1

    .line 134
    iget-object v2, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferData:[B

    iget v3, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0x3f

    shl-int/2addr v2, v1

    or-int/2addr v2, v0

    neg-int v2, v2

    .line 137
    :goto_1
    return v2

    :cond_1
    iget-object v2, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferData:[B

    iget v3, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0x3f

    shl-int/2addr v2, v1

    or-int/2addr v2, v0

    goto :goto_1
.end method

.method public final readUTF8EncodedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lorg/mapsforge/map/reader/ReadBuffer;->readUnsignedInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mapsforge/map/reader/ReadBuffer;->readUTF8EncodedString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readUTF8EncodedString(I)Ljava/lang/String;
    .locals 5
    .param p1, "stringLength"    # I

    .prologue
    .line 178
    if-lez p1, :cond_0

    iget v1, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferData:[B

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 179
    iget v1, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    .line 181
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferData:[B

    iget v3, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    sub-int/2addr v3, p1

    const-string v4, "UTF-8"

    invoke-direct {v1, v2, v3, p1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    return-object v1

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 186
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    sget-object v1, Lorg/mapsforge/map/reader/ReadBuffer;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalid string length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 187
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final readUnsignedInt()I
    .locals 5

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "variableByteDecode":I
    const/4 v1, 0x0

    .line 152
    .local v1, "variableByteShift":B
    :goto_0
    iget-object v2, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferData:[B

    iget v3, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    .line 153
    iget-object v2, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferData:[B

    iget v3, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0x7f

    shl-int/2addr v2, v1

    or-int/2addr v0, v2

    .line 154
    add-int/lit8 v2, v1, 0x7

    int-to-byte v1, v2

    goto :goto_0

    .line 158
    :cond_0
    iget-object v2, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferData:[B

    iget v3, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    aget-byte v2, v2, v3

    shl-int/2addr v2, v1

    or-int/2addr v2, v0

    return v2
.end method

.method final setBufferPosition(I)V
    .locals 0
    .param p1, "bufferPosition"    # I

    .prologue
    .line 211
    iput p1, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    .line 212
    return-void
.end method

.method final skipBytes(I)V
    .locals 1
    .param p1, "bytes"    # I

    .prologue
    .line 221
    iget v0, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/mapsforge/map/reader/ReadBuffer;->bufferPosition:I

    .line 222
    return-void
.end method
