.class public Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;
.super Ljava/lang/Object;
.source "SevenZFile.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final SIGNATURE_HEADER_SIZE:I = 0x20

.field static final sevenZSignature:[B


# instance fields
.field private final archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

.field private currentEntryIndex:I

.field private currentEntryInputStream:Ljava/io/InputStream;

.field private currentFolderIndex:I

.field private currentFolderInputStream:Ljava/io/InputStream;

.field private file:Ljava/io/RandomAccessFile;

.field private password:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x37t
        0x7at
        -0x44t
        -0x51t
        0x27t
        0x1ct
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "filename"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;-><init>(Ljava/io/File;[B)V

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/io/File;[B)V
    .locals 5
    .param p1, "filename"    # Ljava/io/File;
    .param p2, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    .line 72
    iput v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderIndex:I

    .line 73
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    .line 74
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryInputStream:Ljava/io/InputStream;

    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, "succeeded":Z
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    .line 94
    :try_start_0
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readHeaders([B)Lorg/apache/commons/compress/archivers/sevenz/Archive;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    .line 95
    if-eqz p2, :cond_1

    .line 96
    array-length v1, p2

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    .line 97
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    const/4 v3, 0x0

    array-length v4, p2

    invoke-static {p2, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :goto_0
    const/4 v0, 0x1

    .line 103
    if-nez v0, :cond_0

    .line 104
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 107
    :cond_0
    return-void

    .line 99
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v1

    if-nez v0, :cond_2

    .line 104
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    :cond_2
    throw v1
.end method

.method private buildDecoderStack(Lorg/apache/commons/compress/archivers/sevenz/Folder;JI)Ljava/io/InputStream;
    .locals 10
    .param p1, "folder"    # Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .param p2, "folderOffset"    # J
    .param p4, "firstPackStreamIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x1

    .line 842
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 843
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/BoundedRandomAccessFileInputStream;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v2, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    aget-wide v2, v2, p4

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/commons/compress/archivers/sevenz/BoundedRandomAccessFileInputStream;-><init>(Ljava/io/RandomAccessFile;J)V

    .line 845
    .local v1, "inputStreamStack":Ljava/io/InputStream;
    iget-object v6, p1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->coders:[Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .local v6, "arr$":[Lorg/apache/commons/compress/archivers/sevenz/Coder;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_2

    aget-object v7, v6, v8

    .line 846
    .local v7, "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    iget-wide v2, v7, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, v7, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 847
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Multi input/output stream coders are not yet supported"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 849
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    invoke-static {v1, v7, v0}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->addDecoder(Ljava/io/InputStream;Lorg/apache/commons/compress/archivers/sevenz/Coder;[B)Ljava/io/InputStream;

    move-result-object v1

    .line 845
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 851
    .end local v7    # "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    :cond_2
    iget-boolean v0, p1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    if-eqz v0, :cond_3

    .line 852
    new-instance v0, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    move-result-wide v2

    iget-wide v4, p1, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    .line 855
    :goto_1
    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private buildDecodingStream()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 797
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    iget v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    aget v9, v0, v2

    .line 798
    .local v9, "folderIndex":I
    if-gez v9, :cond_0

    .line 799
    new-instance v0, Lorg/apache/commons/compress/utils/BoundedInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-wide/16 v4, 0x0

    invoke-direct {v0, v2, v4, v5}, Lorg/apache/commons/compress/utils/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryInputStream:Ljava/io/InputStream;

    .line 829
    :goto_0
    return-void

    .line 803
    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderIndex:I

    if-ne v0, v9, :cond_1

    .line 805
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->drainPreviousEntry()V

    .line 819
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    iget v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    aget-object v6, v0, v2

    .line 820
    .local v6, "file":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    new-instance v1, Lorg/apache/commons/compress/utils/BoundedInputStream;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v2

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/commons/compress/utils/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    .line 822
    .local v1, "fileStream":Ljava/io/InputStream;
    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasCrc()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 823
    new-instance v0, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getSize()J

    move-result-wide v2

    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getCrcValue()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryInputStream:Ljava/io/InputStream;

    goto :goto_0

    .line 807
    .end local v1    # "fileStream":Ljava/io/InputStream;
    .end local v6    # "file":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    :cond_1
    iput v9, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderIndex:I

    .line 808
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 809
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 810
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    .line 813
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    aget-object v8, v0, v9

    .line 814
    .local v8, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstPackStreamIndex:[I

    aget v7, v0, v9

    .line 815
    .local v7, "firstPackStreamIndex":I
    const-wide/16 v2, 0x20

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-wide v4, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packPos:J

    add-long/2addr v2, v4

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->packStreamOffsets:[J

    aget-wide v4, v0, v7

    add-long v10, v2, v4

    .line 817
    .local v10, "folderOffset":J
    invoke-direct {p0, v8, v10, v11, v7}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->buildDecoderStack(Lorg/apache/commons/compress/archivers/sevenz/Folder;JI)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentFolderInputStream:Ljava/io/InputStream;

    goto :goto_1

    .line 826
    .end local v7    # "firstPackStreamIndex":I
    .end local v8    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .end local v10    # "folderOffset":J
    .restart local v1    # "fileStream":Ljava/io/InputStream;
    .restart local v6    # "file":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    :cond_3
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryInputStream:Ljava/io/InputStream;

    goto :goto_0
.end method

.method private calculateStreamMap(Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 12
    .param p1, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 744
    new-instance v8, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    invoke-direct {v8}, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;-><init>()V

    .line 746
    .local v8, "streamMap":Lorg/apache/commons/compress/archivers/sevenz/StreamMap;
    const/4 v2, 0x0

    .line 747
    .local v2, "nextFolderPackStreamIndex":I
    iget-object v10, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    if-eqz v10, :cond_0

    iget-object v10, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v6, v10

    .line 748
    .local v6, "numFolders":I
    :goto_0
    new-array v10, v6, [I

    iput-object v10, v8, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstPackStreamIndex:[I

    .line 749
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v6, :cond_1

    .line 750
    iget-object v10, v8, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstPackStreamIndex:[I

    aput v2, v10, v0

    .line 751
    iget-object v10, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    aget-object v10, v10, v0

    iget-object v10, v10, Lorg/apache/commons/compress/archivers/sevenz/Folder;->packedStreams:[J

    array-length v10, v10

    add-int/2addr v2, v10

    .line 749
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v6    # "numFolders":I
    :cond_0
    move v6, v9

    .line 747
    goto :goto_0

    .line 754
    .restart local v0    # "i":I
    .restart local v6    # "numFolders":I
    :cond_1
    const-wide/16 v4, 0x0

    .line 755
    .local v4, "nextPackStreamOffset":J
    iget-object v10, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    if-eqz v10, :cond_2

    iget-object v9, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    array-length v7, v9

    .line 756
    .local v7, "numPackSizes":I
    :goto_2
    new-array v9, v7, [J

    iput-object v9, v8, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->packStreamOffsets:[J

    .line 757
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v7, :cond_3

    .line 758
    iget-object v9, v8, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->packStreamOffsets:[J

    aput-wide v4, v9, v0

    .line 759
    iget-object v9, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    aget-wide v10, v9, v0

    add-long/2addr v4, v10

    .line 757
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v7    # "numPackSizes":I
    :cond_2
    move v7, v9

    .line 755
    goto :goto_2

    .line 762
    .restart local v7    # "numPackSizes":I
    :cond_3
    new-array v9, v6, [I

    iput-object v9, v8, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstFileIndex:[I

    .line 763
    iget-object v9, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    array-length v9, v9

    new-array v9, v9, [I

    iput-object v9, v8, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    .line 764
    const/4 v1, 0x0

    .line 765
    .local v1, "nextFolderIndex":I
    const/4 v3, 0x0

    .line 766
    .local v3, "nextFolderUnpackStreamIndex":I
    const/4 v0, 0x0

    :goto_4
    iget-object v9, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    array-length v9, v9

    if-ge v0, v9, :cond_9

    .line 767
    iget-object v9, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object v9, v9, v0

    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v9

    if-nez v9, :cond_5

    if-nez v3, :cond_5

    .line 768
    iget-object v9, v8, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    const/4 v10, -0x1

    aput v10, v9, v0

    .line 766
    :cond_4
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 771
    :cond_5
    if-nez v3, :cond_8

    .line 772
    :goto_6
    iget-object v9, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v9, v9

    if-ge v1, v9, :cond_6

    .line 773
    iget-object v9, v8, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->folderFirstFileIndex:[I

    aput v0, v9, v1

    .line 774
    iget-object v9, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    aget-object v9, v9, v1

    iget v9, v9, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-lez v9, :cond_7

    .line 778
    :cond_6
    iget-object v9, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v9, v9

    if-lt v1, v9, :cond_8

    .line 779
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Too few folders in archive"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 772
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 782
    :cond_8
    iget-object v9, v8, Lorg/apache/commons/compress/archivers/sevenz/StreamMap;->fileFolderIndex:[I

    aput v1, v9, v0

    .line 783
    iget-object v9, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    aget-object v9, v9, v0

    invoke-virtual {v9}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 786
    add-int/lit8 v3, v3, 0x1

    .line 787
    iget-object v9, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    aget-object v9, v9, v1

    iget v9, v9, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    if-lt v3, v9, :cond_4

    .line 788
    add-int/lit8 v1, v1, 0x1

    .line 789
    const/4 v3, 0x0

    goto :goto_5

    .line 793
    :cond_9
    iput-object v8, p1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->streamMap:Lorg/apache/commons/compress/archivers/sevenz/StreamMap;

    .line 794
    return-void
.end method

.method private drainPreviousEntry()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 832
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryInputStream:Ljava/io/InputStream;

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v0, v2, v3}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    .line 835
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 836
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryInputStream:Ljava/io/InputStream;

    .line 838
    :cond_0
    return-void
.end method

.method private readAllOrBits(Ljava/io/DataInput;I)Ljava/util/BitSet;
    .locals 4
    .param p1, "header"    # Ljava/io/DataInput;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 560
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 562
    .local v0, "areAllDefined":I
    if-eqz v0, :cond_0

    .line 563
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, p2}, Ljava/util/BitSet;-><init>(I)V

    .line 564
    .local v1, "bits":Ljava/util/BitSet;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_1

    .line 565
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 564
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 568
    .end local v1    # "bits":Ljava/util/BitSet;
    .end local v2    # "i":I
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/io/DataInput;I)Ljava/util/BitSet;

    move-result-object v1

    .line 570
    .restart local v1    # "bits":Ljava/util/BitSet;
    :cond_1
    return-object v1
.end method

.method private readArchiveProperties(Ljava/io/DataInput;)V
    .locals 5
    .param p1, "input"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 253
    .local v0, "nid":I
    :goto_0
    if-eqz v0, :cond_0

    .line 254
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v2

    .line 255
    .local v2, "propertySize":J
    long-to-int v4, v2

    new-array v1, v4, [B

    .line 256
    .local v1, "property":[B
    invoke-interface {p1, v1}, Ljava/io/DataInput;->readFully([B)V

    .line 257
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 258
    goto :goto_0

    .line 259
    .end local v1    # "property":[B
    .end local v2    # "propertySize":J
    :cond_0
    return-void
.end method

.method private readBits(Ljava/io/DataInput;I)Ljava/util/BitSet;
    .locals 5
    .param p1, "header"    # Ljava/io/DataInput;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 574
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p2}, Ljava/util/BitSet;-><init>(I)V

    .line 575
    .local v0, "bits":Ljava/util/BitSet;
    const/4 v3, 0x0

    .line 576
    .local v3, "mask":I
    const/4 v1, 0x0

    .line 577
    .local v1, "cache":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_2

    .line 578
    if-nez v3, :cond_0

    .line 579
    const/16 v3, 0x80

    .line 580
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 582
    :cond_0
    and-int v4, v1, v3

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v0, v2, v4}, Ljava/util/BitSet;->set(IZ)V

    .line 583
    ushr-int/lit8 v3, v3, 0x1

    .line 577
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 582
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 585
    :cond_2
    return-object v0
.end method

.method private readEncodedHeader(Ljava/io/DataInputStream;Lorg/apache/commons/compress/archivers/sevenz/Archive;[B)Ljava/io/DataInputStream;
    .locals 18
    .param p1, "header"    # Ljava/io/DataInputStream;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .param p3, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    invoke-direct/range {p0 .. p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readStreamsInfo(Ljava/io/DataInput;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 266
    move-object/from16 v0, p2

    iget-object v4, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    const/4 v5, 0x0

    aget-object v11, v4, v5

    .line 267
    .local v11, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    const/4 v10, 0x0

    .line 268
    .local v10, "firstPackStreamIndex":I
    const-wide/16 v4, 0x20

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packPos:J

    add-long/2addr v4, v6

    const-wide/16 v6, 0x0

    add-long v12, v4, v6

    .line 271
    .local v12, "folderOffset":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 272
    new-instance v2, Lorg/apache/commons/compress/archivers/sevenz/BoundedRandomAccessFileInputStream;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    move-object/from16 v0, p2

    iget-object v5, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    const/4 v6, 0x0

    aget-wide v6, v5, v6

    invoke-direct {v2, v4, v6, v7}, Lorg/apache/commons/compress/archivers/sevenz/BoundedRandomAccessFileInputStream;-><init>(Ljava/io/RandomAccessFile;J)V

    .line 274
    .local v2, "inputStreamStack":Ljava/io/InputStream;
    iget-object v8, v11, Lorg/apache/commons/compress/archivers/sevenz/Folder;->coders:[Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .local v8, "arr$":[Lorg/apache/commons/compress/archivers/sevenz/Coder;
    array-length v15, v8

    .local v15, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    move-object v3, v2

    .end local v2    # "inputStreamStack":Ljava/io/InputStream;
    .local v3, "inputStreamStack":Ljava/io/InputStream;
    :goto_0
    if-ge v14, v15, :cond_2

    aget-object v9, v8, v14

    .line 275
    .local v9, "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    iget-wide v4, v9, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iget-wide v4, v9, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 276
    :cond_0
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Multi input/output stream coders are not yet supported"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 278
    :cond_1
    move-object/from16 v0, p3

    invoke-static {v3, v9, v0}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->addDecoder(Ljava/io/InputStream;Lorg/apache/commons/compress/archivers/sevenz/Coder;[B)Ljava/io/InputStream;

    move-result-object v2

    .line 274
    .end local v3    # "inputStreamStack":Ljava/io/InputStream;
    .restart local v2    # "inputStreamStack":Ljava/io/InputStream;
    add-int/lit8 v14, v14, 0x1

    move-object v3, v2

    .end local v2    # "inputStreamStack":Ljava/io/InputStream;
    .restart local v3    # "inputStreamStack":Ljava/io/InputStream;
    goto :goto_0

    .line 280
    .end local v9    # "coder":Lorg/apache/commons/compress/archivers/sevenz/Coder;
    :cond_2
    iget-boolean v4, v11, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    if-eqz v4, :cond_3

    .line 281
    new-instance v2, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    invoke-virtual {v11}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    move-result-wide v4

    iget-wide v6, v11, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    .line 284
    .end local v3    # "inputStreamStack":Ljava/io/InputStream;
    .restart local v2    # "inputStreamStack":Ljava/io/InputStream;
    :goto_1
    invoke-virtual {v11}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    move-result-wide v4

    long-to-int v4, v4

    new-array v0, v4, [B

    move-object/from16 v16, v0

    .line 285
    .local v16, "nextHeader":[B
    new-instance v17, Ljava/io/DataInputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 287
    .local v17, "nextHeaderInputStream":Ljava/io/DataInputStream;
    :try_start_0
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->close()V

    .line 291
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v4

    .line 289
    :catchall_0
    move-exception v4

    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->close()V

    throw v4

    .end local v2    # "inputStreamStack":Ljava/io/InputStream;
    .end local v16    # "nextHeader":[B
    .end local v17    # "nextHeaderInputStream":Ljava/io/DataInputStream;
    .restart local v3    # "inputStreamStack":Ljava/io/InputStream;
    :cond_3
    move-object v2, v3

    .end local v3    # "inputStreamStack":Ljava/io/InputStream;
    .restart local v2    # "inputStreamStack":Ljava/io/InputStream;
    goto :goto_1
.end method

.method private readFilesInfo(Ljava/io/DataInput;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 28
    .param p1, "header"    # Ljava/io/DataInput;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 589
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v18

    .line 590
    .local v18, "numFiles":J
    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v7, v0, [Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 591
    .local v7, "files":[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, v7

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v8, v0, :cond_0

    .line 592
    new-instance v23, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    invoke-direct/range {v23 .. v23}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;-><init>()V

    aput-object v23, v7, v8

    .line 591
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 594
    :cond_0
    const/4 v11, 0x0

    .line 595
    .local v11, "isEmptyStream":Ljava/util/BitSet;
    const/4 v10, 0x0

    .line 596
    .local v10, "isEmptyFile":Ljava/util/BitSet;
    const/4 v9, 0x0

    .line 598
    .local v9, "isAnti":Ljava/util/BitSet;
    :cond_1
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v17

    .line 599
    .local v17, "propertyType":I
    if-nez v17, :cond_2

    .line 720
    const/16 v16, 0x0

    .line 721
    .local v16, "nonEmptyFileCounter":I
    const/4 v5, 0x0

    .line 722
    .local v5, "emptyFileCounter":I
    const/4 v8, 0x0

    :goto_2
    array-length v0, v7

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v8, v0, :cond_18

    .line 723
    aget-object v24, v7, v8

    if-nez v11, :cond_12

    const/16 v23, 0x1

    :goto_3
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasStream(Z)V

    .line 724
    aget-object v23, v7, v8

    invoke-virtual/range {v23 .. v23}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->hasStream()Z

    move-result v23

    if-eqz v23, :cond_14

    .line 725
    aget-object v23, v7, v8

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setDirectory(Z)V

    .line 726
    aget-object v23, v7, v8

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setAntiItem(Z)V

    .line 727
    aget-object v23, v7, v8

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasCrc(Z)V

    .line 728
    aget-object v23, v7, v8

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    move-object/from16 v24, v0

    aget-wide v24, v24, v16

    invoke-virtual/range {v23 .. v25}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setCrcValue(J)V

    .line 729
    aget-object v23, v7, v8

    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    move-object/from16 v24, v0

    aget-wide v24, v24, v16

    invoke-virtual/range {v23 .. v25}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setSize(J)V

    .line 730
    add-int/lit8 v16, v16, 0x1

    .line 722
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 602
    .end local v5    # "emptyFileCounter":I
    .end local v16    # "nonEmptyFileCounter":I
    :cond_2
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v20

    .line 603
    .local v20, "size":J
    packed-switch v17, :pswitch_data_0

    .line 714
    :pswitch_0
    new-instance v23, Ljava/io/IOException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Unknown property "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 605
    :pswitch_1
    array-length v0, v7

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/io/DataInput;I)Ljava/util/BitSet;

    move-result-object v11

    .line 606
    goto/16 :goto_1

    .line 609
    :pswitch_2
    if-nez v11, :cond_3

    .line 610
    new-instance v23, Ljava/io/IOException;

    const-string v24, "Header format error: kEmptyStream must appear before kEmptyFile"

    invoke-direct/range {v23 .. v24}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 612
    :cond_3
    invoke-virtual {v11}, Ljava/util/BitSet;->cardinality()I

    move-result v23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/io/DataInput;I)Ljava/util/BitSet;

    move-result-object v10

    .line 613
    goto/16 :goto_1

    .line 616
    :pswitch_3
    if-nez v11, :cond_4

    .line 617
    new-instance v23, Ljava/io/IOException;

    const-string v24, "Header format error: kEmptyStream must appear before kAnti"

    invoke-direct/range {v23 .. v24}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 619
    :cond_4
    invoke-virtual {v11}, Ljava/util/BitSet;->cardinality()I

    move-result v23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readBits(Ljava/io/DataInput;I)Ljava/util/BitSet;

    move-result-object v9

    .line 620
    goto/16 :goto_1

    .line 623
    :pswitch_4
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v6

    .line 624
    .local v6, "external":I
    if-eqz v6, :cond_5

    .line 625
    new-instance v23, Ljava/io/IOException;

    const-string v24, "Not implemented"

    invoke-direct/range {v23 .. v24}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 627
    :cond_5
    const-wide/16 v24, 0x1

    sub-long v24, v20, v24

    const-wide/16 v26, 0x1

    and-long v24, v24, v26

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-eqz v23, :cond_6

    .line 628
    new-instance v23, Ljava/io/IOException;

    const-string v24, "File names length invalid"

    invoke-direct/range {v23 .. v24}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 630
    :cond_6
    const-wide/16 v24, 0x1

    sub-long v24, v20, v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v12, v0, [B

    .line 631
    .local v12, "names":[B
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/io/DataInput;->readFully([B)V

    .line 632
    const/4 v13, 0x0

    .line 633
    .local v13, "nextFile":I
    const/4 v15, 0x0

    .line 634
    .local v15, "nextName":I
    const/4 v8, 0x0

    :goto_5
    array-length v0, v12

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v8, v0, :cond_8

    .line 635
    aget-byte v23, v12, v8

    if-nez v23, :cond_7

    add-int/lit8 v23, v8, 0x1

    aget-byte v23, v12, v23

    if-nez v23, :cond_7

    .line 636
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "nextFile":I
    .local v14, "nextFile":I
    aget-object v23, v7, v13

    new-instance v24, Ljava/lang/String;

    sub-int v25, v8, v15

    const-string v26, "UTF-16LE"

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v12, v15, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual/range {v23 .. v24}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setName(Ljava/lang/String;)V

    .line 637
    add-int/lit8 v15, v8, 0x2

    move v13, v14

    .line 634
    .end local v14    # "nextFile":I
    .restart local v13    # "nextFile":I
    :cond_7
    add-int/lit8 v8, v8, 0x2

    goto :goto_5

    .line 640
    :cond_8
    array-length v0, v12

    move/from16 v23, v0

    move/from16 v0, v23

    if-ne v15, v0, :cond_9

    array-length v0, v7

    move/from16 v23, v0

    move/from16 v0, v23

    if-eq v13, v0, :cond_1

    .line 641
    :cond_9
    new-instance v23, Ljava/io/IOException;

    const-string v24, "Error parsing file names"

    invoke-direct/range {v23 .. v24}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 647
    .end local v6    # "external":I
    .end local v12    # "names":[B
    .end local v13    # "nextFile":I
    .end local v15    # "nextName":I
    :pswitch_5
    array-length v0, v7

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/io/DataInput;I)Ljava/util/BitSet;

    move-result-object v22

    .line 648
    .local v22, "timesDefined":Ljava/util/BitSet;
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v6

    .line 649
    .restart local v6    # "external":I
    if-eqz v6, :cond_a

    .line 650
    new-instance v23, Ljava/io/IOException;

    const-string v24, "Unimplemented"

    invoke-direct/range {v23 .. v24}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 652
    :cond_a
    const/4 v8, 0x0

    :goto_6
    array-length v0, v7

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v8, v0, :cond_1

    .line 653
    aget-object v23, v7, v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasCreationDate(Z)V

    .line 654
    aget-object v23, v7, v8

    invoke-virtual/range {v23 .. v23}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasCreationDate()Z

    move-result v23

    if-eqz v23, :cond_b

    .line 655
    aget-object v23, v7, v8

    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setCreationDate(J)V

    .line 652
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 662
    .end local v6    # "external":I
    .end local v22    # "timesDefined":Ljava/util/BitSet;
    :pswitch_6
    array-length v0, v7

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/io/DataInput;I)Ljava/util/BitSet;

    move-result-object v22

    .line 663
    .restart local v22    # "timesDefined":Ljava/util/BitSet;
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v6

    .line 664
    .restart local v6    # "external":I
    if-eqz v6, :cond_c

    .line 665
    new-instance v23, Ljava/io/IOException;

    const-string v24, "Unimplemented"

    invoke-direct/range {v23 .. v24}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 667
    :cond_c
    const/4 v8, 0x0

    :goto_7
    array-length v0, v7

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v8, v0, :cond_1

    .line 668
    aget-object v23, v7, v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasAccessDate(Z)V

    .line 669
    aget-object v23, v7, v8

    invoke-virtual/range {v23 .. v23}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasAccessDate()Z

    move-result v23

    if-eqz v23, :cond_d

    .line 670
    aget-object v23, v7, v8

    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setAccessDate(J)V

    .line 667
    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 677
    .end local v6    # "external":I
    .end local v22    # "timesDefined":Ljava/util/BitSet;
    :pswitch_7
    array-length v0, v7

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/io/DataInput;I)Ljava/util/BitSet;

    move-result-object v22

    .line 678
    .restart local v22    # "timesDefined":Ljava/util/BitSet;
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v6

    .line 679
    .restart local v6    # "external":I
    if-eqz v6, :cond_e

    .line 680
    new-instance v23, Ljava/io/IOException;

    const-string v24, "Unimplemented"

    invoke-direct/range {v23 .. v24}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 682
    :cond_e
    const/4 v8, 0x0

    :goto_8
    array-length v0, v7

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v8, v0, :cond_1

    .line 683
    aget-object v23, v7, v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasLastModifiedDate(Z)V

    .line 684
    aget-object v23, v7, v8

    invoke-virtual/range {v23 .. v23}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasLastModifiedDate()Z

    move-result v23

    if-eqz v23, :cond_f

    .line 685
    aget-object v23, v7, v8

    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setLastModifiedDate(J)V

    .line 682
    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 692
    .end local v6    # "external":I
    .end local v22    # "timesDefined":Ljava/util/BitSet;
    :pswitch_8
    array-length v0, v7

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/io/DataInput;I)Ljava/util/BitSet;

    move-result-object v4

    .line 693
    .local v4, "attributesDefined":Ljava/util/BitSet;
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v6

    .line 694
    .restart local v6    # "external":I
    if-eqz v6, :cond_10

    .line 695
    new-instance v23, Ljava/io/IOException;

    const-string v24, "Unimplemented"

    invoke-direct/range {v23 .. v24}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 697
    :cond_10
    const/4 v8, 0x0

    :goto_9
    array-length v0, v7

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v8, v0, :cond_1

    .line 698
    aget-object v23, v7, v8

    invoke-virtual {v4, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasWindowsAttributes(Z)V

    .line 699
    aget-object v23, v7, v8

    invoke-virtual/range {v23 .. v23}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->getHasWindowsAttributes()Z

    move-result v23

    if-eqz v23, :cond_11

    .line 700
    aget-object v23, v7, v8

    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readInt()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setWindowsAttributes(I)V

    .line 697
    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 707
    .end local v4    # "attributesDefined":Ljava/util/BitSet;
    .end local v6    # "external":I
    :pswitch_9
    new-instance v23, Ljava/io/IOException;

    const-string v24, "kStartPos is unsupported, please report"

    invoke-direct/range {v23 .. v24}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 710
    :pswitch_a
    new-instance v23, Ljava/io/IOException;

    const-string v24, "kDummy is unsupported, please report"

    invoke-direct/range {v23 .. v24}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 723
    .end local v20    # "size":J
    .restart local v5    # "emptyFileCounter":I
    .restart local v16    # "nonEmptyFileCounter":I
    :cond_12
    invoke-virtual {v11, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v23

    if-nez v23, :cond_13

    const/16 v23, 0x1

    goto/16 :goto_3

    :cond_13
    const/16 v23, 0x0

    goto/16 :goto_3

    .line 732
    :cond_14
    aget-object v24, v7, v8

    if-nez v10, :cond_15

    const/16 v23, 0x1

    :goto_a
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setDirectory(Z)V

    .line 733
    aget-object v24, v7, v8

    if-nez v9, :cond_17

    const/16 v23, 0x0

    :goto_b
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setAntiItem(Z)V

    .line 734
    aget-object v23, v7, v8

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setHasCrc(Z)V

    .line 735
    aget-object v23, v7, v8

    const-wide/16 v24, 0x0

    invoke-virtual/range {v23 .. v25}, Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;->setSize(J)V

    .line 736
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 732
    :cond_15
    invoke-virtual {v10, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v23

    if-nez v23, :cond_16

    const/16 v23, 0x1

    goto :goto_a

    :cond_16
    const/16 v23, 0x0

    goto :goto_a

    .line 733
    :cond_17
    invoke-virtual {v9, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v23

    goto :goto_b

    .line 739
    :cond_18
    move-object/from16 v0, p2

    iput-object v7, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    .line 740
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->calculateStreamMap(Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 741
    return-void

    .line 603
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private readFolder(Ljava/io/DataInput;)Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .locals 30
    .param p1, "header"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 481
    new-instance v7, Lorg/apache/commons/compress/archivers/sevenz/Folder;

    invoke-direct {v7}, Lorg/apache/commons/compress/archivers/sevenz/Folder;-><init>()V

    .line 483
    .local v7, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v16

    .line 484
    .local v16, "numCoders":J
    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v6, v0, [Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 485
    .local v6, "coders":[Lorg/apache/commons/compress/archivers/sevenz/Coder;
    const-wide/16 v22, 0x0

    .line 486
    .local v22, "totalInStreams":J
    const-wide/16 v24, 0x0

    .line 487
    .local v24, "totalOutStreams":J
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v6

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v9, v0, :cond_6

    .line 488
    new-instance v26, Lorg/apache/commons/compress/archivers/sevenz/Coder;

    invoke-direct/range {v26 .. v26}, Lorg/apache/commons/compress/archivers/sevenz/Coder;-><init>()V

    aput-object v26, v6, v9

    .line 489
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v5

    .line 490
    .local v5, "bits":I
    and-int/lit8 v10, v5, 0xf

    .line 491
    .local v10, "idSize":I
    and-int/lit8 v26, v5, 0x10

    if-nez v26, :cond_1

    const/4 v11, 0x1

    .line 492
    .local v11, "isSimple":Z
    :goto_1
    and-int/lit8 v26, v5, 0x20

    if-eqz v26, :cond_2

    const/4 v8, 0x1

    .line 493
    .local v8, "hasAttributes":Z
    :goto_2
    and-int/lit16 v0, v5, 0x80

    move/from16 v26, v0

    if-eqz v26, :cond_3

    const/4 v12, 0x1

    .line 495
    .local v12, "moreAlternativeMethods":Z
    :goto_3
    aget-object v26, v6, v9

    new-array v0, v10, [B

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/Coder;->decompressionMethodId:[B

    .line 496
    aget-object v26, v6, v9

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Coder;->decompressionMethodId:[B

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/io/DataInput;->readFully([B)V

    .line 497
    if-eqz v11, :cond_4

    .line 498
    aget-object v26, v6, v9

    const-wide/16 v28, 0x1

    move-wide/from16 v0, v28

    move-object/from16 v2, v26

    iput-wide v0, v2, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    .line 499
    aget-object v26, v6, v9

    const-wide/16 v28, 0x1

    move-wide/from16 v0, v28

    move-object/from16 v2, v26

    iput-wide v0, v2, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    .line 504
    :goto_4
    aget-object v26, v6, v9

    move-object/from16 v0, v26

    iget-wide v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    move-wide/from16 v26, v0

    add-long v22, v22, v26

    .line 505
    aget-object v26, v6, v9

    move-object/from16 v0, v26

    iget-wide v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    .line 506
    if-eqz v8, :cond_0

    .line 507
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v20

    .line 508
    .local v20, "propertiesSize":J
    aget-object v26, v6, v9

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    .line 509
    aget-object v26, v6, v9

    move-object/from16 v0, v26

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/io/DataInput;->readFully([B)V

    .line 512
    .end local v20    # "propertiesSize":J
    :cond_0
    if-eqz v12, :cond_5

    .line 513
    new-instance v26, Ljava/io/IOException;

    const-string v27, "Alternative methods are unsupported, please report. The reference implementation doesn\'t support them either."

    invoke-direct/range {v26 .. v27}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 491
    .end local v8    # "hasAttributes":Z
    .end local v11    # "isSimple":Z
    .end local v12    # "moreAlternativeMethods":Z
    :cond_1
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 492
    .restart local v11    # "isSimple":Z
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 493
    .restart local v8    # "hasAttributes":Z
    :cond_3
    const/4 v12, 0x0

    goto :goto_3

    .line 501
    .restart local v12    # "moreAlternativeMethods":Z
    :cond_4
    aget-object v26, v6, v9

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, v26

    iput-wide v0, v2, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numInStreams:J

    .line 502
    aget-object v26, v6, v9

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, v26

    iput-wide v0, v2, Lorg/apache/commons/compress/archivers/sevenz/Coder;->numOutStreams:J

    goto :goto_4

    .line 487
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 517
    .end local v5    # "bits":I
    .end local v8    # "hasAttributes":Z
    .end local v10    # "idSize":I
    .end local v11    # "isSimple":Z
    .end local v12    # "moreAlternativeMethods":Z
    :cond_6
    iput-object v6, v7, Lorg/apache/commons/compress/archivers/sevenz/Folder;->coders:[Lorg/apache/commons/compress/archivers/sevenz/Coder;

    .line 518
    move-wide/from16 v0, v22

    iput-wide v0, v7, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalInputStreams:J

    .line 519
    move-wide/from16 v0, v24

    iput-wide v0, v7, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    .line 521
    const-wide/16 v26, 0x0

    cmp-long v26, v24, v26

    if-nez v26, :cond_7

    .line 522
    new-instance v26, Ljava/io/IOException;

    const-string v27, "Total output streams can\'t be 0"

    invoke-direct/range {v26 .. v27}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 524
    :cond_7
    const-wide/16 v26, 0x1

    sub-long v14, v24, v26

    .line 525
    .local v14, "numBindPairs":J
    long-to-int v0, v14

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v4, v0, [Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    .line 526
    .local v4, "bindPairs":[Lorg/apache/commons/compress/archivers/sevenz/BindPair;
    const/4 v9, 0x0

    :goto_5
    array-length v0, v4

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v9, v0, :cond_8

    .line 527
    new-instance v26, Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    invoke-direct/range {v26 .. v26}, Lorg/apache/commons/compress/archivers/sevenz/BindPair;-><init>()V

    aput-object v26, v4, v9

    .line 528
    aget-object v26, v4, v9

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, v26

    iput-wide v0, v2, Lorg/apache/commons/compress/archivers/sevenz/BindPair;->inIndex:J

    .line 529
    aget-object v26, v4, v9

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, v26

    iput-wide v0, v2, Lorg/apache/commons/compress/archivers/sevenz/BindPair;->outIndex:J

    .line 526
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 531
    :cond_8
    iput-object v4, v7, Lorg/apache/commons/compress/archivers/sevenz/Folder;->bindPairs:[Lorg/apache/commons/compress/archivers/sevenz/BindPair;

    .line 533
    cmp-long v26, v22, v14

    if-gez v26, :cond_9

    .line 534
    new-instance v26, Ljava/io/IOException;

    const-string v27, "Total input streams can\'t be less than the number of bind pairs"

    invoke-direct/range {v26 .. v27}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 536
    :cond_9
    sub-long v18, v22, v14

    .line 537
    .local v18, "numPackedStreams":J
    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v13, v0, [J

    .line 538
    .local v13, "packedStreams":[J
    const-wide/16 v26, 0x1

    cmp-long v26, v18, v26

    if-nez v26, :cond_e

    .line 540
    const/4 v9, 0x0

    :goto_6
    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v9, v0, :cond_a

    .line 541
    invoke-virtual {v7, v9}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->findBindPairForInStream(I)I

    move-result v26

    if-gez v26, :cond_b

    .line 545
    :cond_a
    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ne v9, v0, :cond_c

    .line 546
    new-instance v26, Ljava/io/IOException;

    const-string v27, "Couldn\'t find stream\'s bind pair index"

    invoke-direct/range {v26 .. v27}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 540
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 548
    :cond_c
    const/16 v26, 0x0

    int-to-long v0, v9

    move-wide/from16 v28, v0

    aput-wide v28, v13, v26

    .line 554
    :cond_d
    iput-object v13, v7, Lorg/apache/commons/compress/archivers/sevenz/Folder;->packedStreams:[J

    .line 556
    return-object v7

    .line 550
    :cond_e
    const/4 v9, 0x0

    :goto_7
    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v9, v0, :cond_d

    .line 551
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v26

    aput-wide v26, v13, v9

    .line 550
    add-int/lit8 v9, v9, 0x1

    goto :goto_7
.end method

.method private readHeader(Ljava/io/DataInput;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 3
    .param p1, "header"    # Ljava/io/DataInput;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 225
    .local v0, "nid":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 226
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readArchiveProperties(Ljava/io/DataInput;)V

    .line 227
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 230
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 231
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Additional streams unsupported"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 236
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readStreamsInfo(Ljava/io/DataInput;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 237
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 240
    :cond_2
    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 241
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readFilesInfo(Ljava/io/DataInput;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 242
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 245
    :cond_3
    if-eqz v0, :cond_4

    .line 246
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Badly terminated header"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 248
    :cond_4
    return-void
.end method

.method private readHeaders([B)Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .locals 22
    .param p1, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    const/4 v15, 0x6

    new-array v13, v15, [B

    .line 156
    .local v13, "signature":[B
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v15, v13}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 157
    sget-object v15, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->sevenZSignature:[B

    invoke-static {v13, v15}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v15

    if-nez v15, :cond_0

    .line 158
    new-instance v15, Ljava/io/IOException;

    const-string v18, "Bad 7z signature"

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 161
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v5

    .line 162
    .local v5, "archiveVersionMajor":B
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v6

    .line 163
    .local v6, "archiveVersionMinor":B
    if-eqz v5, :cond_1

    .line 164
    new-instance v15, Ljava/io/IOException;

    const-string v18, "Unsupported 7z version (%d,%d)"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 168
    :cond_1
    const-wide v18, 0xffffffffL

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v15

    int-to-long v0, v15

    move-wide/from16 v20, v0

    and-long v16, v18, v20

    .line 169
    .local v16, "startHeaderCrc":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readStartHeader(J)Lorg/apache/commons/compress/archivers/sevenz/StartHeader;

    move-result-object v14

    .line 171
    .local v14, "startHeader":Lorg/apache/commons/compress/archivers/sevenz/StartHeader;
    iget-wide v0, v14, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderSize:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-int v11, v0

    .line 172
    .local v11, "nextHeaderSizeInt":I
    int-to-long v0, v11

    move-wide/from16 v18, v0

    iget-wide v0, v14, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderSize:J

    move-wide/from16 v20, v0

    cmp-long v15, v18, v20

    if-eqz v15, :cond_2

    .line 173
    new-instance v15, Ljava/io/IOException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "cannot handle nextHeaderSize "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-wide v0, v14, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderSize:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 175
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    const-wide/16 v18, 0x20

    iget-wide v0, v14, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderOffset:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 176
    new-array v9, v11, [B

    .line 177
    .local v9, "nextHeader":[B
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v15, v9}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 178
    new-instance v8, Ljava/util/zip/CRC32;

    invoke-direct {v8}, Ljava/util/zip/CRC32;-><init>()V

    .line 179
    .local v8, "crc":Ljava/util/zip/CRC32;
    invoke-virtual {v8, v9}, Ljava/util/zip/CRC32;->update([B)V

    .line 180
    iget-wide v0, v14, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderCrc:J

    move-wide/from16 v18, v0

    invoke-virtual {v8}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v20

    cmp-long v15, v18, v20

    if-eqz v15, :cond_3

    .line 181
    new-instance v15, Ljava/io/IOException;

    const-string v18, "NextHeader CRC mismatch"

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 184
    :cond_3
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 185
    .local v7, "byteStream":Ljava/io/ByteArrayInputStream;
    new-instance v10, Ljava/io/DataInputStream;

    invoke-direct {v10, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 187
    .local v10, "nextHeaderInputStream":Ljava/io/DataInputStream;
    new-instance v4, Lorg/apache/commons/compress/archivers/sevenz/Archive;

    invoke-direct {v4}, Lorg/apache/commons/compress/archivers/sevenz/Archive;-><init>()V

    .line 188
    .local v4, "archive":Lorg/apache/commons/compress/archivers/sevenz/Archive;
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v12

    .line 189
    .local v12, "nid":I
    const/16 v15, 0x17

    if-ne v12, v15, :cond_4

    .line 190
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v4, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readEncodedHeader(Ljava/io/DataInputStream;Lorg/apache/commons/compress/archivers/sevenz/Archive;[B)Ljava/io/DataInputStream;

    move-result-object v10

    .line 193
    new-instance v4, Lorg/apache/commons/compress/archivers/sevenz/Archive;

    .end local v4    # "archive":Lorg/apache/commons/compress/archivers/sevenz/Archive;
    invoke-direct {v4}, Lorg/apache/commons/compress/archivers/sevenz/Archive;-><init>()V

    .line 194
    .restart local v4    # "archive":Lorg/apache/commons/compress/archivers/sevenz/Archive;
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v12

    .line 196
    :cond_4
    const/4 v15, 0x1

    if-ne v12, v15, :cond_5

    .line 197
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readHeader(Ljava/io/DataInput;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 198
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V

    .line 202
    return-object v4

    .line 200
    :cond_5
    new-instance v15, Ljava/io/IOException;

    const-string v18, "Broken or unsupported archive: no Header"

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15
.end method

.method private readPackInfo(Ljava/io/DataInput;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 10
    .param p1, "header"    # Ljava/io/DataInput;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 321
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v4

    iput-wide v4, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packPos:J

    .line 322
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v2

    .line 323
    .local v2, "numPackStreams":J
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 324
    .local v1, "nid":I
    const/16 v4, 0x9

    if-ne v1, v4, :cond_1

    .line 325
    long-to-int v4, v2

    new-array v4, v4, [J

    iput-object v4, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    .line 326
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 327
    iget-object v4, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packSizes:[J

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v6

    aput-wide v6, v4, v0

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    :cond_0
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 332
    .end local v0    # "i":I
    :cond_1
    const/16 v4, 0xa

    if-ne v1, v4, :cond_4

    .line 333
    long-to-int v4, v2

    invoke-direct {p0, p1, v4}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/io/DataInput;I)Ljava/util/BitSet;

    move-result-object v4

    iput-object v4, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcsDefined:Ljava/util/BitSet;

    .line 334
    long-to-int v4, v2

    new-array v4, v4, [J

    iput-object v4, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcs:[J

    .line 335
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    long-to-int v4, v2

    if-ge v0, v4, :cond_3

    .line 336
    iget-object v4, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcsDefined:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 337
    iget-object v4, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->packCrcs:[J

    const-wide v6, 0xffffffffL

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v5

    int-to-long v8, v5

    and-long/2addr v6, v8

    aput-wide v6, v4, v0

    .line 335
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 341
    :cond_3
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 344
    .end local v0    # "i":I
    :cond_4
    if-eqz v1, :cond_5

    .line 345
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Badly terminated PackInfo ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 347
    :cond_5
    return-void
.end method

.method private readStartHeader(J)Lorg/apache/commons/compress/archivers/sevenz/StartHeader;
    .locals 9
    .param p1, "startHeaderCrc"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    new-instance v8, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;

    invoke-direct {v8}, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;-><init>()V

    .line 207
    .local v8, "startHeader":Lorg/apache/commons/compress/archivers/sevenz/StartHeader;
    const/4 v6, 0x0

    .line 209
    .local v6, "dataInputStream":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v7, Ljava/io/DataInputStream;

    new-instance v0, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/BoundedRandomAccessFileInputStream;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    const-wide/16 v4, 0x14

    invoke-direct {v1, v2, v4, v5}, Lorg/apache/commons/compress/archivers/sevenz/BoundedRandomAccessFileInputStream;-><init>(Ljava/io/RandomAccessFile;J)V

    const-wide/16 v2, 0x14

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    invoke-direct {v7, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    .end local v6    # "dataInputStream":Ljava/io/DataInputStream;
    .local v7, "dataInputStream":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    iput-wide v0, v8, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderOffset:J

    .line 212
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    iput-wide v0, v8, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderSize:J

    .line 213
    const-wide v0, 0xffffffffL

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, v8, Lorg/apache/commons/compress/archivers/sevenz/StartHeader;->nextHeaderCrc:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 216
    if-eqz v7, :cond_0

    .line 217
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V

    :cond_0
    return-object v8

    .line 216
    .end local v7    # "dataInputStream":Ljava/io/DataInputStream;
    .restart local v6    # "dataInputStream":Ljava/io/DataInputStream;
    :catchall_0
    move-exception v0

    :goto_0
    if-eqz v6, :cond_1

    .line 217
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V

    :cond_1
    throw v0

    .line 216
    .end local v6    # "dataInputStream":Ljava/io/DataInputStream;
    .restart local v7    # "dataInputStream":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v0

    move-object v6, v7

    .end local v7    # "dataInputStream":Ljava/io/DataInputStream;
    .restart local v6    # "dataInputStream":Ljava/io/DataInputStream;
    goto :goto_0
.end method

.method private readStreamsInfo(Ljava/io/DataInput;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 3
    .param p1, "header"    # Ljava/io/DataInput;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 297
    .local v0, "nid":I
    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 298
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readPackInfo(Ljava/io/DataInput;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 299
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 302
    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 303
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUnpackInfo(Ljava/io/DataInput;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 304
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 310
    :goto_0
    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 311
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readSubStreamsInfo(Ljava/io/DataInput;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V

    .line 312
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 315
    :cond_1
    if-eqz v0, :cond_3

    .line 316
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Badly terminated StreamsInfo"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 307
    :cond_2
    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/commons/compress/archivers/sevenz/Folder;

    iput-object v1, p2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    goto :goto_0

    .line 318
    :cond_3
    return-void
.end method

.method private readSubStreamsInfo(Ljava/io/DataInput;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 28
    .param p1, "header"    # Ljava/io/DataInput;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 398
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .local v2, "arr$":[Lorg/apache/commons/compress/archivers/sevenz/Folder;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v3, v2, v6

    .line 399
    .local v3, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    const/16 v23, 0x1

    move/from16 v0, v23

    iput v0, v3, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    .line 398
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 401
    .end local v3    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    :cond_0
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v22, v0

    .line 403
    .local v22, "totalUnpackStreams":I
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v13

    .line 404
    .local v13, "nid":I
    const/16 v23, 0xd

    move/from16 v0, v23

    if-ne v13, v0, :cond_2

    .line 405
    const/16 v22, 0x0

    .line 406
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v7, v2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_1

    aget-object v3, v2, v6

    .line 407
    .restart local v3    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v16

    .line 408
    .local v16, "numStreams":J
    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v3, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    .line 409
    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v24, v24, v16

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v22, v0

    .line 406
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 411
    .end local v3    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .end local v16    # "numStreams":J
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v13

    .line 414
    :cond_2
    new-instance v15, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    invoke-direct {v15}, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;-><init>()V

    .line 415
    .local v15, "subStreamsInfo":Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;
    move/from16 v0, v22

    new-array v0, v0, [J

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-object v0, v15, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    .line 416
    new-instance v23, Ljava/util/BitSet;

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    move-object/from16 v0, v23

    iput-object v0, v15, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    .line 417
    move/from16 v0, v22

    new-array v0, v0, [J

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-object v0, v15, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    .line 419
    const/4 v11, 0x0

    .line 420
    .local v11, "nextUnpackStream":I
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v7, v2

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v7, :cond_5

    aget-object v3, v2, v6

    .line 421
    .restart local v3    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    iget v0, v3, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    move/from16 v23, v0

    if-nez v23, :cond_3

    .line 420
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 424
    :cond_3
    const-wide/16 v20, 0x0

    .line 425
    .local v20, "sum":J
    const/16 v23, 0x9

    move/from16 v0, v23

    if-ne v13, v0, :cond_4

    .line 426
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    iget v0, v3, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    if-ge v5, v0, :cond_4

    .line 427
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v18

    .line 428
    .local v18, "size":J
    iget-object v0, v15, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    move-object/from16 v23, v0

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "nextUnpackStream":I
    .local v12, "nextUnpackStream":I
    aput-wide v18, v23, v11

    .line 429
    add-long v20, v20, v18

    .line 426
    add-int/lit8 v5, v5, 0x1

    move v11, v12

    .end local v12    # "nextUnpackStream":I
    .restart local v11    # "nextUnpackStream":I
    goto :goto_4

    .line 432
    .end local v5    # "i":I
    .end local v18    # "size":J
    :cond_4
    iget-object v0, v15, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->unpackSizes:[J

    move-object/from16 v23, v0

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "nextUnpackStream":I
    .restart local v12    # "nextUnpackStream":I
    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/sevenz/Folder;->getUnpackSize()J

    move-result-wide v24

    sub-long v24, v24, v20

    aput-wide v24, v23, v11

    move v11, v12

    .end local v12    # "nextUnpackStream":I
    .restart local v11    # "nextUnpackStream":I
    goto :goto_3

    .line 434
    .end local v3    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    .end local v20    # "sum":J
    :cond_5
    const/16 v23, 0x9

    move/from16 v0, v23

    if-ne v13, v0, :cond_6

    .line 435
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v13

    .line 438
    :cond_6
    const/4 v14, 0x0

    .line 439
    .local v14, "numDigests":I
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v7, v2

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v7, :cond_9

    aget-object v3, v2, v6

    .line 440
    .restart local v3    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    iget v0, v3, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    iget-boolean v0, v3, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    move/from16 v23, v0

    if-nez v23, :cond_8

    .line 441
    :cond_7
    iget v0, v3, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    move/from16 v23, v0

    add-int v14, v14, v23

    .line 439
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 445
    .end local v3    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    :cond_9
    const/16 v23, 0xa

    move/from16 v0, v23

    if-ne v13, v0, :cond_f

    .line 446
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/io/DataInput;I)Ljava/util/BitSet;

    move-result-object v4

    .line 447
    .local v4, "hasMissingCrc":Ljava/util/BitSet;
    new-array v8, v14, [J

    .line 448
    .local v8, "missingCrcs":[J
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_6
    if-ge v5, v14, :cond_b

    .line 449
    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 450
    const-wide v24, 0xffffffffL

    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readInt()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v26, v0

    and-long v24, v24, v26

    aput-wide v24, v8, v5

    .line 448
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 453
    :cond_b
    const/4 v9, 0x0

    .line 454
    .local v9, "nextCrc":I
    const/4 v10, 0x0

    .line 455
    .local v10, "nextMissingCrc":I
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    array-length v7, v2

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v7, :cond_e

    aget-object v3, v2, v6

    .line 456
    .restart local v3    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    iget v0, v3, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    iget-boolean v0, v3, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    move/from16 v23, v0

    if-eqz v23, :cond_d

    .line 457
    iget-object v0, v15, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v9, v1}, Ljava/util/BitSet;->set(IZ)V

    .line 458
    iget-object v0, v15, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    move-object/from16 v23, v0

    iget-wide v0, v3, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    move-wide/from16 v24, v0

    aput-wide v24, v23, v9

    .line 459
    add-int/lit8 v9, v9, 0x1

    .line 455
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 461
    :cond_d
    const/4 v5, 0x0

    :goto_8
    iget v0, v3, Lorg/apache/commons/compress/archivers/sevenz/Folder;->numUnpackSubStreams:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v5, v0, :cond_c

    .line 462
    iget-object v0, v15, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->hasCrc:Ljava/util/BitSet;

    move-object/from16 v23, v0

    invoke-virtual {v4, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v24

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v9, v1}, Ljava/util/BitSet;->set(IZ)V

    .line 463
    iget-object v0, v15, Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;->crcs:[J

    move-object/from16 v23, v0

    aget-wide v24, v8, v10

    aput-wide v24, v23, v9

    .line 464
    add-int/lit8 v9, v9, 0x1

    .line 465
    add-int/lit8 v10, v10, 0x1

    .line 461
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 470
    .end local v3    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    :cond_e
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v13

    .line 473
    .end local v4    # "hasMissingCrc":Ljava/util/BitSet;
    .end local v5    # "i":I
    .end local v8    # "missingCrcs":[J
    .end local v9    # "nextCrc":I
    .end local v10    # "nextMissingCrc":I
    :cond_f
    if-eqz v13, :cond_10

    .line 474
    new-instance v23, Ljava/io/IOException;

    const-string v24, "Badly terminated SubStreamsInfo"

    invoke-direct/range {v23 .. v24}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 477
    :cond_10
    move-object/from16 v0, p2

    iput-object v15, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->subStreamsInfo:Lorg/apache/commons/compress/archivers/sevenz/SubStreamsInfo;

    .line 478
    return-void
.end method

.method private static readUint64(Ljava/io/DataInput;)J
    .locals 12
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 898
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v8

    int-to-long v0, v8

    .line 899
    .local v0, "firstByte":J
    const/16 v3, 0x80

    .line 900
    .local v3, "mask":I
    const-wide/16 v6, 0x0

    .line 901
    .local v6, "value":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v8, 0x8

    if-ge v2, v8, :cond_0

    .line 902
    int-to-long v8, v3

    and-long/2addr v8, v0

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    .line 903
    add-int/lit8 v8, v3, -0x1

    int-to-long v8, v8

    and-long/2addr v8, v0

    mul-int/lit8 v10, v2, 0x8

    shl-long/2addr v8, v10

    or-long/2addr v6, v8

    .line 909
    .end local v6    # "value":J
    :cond_0
    return-wide v6

    .line 905
    .restart local v6    # "value":J
    :cond_1
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v8

    int-to-long v4, v8

    .line 906
    .local v4, "nextByte":J
    mul-int/lit8 v8, v2, 0x8

    shl-long v8, v4, v8

    or-long/2addr v6, v8

    .line 907
    ushr-int/lit8 v3, v3, 0x1

    .line 901
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private readUnpackInfo(Ljava/io/DataInput;Lorg/apache/commons/compress/archivers/sevenz/Archive;)V
    .locals 18
    .param p1, "header"    # Ljava/io/DataInput;
    .param p2, "archive"    # Lorg/apache/commons/compress/archivers/sevenz/Archive;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 350
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v10

    .line 351
    .local v10, "nid":I
    const/16 v11, 0xb

    if-eq v10, v11, :cond_0

    .line 352
    new-instance v11, Ljava/io/IOException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Expected kFolder, got "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 354
    :cond_0
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v12

    .line 355
    .local v12, "numFolders":J
    long-to-int v11, v12

    new-array v6, v11, [Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 356
    .local v6, "folders":[Lorg/apache/commons/compress/archivers/sevenz/Folder;
    move-object/from16 v0, p2

    iput-object v6, v0, Lorg/apache/commons/compress/archivers/sevenz/Archive;->folders:[Lorg/apache/commons/compress/archivers/sevenz/Folder;

    .line 357
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v4

    .line 358
    .local v4, "external":I
    if-eqz v4, :cond_1

    .line 359
    new-instance v11, Ljava/io/IOException;

    const-string v14, "External unsupported"

    invoke-direct {v11, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 361
    :cond_1
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    long-to-int v11, v12

    if-ge v7, v11, :cond_2

    .line 362
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readFolder(Ljava/io/DataInput;)Lorg/apache/commons/compress/archivers/sevenz/Folder;

    move-result-object v11

    aput-object v11, v6, v7

    .line 361
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 366
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v10

    .line 367
    const/16 v11, 0xc

    if-eq v10, v11, :cond_3

    .line 368
    new-instance v11, Ljava/io/IOException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Expected kCodersUnpackSize, got "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 370
    :cond_3
    move-object v2, v6

    .local v2, "arr$":[Lorg/apache/commons/compress/archivers/sevenz/Folder;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_1
    if-ge v8, v9, :cond_5

    aget-object v5, v2, v8

    .line 371
    .local v5, "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    iget-wide v14, v5, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    long-to-int v11, v14

    new-array v11, v11, [J

    iput-object v11, v5, Lorg/apache/commons/compress/archivers/sevenz/Folder;->unpackSizes:[J

    .line 372
    const/4 v7, 0x0

    :goto_2
    int-to-long v14, v7

    iget-wide v0, v5, Lorg/apache/commons/compress/archivers/sevenz/Folder;->totalOutputStreams:J

    move-wide/from16 v16, v0

    cmp-long v11, v14, v16

    if-gez v11, :cond_4

    .line 373
    iget-object v11, v5, Lorg/apache/commons/compress/archivers/sevenz/Folder;->unpackSizes:[J

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readUint64(Ljava/io/DataInput;)J

    move-result-wide v14

    aput-wide v14, v11, v7

    .line 372
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 370
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 377
    .end local v5    # "folder":Lorg/apache/commons/compress/archivers/sevenz/Folder;
    :cond_5
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v10

    .line 378
    const/16 v11, 0xa

    if-ne v10, v11, :cond_8

    .line 379
    long-to-int v11, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->readAllOrBits(Ljava/io/DataInput;I)Ljava/util/BitSet;

    move-result-object v3

    .line 380
    .local v3, "crcsDefined":Ljava/util/BitSet;
    const/4 v7, 0x0

    :goto_3
    long-to-int v11, v12

    if-ge v7, v11, :cond_7

    .line 381
    invoke-virtual {v3, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 382
    aget-object v11, v6, v7

    const/4 v14, 0x1

    iput-boolean v14, v11, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    .line 383
    aget-object v11, v6, v7

    const-wide v14, 0xffffffffL

    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readInt()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    and-long v14, v14, v16

    iput-wide v14, v11, Lorg/apache/commons/compress/archivers/sevenz/Folder;->crc:J

    .line 380
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 385
    :cond_6
    aget-object v11, v6, v7

    const/4 v14, 0x0

    iput-boolean v14, v11, Lorg/apache/commons/compress/archivers/sevenz/Folder;->hasCrc:Z

    goto :goto_4

    .line 389
    :cond_7
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v10

    .line 392
    .end local v3    # "crcsDefined":Ljava/util/BitSet;
    :cond_8
    if-eqz v10, :cond_9

    .line 393
    new-instance v11, Ljava/io/IOException;

    const-string v14, "Badly terminated UnpackInfo"

    invoke-direct {v11, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 395
    :cond_9
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 124
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    .line 126
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    .line 129
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 132
    :cond_0
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    .line 135
    :cond_1
    return-void

    .line 128
    :catchall_0
    move-exception v0

    iput-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->file:Ljava/io/RandomAccessFile;

    .line 129
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    if-eqz v1, :cond_2

    .line 130
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 132
    :cond_2
    iput-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->password:[B

    throw v0
.end method

.method public getNextEntry()Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v2, v2, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_0

    .line 146
    const/4 v0, 0x0

    .line 151
    :goto_0
    return-object v0

    .line 148
    :cond_0
    iget v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    .line 149
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->archive:Lorg/apache/commons/compress/archivers/sevenz/Archive;

    iget-object v1, v1, Lorg/apache/commons/compress/archivers/sevenz/Archive;->files:[Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;

    iget v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryIndex:I

    aget-object v0, v1, v2

    .line 150
    .local v0, "entry":Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->buildDecodingStream()V

    goto :goto_0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 867
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 879
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
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
    .line 893
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->currentEntryInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method
