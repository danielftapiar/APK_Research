.class public Lorg/osmdroid/tileprovider/modules/TileWriter;
.super Ljava/lang/Object;
.source "TileWriter.java"

# interfaces
.implements Lorg/osmdroid/tileprovider/modules/IFilesystemCache;
.implements Lorg/osmdroid/tileprovider/constants/OpenStreetMapTileProviderConstants;


# static fields
.field private static final logger:Lorg/slf4j/Logger;

.field private static mUsedCacheSpace:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/osmdroid/tileprovider/modules/TileWriter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/osmdroid/tileprovider/modules/TileWriter;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lorg/osmdroid/tileprovider/modules/TileWriter$1;

    invoke-direct {v0, p0}, Lorg/osmdroid/tileprovider/modules/TileWriter$1;-><init>(Lorg/osmdroid/tileprovider/modules/TileWriter;)V

    .line 63
    .local v0, "t":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 64
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 65
    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .prologue
    .line 28
    sget-wide v0, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    return-wide v0
.end method

.method static synthetic access$002(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 28
    sput-wide p0, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    return-wide p0
.end method

.method static synthetic access$100(Lorg/osmdroid/tileprovider/modules/TileWriter;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lorg/osmdroid/tileprovider/modules/TileWriter;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/modules/TileWriter;->calculateDirectorySize(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$200(Lorg/osmdroid/tileprovider/modules/TileWriter;)V
    .locals 0
    .param p0, "x0"    # Lorg/osmdroid/tileprovider/modules/TileWriter;

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/osmdroid/tileprovider/modules/TileWriter;->cutCurrentCache()V

    return-void
.end method

.method private calculateDirectorySize(Ljava/io/File;)V
    .locals 10
    .param p1, "pDirectory"    # Ljava/io/File;

    .prologue
    .line 149
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 150
    .local v4, "z":[Ljava/io/File;
    if-eqz v4, :cond_2

    .line 151
    move-object v0, v4

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 152
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 153
    sget-wide v6, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v6, v8

    sput-wide v6, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    .line 155
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, p1, v1}, Lorg/osmdroid/tileprovider/modules/TileWriter;->isSymbolicDirectoryLink(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 156
    invoke-direct {p0, v1}, Lorg/osmdroid/tileprovider/modules/TileWriter;->calculateDirectorySize(Ljava/io/File;)V

    .line 151
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_2
    return-void
.end method

.method private createFolderAndCheckIfExists(Ljava/io/File;)Z
    .locals 4
    .param p1, "pFile"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x1

    .line 122
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v0

    .line 131
    :cond_1
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    const/4 v0, 0x0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private cutCurrentCache()V
    .locals 14

    .prologue
    .line 209
    sget-object v9, Lorg/osmdroid/tileprovider/modules/TileWriter;->TILE_PATH_BASE:Ljava/io/File;

    monitor-enter v9

    .line 211
    :try_start_0
    sget-wide v10, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    const-wide/32 v12, 0x1f400000

    cmp-long v8, v10, v12

    if-lez v8, :cond_1

    .line 213
    sget-object v8, Lorg/osmdroid/tileprovider/modules/TileWriter;->logger:Lorg/slf4j/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Trimming tile cache from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-wide v12, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/32 v12, 0x1f400000

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 216
    sget-object v8, Lorg/osmdroid/tileprovider/modules/TileWriter;->TILE_PATH_BASE:Ljava/io/File;

    invoke-direct {p0, v8}, Lorg/osmdroid/tileprovider/modules/TileWriter;->getDirectoryFileList(Ljava/io/File;)Ljava/util/List;

    move-result-object v5

    .line 219
    .local v5, "z":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/io/File;

    invoke-interface {v5, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/io/File;

    .line 220
    .local v2, "files":[Ljava/io/File;
    new-instance v8, Lorg/osmdroid/tileprovider/modules/TileWriter$2;

    invoke-direct {v8, p0}, Lorg/osmdroid/tileprovider/modules/TileWriter$2;-><init>(Lorg/osmdroid/tileprovider/modules/TileWriter;)V

    invoke-static {v2, v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 227
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 228
    .local v1, "file":Ljava/io/File;
    sget-wide v10, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    const-wide/32 v12, 0x1f400000

    cmp-long v8, v10, v12

    if-gtz v8, :cond_2

    .line 238
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    sget-object v8, Lorg/osmdroid/tileprovider/modules/TileWriter;->logger:Lorg/slf4j/Logger;

    const-string v10, "Finished trimming tile cache"

    invoke-interface {v8, v10}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 240
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "z":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_1
    monitor-exit v9

    .line 241
    return-void

    .line 232
    .restart local v0    # "arr$":[Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "files":[Ljava/io/File;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "z":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 233
    .local v6, "length":J
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 234
    sget-wide v10, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    sub-long/2addr v10, v6

    sput-wide v10, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    .line 227
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 240
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "z":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v6    # "length":J
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method private getDirectoryFileList(Ljava/io/File;)Ljava/util/List;
    .locals 7
    .param p1, "aDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v2, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 189
    .local v5, "z":[Ljava/io/File;
    if-eqz v5, :cond_2

    .line 190
    move-object v0, v5

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 191
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 192
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 195
    invoke-direct {p0, v1}, Lorg/osmdroid/tileprovider/modules/TileWriter;->getDirectoryFileList(Ljava/io/File;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 190
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 200
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_2
    return-object v2
.end method

.method public static getUsedCacheSpace()J
    .locals 2

    .prologue
    .line 78
    sget-wide v0, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    return-wide v0
.end method

.method private isSymbolicDirectoryLink(Ljava/io/File;Ljava/io/File;)Z
    .locals 5
    .param p1, "pParentDirectory"    # Ljava/io/File;
    .param p2, "pDirectory"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x1

    .line 172
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "canonicalParentPath1":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "canonicalParentPath2":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-nez v4, :cond_0

    .line 180
    .end local v0    # "canonicalParentPath1":Ljava/lang/String;
    .end local v1    # "canonicalParentPath2":Ljava/lang/String;
    :goto_0
    return v3

    .line 174
    .restart local v0    # "canonicalParentPath1":Ljava/lang/String;
    .restart local v1    # "canonicalParentPath2":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 175
    .end local v0    # "canonicalParentPath1":Ljava/lang/String;
    .end local v1    # "canonicalParentPath2":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 176
    .local v2, "e":Ljava/io/IOException;
    goto :goto_0

    .line 177
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 180
    .local v2, "e":Ljava/util/NoSuchElementException;
    goto :goto_0
.end method


# virtual methods
.method public saveFile(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/MapTile;Ljava/io/InputStream;)Z
    .locals 12
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pTile"    # Lorg/osmdroid/tileprovider/MapTile;
    .param p3, "pStream"    # Ljava/io/InputStream;

    .prologue
    const/4 v7, 0x0

    .line 89
    new-instance v1, Ljava/io/File;

    sget-object v8, Lorg/osmdroid/tileprovider/modules/TileWriter;->TILE_PATH_BASE:Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, p2}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getTileRelativeFilenameString(Lorg/osmdroid/tileprovider/MapTile;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".tile"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 92
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 93
    .local v6, "parent":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-direct {p0, v6}, Lorg/osmdroid/tileprovider/modules/TileWriter;->createFolderAndCheckIfExists(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v7

    .line 97
    :cond_1
    const/4 v4, 0x0

    .line 99
    .local v4, "outputStream":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x2000

    invoke-direct {v5, v8, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .end local v4    # "outputStream":Ljava/io/BufferedOutputStream;
    .local v5, "outputStream":Ljava/io/BufferedOutputStream;
    :try_start_1
    invoke-static {p3, v5}, Lorg/osmdroid/tileprovider/util/StreamUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v2

    .line 103
    .local v2, "length":J
    sget-wide v8, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    add-long/2addr v8, v2

    sput-wide v8, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    .line 104
    sget-wide v8, Lorg/osmdroid/tileprovider/modules/TileWriter;->mUsedCacheSpace:J

    const-wide/32 v10, 0x25800000

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    .line 105
    invoke-direct {p0}, Lorg/osmdroid/tileprovider/modules/TileWriter;->cutCurrentCache()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 110
    :cond_2
    if-eqz v5, :cond_3

    .line 111
    invoke-static {v5}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 114
    :cond_3
    const/4 v7, 0x1

    goto :goto_0

    .line 107
    .end local v2    # "length":J
    .end local v5    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v4    # "outputStream":Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    if-eqz v4, :cond_0

    .line 111
    invoke-static {v4}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 110
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v4, :cond_4

    .line 111
    invoke-static {v4}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    :cond_4
    throw v7

    .line 110
    .end local v4    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v5    # "outputStream":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v4    # "outputStream":Ljava/io/BufferedOutputStream;
    goto :goto_2

    .line 107
    .end local v4    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v5    # "outputStream":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v0

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/BufferedOutputStream;
    .restart local v4    # "outputStream":Ljava/io/BufferedOutputStream;
    goto :goto_1
.end method
