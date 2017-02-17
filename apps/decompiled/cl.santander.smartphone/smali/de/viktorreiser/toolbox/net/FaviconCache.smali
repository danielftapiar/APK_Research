.class public Lde/viktorreiser/toolbox/net/FaviconCache;
.super Ljava/lang/Object;
.source "FaviconCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/viktorreiser/toolbox/net/FaviconCache$FaviconHelper;,
        Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;,
        Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;,
        Lde/viktorreiser/toolbox/net/FaviconCache$OnFaviconLoad;
    }
.end annotation


# static fields
.field protected static final CACHE_PREFIX:Ljava/lang/String; = "favbm_"

.field private static final CONNECT_TIMEOUT:I = 0x1388

.field protected static final DEFAULT_FAVICON_FILENAME:Ljava/lang/String; = "defaultFaviconForCache"

.field protected static final QUEUE_LIMIT:I = 0x64

.field private static final READ_TIMEOUT:I = 0x2710


# instance fields
.field private final mAvailableOnSdCard:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCache:Lde/viktorreiser/toolbox/os/SynchronizedSoftPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/viktorreiser/toolbox/os/SynchronizedSoftPool",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mCacheFolder:Ljava/lang/String;

.field private mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private mCompressQuality:I

.field private mDefaultIcon:Landroid/graphics/Bitmap;

.field private mDefaultIconFromServer:[I

.field private final mFaviconQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field private final mFaviconThread:Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;

.field private mFetchLevel:[Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;

.field private final mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lde/viktorreiser/toolbox/net/FaviconCache$OnFaviconLoad;",
            "Lde/viktorreiser/toolbox/net/FaviconCache$OnFaviconLoad;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoadLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mPersistDefault:Z

.field private final mUiThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/content/res/AssetManager;Landroid/graphics/Bitmap;[Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;Landroid/graphics/Bitmap$CompressFormat;I)V
    .locals 17
    .param p1, "cacheFolderPath"    # Ljava/lang/String;
    .param p2, "persistDefault"    # Z
    .param p3, "assets"    # Landroid/content/res/AssetManager;
    .param p4, "defaultIcon"    # Landroid/graphics/Bitmap;
    .param p5, "fetchLevel"    # [Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;
    .param p6, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p7, "compressQuality"    # I

    .prologue
    .line 352
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lde/viktorreiser/toolbox/net/FaviconCache;->mCacheFolder:Ljava/lang/String;

    .line 82
    new-instance v13, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v14, 0x64

    invoke-direct {v13, v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lde/viktorreiser/toolbox/net/FaviconCache;->mFaviconQueue:Ljava/util/concurrent/BlockingQueue;

    .line 85
    new-instance v13, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v13}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lde/viktorreiser/toolbox/net/FaviconCache;->mLoadLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 89
    new-instance v13, Ljava/util/WeakHashMap;

    invoke-direct {v13}, Ljava/util/WeakHashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lde/viktorreiser/toolbox/net/FaviconCache;->mListeners:Ljava/util/Map;

    .line 92
    new-instance v13, Lde/viktorreiser/toolbox/os/SynchronizedSoftPool;

    invoke-direct {v13}, Lde/viktorreiser/toolbox/os/SynchronizedSoftPool;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lde/viktorreiser/toolbox/net/FaviconCache;->mCache:Lde/viktorreiser/toolbox/os/SynchronizedSoftPool;

    .line 95
    new-instance v13, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;-><init>(Lde/viktorreiser/toolbox/net/FaviconCache;Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lde/viktorreiser/toolbox/net/FaviconCache;->mFaviconThread:Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;

    .line 98
    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lde/viktorreiser/toolbox/net/FaviconCache;->mUiThreadHandler:Landroid/os/Handler;

    .line 102
    new-instance v13, Ljava/util/TreeSet;

    invoke-direct {v13}, Ljava/util/TreeSet;-><init>()V

    invoke-static {v13}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lde/viktorreiser/toolbox/net/FaviconCache;->mAvailableOnSdCard:Ljava/util/Set;

    .line 105
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lde/viktorreiser/toolbox/net/FaviconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 121
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lde/viktorreiser/toolbox/net/FaviconCache;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 124
    const/16 v13, 0x64

    move-object/from16 v0, p0

    iput v13, v0, Lde/viktorreiser/toolbox/net/FaviconCache;->mCompressQuality:I

    .line 355
    if-eqz p3, :cond_0

    if-nez p6, :cond_1

    .line 356
    :cond_0
    new-instance v13, Ljava/lang/NullPointerException;

    invoke-direct {v13}, Ljava/lang/NullPointerException;-><init>()V

    throw v13

    .line 359
    :cond_1
    if-ltz p7, :cond_2

    const/16 v13, 0x64

    move/from16 v0, p7

    if-le v0, v13, :cond_3

    .line 360
    :cond_2
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "compress quality should be 0 to 100!"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 363
    :cond_3
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/viktorreiser/toolbox/net/FaviconCache;->mCacheFolder:Ljava/lang/String;

    .line 364
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/viktorreiser/toolbox/net/FaviconCache;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 365
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lde/viktorreiser/toolbox/net/FaviconCache;->mCompressQuality:I

    .line 366
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/viktorreiser/toolbox/net/FaviconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 367
    const/16 v13, 0x400

    new-array v13, v13, [I

    move-object/from16 v0, p0

    iput-object v13, v0, Lde/viktorreiser/toolbox/net/FaviconCache;->mDefaultIconFromServer:[I

    .line 368
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lde/viktorreiser/toolbox/net/FaviconCache;->mPersistDefault:Z

    .line 369
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/viktorreiser/toolbox/net/FaviconCache;->mFetchLevel:[Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;

    .line 371
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/viktorreiser/toolbox/net/FaviconCache;->mFetchLevel:[Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;

    array-length v13, v13

    if-nez v13, :cond_4

    .line 372
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "you have to define at least one fetch level"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 375
    :cond_4
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 377
    .local v2, "alreadyIn":Ljava/util/Set;, "Ljava/util/Set<Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;>;"
    move-object/from16 v0, p5

    array-length v14, v0

    const/4 v13, 0x0

    :goto_0
    if-lt v13, v14, :cond_6

    .line 390
    sget-object v13, Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;->WEAK:Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;

    invoke-interface {v2, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 393
    :try_start_0
    new-instance v4, Ljava/io/DataInputStream;

    .line 394
    const-string v13, "defaultFaviconForCache"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v13

    .line 393
    invoke-direct {v4, v13}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 396
    .local v4, "dis":Ljava/io/DataInputStream;
    const/4 v12, 0x0

    .local v12, "y":I
    :goto_1
    const/16 v13, 0x20

    if-lt v12, v13, :cond_9

    .line 403
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    .end local v4    # "dis":Ljava/io/DataInputStream;
    .end local v12    # "y":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/viktorreiser/toolbox/net/FaviconCache;->mFaviconThread:Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;

    invoke-virtual {v13}, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->start()V

    .line 413
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/viktorreiser/toolbox/net/FaviconCache;->mCacheFolder:Ljava/lang/String;

    if-eqz v13, :cond_d

    .line 415
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lde/viktorreiser/toolbox/net/FaviconCache;->mCacheFolder:Ljava/lang/String;

    invoke-direct {v7, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 417
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 418
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-nez v13, :cond_c

    .line 419
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lde/viktorreiser/toolbox/net/FaviconCache;->mCacheFolder:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, " is a file not a directory!"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 377
    .end local v7    # "file":Ljava/io/File;
    :cond_6
    aget-object v8, p5, v13

    .line 378
    .local v8, "fl":Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;
    if-nez v8, :cond_7

    .line 379
    new-instance v13, Ljava/lang/NullPointerException;

    const-string v14, "fetchLevel contains null value"

    invoke-direct {v13, v14}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 382
    :cond_7
    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 383
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    const-class v15, Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;

    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 384
    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " set twice!"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 383
    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 387
    :cond_8
    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 377
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 397
    .end local v8    # "fl":Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    .restart local v12    # "y":I
    :cond_9
    mul-int/lit8 v9, v12, 0x20

    .line 398
    .local v9, "h":I
    const/4 v11, 0x0

    .local v11, "x":I
    :goto_2
    const/16 v13, 0x20

    if-lt v11, v13, :cond_a

    .line 396
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 399
    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lde/viktorreiser/toolbox/net/FaviconCache;->mDefaultIconFromServer:[I

    add-int v14, v9, v11

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    aput v15, v13, v14
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 398
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 404
    .end local v4    # "dis":Ljava/io/DataInputStream;
    .end local v9    # "h":I
    .end local v11    # "x":I
    .end local v12    # "y":I
    :catch_0
    move-exception v5

    .line 405
    .local v5, "e":Ljava/io/IOException;
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Expected asset file defaultFaviconForCache in root directory!"

    invoke-direct {v13, v14, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 422
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v7    # "file":Ljava/io/File;
    :cond_b
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 423
    new-instance v13, Ljava/lang/IllegalArgumentException;

    .line 424
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lde/viktorreiser/toolbox/net/FaviconCache;->mCacheFolder:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, " is not a directory or is not writable!"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 423
    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 428
    :cond_c
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lde/viktorreiser/toolbox/net/FaviconCache;->mCacheFolder:Ljava/lang/String;

    .line 431
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 433
    .local v3, "cached":[Ljava/io/File;
    if-eqz v3, :cond_d

    .line 434
    array-length v14, v3

    const/4 v13, 0x0

    :goto_3
    if-lt v13, v14, :cond_e

    .line 448
    .end local v3    # "cached":[Ljava/io/File;
    .end local v7    # "file":Ljava/io/File;
    :cond_d
    return-void

    .line 434
    .restart local v3    # "cached":[Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    :cond_e
    aget-object v6, v3, v13

    .line 435
    .local v6, "f":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    .line 437
    .local v10, "name":Ljava/lang/String;
    const-string v15, "favbm_"

    invoke-virtual {v10, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 439
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lde/viktorreiser/toolbox/net/FaviconCache;->mAvailableOnSdCard:Ljava/util/Set;

    .line 440
    const-string v16, "favbm_"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 439
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 434
    :cond_f
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 441
    :catch_1
    move-exception v15

    goto :goto_4
.end method

.method static synthetic access$0(Lde/viktorreiser/toolbox/net/FaviconCache;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lde/viktorreiser/toolbox/net/FaviconCache;->mFaviconQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$1(Lde/viktorreiser/toolbox/net/FaviconCache;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lde/viktorreiser/toolbox/net/FaviconCache;->mLoadLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$10(Lde/viktorreiser/toolbox/net/FaviconCache;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lde/viktorreiser/toolbox/net/FaviconCache;->mListeners:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$11(Lde/viktorreiser/toolbox/net/FaviconCache;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lde/viktorreiser/toolbox/net/FaviconCache;->mUiThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$12(Lde/viktorreiser/toolbox/net/FaviconCache;)[I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lde/viktorreiser/toolbox/net/FaviconCache;->mDefaultIconFromServer:[I

    return-object v0
.end method

.method static synthetic access$2(Lde/viktorreiser/toolbox/net/FaviconCache;)Lde/viktorreiser/toolbox/os/SynchronizedSoftPool;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lde/viktorreiser/toolbox/net/FaviconCache;->mCache:Lde/viktorreiser/toolbox/os/SynchronizedSoftPool;

    return-object v0
.end method

.method static synthetic access$3(Lde/viktorreiser/toolbox/net/FaviconCache;)[Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lde/viktorreiser/toolbox/net/FaviconCache;->mFetchLevel:[Lde/viktorreiser/toolbox/net/FaviconCache$FetchLevel;

    return-object v0
.end method

.method static synthetic access$4(Lde/viktorreiser/toolbox/net/FaviconCache;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lde/viktorreiser/toolbox/net/FaviconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$5(Lde/viktorreiser/toolbox/net/FaviconCache;)Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lde/viktorreiser/toolbox/net/FaviconCache;->mPersistDefault:Z

    return v0
.end method

.method static synthetic access$6(Lde/viktorreiser/toolbox/net/FaviconCache;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lde/viktorreiser/toolbox/net/FaviconCache;->mCacheFolder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lde/viktorreiser/toolbox/net/FaviconCache;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lde/viktorreiser/toolbox/net/FaviconCache;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method static synthetic access$8(Lde/viktorreiser/toolbox/net/FaviconCache;)I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lde/viktorreiser/toolbox/net/FaviconCache;->mCompressQuality:I

    return v0
.end method

.method static synthetic access$9(Lde/viktorreiser/toolbox/net/FaviconCache;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lde/viktorreiser/toolbox/net/FaviconCache;->mAvailableOnSdCard:Ljava/util/Set;

    return-object v0
.end method

.method public static getCacheHash(Ljava/net/URL;)Ljava/lang/Integer;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    .line 288
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addOnFaviconLoadListener(Lde/viktorreiser/toolbox/net/FaviconCache$OnFaviconLoad;)V
    .locals 2
    .param p1, "listener"    # Lde/viktorreiser/toolbox/net/FaviconCache$OnFaviconLoad;

    .prologue
    .line 458
    iget-object v1, p0, Lde/viktorreiser/toolbox/net/FaviconCache;->mListeners:Ljava/util/Map;

    monitor-enter v1

    .line 459
    :try_start_0
    iget-object v0, p0, Lde/viktorreiser/toolbox/net/FaviconCache;->mListeners:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    monitor-exit v1

    .line 461
    return-void

    .line 458
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearCache()V
    .locals 7

    .prologue
    .line 555
    iget-object v3, p0, Lde/viktorreiser/toolbox/net/FaviconCache;->mCacheFolder:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 577
    :cond_0
    return-void

    .line 559
    :cond_1
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lde/viktorreiser/toolbox/net/FaviconCache;->mCacheFolder:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 561
    .local v1, "files":[Ljava/io/File;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 562
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 564
    .local v2, "name":Ljava/lang/String;
    const-string v5, "favbm_"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 561
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 568
    :cond_2
    const-string v5, "favbm_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 571
    :try_start_0
    iget-object v5, p0, Lde/viktorreiser/toolbox/net/FaviconCache;->mAvailableOnSdCard:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 572
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 573
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Lde/viktorreiser/toolbox/net/FaviconCache;->mFaviconThread:Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;->access$2(Lde/viktorreiser/toolbox/net/FaviconCache$FaviconThread;Z)V

    .line 587
    return-void
.end method

.method public getFavicon(Ljava/net/URL;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    const/4 v2, 0x0

    .line 494
    if-nez p1, :cond_1

    move-object v1, v2

    .line 516
    :cond_0
    :goto_0
    return-object v1

    .line 498
    :cond_1
    invoke-static {p1}, Lde/viktorreiser/toolbox/net/FaviconCache;->getCacheHash(Ljava/net/URL;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 499
    .local v0, "hash":I
    iget-object v3, p0, Lde/viktorreiser/toolbox/net/FaviconCache;->mCache:Lde/viktorreiser/toolbox/os/SynchronizedSoftPool;

    invoke-virtual {v3, v0}, Lde/viktorreiser/toolbox/os/SynchronizedSoftPool;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 502
    .local v1, "icon":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 507
    iget-object v3, p0, Lde/viktorreiser/toolbox/net/FaviconCache;->mAvailableOnSdCard:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lde/viktorreiser/toolbox/net/FaviconCache;->mCacheFolder:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 508
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lde/viktorreiser/toolbox/net/FaviconCache;->mCacheFolder:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "favbm_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 509
    iget-object v2, p0, Lde/viktorreiser/toolbox/net/FaviconCache;->mCache:Lde/viktorreiser/toolbox/os/SynchronizedSoftPool;

    invoke-virtual {v2, v0, v1}, Lde/viktorreiser/toolbox/os/SynchronizedSoftPool;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 514
    :cond_2
    iget-object v3, p0, Lde/viktorreiser/toolbox/net/FaviconCache;->mFaviconQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-object v1, v2

    .line 516
    goto :goto_0
.end method

.method public isLoadEnabled()Z
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lde/viktorreiser/toolbox/net/FaviconCache;->mLoadLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeOnFaviconLoadListener(Lde/viktorreiser/toolbox/net/FaviconCache$OnFaviconLoad;)V
    .locals 2
    .param p1, "listener"    # Lde/viktorreiser/toolbox/net/FaviconCache$OnFaviconLoad;

    .prologue
    .line 470
    iget-object v1, p0, Lde/viktorreiser/toolbox/net/FaviconCache;->mListeners:Ljava/util/Map;

    monitor-enter v1

    .line 471
    :try_start_0
    iget-object v0, p0, Lde/viktorreiser/toolbox/net/FaviconCache;->mListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    monitor-exit v1

    .line 473
    return-void

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLoadEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 532
    if-eqz p1, :cond_1

    iget-object v0, p0, Lde/viktorreiser/toolbox/net/FaviconCache;->mLoadLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    iget-object v0, p0, Lde/viktorreiser/toolbox/net/FaviconCache;->mLoadLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lde/viktorreiser/toolbox/net/FaviconCache;->mLoadLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 535
    iget-object v0, p0, Lde/viktorreiser/toolbox/net/FaviconCache;->mLoadLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    goto :goto_0
.end method
