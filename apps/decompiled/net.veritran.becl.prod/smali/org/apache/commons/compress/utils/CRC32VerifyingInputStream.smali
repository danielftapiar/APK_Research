.class public Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;
.super Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;
.source "CRC32VerifyingInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JI)V
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "size"    # J
    .param p4, "expectedCrc32"    # I

    .prologue
    .line 32
    int-to-long v0, p4

    const-wide v2, 0xffffffffL

    and-long v4, v0, v2

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JJ)V
    .locals 8
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "size"    # J
    .param p4, "expectedCrc32"    # J

    .prologue
    .line 39
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/compress/utils/ChecksumVerifyingInputStream;-><init>(Ljava/util/zip/Checksum;Ljava/io/InputStream;JJ)V

    .line 40
    return-void
.end method
