.class public Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;
.super Ljava/lang/Object;
.source "ColdStartPrimingInformation.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SharedPreferencesUse",
        "BadMethodUse-android.util.Log.v",
        "BadMethodUse-android.util.Log.d",
        "BadMethodUse-android.util.Log.i",
        "BadMethodUse-android.util.Log.w",
        "BadMethodUse-android.util.Log.e"
    }
.end annotation


# static fields
.field private static final a:Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;

.field private static final b:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private c:Landroid/content/SharedPreferences;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private volatile f:Ljava/lang/String;

.field private volatile g:Ljava/lang/String;

.field private volatile h:J

.field private volatile i:I

.field private volatile j:Ljava/lang/String;

.field private volatile k:Ljava/lang/String;

.field private volatile l:Ljava/lang/String;

.field private volatile m:Ljava/lang/String;

.field private volatile n:Z

.field private volatile o:Z

.field private volatile p:Z

.field private volatile q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;

    invoke-direct {v0}, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;-><init>()V

    sput-object v0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->a:Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;

    .line 79
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object v2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->f:Ljava/lang/String;

    .line 86
    iput-object v2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->g:Ljava/lang/String;

    .line 87
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->h:J

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->i:I

    .line 89
    iput-object v2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->j:Ljava/lang/String;

    .line 90
    iput-object v2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->k:Ljava/lang/String;

    .line 91
    iput-object v2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->l:Ljava/lang/String;

    .line 92
    iput-object v2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->m:Ljava/lang/String;

    .line 93
    iput-boolean v3, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->n:Z

    .line 94
    iput-boolean v3, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->o:Z

    .line 95
    iput-boolean v3, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->p:Z

    .line 96
    iput-boolean v3, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->q:Z

    .line 100
    return-void
.end method

.method public static a()Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->a:Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;

    return-object v0
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    :goto_0
    return-void

    .line 308
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 311
    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 312
    invoke-direct {p0, p1}, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c(Z)V

    goto :goto_0

    .line 314
    :cond_1
    invoke-direct {p0, p1}, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->d(Z)V

    goto :goto_0
.end method

.method private c(Z)V
    .locals 3

    .prologue
    .line 357
    sget-object v0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation$1;-><init>(Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;Z)V

    const v2, 0x136b5c

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/ExecutorDetour;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;I)V

    .line 363
    return-void
.end method

.method private d(Z)V
    .locals 3

    .prologue
    .line 369
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 370
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 375
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 378
    return-void

    .line 377
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method private g()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->o:Z

    return v0
.end method

.method private declared-synchronized h()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 394
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 411
    :goto_0
    monitor-exit p0

    return v0

    .line 397
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;

    const-string v1, "COLD_START_PRIME_INFO/FIRST_FETCH_STRING"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->f:Ljava/lang/String;

    .line 398
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;

    const-string v1, "COLD_START_PRIME_INFO/STORY_CURSOR"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->g:Ljava/lang/String;

    .line 399
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;

    const-string v1, "COLD_START_PRIME_INFO/LAST_HEAD_FETCH_TIME"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->h:J

    .line 401
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;

    const-string v1, "COLD_START_PRIME_INFO/FROZEN_FEED_TIME"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->i:I

    .line 403
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;

    const-string v1, "COLD_START_PRIME_INFO/USER_AGENT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->j:Ljava/lang/String;

    .line 404
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;

    const-string v1, "COLD_START_PRIME_INFO/USER_ID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->k:Ljava/lang/String;

    .line 405
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;

    const-string v1, "COLD_START_PRIME_INFO/HOST_NAME"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->m:Ljava/lang/String;

    .line 406
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;

    const-string v1, "COLD_START_PRIME_INFO/COLD_START_ADVANCE_PRIME_ENABLED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->n:Z

    .line 408
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;

    const-string v1, "COLD_START_PRIME_INFO/COLD_START_ADVANCE_PRIME_FROM_NODEX_ENABLED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->o:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    const/4 v0, 0x1

    goto :goto_0

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private i()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 472
    :try_start_0
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->d:Landroid/content/Context;

    const-string v1, "FB4A_UDP_REQUEST_ID.txt"

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v3

    .line 473
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 474
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 475
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 476
    iput-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->l:Ljava/lang/String;

    .line 477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->q:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 479
    :cond_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 487
    new-instance v1, Ljava/io/File;

    const-string v2, "FB4A_UDP_REQUEST_ID.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 488
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 489
    :goto_0
    return-void

    .line 472
    :catch_0
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 479
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_1
    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_2
    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 472
    :catch_1
    move-exception v0

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 479
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v3, :cond_2

    if-eqz v2, :cond_4

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :cond_2
    :goto_4
    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 481
    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 487
    new-instance v1, Ljava/io/File;

    const-string v2, "FB4A_UDP_REQUEST_ID.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 488
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 479
    :catch_3
    move-exception v4

    :try_start_b
    invoke-static {v1, v4}, Lcom/facebook/androidcompat/AndroidCompat;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_2

    :catch_4
    move-exception v1

    :try_start_c
    invoke-static {v2, v1}, Lcom/facebook/androidcompat/AndroidCompat;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_4

    .line 482
    :catch_5
    move-exception v0

    .line 483
    :try_start_d
    const-string v1, "ColdStartPrimingInformation"

    const-string v2, "FB4A_UDP_REQUEST_ID.txt exception while reading"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 486
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 487
    new-instance v1, Ljava/io/File;

    const-string v2, "FB4A_UDP_REQUEST_ID.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 488
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 479
    :cond_4
    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_4

    .line 486
    :catchall_3
    move-exception v0

    iget-object v1, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 487
    new-instance v2, Ljava/io/File;

    const-string v3, "FB4A_UDP_REQUEST_ID.txt"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 488
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 489
    throw v0

    .line 479
    :catchall_4
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private j()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 498
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->d:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->d:Landroid/content/Context;

    const-string v1, "FB4A_UDP_REQUEST_ID.txt"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    .line 504
    :try_start_1
    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 505
    :try_start_2
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->l:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 506
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 508
    :catch_0
    move-exception v0

    const-string v0, "ColdStartPrimingInformation"

    const-string v1, "FB4A_UDP_REQUEST_ID.txt file not present for write, not expected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 502
    :catch_1
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 506
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_1
    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_2
    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 502
    :catch_2
    move-exception v0

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 506
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v3, :cond_2

    if-eqz v2, :cond_4

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_2
    :goto_4
    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 509
    :catch_3
    move-exception v0

    .line 510
    const-string v1, "ColdStartPrimingInformation"

    const-string v2, "FB4A_UDP_REQUEST_ID.txt exception while writing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 506
    :catch_4
    move-exception v4

    :try_start_b
    invoke-static {v1, v4}, Lcom/facebook/androidcompat/AndroidCompat;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_2

    :catch_5
    move-exception v1

    :try_start_c
    invoke-static {v2, v1}, Lcom/facebook/androidcompat/AndroidCompat;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private static k()Ljava/util/UUID;
    .locals 2

    .prologue
    .line 522
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 524
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 526
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method private l()Z
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.lang.System.currentTimeMillis"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 536
    iget-wide v2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->h:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->i:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 540
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->h:J

    iget v1, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->i:I

    int-to-long v6, v1

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(JI)V
    .locals 5

    .prologue
    .line 244
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->h:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->i:I

    if-eq p3, v0, :cond_3

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 249
    iget-wide v2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->h:J

    cmp-long v1, p1, v2

    if-eqz v1, :cond_1

    .line 250
    iput-wide p1, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->h:J

    .line 251
    const-string v1, "COLD_START_PRIME_INFO/LAST_HEAD_FETCH_TIME"

    iget-wide v2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->h:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 253
    :cond_1
    iget v1, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->i:I

    if-eq p3, v1, :cond_2

    .line 254
    iput p3, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->i:I

    .line 255
    const-string v1, "COLD_START_PRIME_INFO/FROZEN_FEED_TIME"

    iget v2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->i:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 258
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 260
    :cond_3
    return-void
.end method

.method public final a(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->o:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->o:Z

    .line 267
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 269
    const-string v1, "COLD_START_PRIME_INFO/COLD_START_ADVANCE_PRIME_FROM_NODEX_ENABLED"

    iget-boolean v2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->o:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 272
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 229
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->g:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    :cond_2
    iput-object p1, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->g:Ljava/lang/String;

    .line 236
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 238
    const-string v1, "COLD_START_PRIME_INFO/STORY_CURSOR"

    iget-object v2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 239
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 165
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    const-string v0, "%22[a-zA-Z0-9]{70,100}[%3D]*%22"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 171
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 173
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    const-string v1, "CURSOR_BOOKMARK"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 184
    const-string v1, "%22\\d*_\\d*_[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}%22"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 185
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 186
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 188
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 190
    const/4 v2, 0x3

    const/16 v3, 0x5f

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 191
    const-string v3, "REQUEST_ID_BOOKMARK"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 206
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->p:Z

    .line 208
    iget-object v1, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->j:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    :cond_2
    iput-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->f:Ljava/lang/String;

    .line 214
    iput-object p2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->j:Ljava/lang/String;

    .line 215
    iput-object v2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->k:Ljava/lang/String;

    .line 216
    iput-object p3, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->m:Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 219
    const-string v1, "COLD_START_PRIME_INFO/FIRST_FETCH_STRING"

    iget-object v2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 220
    const-string v1, "COLD_START_PRIME_INFO/USER_AGENT"

    iget-object v2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->j:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 221
    const-string v1, "COLD_START_PRIME_INFO/USER_ID"

    iget-object v2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->k:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 222
    const-string v1, "COLD_START_PRIME_INFO/HOST_NAME"

    iget-object v2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->m:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 223
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 179
    :cond_3
    iput-object v4, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->f:Ljava/lang/String;

    goto/16 :goto_0

    .line 194
    :cond_4
    const-string v0, "ColdStartPrimingInformation"

    const-string v1, "Fail to match request id pattern!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iput-object v4, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->f:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public final a(Z)V
    .locals 9

    .prologue
    .line 320
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->a()Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->b(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v6, v0, v2

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->k()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->l:Ljava/lang/String;

    .line 331
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->f:Ljava/lang/String;

    const-string v1, "CURSOR_BOOKMARK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "%22"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%22"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "REQUEST_ID_BOOKMARK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "%22"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%22"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 340
    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    iget-object v5, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->j:Ljava/lang/String;

    iget-object v8, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->m:Ljava/lang/String;

    invoke-static/range {v0 .. v8}, Lcom/facebook/common/udppriming/client/UDPPacketSender;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)I

    move-result v1

    .line 344
    if-lez v1, :cond_0

    const/16 v2, 0x5c0

    if-gt v1, v2, :cond_0

    .line 345
    iput-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->e:Ljava/lang/String;

    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->q:Z

    .line 349
    if-eqz p1, :cond_0

    .line 351
    invoke-direct {p0}, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->j()V

    goto/16 :goto_0
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 385
    const-string v0, "COLD_START_PRIMING_INFO_STORAGE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;

    .line 386
    iput-object p1, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->d:Landroid/content/Context;

    .line 387
    invoke-direct {p0}, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->h()Z

    move-result v0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 433
    invoke-virtual {p0, p1}, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->o:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->a()Lcom/facebook/common/udppriming/client/EncryptChannelInformation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/common/udppriming/client/EncryptChannelInformation;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->a()Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/common/udppriming/client/UDPPrimingDNSInfo;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->b(Z)V

    .line 439
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->n:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v0, v1, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->n:Z

    .line 282
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 284
    const-string v1, "COLD_START_PRIME_INFO/COLD_START_ADVANCE_PRIME_ENABLED"

    iget-boolean v2, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->n:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 285
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->q:Z

    return v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->q:Z

    .line 150
    return-void
.end method

.method public final e()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 156
    iget-boolean v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    move v0, v1

    .line 161
    :goto_0
    iget-boolean v3, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->n:Z

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 156
    goto :goto_0

    :cond_1
    move v1, v2

    .line 161
    goto :goto_1
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 452
    invoke-direct {p0}, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    invoke-direct {p0}, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->i()V

    .line 458
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->q:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->n:Z

    if-eqz v0, :cond_1

    .line 459
    invoke-static {}, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->a()Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/common/udppriming/client/ColdStartPrimingInformation;->b(Z)V

    .line 461
    :cond_1
    return-void
.end method
