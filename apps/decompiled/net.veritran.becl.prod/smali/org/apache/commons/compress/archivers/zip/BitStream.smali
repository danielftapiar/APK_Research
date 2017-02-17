.class Lorg/apache/commons/compress/archivers/zip/BitStream;
.super Ljava/lang/Object;
.source "BitStream.java"


# static fields
.field private static final MASKS:[I


# instance fields
.field private bitCache:J

.field private bitCacheSize:I

.field private final in:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/BitStream;->MASKS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
    .end array-data
.end method

.method constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/BitStream;->in:Ljava/io/InputStream;

    .line 56
    return-void
.end method

.method private fillCache()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 61
    .local v0, "filled":Z
    :goto_0
    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/BitStream;->bitCacheSize:I

    const/16 v4, 0x38

    if-gt v1, v4, :cond_0

    .line 62
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/BitStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    int-to-long v2, v1

    .line 63
    .local v2, "nextByte":J
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 72
    .end local v2    # "nextByte":J
    :cond_0
    return v0

    .line 67
    .restart local v2    # "nextByte":J
    :cond_1
    const/4 v0, 0x1

    .line 68
    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/zip/BitStream;->bitCache:J

    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/BitStream;->bitCacheSize:I

    shl-long v6, v2, v1

    or-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/zip/BitStream;->bitCache:J

    .line 69
    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/BitStream;->bitCacheSize:I

    add-int/lit8 v1, v1, 0x8

    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/BitStream;->bitCacheSize:I

    goto :goto_0
.end method


# virtual methods
.method nextBit()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/BitStream;->bitCacheSize:I

    if-nez v1, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/BitStream;->fillCache()Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    const/4 v0, -0x1

    .line 90
    :goto_0
    return v0

    .line 85
    :cond_0
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/BitStream;->bitCache:J

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    long-to-int v0, v2

    .line 87
    .local v0, "bit":I
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/BitStream;->bitCache:J

    const/4 v1, 0x1

    ushr-long/2addr v2, v1

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/BitStream;->bitCache:J

    .line 88
    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/BitStream;->bitCacheSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/BitStream;->bitCacheSize:I

    goto :goto_0
.end method

.method nextBits(I)I
    .locals 6
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/BitStream;->bitCacheSize:I

    if-ge v1, p1, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/BitStream;->fillCache()Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    const/4 v0, -0x1

    .line 109
    :goto_0
    return v0

    .line 104
    :cond_0
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/BitStream;->bitCache:J

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/BitStream;->MASKS:[I

    aget v1, v1, p1

    int-to-long v4, v1

    and-long/2addr v2, v4

    long-to-int v0, v2

    .line 106
    .local v0, "bits":I
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/BitStream;->bitCache:J

    ushr-long/2addr v2, p1

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/BitStream;->bitCache:J

    .line 107
    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/BitStream;->bitCacheSize:I

    sub-int/2addr v1, p1

    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/BitStream;->bitCacheSize:I

    goto :goto_0
.end method

.method nextByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/BitStream;->nextBits(I)I

    move-result v0

    return v0
.end method
