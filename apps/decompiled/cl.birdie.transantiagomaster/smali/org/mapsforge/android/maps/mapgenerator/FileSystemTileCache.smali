.class public Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;
.super Ljava/lang/Object;
.source "FileSystemTileCache.java"

# interfaces
.implements Lorg/mapsforge/android/maps/mapgenerator/TileCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache$ImageFileNameFilter;
    }
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final bitmapGet:Landroid/graphics/Bitmap;

.field private final byteBuffer:Ljava/nio/ByteBuffer;

.field private final cacheDirectory:Ljava/io/File;

.field private cacheId:J

.field private capacity:I

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private persistent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-class v0, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 7
    .param p1, "mapViewId"    # I

    .prologue
    const/16 v6, 0x100

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    invoke-static {}, Lorg/mapsforge/android/AndroidUtils;->applicationRunsOnAndroidEmulator()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    iput v3, p0, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->capacity:I

    .line 209
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "externalStorageDirectory":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Android/data/org.mapsforge.android.maps/cache/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "cacheDirectoryPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "could not create directory: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 207
    .end local v0    # "cacheDirectoryPath":Ljava/lang/String;
    .end local v2    # "externalStorageDirectory":Ljava/lang/String;
    :cond_0
    const/16 v3, 0x64

    goto :goto_0

    .line 211
    .restart local v0    # "cacheDirectoryPath":Ljava/lang/String;
    .restart local v2    # "externalStorageDirectory":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "not a directory: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cannot read directory: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cannot write directory: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    iput-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->cacheDirectory:Ljava/io/File;

    .line 213
    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->cacheDirectory:Ljava/io/File;

    invoke-static {v3}, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->deserializeMap(Ljava/io/File;)Ljava/util/Map;

    move-result-object v1

    .line 214
    .local v1, "deserializedMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;Ljava/io/File;>;"
    if-nez v1, :cond_5

    .line 215
    iget v3, p0, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->capacity:I

    int-to-float v4, v3

    const v5, 0x3f19999a    # 0.6f

    div-float/2addr v4, v5

    float-to-int v4, v4

    add-int/lit8 v4, v4, 0x2

    new-instance v5, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache$1;

    invoke-direct {v5, v4, v3}, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache$1;-><init>(II)V

    iput-object v5, p0, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->map:Ljava/util/Map;

    .line 219
    :goto_1
    const/high16 v3, 0x20000

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 220
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v6, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->bitmapGet:Landroid/graphics/Bitmap;

    .line 221
    return-void

    .line 217
    :cond_5
    iput-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->map:Ljava/util/Map;

    goto :goto_1
.end method

.method private static deserializeMap(Ljava/io/File;)Ljava/util/Map;
    .locals 11
    .param p0, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 119
    new-instance v6, Ljava/io/File;

    const-string v8, "cache.ser"

    invoke-direct {v6, p0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 120
    .local v6, "serializedMapFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    move-object v3, v7

    .line 146
    :goto_0
    return-object v3

    .line 124
    :cond_1
    const/4 v1, 0x0

    .line 125
    .local v1, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 127
    .local v4, "objectInputStream":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .local v2, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    .end local v4    # "objectInputStream":Ljava/io/ObjectInputStream;
    .local v5, "objectInputStream":Ljava/io/ObjectInputStream;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 133
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;Ljava/io/File;>;"
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_2

    .line 134
    invoke-virtual {v6}, Ljava/io/File;->deleteOnExit()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 145
    :cond_2
    invoke-static {v5}, Lorg/mapsforge/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 146
    invoke-static {v2}, Lorg/mapsforge/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 138
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;Ljava/io/File;>;"
    .end local v5    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    sget-object v8, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->LOG:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 140
    invoke-static {v4}, Lorg/mapsforge/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 146
    invoke-static {v1}, Lorg/mapsforge/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v3, v7

    goto :goto_0

    .line 141
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_2
    :try_start_4
    sget-object v8, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->LOG:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 143
    invoke-static {v4}, Lorg/mapsforge/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 146
    invoke-static {v1}, Lorg/mapsforge/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v3, v7

    goto :goto_0

    .line 145
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v7

    :goto_3
    invoke-static {v4}, Lorg/mapsforge/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 146
    invoke-static {v1}, Lorg/mapsforge/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v7

    .line 145
    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v4    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v4    # "objectInputStream":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 141
    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v4    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catch_3
    move-exception v0

    move-object v4, v5

    .end local v5    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v4    # "objectInputStream":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 138
    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v1    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v4    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v5    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catch_5
    move-exception v0

    move-object v4, v5

    .end local v5    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v4    # "objectInputStream":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v1    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private static serializeMap(Ljava/io/File;Ljava/util/Map;)Z
    .locals 10
    .param p0, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;Ljava/io/File;>;"
    const/4 v6, 0x0

    .line 169
    new-instance v5, Ljava/io/File;

    const-string v7, "cache.ser"

    invoke-direct {v5, p0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 170
    .local v5, "serializedMapFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_0

    .line 186
    :goto_0
    return v6

    .line 174
    :cond_0
    const/4 v1, 0x0

    .line 175
    .local v1, "fileOutputStream":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 177
    .local v3, "objectOutputStream":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v2, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 179
    .end local v3    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .local v4, "objectOutputStream":Ljava/io/ObjectOutputStream;
    :try_start_2
    invoke-virtual {v4, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 180
    invoke-static {v4}, Lorg/mapsforge/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 186
    invoke-static {v2}, Lorg/mapsforge/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v6, 0x1

    goto :goto_0

    .line 181
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v4    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    sget-object v7, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->LOG:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 183
    invoke-static {v3}, Lorg/mapsforge/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 186
    invoke-static {v1}, Lorg/mapsforge/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 185
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    invoke-static {v3}, Lorg/mapsforge/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 186
    invoke-static {v1}, Lorg/mapsforge/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v6

    .line 185
    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v3    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :catchall_2
    move-exception v6

    move-object v3, v4

    .end local v4    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v3    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 181
    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v3    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v3    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized containsKey(Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;)Z
    .locals 1
    .param p1, "mapGeneratorJob"    # Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized destroy()V
    .locals 7

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->persistent:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->cacheDirectory:Ljava/io/File;

    iget-object v6, p0, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->map:Ljava/util/Map;

    invoke-static {v5, v6}, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->serializeMap(Ljava/io/File;Ljava/util/Map;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 231
    :cond_0
    iget-object v5, p0, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->map:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 232
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_1

    .line 233
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 230
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 236
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->map:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 238
    iget-object v5, p0, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->cacheDirectory:Ljava/io/File;

    sget-object v6, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache$ImageFileNameFilter;->INSTANCE:Ljava/io/FilenameFilter;

    invoke-virtual {v5, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 239
    .local v2, "filesToDelete":[Ljava/io/File;
    if-eqz v2, :cond_4

    .line 240
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v1, v0, v3

    .line 241
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_3

    .line 242
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    .line 240
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 247
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_4
    iget-object v5, p0, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->cacheDirectory:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_5

    .line 248
    iget-object v5, p0, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->cacheDirectory:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->deleteOnExit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    .end local v2    # "filesToDelete":[Ljava/io/File;
    :cond_5
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized get(Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "mapGeneratorJob"    # Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;

    .prologue
    const/4 v5, 0x0

    .line 255
    monitor-enter p0

    :try_start_0
    iget v6, p0, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->capacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    .line 287
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v5

    .line 259
    :cond_1
    const/4 v2, 0x0

    .line 261
    .local v2, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v6, p0, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->map:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 263
    .local v4, "inputFile":Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 264
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .local v3, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_2
    iget-object v6, p0, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 265
    .local v0, "array":[B
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 267
    array-length v7, v0

    if-ne v6, v7, :cond_2

    .line 268
    iget-object v6, p0, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 269
    iget-object v6, p0, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->bitmapGet:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v7}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 270
    iget-object v5, p0, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->bitmapGet:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 282
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 285
    :catch_0
    move-exception v1

    .line 286
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    sget-object v6, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->LOG:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 255
    .end local v0    # "array":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v4    # "inputFile":Ljava/io/File;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 273
    .restart local v0    # "array":[B
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "inputFile":Ljava/io/File;
    :cond_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 285
    :catch_1
    move-exception v1

    .line 286
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_6
    sget-object v6, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->LOG:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 275
    .end local v0    # "array":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v4    # "inputFile":Ljava/io/File;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v6

    :goto_1
    :try_start_7
    iget-object v6, p0, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->map:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 276
    if-eqz v2, :cond_0

    .line 283
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 285
    :catch_3
    move-exception v1

    .line 286
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_9
    sget-object v6, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->LOG:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    .line 277
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 278
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_a
    sget-object v6, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->LOG:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 279
    if-eqz v2, :cond_0

    .line 283
    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_0

    .line 285
    :catch_5
    move-exception v1

    .line 286
    :try_start_c
    sget-object v6, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->LOG:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_0

    .line 281
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    .line 282
    :goto_3
    if-eqz v2, :cond_3

    .line 283
    :try_start_d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 287
    :cond_3
    :goto_4
    :try_start_e
    throw v5

    .line 285
    :catch_6
    move-exception v1

    .line 286
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v6, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->LOG:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_4

    .line 281
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "inputFile":Ljava/io/File;
    :catchall_2
    move-exception v5

    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 277
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v1

    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 275
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v6

    move-object v2, v3

    .end local v3    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v2    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public final declared-synchronized put(Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "mapGeneratorJob"    # Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 303
    monitor-enter p0

    :try_start_0
    iget v5, p0, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->capacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    .line 333
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 307
    :cond_1
    const/4 v2, 0x0

    .line 311
    .local v2, "fileOutputStream":Ljava/io/FileOutputStream;
    :cond_2
    :try_start_1
    iget-wide v5, p0, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->cacheId:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, p0, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->cacheId:J

    .line 312
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->cacheDirectory:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v7, p0, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->cacheId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".tile"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 313
    .local v4, "outputFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 315
    iget-object v5, p0, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 316
    iget-object v5, p0, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v5}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 317
    iget-object v5, p0, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 319
    .local v0, "array":[B
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 320
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v3, "fileOutputStream":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    :try_start_2
    array-length v6, v0

    invoke-virtual {v3, v0, v5, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 322
    iget-object v5, p0, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->map:Ljava/util/Map;

    invoke-interface {v5, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 327
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 330
    :catch_0
    move-exception v1

    .line 331
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    sget-object v5, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->LOG:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 303
    .end local v0    # "array":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v4    # "outputFile":Ljava/io/File;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 323
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 324
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_5
    sget-object v5, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->LOG:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 327
    if-eqz v2, :cond_0

    .line 328
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 330
    :catch_2
    move-exception v1

    .line 331
    :try_start_7
    sget-object v5, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->LOG:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 326
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    .line 327
    :goto_2
    if-eqz v2, :cond_3

    .line 328
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 332
    :cond_3
    :goto_3
    :try_start_9
    throw v5

    .line 330
    :catch_3
    move-exception v1

    .line 331
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v6, Lorg/mapsforge/android/maps/mapgenerator/FileSystemTileCache;->LOG:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 326
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "array":[B
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "outputFile":Ljava/io/File;
    :catchall_2
    move-exception v5

    move-object v2, v3

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 323
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
