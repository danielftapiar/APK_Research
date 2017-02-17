.class public final Lcom/facebook/common/dextricks/DexLibLoader;
.super Ljava/lang/Object;
.source "DexLibLoader.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StringFormatUse",
        "BadMethodUse-android.util.Log.v",
        "BadMethodUse-android.util.Log.d",
        "BadMethodUse-android.util.Log.i",
        "BadMethodUse-android.util.Log.w",
        "BadMethodUse-android.util.Log.e"
    }
.end annotation


# static fields
.field private static a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/common/dextricks/DexLibLoader;->a:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    return-void
.end method

.method private static a(Lcom/facebook/common/dextricks/DexLibLoader$ResProvider;Ljava/lang/String;)I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 920
    invoke-virtual {p0, p1}, Lcom/facebook/common/dextricks/DexLibLoader$ResProvider;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 921
    :try_start_0
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 922
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 923
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 924
    const/4 v1, 0x0

    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 925
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 926
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-result v0

    .line 927
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 928
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 929
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_0
    return v0

    .line 922
    :catch_0
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 927
    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_0
    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :goto_1
    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 921
    :catch_1
    move-exception v0

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 928
    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_2
    if-eqz v1, :cond_3

    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :goto_3
    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 920
    :catch_2
    move-exception v0

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 929
    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    if-eqz v3, :cond_1

    if-eqz v2, :cond_4

    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    :cond_1
    :goto_5
    throw v0

    .line 927
    :catch_3
    move-exception v5

    :try_start_d
    invoke-static {v1, v5}, Lcom/facebook/androidcompat/AndroidCompat;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 928
    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 927
    :cond_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_1

    .line 928
    :catch_4
    move-exception v4

    :try_start_e
    invoke-static {v1, v4}, Lcom/facebook/androidcompat/AndroidCompat;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 929
    :catchall_4
    move-exception v0

    goto :goto_4

    .line 928
    :cond_3
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_3

    .line 929
    :catch_5
    move-exception v1

    invoke-static {v2, v1}, Lcom/facebook/androidcompat/AndroidCompat;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_5

    .line 927
    :catchall_5
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/File;I)I
    .locals 7

    .prologue
    const v1, 0x8000

    const/4 v0, 0x0

    .line 945
    new-array v2, v1, [B

    .line 947
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    .line 948
    :goto_0
    if-lez p2, :cond_0

    .line 949
    const/4 v4, 0x0

    const v5, 0x8000

    :try_start_0
    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p0, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 950
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 951
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 954
    sub-int/2addr p2, v4

    .line 955
    add-int/2addr v0, v4

    .line 956
    goto :goto_0

    .line 957
    :cond_0
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 958
    return v0

    .line 947
    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 957
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    throw v0

    :catch_1
    move-exception v2

    invoke-static {v1, v2}, Lcom/facebook/androidcompat/AndroidCompat;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)J
    .locals 2

    .prologue
    .line 549
    const-string v0, "mdex_state"

    invoke-static {p0, v0}, Lcom/facebook/common/dextricks/DexLibLoader;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 550
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 551
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 554
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Z)Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;
    .locals 2

    .prologue
    .line 1832
    const-class v1, Lcom/facebook/common/dextricks/DexLibLoader;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/facebook/base/lwperf/DummyLightweightPerfEventsTracer;

    invoke-direct {v0}, Lcom/facebook/base/lwperf/DummyLightweightPerfEventsTracer;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/facebook/common/dextricks/DexLibLoader;->a(Landroid/content/Context;ZLcom/facebook/base/lwperf/LightweightPerfEventsTracer;)Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;ZLcom/facebook/base/lwperf/LightweightPerfEventsTracer;)Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;
    .locals 6

    .prologue
    .line 1807
    const-class v1, Lcom/facebook/common/dextricks/DexLibLoader;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 1809
    :try_start_1
    invoke-static {p0, p1, p2}, Lcom/facebook/common/dextricks/DexLibLoader;->b(Landroid/content/Context;ZLcom/facebook/base/lwperf/LightweightPerfEventsTracer;)Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1813
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 1814
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DexLibLoader.loadAll took "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1815
    monitor-exit v1

    return-object v0

    .line 1810
    :catch_0
    move-exception v0

    .line 1811
    :try_start_3
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1813
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 1814
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DexLibLoader.loadAll took "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1815
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1807
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Lcom/facebook/common/dextricks/DexLibLoader$ResProvider;)Lcom/facebook/common/dextricks/DexLibLoader$ParsedDexMetadata;
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 445
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 447
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v5, "metadata.txt"

    invoke-virtual {p0, v5}, Lcom/facebook/common/dextricks/DexLibLoader$ResProvider;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-direct {v0, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move v0, v1

    .line 454
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 455
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 456
    const-string v6, ".root_relative"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v2

    .line 461
    goto :goto_0

    .line 464
    :cond_1
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 466
    aget-object v6, v5, v1

    .line 467
    aget-object v7, v5, v2

    .line 468
    const/4 v8, 0x2

    aget-object v5, v5, v8

    .line 471
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 477
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_2

    const-string v8, ".dex"

    invoke-virtual {v6, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 478
    :cond_2
    new-instance v8, Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;

    invoke-direct {v8, v6, v7, v5, v1}, Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 484
    :cond_3
    new-instance v2, Lcom/facebook/common/dextricks/DexLibLoader$ParsedDexMetadata;

    invoke-direct {v2, v1}, Lcom/facebook/common/dextricks/DexLibLoader$ParsedDexMetadata;-><init>(B)V

    .line 485
    iput-object v3, v2, Lcom/facebook/common/dextricks/DexLibLoader$ParsedDexMetadata;->a:Ljava/util/ArrayList;

    .line 486
    iput-boolean v0, v2, Lcom/facebook/common/dextricks/DexLibLoader$ParsedDexMetadata;->b:Z

    .line 487
    return-object v2
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 1192
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a()Ljava/lang/RuntimeException;
    .locals 2

    .prologue
    .line 1228
    const/4 v0, 0x0

    .line 1230
    :try_start_0
    sget-object v1, Lcom/facebook/common/dextricks/DexLibLoader;->a:Ljava/util/Collection;

    invoke-static {v1}, Lcom/facebook/common/dextricks/DexLibLoader;->a(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1234
    :goto_0
    return-object v0

    .line 1231
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 631
    const-string v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".odex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 637
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 664
    :goto_0
    return-object v0

    .line 642
    :cond_0
    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 644
    const-string v1, "arm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 645
    const-string v0, "arm"

    .line 652
    :goto_1
    const-string v1, "ANDROID_DATA"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 653
    if-nez v1, :cond_1

    .line 654
    const-string v1, "/data"

    .line 657
    :cond_1
    const-string v2, "%s/dalvik-cache/%s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 660
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    .line 661
    const-string v0, "%s/dalvik-cache"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 664
    :cond_2
    const-string v1, "%s/%s@classes.dex"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "/"

    const-string v4, "@"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 646
    :cond_3
    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "i"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 647
    :cond_4
    const-string v0, "x86"

    goto :goto_1

    .line 649
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknown arch: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static a(Landroid/content/Context;B)V
    .locals 2

    .prologue
    .line 532
    const-string v0, "mdex_state"

    invoke-static {p0, v0}, Lcom/facebook/common/dextricks/DexLibLoader;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 533
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 535
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write(I)V

    .line 536
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 537
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    invoke-static {v1}, Lcom/facebook/common/dextricks/DexLibLoader;->b(Ljava/io/Closeable;)V

    .line 540
    return-void

    .line 539
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/facebook/common/dextricks/DexLibLoader;->b(Ljava/io/Closeable;)V

    throw v0
.end method

.method private static a(Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 426
    const-string v0, "DexLibLoader"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    return-void
.end method

.method private static a(Lcom/facebook/common/dextricks/DexLibLoader$ResProvider;Ljava/util/ArrayList;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/dextricks/DexLibLoader$ResProvider;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 853
    invoke-static {p0, p1, p2}, Lcom/facebook/common/dextricks/DexLibLoader;->b(Lcom/facebook/common/dextricks/DexLibLoader$ResProvider;Ljava/util/ArrayList;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 854
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;

    .line 855
    invoke-static {v0, p2}, Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;->a(Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 856
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 857
    invoke-static {v0}, Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;->b(Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/facebook/common/dextricks/DexLibLoader$ResProvider;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 858
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    goto :goto_0

    .line 862
    :cond_1
    return-void
.end method

.method static synthetic a(Ljava/io/Closeable;)V
    .locals 0

    .prologue
    .line 113
    invoke-static {p0}, Lcom/facebook/common/dextricks/DexLibLoader;->b(Ljava/io/Closeable;)V

    return-void
.end method

.method private static a(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 823
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/dalvik/DalvikInternals;->deleteRecursive(Ljava/lang/String;)V

    .line 824
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/File;)V
    .locals 5

    .prologue
    .line 1097
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1098
    const-string v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1099
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1100
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1101
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".odex"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1104
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1107
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/facebook/dalvik/DalvikInternals;->link(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1112
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1114
    :try_start_1
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1116
    new-instance v2, Ljava/util/zip/ZipEntry;

    const-string v3, "META-INF/MANIFEST.MF"

    invoke-direct {v2, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 1117
    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 1118
    const-string v0, "Manifest-Version: 1.0"

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1119
    const-string v0, "Created-By: DexLibLoader"

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1120
    invoke-virtual {v2}, Ljava/io/PrintStream;->flush()V

    .line 1121
    invoke-virtual {v2}, Ljava/io/PrintStream;->close()V

    .line 1122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "truncated "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1124
    :try_start_2
    invoke-static {v1}, Lcom/facebook/common/dextricks/DexLibLoader;->b(Ljava/io/Closeable;)V

    .line 1133
    :cond_0
    :goto_0
    return-void

    .line 1124
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/facebook/common/dextricks/DexLibLoader;->b(Ljava/io/Closeable;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1128
    :catch_0
    move-exception v0

    .line 1129
    const-string v1, "DexLibLoader"

    const-string v2, "failed to truncate dex"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 996
    const-string v0, "dexopthook"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->b(Ljava/lang/String;)Ljava/io/File;

    .line 998
    new-instance v0, Ljava/lang/ProcessBuilder;

    new-array v1, v5, [Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "odexdeps"

    invoke-static {v2}, Lcom/facebook/soloader/SoLoader;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "compile"

    aput-object v2, v1, v6

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    .line 1008
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1012
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/dextricks/DexLibLoader;->b(Ljava/io/Closeable;)V

    .line 1013
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1018
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1019
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1023
    :catch_0
    move-exception v0

    .line 1025
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 1026
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1029
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/common/dextricks/DexLibLoader;->b(Ljava/io/Closeable;)V

    .line 1030
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 1035
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1038
    throw v0

    .line 1022
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    .line 1029
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/common/dextricks/DexLibLoader;->b(Ljava/io/Closeable;)V

    .line 1030
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 1031
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 1035
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1042
    if-eqz v0, :cond_3

    .line 1043
    const-string v1, "odexdeps failed with status %s. Output lines:"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1046
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1047
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " [%s]"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1048
    goto :goto_1

    .line 1036
    :catch_1
    move-exception v0

    .line 1037
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1038
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1036
    :catch_2
    move-exception v0

    .line 1037
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1038
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1050
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1052
    :cond_3
    return-void
.end method

.method private static a(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1244
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;

    .line 1246
    :try_start_0
    invoke-static {v0}, Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;->c(Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1247
    :catch_0
    move-exception v0

    .line 1248
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1250
    :cond_0
    return-void
.end method

.method private static a(Ljava/util/Collection;Ljava/io/File;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 681
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 682
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;

    .line 683
    invoke-static {v0}, Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;->a(Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 686
    :cond_0
    const-string v0, "program-([0-9a-f]+)\\.(?:dex\\.jar|dex\\.o?dex)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 689
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_4

    aget-object v5, v3, v0

    .line 690
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 691
    invoke-virtual {v2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 692
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-nez v7, :cond_1

    .line 693
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected file during pruning: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 699
    :cond_1
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 700
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_2

    .line 701
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "could not delete \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 705
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "deleted obsolete file \""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 709
    :cond_4
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;Ljava/util/HashSet;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 579
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 580
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_4

    aget-object v6, v4, v2

    .line 581
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 583
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 584
    const-string v2, "DexLibLoader"

    const-string v3, "unexpected subdir \"%s\" in \"%s\""

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v7, v4, v0

    aput-object p0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :goto_1
    return v0

    .line 589
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 591
    new-array v6, v9, [Ljava/lang/Object;

    aput-object v7, v6, v0

    aput-object p0, v6, v1

    .line 580
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 596
    :cond_1
    invoke-virtual {p1, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 597
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-nez v8, :cond_2

    .line 598
    const-string v2, "DexLibLoader"

    const-string v3, "unexpected file \"%s\" in \"%s\""

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v7, v4, v0

    aput-object p0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 603
    :cond_2
    invoke-virtual {v6, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 604
    const-string v2, "DexLibLoader"

    const-string v3, "stale file \"%s\" in \"%s\""

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v7, v4, v0

    aput-object p0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 609
    :cond_3
    new-array v6, v9, [Ljava/lang/Object;

    aput-object p0, v6, v0

    aput-object v7, v6, v1

    goto :goto_2

    .line 613
    :cond_4
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 614
    const-string v2, "DexLibLoader"

    const-string v4, "directory \"%s\" missing hashes %s"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p0, v5, v0

    aput-object v3, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 619
    :cond_5
    new-array v2, v1, [Ljava/lang/Object;

    aput-object p0, v2, v0

    move v0, v1

    .line 620
    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/io/File;)Z
    .locals 5

    .prologue
    .line 769
    invoke-static {p0}, Lcom/facebook/common/dextricks/DexLibLoader;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 770
    invoke-static {v0}, Lcom/facebook/dalvik/DalvikInternals;->readOdexDepBlock(Ljava/lang/String;)[B

    .line 771
    invoke-static {v0}, Lcom/facebook/dalvik/DalvikInternals;->readOdexDepBlock(Ljava/lang/String;)[B

    move-result-object v0

    .line 773
    new-instance v1, Ljava/io/File;

    const-string v2, "primary_deps"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 776
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 778
    :try_start_0
    array-length v1, v0

    new-array v1, v1, [B

    .line 779
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 780
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 782
    :cond_0
    invoke-static {v2}, Lcom/facebook/common/dextricks/DexLibLoader;->b(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    .line 789
    :goto_0
    return v0

    .line 782
    :cond_1
    invoke-static {v2}, Lcom/facebook/common/dextricks/DexLibLoader;->b(Ljava/io/Closeable;)V

    .line 789
    const/4 v0, 0x1

    goto :goto_0

    .line 786
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/facebook/common/dextricks/DexLibLoader;->b(Ljava/io/Closeable;)V

    throw v0
.end method

.method private static a(Ljava/util/Collection;Ljava/io/File;Ljava/io/File;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;",
            ">;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 726
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 728
    :cond_0
    const-string v0, "DexLibLoader"

    const-string v2, "dex or odex directory does not exist: regenerating odex files"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 737
    :goto_0
    return v0

    .line 732
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 733
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;

    .line 734
    invoke-static {v0}, Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;->a(Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 737
    :cond_2
    const-string v0, "program-([0-9a-f]+)\\.dex\\.jar$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v3, "program-([0-9a-f]+)\\.dex\\.odex$"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-static {p1, v0, v3, v2}, Lcom/facebook/common/dextricks/DexLibLoader;->a(Ljava/io/File;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;Ljava/util/HashSet;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "program-([0-9a-f]+)\\.dex\\.dex$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "primary_deps"

    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-static {p2, v0, v3, v2}, Lcom/facebook/common/dextricks/DexLibLoader;->a(Ljava/io/File;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;Ljava/util/HashSet;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;ZLcom/facebook/base/lwperf/LightweightPerfEventsTracer;)Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;
    .locals 13

    .prologue
    .line 1304
    new-instance v3, Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

    invoke-direct {v3}, Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;-><init>()V

    .line 1312
    new-instance v0, Lcom/facebook/common/dextricks/DexLibPaths;

    new-instance v1, Lcom/facebook/common/dextricks/DexLibLoader$1;

    invoke-direct {v1, p0}, Lcom/facebook/common/dextricks/DexLibLoader$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/facebook/common/dextricks/DexLibPaths;-><init>(Lcom/facebook/common/dextricks/DexLibPaths$PathTransformer;)V

    .line 1320
    invoke-virtual {v0}, Lcom/facebook/common/dextricks/DexLibPaths;->a()Ljava/io/File;

    move-result-object v6

    .line 1321
    invoke-virtual {v0}, Lcom/facebook/common/dextricks/DexLibPaths;->b()Ljava/io/File;

    move-result-object v7

    .line 1322
    invoke-virtual {p0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v8

    .line 1330
    const/4 v0, 0x1

    .line 1332
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    .line 1333
    const/4 v0, 0x0

    .line 1337
    :cond_0
    const/4 v5, 0x1

    .line 1339
    new-instance v9, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;

    invoke-direct {v9}, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;-><init>()V

    .line 1341
    const-string v1, "com.facebook."

    invoke-virtual {v9, v1}, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->a(Ljava/lang/String;)V

    .line 1342
    const-string v1, "com.fasterxml."

    invoke-virtual {v9, v1}, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->a(Ljava/lang/String;)V

    .line 1344
    const-string v1, "java.boot.class.path"

    const-string v2, ""

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "core-libart.jar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1346
    const/4 v0, 0x0

    .line 1356
    const/4 v5, 0x0

    .line 1367
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/facebook/dalvik/DalvikInternals;->noop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1378
    invoke-static {p0}, Lcom/facebook/common/dextricks/DexLibLoader;->e(Landroid/content/Context;)Lcom/facebook/soloader/FileLocker;

    move-result-object v10

    .line 1379
    const/4 v1, 0x0

    .line 1383
    :try_start_1
    invoke-static {p0, p1}, Lcom/facebook/common/dextricks/DexLibLoader;->b(Landroid/content/Context;Z)Lcom/facebook/common/dextricks/DexLibLoader$ResProvider;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    move-result-object v2

    .line 1384
    if-nez v2, :cond_3

    .line 1386
    if-eqz v2, :cond_2

    .line 1783
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/DexLibLoader$ResProvider;->close()V

    .line 1786
    :cond_2
    invoke-virtual {v10}, Lcom/facebook/soloader/FileLocker;->close()V

    .line 1787
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1368
    :catch_0
    move-exception v0

    .line 1369
    new-instance v1, Lcom/facebook/common/dextricks/DexLibLoader$NativeCodeBrokenException;

    invoke-direct {v1, v0}, Lcom/facebook/common/dextricks/DexLibLoader$NativeCodeBrokenException;-><init>(Ljava/lang/Throwable;)V

    .line 1370
    const-string v0, "DexLibLoader"

    const-string v2, "Facebook applications require the ability to run native code"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1371
    throw v1

    .line 1389
    :cond_3
    :try_start_2
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/DexLibLoader$ResProvider;->b()Z

    move-result v1

    if-nez v1, :cond_21

    .line 1390
    const/4 v1, 0x0

    .line 1393
    :goto_1
    invoke-static {v2}, Lcom/facebook/common/dextricks/DexLibLoader;->a(Lcom/facebook/common/dextricks/DexLibLoader$ResProvider;)Lcom/facebook/common/dextricks/DexLibLoader$ParsedDexMetadata;

    move-result-object v0

    .line 1394
    iget-object v11, v0, Lcom/facebook/common/dextricks/DexLibLoader$ParsedDexMetadata;->a:Ljava/util/ArrayList;

    .line 1395
    iget-boolean v0, v0, Lcom/facebook/common/dextricks/DexLibLoader$ParsedDexMetadata;->b:Z

    if-eqz v0, :cond_20

    .line 1396
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/DexLibLoader$ResProvider;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    .line 1398
    const/4 v2, 0x0

    .line 1400
    :try_start_3
    new-instance v4, Lcom/facebook/common/dextricks/DexLibLoader$ApkRootResProvider;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/facebook/common/dextricks/DexLibLoader$ApkRootResProvider;-><init>(Landroid/content/Context;B)V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1423
    :goto_2
    :try_start_4
    invoke-static {p0}, Lcom/facebook/common/dextricks/DexLibLoader;->c(Landroid/content/Context;)B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    .line 1424
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    if-nez v1, :cond_4

    .line 1427
    const/4 v0, 0x0

    .line 1430
    :cond_4
    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    .line 1433
    const/4 v0, 0x0

    .line 1434
    const/4 v1, 0x0

    .line 1437
    :cond_5
    const/4 v2, 0x0

    .line 1439
    :try_start_5
    const-string v12, "DLL_checkstate"

    invoke-interface {p2, v12}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->a(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1441
    if-eqz v0, :cond_a

    :try_start_6
    invoke-static {v11, v6, v7}, Lcom/facebook/common/dextricks/DexLibLoader;->a(Ljava/util/Collection;Ljava/io/File;Ljava/io/File;)Z

    move-result v12

    if-eqz v12, :cond_a

    const/4 v12, 0x4

    if-eq v0, v12, :cond_6

    invoke-static {v8, v7}, Lcom/facebook/common/dextricks/DexLibLoader;->a(Ljava/lang/String;Ljava/io/File;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result v2

    if-eqz v2, :cond_a

    :cond_6
    const/4 v2, 0x1

    .line 1451
    :goto_3
    :try_start_7
    const-string v12, "DLL_checkstate"

    invoke-interface {p2, v12}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->b(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1473
    :goto_4
    :try_start_8
    invoke-static {p0}, Lcom/facebook/common/dextricks/DexLibLoader;->d(Landroid/content/Context;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1475
    if-eqz v2, :cond_e

    .line 1476
    const/4 v1, 0x0

    .line 1478
    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    const/4 v2, 0x4

    if-ne v0, v2, :cond_b

    .line 1494
    :cond_7
    :goto_5
    :try_start_9
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;

    .line 1495
    invoke-static {v0, v6}, Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;->a(Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 1496
    invoke-virtual {v9, v0, v7}, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->a(Ljava/io/File;Ljava/io/File;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_6

    .line 1508
    :catchall_0
    move-exception v0

    if-nez v1, :cond_8

    .line 1522
    const/4 v1, 0x0

    :try_start_a
    invoke-static {p0, v1}, Lcom/facebook/common/dextricks/DexLibLoader;->a(Landroid/content/Context;B)V

    :cond_8
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1782
    :catchall_1
    move-exception v0

    move-object v1, v4

    :goto_7
    if-eqz v1, :cond_9

    .line 1783
    invoke-virtual {v1}, Lcom/facebook/common/dextricks/DexLibLoader$ResProvider;->close()V

    .line 1786
    :cond_9
    invoke-virtual {v10}, Lcom/facebook/soloader/FileLocker;->close()V

    .line 1787
    throw v0

    .line 1401
    :catch_1
    move-exception v0

    .line 1402
    :try_start_b
    const-string v4, "DexLibLoader"

    const-string v12, "could not use fast extraction from APK root; treating APK as ZIP"

    invoke-static {v4, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1404
    new-instance v4, Lcom/facebook/common/dextricks/DexLibLoader$ZipResProvider;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v4, v0, v12}, Lcom/facebook/common/dextricks/DexLibLoader$ZipResProvider;-><init>(Ljava/lang/String;B)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_2

    .line 1782
    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_7

    .line 1441
    :cond_a
    const/4 v2, 0x0

    goto :goto_3

    .line 1451
    :catchall_3
    move-exception v0

    :try_start_c
    const-string v12, "DLL_checkstate"

    invoke-interface {p2, v12}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->b(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1471
    :catch_2
    move-exception v0

    .line 1464
    :try_start_d
    const-string v12, "checking current odex state failed, falling back to normal"

    invoke-static {v3, v12, v0}, Lcom/facebook/common/dextricks/DexLibLoader;->a(Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1470
    const/4 v0, 0x0

    goto :goto_4

    .line 1482
    :cond_b
    :try_start_e
    invoke-static {}, Lcom/facebook/dalvik/DalvikInternals;->fixDvmForCrossDexHack()V

    goto :goto_5

    .line 1499
    :cond_c
    invoke-static {}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->a()Lcom/facebook/common/dextricks/MultiDexClassLoader;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->a(Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;)V

    .line 1502
    sput-object v11, Lcom/facebook/common/dextricks/DexLibLoader;->a:Ljava/util/Collection;

    .line 1504
    const/4 v1, 0x1

    .line 1505
    const/4 v0, 0x0

    iput-boolean v0, v3, Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;->c:Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1508
    if-eqz v4, :cond_d

    .line 1783
    invoke-virtual {v4}, Lcom/facebook/common/dextricks/DexLibLoader$ResProvider;->close()V

    .line 1786
    :cond_d
    invoke-virtual {v10}, Lcom/facebook/soloader/FileLocker;->close()V

    move-object v0, v3

    .line 1787
    goto/16 :goto_0

    .line 1540
    :cond_e
    const/4 v2, 0x1

    :try_start_f
    iput-boolean v2, v3, Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;->c:Z

    .line 1541
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/facebook/common/dextricks/DexLibLoader;->a(Landroid/content/Context;B)V

    .line 1558
    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v12, "armeabi"

    invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    const-string v12, "armeabi"

    invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    :cond_f
    new-instance v2, Ljava/io/File;

    const-string v12, "/system/lib/libhoudini.so"

    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1562
    const/4 v2, 0x0

    .line 1564
    const/4 v1, 0x0

    .line 1567
    :goto_8
    if-nez v2, :cond_10

    const/4 v5, 0x1

    if-eq v0, v5, :cond_14

    const/4 v5, 0x4

    if-eq v0, v5, :cond_14

    :cond_10
    const/4 v0, 0x1

    .line 1572
    :goto_9
    if-nez v0, :cond_1e

    .line 1573
    const-string v5, "DLL_prunestate"

    invoke-interface {p2, v5}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->a(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1576
    :try_start_10
    invoke-static {v6}, Lcom/facebook/common/dextricks/DexLibLoader;->b(Ljava/io/File;)V

    .line 1578
    invoke-static {v7}, Lcom/facebook/common/dextricks/DexLibLoader;->b(Ljava/io/File;)V

    .line 1579
    invoke-static {v11, v6}, Lcom/facebook/common/dextricks/DexLibLoader;->a(Ljava/util/Collection;Ljava/io/File;)V

    .line 1580
    invoke-static {v11, v7}, Lcom/facebook/common/dextricks/DexLibLoader;->a(Ljava/util/Collection;Ljava/io/File;)V

    .line 1581
    const-string v5, "DLL_extract"

    invoke-interface {p2, v5}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->a(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 1583
    :try_start_11
    invoke-static {v4, v11, v6}, Lcom/facebook/common/dextricks/DexLibLoader;->a(Lcom/facebook/common/dextricks/DexLibLoader$ResProvider;Ljava/util/ArrayList;Ljava/io/File;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 1585
    :try_start_12
    const-string v5, "DLL_extract"

    invoke-interface {p2, v5}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->b(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 1592
    :goto_a
    :try_start_13
    const-string v5, "DLL_prunestate"

    invoke-interface {p2, v5}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->b(Ljava/lang/String;)V

    move v5, v0

    .line 1596
    :goto_b
    const/4 v0, 0x0

    .line 1598
    if-eqz v5, :cond_1d

    .line 1599
    const-string v5, "DLL_clearstate"

    invoke-interface {p2, v5}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->a(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 1603
    :try_start_14
    invoke-static {v6}, Lcom/facebook/common/dextricks/DexLibLoader;->a(Ljava/io/File;)V

    .line 1604
    invoke-static {v7}, Lcom/facebook/common/dextricks/DexLibLoader;->a(Ljava/io/File;)V

    .line 1605
    invoke-static {v6}, Lcom/facebook/common/dextricks/DexLibLoader;->b(Ljava/io/File;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 1607
    :try_start_15
    const-string v5, "DLL_clearstate"

    invoke-interface {p2, v5}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->b(Ljava/lang/String;)V

    .line 1610
    const-string v5, "DLL_extract"

    invoke-interface {p2, v5}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->a(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 1612
    :try_start_16
    invoke-static {v4, v11, v6}, Lcom/facebook/common/dextricks/DexLibLoader;->a(Lcom/facebook/common/dextricks/DexLibLoader$ResProvider;Ljava/util/ArrayList;Ljava/io/File;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    .line 1614
    :try_start_17
    const-string v5, "DLL_extract"

    invoke-interface {p2, v5}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->b(Ljava/lang/String;)V

    .line 1624
    invoke-static {v7}, Lcom/facebook/common/dextricks/DexLibLoader;->b(Ljava/io/File;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 1625
    if-eqz v2, :cond_1d

    .line 1633
    :try_start_18
    invoke-static {v8, v7}, Lcom/facebook/common/dextricks/DexLibLoader;->b(Ljava/lang/String;Ljava/io/File;)V

    .line 1635
    const/4 v0, 0x1

    .line 1638
    const-string v5, "DLL_odexdeps"

    invoke-interface {p2, v5}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->a(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_4
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 1640
    :try_start_19
    invoke-static {v8, v6, v7}, Lcom/facebook/common/dextricks/DexLibLoader;->a(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    .line 1646
    :try_start_1a
    const-string v5, "DLL_odexdeps"

    invoke-interface {p2, v5}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->b(Ljava/lang/String;)V

    .line 1657
    invoke-static {}, Lcom/facebook/dalvik/DalvikInternals;->fixDvmForCrossDexHack()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_4
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    move v5, v2

    move v2, v0

    .line 1670
    :goto_c
    :try_start_1b
    invoke-virtual {v4}, Lcom/facebook/common/dextricks/DexLibLoader$ResProvider;->a()Z
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    move-result v0

    if-nez v0, :cond_1c

    .line 1673
    const/4 v0, 0x0

    .line 1682
    :goto_d
    if-eqz v0, :cond_11

    if-nez v2, :cond_11

    .line 1683
    :try_start_1c
    invoke-static {v8, v7}, Lcom/facebook/common/dextricks/DexLibLoader;->b(Ljava/lang/String;Ljava/io/File;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_5
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    :cond_11
    move v1, v0

    .line 1691
    :goto_e
    if-eqz v5, :cond_15

    :try_start_1d
    const-string v0, "DLL_load_xdex"

    :goto_f
    invoke-interface {p2, v0}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->a(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    .line 1700
    :try_start_1e
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;

    .line 1701
    invoke-static {v0, v6}, Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;->a(Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 1702
    invoke-virtual {v9, v0, v7}, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->a(Ljava/io/File;Ljava/io/File;)V

    .line 1703
    if-eqz v1, :cond_12

    .line 1704
    invoke-static {v0, v7}, Lcom/facebook/common/dextricks/DexLibLoader;->a(Ljava/io/File;Ljava/io/File;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    goto :goto_10

    .line 1755
    :catchall_4
    move-exception v0

    if-eqz v5, :cond_19

    :try_start_1f
    const-string v1, "DLL_load_xdex"

    :goto_11
    invoke-interface {p2, v1}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->b(Ljava/lang/String;)V

    .line 1754
    if-eqz v5, :cond_13

    .line 1755
    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/facebook/common/dextricks/DexLibLoader;->a(Landroid/content/Context;B)V

    :cond_13
    throw v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    .line 1567
    :cond_14
    const/4 v0, 0x0

    goto/16 :goto_9

    .line 1585
    :catchall_5
    move-exception v0

    :try_start_20
    const-string v5, "DLL_extract"

    invoke-interface {p2, v5}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->b(Ljava/lang/String;)V

    throw v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_3
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    .line 1590
    :catch_3
    move-exception v0

    .line 1588
    :try_start_21
    const-string v5, "DexLibLoader"

    const-string v12, "error pruning odexes: starting over"

    invoke-static {v5, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_6

    .line 1589
    const/4 v0, 0x1

    goto/16 :goto_a

    .line 1592
    :catchall_6
    move-exception v0

    :try_start_22
    const-string v1, "DLL_prunestate"

    invoke-interface {p2, v1}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->b(Ljava/lang/String;)V

    throw v0

    .line 1607
    :catchall_7
    move-exception v0

    const-string v1, "DLL_clearstate"

    invoke-interface {p2, v1}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->b(Ljava/lang/String;)V

    throw v0

    .line 1614
    :catchall_8
    move-exception v0

    const-string v1, "DLL_extract"

    invoke-interface {p2, v1}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->b(Ljava/lang/String;)V

    throw v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    .line 1646
    :catchall_9
    move-exception v0

    :try_start_23
    const-string v2, "DLL_odexdeps"

    invoke-interface {p2, v2}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->b(Ljava/lang/String;)V

    throw v0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_4
    .catchall {:try_start_23 .. :try_end_23} :catchall_1

    .line 1659
    :catch_4
    move-exception v0

    .line 1660
    :try_start_24
    const-string v2, "cross-dex optimization failed (falling back to normal)"

    invoke-static {v3, v2, v0}, Lcom/facebook/common/dextricks/DexLibLoader;->a(Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1662
    invoke-static {v7}, Lcom/facebook/common/dextricks/DexLibLoader;->a(Ljava/io/File;)V

    .line 1663
    invoke-static {v7}, Lcom/facebook/common/dextricks/DexLibLoader;->b(Ljava/io/File;)V

    .line 1664
    const/4 v2, 0x0

    .line 1665
    const/4 v0, 0x0

    move v5, v2

    move v2, v0

    goto/16 :goto_c

    .line 1686
    :catch_5
    move-exception v0

    .line 1687
    const-string v1, "DexLibLoader"

    const-string v2, "could not save primary odex dependency information: disabling truncation"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1688
    const/4 v0, 0x0

    move v1, v0

    goto :goto_e

    .line 1691
    :cond_15
    const-string v0, "DLL_load_fallback"
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    goto :goto_f

    .line 1708
    :cond_16
    :try_start_25
    invoke-static {}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->a()Lcom/facebook/common/dextricks/MultiDexClassLoader;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->a(Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;)V

    .line 1711
    sput-object v11, Lcom/facebook/common/dextricks/DexLibLoader;->a:Ljava/util/Collection;

    .line 1723
    invoke-static {v11}, Lcom/facebook/common/dextricks/DexLibLoader;->a(Ljava/util/Collection;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_4

    .line 1724
    if-eqz v5, :cond_18

    :try_start_26
    const-string v0, "DLL_load_xdex"

    :goto_12
    invoke-interface {p2, v0}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->b(Ljava/lang/String;)V

    .line 1766
    const-string v0, "DLL_fsync"

    invoke-interface {p2, v0}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->a(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1

    .line 1768
    :try_start_27
    invoke-static {v6}, Lcom/facebook/common/dextricks/DexLibLoader;->c(Ljava/io/File;)V

    .line 1769
    invoke-static {v7}, Lcom/facebook/common/dextricks/DexLibLoader;->c(Ljava/io/File;)V

    .line 1770
    if-eqz v5, :cond_1a

    const/4 v0, 0x2

    :goto_13
    invoke-static {p0, v0}, Lcom/facebook/common/dextricks/DexLibLoader;->a(Landroid/content/Context;B)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_a

    .line 1777
    :try_start_28
    const-string v0, "DLL_fsync"

    invoke-interface {p2, v0}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->b(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1

    .line 1782
    if-eqz v4, :cond_17

    .line 1783
    invoke-virtual {v4}, Lcom/facebook/common/dextricks/DexLibLoader$ResProvider;->close()V

    .line 1786
    :cond_17
    invoke-virtual {v10}, Lcom/facebook/soloader/FileLocker;->close()V

    move-object v0, v3

    .line 1787
    goto/16 :goto_0

    .line 1724
    :cond_18
    :try_start_29
    const-string v0, "DLL_load_fallback"

    goto :goto_12

    .line 1755
    :cond_19
    const-string v1, "DLL_load_fallback"

    goto/16 :goto_11

    .line 1770
    :cond_1a
    if-eqz v1, :cond_1b

    const/4 v0, 0x1

    goto :goto_13

    :cond_1b
    const/4 v0, 0x4

    goto :goto_13

    .line 1777
    :catchall_a
    move-exception v0

    const-string v1, "DLL_fsync"

    invoke-interface {p2, v1}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->b(Ljava/lang/String;)V

    throw v0
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_1

    .line 1782
    :catchall_b
    move-exception v0

    goto/16 :goto_7

    :catchall_c
    move-exception v0

    move-object v1, v2

    goto/16 :goto_7

    :cond_1c
    move v0, v1

    goto/16 :goto_d

    :cond_1d
    move v5, v2

    move v2, v0

    goto/16 :goto_c

    :cond_1e
    move v5, v0

    goto/16 :goto_b

    :cond_1f
    move v2, v1

    move v1, v5

    goto/16 :goto_8

    :cond_20
    move-object v4, v2

    goto/16 :goto_2

    :cond_21
    move v1, v0

    goto/16 :goto_1
.end method

.method private static b(Landroid/content/Context;Z)Lcom/facebook/common/dextricks/DexLibLoader$ResProvider;
    .locals 2

    .prologue
    .line 1154
    new-instance v0, Lcom/facebook/common/dextricks/DexLibLoader$ApkResProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/common/dextricks/DexLibLoader$ApkResProvider;-><init>(Landroid/content/Context;B)V

    .line 1156
    :try_start_0
    const-string v1, "metadata.txt"

    invoke-virtual {v0, v1}, Lcom/facebook/common/dextricks/DexLibLoader$ResProvider;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1171
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    .line 1161
    :goto_1
    if-eqz p1, :cond_0

    .line 1165
    new-instance v0, Lcom/facebook/common/dextricks/DexLibLoader$ExoPackageResProvider;

    invoke-direct {v0, p0}, Lcom/facebook/common/dextricks/DexLibLoader$ExoPackageResProvider;-><init>(Landroid/content/Context;)V

    .line 1167
    :try_start_1
    const-string v1, "metadata.txt"

    invoke-virtual {v0, v1}, Lcom/facebook/common/dextricks/DexLibLoader$ResProvider;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1171
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1159
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1843
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/common/dextricks/DexLibLoader;->a(Landroid/content/Context;B)V

    .line 1844
    return-void
.end method

.method private static b(Ljava/io/Closeable;)V
    .locals 4

    .prologue
    .line 169
    if-eqz p0, :cond_0

    .line 170
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    const-string v1, "DexLibLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error closing: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static b(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 833
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 834
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot mkdir: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 836
    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/io/File;)V
    .locals 3

    .prologue
    .line 804
    invoke-static {p0}, Lcom/facebook/common/dextricks/DexLibLoader;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 805
    invoke-static {v0}, Lcom/facebook/dalvik/DalvikInternals;->readOdexDepBlock(Ljava/lang/String;)[B

    move-result-object v0

    .line 806
    new-instance v1, Ljava/io/File;

    const-string v2, "primary_deps"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 808
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 810
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 811
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 813
    invoke-static {v2}, Lcom/facebook/common/dextricks/DexLibLoader;->b(Ljava/io/Closeable;)V

    .line 814
    return-void

    .line 813
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/facebook/common/dextricks/DexLibLoader;->b(Ljava/io/Closeable;)V

    throw v0
.end method

.method private static b(Lcom/facebook/common/dextricks/DexLibLoader$ResProvider;Ljava/util/ArrayList;Ljava/io/File;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/dextricks/DexLibLoader$ResProvider;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 880
    :try_start_0
    const-string v0, "secondary.dex.jar.xzs"

    invoke-virtual {p0, v0}, Lcom/facebook/common/dextricks/DexLibLoader$ResProvider;->a(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 884
    new-instance v3, Lcom/facebook/xzdecoder/XzInputStream;

    invoke-direct {v3, v0}, Lcom/facebook/xzdecoder/XzInputStream;-><init>(Ljava/io/InputStream;)V

    .line 886
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 887
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 890
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 891
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;

    .line 892
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;->b(Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".meta"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/facebook/common/dextricks/DexLibLoader;->a(Lcom/facebook/common/dextricks/DexLibLoader$ResProvider;Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 893
    invoke-static {v0, p2}, Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;->a(Lcom/facebook/common/dextricks/DexLibLoader$ProgramDexSpec;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 890
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 882
    :catch_0
    move-exception v0

    move v0, v1

    .line 907
    :goto_1
    return v0

    .line 897
    :cond_0
    add-int/lit8 v1, v1, 0x1

    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 898
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 899
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-static {v3, v0, v2}, Lcom/facebook/common/dextricks/DexLibLoader;->a(Ljava/io/InputStream;Ljava/io/File;I)I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 900
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "truncated xzs file"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 904
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 907
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private static c(Landroid/content/Context;)B
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 502
    const-string v1, "mdex_state"

    invoke-static {p0, v1}, Lcom/facebook/common/dextricks/DexLibLoader;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 504
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 511
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 514
    :goto_0
    int-to-byte v0, v0

    .line 516
    invoke-static {v2}, Lcom/facebook/common/dextricks/DexLibLoader;->b(Ljava/io/Closeable;)V

    :goto_1
    return v0

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/facebook/common/dextricks/DexLibLoader;->b(Ljava/io/Closeable;)V

    throw v0

    .line 506
    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static c(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 1062
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1063
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 1064
    invoke-static {v3}, Lcom/facebook/common/dextricks/DexLibLoader;->c(Ljava/io/File;)V

    .line 1063
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1066
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1073
    :cond_1
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v0, 0x1

    invoke-direct {v1, p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 1075
    :try_start_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1077
    invoke-static {v1}, Lcom/facebook/common/dextricks/DexLibLoader;->b(Ljava/io/Closeable;)V

    .line 1080
    :cond_2
    return-void

    .line 1077
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/facebook/common/dextricks/DexLibLoader;->b(Ljava/io/Closeable;)V

    throw v0
.end method

.method private static d(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 1210
    const-string v0, "filesystem_test"

    invoke-static {p0, v0}, Lcom/facebook/common/dextricks/DexLibLoader;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1211
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1213
    const/16 v2, 0x21

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 1214
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 1215
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V

    .line 1216
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1218
    invoke-static {v1}, Lcom/facebook/common/dextricks/DexLibLoader;->b(Ljava/io/Closeable;)V

    .line 1221
    invoke-static {v0}, Lcom/facebook/common/dextricks/DexLibLoader;->a(Ljava/io/File;)V

    .line 1222
    return-void

    .line 1218
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/facebook/common/dextricks/DexLibLoader;->b(Ljava/io/Closeable;)V

    throw v0
.end method

.method private static e(Landroid/content/Context;)Lcom/facebook/soloader/FileLocker;
    .locals 6

    .prologue
    .line 1819
    const-string v0, "mdex_lock"

    invoke-static {p0, v0}, Lcom/facebook/common/dextricks/DexLibLoader;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1820
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1821
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "about to lock: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1822
    invoke-static {v0}, Lcom/facebook/soloader/FileLocker;->a(Ljava/io/File;)Lcom/facebook/soloader/FileLocker;

    move-result-object v1

    .line 1823
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 1824
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "locking "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " took "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1825
    return-object v1
.end method
