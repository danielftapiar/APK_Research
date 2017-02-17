.class Lorg/mapsforge/map/reader/IndexCache;
.super Ljava/lang/Object;
.source "IndexCache.java"


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/mapsforge/map/reader/IndexCacheEntryKey;",
            "[B>;"
        }
    .end annotation
.end field

.field private final randomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/mapsforge/map/reader/IndexCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/map/reader/IndexCache;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 2
    .param p1, "randomAccessFile"    # Ljava/io/RandomAccessFile;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/mapsforge/map/reader/IndexCache;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 55
    new-instance v0, Lorg/mapsforge/core/LRUCache;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/mapsforge/core/LRUCache;-><init>(I)V

    iput-object v0, p0, Lorg/mapsforge/map/reader/IndexCache;->map:Ljava/util/Map;

    .line 56
    return-void
.end method


# virtual methods
.method final destroy()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/mapsforge/map/reader/IndexCache;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 63
    return-void
.end method

.method final getIndexEntry(Lorg/mapsforge/map/reader/header/SubFileParameter;J)J
    .locals 17
    .param p1, "subFileParameter"    # Lorg/mapsforge/map/reader/header/SubFileParameter;
    .param p2, "blockNumber"    # J

    .prologue
    .line 78
    :try_start_0
    move-object/from16 v0, p1

    iget-wide v11, v0, Lorg/mapsforge/map/reader/header/SubFileParameter;->numberOfBlocks:J

    cmp-long v11, p2, v11

    if-ltz v11, :cond_0

    .line 79
    const-wide/16 v11, -0x1

    .line 116
    :goto_0
    return-wide v11

    .line 83
    :cond_0
    const-wide/16 v11, 0x80

    div-long v4, p2, v11

    .line 86
    .local v4, "indexBlockNumber":J
    new-instance v9, Lorg/mapsforge/map/reader/IndexCacheEntryKey;

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v4, v5}, Lorg/mapsforge/map/reader/IndexCacheEntryKey;-><init>(Lorg/mapsforge/map/reader/header/SubFileParameter;J)V

    .line 89
    .local v9, "indexCacheEntryKey":Lorg/mapsforge/map/reader/IndexCacheEntryKey;
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/mapsforge/map/reader/IndexCache;->map:Ljava/util/Map;

    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 90
    .local v3, "indexBlock":[B
    if-nez v3, :cond_2

    .line 92
    move-object/from16 v0, p1

    iget-wide v11, v0, Lorg/mapsforge/map/reader/header/SubFileParameter;->indexStartAddress:J

    const-wide/16 v13, 0x280

    mul-long/2addr v13, v4

    add-long v6, v11, v13

    .line 94
    .local v6, "indexBlockPosition":J
    move-object/from16 v0, p1

    iget-wide v11, v0, Lorg/mapsforge/map/reader/header/SubFileParameter;->indexEndAddress:J

    sub-long/2addr v11, v6

    long-to-int v10, v11

    .line 95
    .local v10, "remainingIndexSize":I
    const/16 v11, 0x280

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 96
    .local v8, "indexBlockSize":I
    new-array v3, v8, [B

    .line 98
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/mapsforge/map/reader/IndexCache;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v11, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 99
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/mapsforge/map/reader/IndexCache;->randomAccessFile:Ljava/io/RandomAccessFile;

    const/4 v12, 0x0

    invoke-virtual {v11, v3, v12, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v11

    if-eq v11, v8, :cond_1

    .line 100
    sget-object v11, Lorg/mapsforge/map/reader/IndexCache;->LOG:Ljava/util/logging/Logger;

    const-string v12, "reading the current index block has failed"

    invoke-virtual {v11, v12}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 101
    const-wide/16 v11, -0x1

    goto :goto_0

    .line 105
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/mapsforge/map/reader/IndexCache;->map:Ljava/util/Map;

    invoke-interface {v11, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .end local v6    # "indexBlockPosition":J
    .end local v8    # "indexBlockSize":I
    .end local v10    # "remainingIndexSize":I
    :cond_2
    const-wide/16 v11, 0x80

    rem-long v11, p2, v11

    .line 110
    const-wide/16 v13, 0x5

    mul-long/2addr v11, v13

    long-to-int v1, v11

    .line 113
    .local v1, "addressInIndexBlock":I
    aget-byte v11, v3, v1

    int-to-long v11, v11

    const-wide/16 v13, 0xff

    and-long/2addr v11, v13

    const/16 v13, 0x20

    shl-long/2addr v11, v13

    add-int/lit8 v13, v1, 0x1

    aget-byte v13, v3, v13

    int-to-long v13, v13

    const-wide/16 v15, 0xff

    and-long/2addr v13, v15

    const/16 v15, 0x18

    shl-long/2addr v13, v15

    or-long/2addr v11, v13

    add-int/lit8 v13, v1, 0x2

    aget-byte v13, v3, v13

    int-to-long v13, v13

    const-wide/16 v15, 0xff

    and-long/2addr v13, v15

    const/16 v15, 0x10

    shl-long/2addr v13, v15

    or-long/2addr v11, v13

    add-int/lit8 v13, v1, 0x3

    aget-byte v13, v3, v13

    int-to-long v13, v13

    const-wide/16 v15, 0xff

    and-long/2addr v13, v15

    const/16 v15, 0x8

    shl-long/2addr v13, v15

    or-long/2addr v11, v13

    add-int/lit8 v13, v1, 0x4

    aget-byte v13, v3, v13
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v13, v13

    const-wide/16 v15, 0xff

    and-long/2addr v13, v15

    or-long/2addr v11, v13

    goto/16 :goto_0

    .line 114
    .end local v1    # "addressInIndexBlock":I
    .end local v3    # "indexBlock":[B
    .end local v4    # "indexBlockNumber":J
    .end local v9    # "indexCacheEntryKey":Lorg/mapsforge/map/reader/IndexCacheEntryKey;
    :catch_0
    move-exception v2

    .line 115
    .local v2, "e":Ljava/io/IOException;
    sget-object v11, Lorg/mapsforge/map/reader/IndexCache;->LOG:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    const-wide/16 v11, -0x1

    goto/16 :goto_0
.end method
