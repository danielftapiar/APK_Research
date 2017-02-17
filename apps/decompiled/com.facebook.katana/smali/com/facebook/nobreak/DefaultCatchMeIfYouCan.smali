.class public Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;
.super Ljava/lang/Object;
.source "DefaultCatchMeIfYouCan.java"

# interfaces
.implements Lcom/facebook/nobreak/CatchMeIfYouCan;


# static fields
.field static final a:Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final c:Ljava/lang/String;


# instance fields
.field final b:Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final d:Landroid/app/Application;

.field private final e:Lcom/facebook/common/process/ProcessName;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private i:I

.field private j:J

.field private k:Z

.field private l:Z

.field private m:Landroid/app/PendingIntent;

.field private n:Lcom/facebook/nobreak/ResetHandler;

.field private final o:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const-class v0, Lcom/facebook/nobreak/CatchMeIfYouCan;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->c:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

    const-string v1, "default"

    invoke-direct {v0, v1}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->a:Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

    return-void
.end method

.method constructor <init>(Landroid/app/Application;[Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;)V
    .locals 2
    .param p2    # [Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object p1, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->d:Landroid/app/Application;

    .line 208
    invoke-static {p1}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->a(Landroid/content/Context;)Lcom/facebook/common/process/ProcessName;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->e:Lcom/facebook/common/process/ProcessName;

    .line 209
    const-string v0, "cmiyc"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Application;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->f:Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->e:Lcom/facebook/common/process/ProcessName;

    invoke-static {v0, v1}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->a(Ljava/lang/String;Lcom/facebook/common/process/ProcessName;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->g:Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->e:Lcom/facebook/common/process/ProcessName;

    invoke-static {v0, v1}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->b(Ljava/lang/String;Lcom/facebook/common/process/ProcessName;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->h:Ljava/lang/String;

    .line 214
    sget-object v0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Process ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->e:Lcom/facebook/common/process/ProcessName;

    invoke-virtual {v1}, Lcom/facebook/common/process/ProcessName;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") ca: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    sget-object v0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Process ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->e:Lcom/facebook/common/process/ProcessName;

    invoke-virtual {v1}, Lcom/facebook/common/process/ProcessName;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") fc: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    iget-object v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->e:Lcom/facebook/common/process/ProcessName;

    invoke-static {v0, p2}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->a(Lcom/facebook/common/process/ProcessName;[Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;)Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->b:Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

    .line 230
    sget-object v0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Process ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->e:Lcom/facebook/common/process/ProcessName;

    invoke-virtual {v1}, Lcom/facebook/common/process/ProcessName;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") cp: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->b:Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->o:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 240
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 241
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/common/process/ProcessName;
    .locals 4

    .prologue
    .line 426
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 428
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 431
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 435
    if-nez v0, :cond_0

    .line 436
    sget-object v0, Lcom/facebook/common/process/ProcessName;->a:Lcom/facebook/common/process/ProcessName;

    .line 466
    :goto_0
    return-object v0

    .line 439
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 440
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_1

    .line 441
    iget-object v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 442
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/common/process/ProcessName;->a(Ljava/lang/String;)Lcom/facebook/common/process/ProcessName;

    move-result-object v0

    goto :goto_0

    .line 454
    :cond_2
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    const-string v2, "/proc/self/cmdline"

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    invoke-static {v0}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->a(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 461
    if-eqz v0, :cond_3

    .line 462
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/process/ProcessName;->a(Ljava/lang/String;)Lcom/facebook/common/process/ProcessName;

    move-result-object v0

    goto :goto_0

    .line 456
    :catch_0
    move-exception v0

    sget-object v0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Did not find process name for process with pid = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/common/process/ProcessName;->a(Ljava/lang/String;)Lcom/facebook/common/process/ProcessName;

    move-result-object v0

    goto :goto_0

    .line 465
    :cond_3
    sget-object v0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Did not find process name for process with pid = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    sget-object v0, Lcom/facebook/common/process/ProcessName;->a:Lcom/facebook/common/process/ProcessName;

    goto :goto_0
.end method

.method private static a(Lcom/facebook/common/process/ProcessName;[Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;)Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;
    .locals 3

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/facebook/common/process/ProcessName;->a()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 413
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 414
    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/facebook/common/process/ProcessName;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    aget-object v0, p1, v0

    .line 419
    :goto_1
    return-object v0

    .line 413
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 419
    :cond_1
    sget-object v0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->a:Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

    goto :goto_1
.end method

.method private static a(Lcom/facebook/common/process/ProcessName;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/facebook/common/process/ProcessName;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    const-string v0, "undefined"

    invoke-static {v0}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/common/process/ProcessName;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/io/FileInputStream;)Ljava/lang/String;
    .locals 5
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 573
    .line 576
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 577
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 583
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 588
    :goto_0
    return-object v0

    .line 584
    :catch_0
    move-exception v1

    .line 585
    sget-object v2, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->c:Ljava/lang/String;

    const-string v3, "IOException on close"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 579
    :catch_1
    move-exception v1

    move-object v2, v0

    .line 580
    :goto_1
    :try_start_3
    sget-object v3, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->c:Ljava/lang/String;

    const-string v4, "IOException on readLine"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 583
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 584
    :catch_2
    move-exception v1

    .line 585
    sget-object v2, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->c:Ljava/lang/String;

    const-string v3, "IOException on close"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 582
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 583
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 586
    :goto_3
    throw v0

    .line 584
    :catch_3
    move-exception v1

    .line 585
    sget-object v2, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->c:Ljava/lang/String;

    const-string v3, "IOException on close"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 582
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 579
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 474
    :try_start_0
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 475
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 476
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 477
    array-length v4, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-byte v5, v2, v1

    .line 482
    const/4 v6, 0x0

    const-string v7, "%02X"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 484
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 490
    :goto_1
    return-object v0

    .line 485
    :catch_0
    move-exception v1

    .line 486
    sget-object v2, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->c:Ljava/lang/String;

    const-string v3, "Did not find support for SHA-1 algorithm"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 488
    :catch_1
    move-exception v1

    .line 489
    sget-object v2, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->c:Ljava/lang/String;

    const-string v3, "Did not find support for UTF-8 encoding"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Lcom/facebook/common/process/ProcessName;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->a(Lcom/facebook/common/process/ProcessName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a()V
    .locals 2

    .prologue
    .line 257
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :cond_0
    monitor-exit p0

    return-void

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(IJ)V
    .locals 4

    .prologue
    .line 510
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 513
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->g:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 514
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 515
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 516
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 520
    :goto_0
    monitor-exit p0

    return-void

    .line 517
    :catch_0
    move-exception v0

    .line 518
    :try_start_2
    sget-object v1, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->c:Ljava/lang/String;

    const-string v2, "IOException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 510
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 403
    sget-object v0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Uncaught exception in \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->e:Lcom/facebook/common/process/ProcessName;

    invoke-virtual {v2}, Lcom/facebook/common/process/ProcessName;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\':"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-static {p1}, Lcom/facebook/nobreak/NobreakUtils;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 405
    sget-object v4, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->c:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 407
    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/String;Lcom/facebook/common/process/ProcessName;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->a(Lcom/facebook/common/process/ProcessName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 367
    iget-object v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->b:Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

    iget-boolean v0, v0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->m:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->d:Landroid/app/Application;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 371
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    .line 372
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-ge v1, v4, :cond_1

    .line 373
    iget-object v1, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->m:Landroid/app/PendingIntent;

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 377
    :goto_0
    sget-object v0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Process ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->e:Lcom/facebook/common/process/ProcessName;

    invoke-virtual {v2}, Lcom/facebook/common/process/ProcessName;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is restarting..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-static {}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->d()V

    .line 381
    :cond_0
    return-void

    .line 375
    :cond_1
    iget-object v1, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->m:Landroid/app/PendingIntent;

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 273
    new-instance v0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$DependencyHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$DependencyHelper;-><init>(B)V

    invoke-static {p0}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$DependencyHelper;->a(Landroid/content/Context;)V

    .line 274
    return-void
.end method

.method private static c()J
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 385
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private static d()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 392
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 393
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 394
    return-void
.end method

.method private declared-synchronized e()V
    .locals 3

    .prologue
    .line 496
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 497
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    :goto_0
    monitor-exit p0

    return-void

    .line 498
    :catch_0
    move-exception v0

    .line 499
    :try_start_1
    sget-object v1, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->c:Ljava/lang/String;

    const-string v2, "IOException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 496
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()V
    .locals 4

    .prologue
    .line 523
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 570
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 527
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->k:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 532
    :try_start_2
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 542
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->l:Z

    .line 551
    iget-object v1, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->b:Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

    iget v1, v1, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;->b:I

    iput v1, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->i:I

    .line 552
    invoke-static {}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->c()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->j:J

    .line 554
    invoke-static {v0}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->a(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object v0

    .line 556
    if-eqz v0, :cond_0

    .line 557
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 558
    array-length v1, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 560
    const/4 v1, 0x0

    :try_start_4
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->i:I

    .line 561
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->j:J
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 565
    :catch_0
    move-exception v0

    :try_start_5
    iget-object v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->b:Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

    iget v0, v0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;->b:I

    iput v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->i:I

    .line 566
    invoke-static {}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->j:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 523
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 537
    :catch_1
    move-exception v0

    :try_start_6
    sget-object v0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "File \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' was not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->a(IJ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 309
    invoke-static {}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->c()J

    move-result-wide v0

    .line 311
    invoke-direct {p0}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->f()V

    .line 313
    invoke-direct {p0, p2}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->a(Ljava/lang/Throwable;)V

    .line 315
    iget-wide v2, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->j:J

    sub-long v2, v0, v2

    iget-object v4, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->b:Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

    iget-wide v4, v4, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;->c:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 317
    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->a(IJ)V

    .line 318
    invoke-direct {p0}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->b()V

    .line 337
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->b:Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

    iget-boolean v0, v0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;->d:Z

    if-eqz v0, :cond_5

    .line 342
    sget-object v0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Process ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->e:Lcom/facebook/common/process/ProcessName;

    invoke-virtual {v2}, Lcom/facebook/common/process/ProcessName;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is exiting..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-static {}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->d()V

    .line 349
    :cond_1
    :goto_1
    return-void

    .line 319
    :cond_2
    iget v2, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->i:I

    iget-object v3, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->b:Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

    iget v3, v3, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;->b:I

    if-lt v2, v3, :cond_4

    .line 322
    invoke-direct {p0}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->a()V

    .line 324
    invoke-direct {p0}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->e()V

    .line 325
    iget-object v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->b:Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;

    iget-boolean v0, v0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan$ProcessProfile;->f:Z

    if-eqz v0, :cond_3

    .line 326
    iget-object v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->d:Landroid/app/Application;

    invoke-static {v0}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->b(Landroid/content/Context;)V

    .line 328
    :cond_3
    iget-object v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->n:Lcom/facebook/nobreak/ResetHandler;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->n:Lcom/facebook/nobreak/ResetHandler;

    goto :goto_0

    .line 333
    :cond_4
    iget v2, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->i:I

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->a(IJ)V

    .line 334
    invoke-direct {p0}, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->b()V

    goto :goto_0

    .line 344
    :cond_5
    iget-object v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->o:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/facebook/nobreak/DefaultCatchMeIfYouCan;->o:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
