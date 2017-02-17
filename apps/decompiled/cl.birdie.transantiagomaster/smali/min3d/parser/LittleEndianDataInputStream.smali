.class public final Lmin3d/parser/LittleEndianDataInputStream;
.super Ljava/io/InputStream;
.source "LittleEndianDataInputStream.java"

# interfaces
.implements Ljava/io/DataInput;


# instance fields
.field private d:Ljava/io/DataInputStream;

.field private in:Ljava/io/InputStream;

.field private w:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 16
    iput-object p1, p0, Lmin3d/parser/LittleEndianDataInputStream;->in:Ljava/io/InputStream;

    .line 17
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lmin3d/parser/LittleEndianDataInputStream;->d:Ljava/io/DataInputStream;

    .line 18
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lmin3d/parser/LittleEndianDataInputStream;->w:[B

    .line 19
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lmin3d/parser/LittleEndianDataInputStream;->d:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v0

    return v0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lmin3d/parser/LittleEndianDataInputStream;->d:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 150
    return-void
.end method

.method public final read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lmin3d/parser/LittleEndianDataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lmin3d/parser/LittleEndianDataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public final readBoolean()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lmin3d/parser/LittleEndianDataInputStream;->d:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public final readByte()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lmin3d/parser/LittleEndianDataInputStream;->d:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    return v0
.end method

.method public final readChar()C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 63
    iget-object v0, p0, Lmin3d/parser/LittleEndianDataInputStream;->d:Ljava/io/DataInputStream;

    iget-object v1, p0, Lmin3d/parser/LittleEndianDataInputStream;->w:[B

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 65
    iget-object v0, p0, Lmin3d/parser/LittleEndianDataInputStream;->w:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    .line 66
    iget-object v1, p0, Lmin3d/parser/LittleEndianDataInputStream;->w:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    .line 64
    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public final readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0}, Lmin3d/parser/LittleEndianDataInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p0}, Lmin3d/parser/LittleEndianDataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readFully([B)V
    .locals 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lmin3d/parser/LittleEndianDataInputStream;->d:Ljava/io/DataInputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 113
    return-void
.end method

.method public final readFully([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lmin3d/parser/LittleEndianDataInputStream;->d:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 117
    return-void
.end method

.method public final readInt()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 74
    iget-object v0, p0, Lmin3d/parser/LittleEndianDataInputStream;->d:Ljava/io/DataInputStream;

    iget-object v1, p0, Lmin3d/parser/LittleEndianDataInputStream;->w:[B

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 76
    iget-object v0, p0, Lmin3d/parser/LittleEndianDataInputStream;->w:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x18

    .line 77
    iget-object v1, p0, Lmin3d/parser/LittleEndianDataInputStream;->w:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    .line 76
    or-int/2addr v0, v1

    .line 78
    iget-object v1, p0, Lmin3d/parser/LittleEndianDataInputStream;->w:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 76
    or-int/2addr v0, v1

    .line 79
    iget-object v1, p0, Lmin3d/parser/LittleEndianDataInputStream;->w:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    .line 76
    or-int/2addr v0, v1

    .line 75
    return v0
.end method

.method public final readLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lmin3d/parser/LittleEndianDataInputStream;->d:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readLong()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 87
    iget-object v0, p0, Lmin3d/parser/LittleEndianDataInputStream;->d:Ljava/io/DataInputStream;

    iget-object v1, p0, Lmin3d/parser/LittleEndianDataInputStream;->w:[B

    invoke-virtual {v0, v1, v5, v6}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 89
    iget-object v0, p0, Lmin3d/parser/LittleEndianDataInputStream;->w:[B

    const/4 v1, 0x7

    aget-byte v0, v0, v1

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    .line 90
    iget-object v2, p0, Lmin3d/parser/LittleEndianDataInputStream;->w:[B

    const/4 v3, 0x6

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    .line 89
    or-long/2addr v0, v2

    .line 91
    iget-object v2, p0, Lmin3d/parser/LittleEndianDataInputStream;->w:[B

    const/4 v3, 0x5

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    .line 89
    or-long/2addr v0, v2

    .line 92
    iget-object v2, p0, Lmin3d/parser/LittleEndianDataInputStream;->w:[B

    const/4 v3, 0x4

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    .line 89
    or-long/2addr v0, v2

    .line 93
    iget-object v2, p0, Lmin3d/parser/LittleEndianDataInputStream;->w:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    .line 89
    or-long/2addr v0, v2

    .line 94
    iget-object v2, p0, Lmin3d/parser/LittleEndianDataInputStream;->w:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    .line 89
    or-long/2addr v0, v2

    .line 95
    iget-object v2, p0, Lmin3d/parser/LittleEndianDataInputStream;->w:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    shl-long/2addr v2, v6

    .line 89
    or-long/2addr v0, v2

    .line 96
    iget-object v2, p0, Lmin3d/parser/LittleEndianDataInputStream;->w:[B

    aget-byte v2, v2, v5

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    .line 89
    or-long/2addr v0, v2

    .line 88
    return-wide v0
.end method

.method public final readShort()S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 28
    iget-object v0, p0, Lmin3d/parser/LittleEndianDataInputStream;->d:Ljava/io/DataInputStream;

    iget-object v1, p0, Lmin3d/parser/LittleEndianDataInputStream;->w:[B

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 30
    iget-object v0, p0, Lmin3d/parser/LittleEndianDataInputStream;->w:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    .line 31
    iget-object v1, p0, Lmin3d/parser/LittleEndianDataInputStream;->w:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    .line 29
    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public final readString(I)Ljava/lang/String;
    .locals 3
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    const/4 v1, 0x0

    .line 42
    :goto_0
    return-object v1

    .line 39
    :cond_0
    new-array v0, p1, [B

    .line 40
    .local v0, "b":[B
    iget-object v1, p0, Lmin3d/parser/LittleEndianDataInputStream;->d:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 42
    new-instance v1, Ljava/lang/String;

    const-string v2, "US-ASCII"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public final readUTF()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lmin3d/parser/LittleEndianDataInputStream;->d:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readUnsignedByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lmin3d/parser/LittleEndianDataInputStream;->d:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    return v0
.end method

.method public final readUnsignedShort()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 52
    iget-object v0, p0, Lmin3d/parser/LittleEndianDataInputStream;->d:Ljava/io/DataInputStream;

    iget-object v1, p0, Lmin3d/parser/LittleEndianDataInputStream;->w:[B

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 54
    iget-object v0, p0, Lmin3d/parser/LittleEndianDataInputStream;->w:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    .line 55
    iget-object v1, p0, Lmin3d/parser/LittleEndianDataInputStream;->w:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    .line 53
    or-int/2addr v0, v1

    return v0
.end method

.method public final skipBytes(I)I
    .locals 1
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lmin3d/parser/LittleEndianDataInputStream;->d:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v0

    return v0
.end method
