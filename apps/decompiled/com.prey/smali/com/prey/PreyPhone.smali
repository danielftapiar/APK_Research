.class public Lcom/prey/PreyPhone;
.super Ljava/lang/Object;
.source "PreyPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prey/PreyPhone$Wifi;,
        Lcom/prey/PreyPhone$Hardware;
    }
.end annotation


# static fields
.field private static final REQUEST_READ_PHONE_STATE_PERMISSION:I = 0xe1

.field public static TAG:Ljava/lang/String;

.field private static final channelsFrequency:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ctx:Landroid/content/Context;

.field private hardware:Lcom/prey/PreyPhone$Hardware;

.field private listWifi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/prey/PreyPhone$Wifi;",
            ">;"
        }
    .end annotation
.end field

.field private wifi:Lcom/prey/PreyPhone$Wifi;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 56
    const-string v0, "memory"

    sput-object v0, Lcom/prey/PreyPhone;->TAG:Ljava/lang/String;

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xf

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const/16 v3, 0x96c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0x971

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/16 v3, 0x976

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const/16 v3, 0x97b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const/16 v3, 0x980

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const/16 v3, 0x985

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0x98a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const/16 v3, 0x98f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const/16 v3, 0x994

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const/16 v3, 0x999

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const/16 v3, 0x99e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const/16 v3, 0x9a3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const/16 v3, 0x9a8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const/16 v3, 0x9b4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/prey/PreyPhone;->channelsFrequency:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/prey/PreyPhone;->ctx:Landroid/content/Context;

    .line 53
    invoke-direct {p0}, Lcom/prey/PreyPhone;->init()V

    .line 54
    return-void
.end method

.method private formatterIp(I)Ljava/lang/String;
    .locals 4
    .param p1, "ipAddress"    # I

    .prologue
    .line 235
    const-string v0, "%d.%d.%d.%d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    and-int/lit16 v3, p1, 0xff

    .line 236
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    .line 237
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    .line 238
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    shr-int/lit8 v3, p1, 0x18

    and-int/lit16 v3, v3, 0xff

    .line 239
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 235
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAndroidDeviceId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/prey/PreyPhone;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getChannelFromFrequency(I)I
    .locals 2
    .param p1, "frequency"    # I

    .prologue
    .line 265
    sget-object v0, Lcom/prey/PreyPhone;->channelsFrequency:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private getCpuCores()I
    .locals 2

    .prologue
    .line 597
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 598
    .local v0, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    return v1
.end method

.method private getMemoryRamSize()J
    .locals 5

    .prologue
    .line 560
    iget-object v2, p0, Lcom/prey/PreyPhone;->ctx:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 561
    .local v0, "activityManager":Landroid/app/ActivityManager;
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 562
    .local v1, "mInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 563
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    const/16 v4, 0x14

    shr-long/2addr v2, v4

    return-wide v2
.end method

.method private getProcessorData()Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 567
    iget-object v10, p0, Lcom/prey/PreyPhone;->ctx:Landroid/content/Context;

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 568
    .local v1, "activityManager":Landroid/app/ActivityManager;
    new-instance v6, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v6}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 569
    .local v6, "mInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v1, v6}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 571
    const/4 v10, 0x2

    new-array v2, v10, [Ljava/lang/String;

    const-string v10, "/system/bin/cat"

    aput-object v10, v2, v12

    const-string v10, "/proc/cpuinfo"

    aput-object v10, v2, v13

    .line 572
    .local v2, "args":[Ljava/lang/String;
    new-instance v8, Ljava/lang/ProcessBuilder;

    invoke-direct {v8, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 575
    .local v8, "pb":Ljava/lang/ProcessBuilder;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 577
    .local v7, "mapData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {v8}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v9

    .line 578
    .local v9, "process":Ljava/lang/Process;
    invoke-virtual {v9}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 579
    .local v5, "in":Ljava/io/InputStream;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 581
    .local v3, "br":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "aLine":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 582
    const-string v10, ":"

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 584
    .local v4, "data":[Ljava/lang/String;
    const/4 v10, 0x0

    :try_start_1
    aget-object v10, v4, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v4, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 585
    :catch_0
    move-exception v10

    goto :goto_0

    .line 588
    .end local v4    # "data":[Ljava/lang/String;
    :cond_0
    if-eqz v3, :cond_1

    .line 589
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 593
    .end local v0    # "aLine":Ljava/lang/String;
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v9    # "process":Ljava/lang/Process;
    :cond_1
    :goto_1
    return-object v7

    .line 591
    :catch_1
    move-exception v10

    goto :goto_1
.end method

.method private getSerialNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 603
    :try_start_0
    invoke-direct {p0}, Lcom/prey/PreyPhone;->getUuid()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 605
    :goto_0
    return-object v1

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_0
.end method

.method private getUuid()Ljava/lang/String;
    .locals 5

    .prologue
    .line 647
    const-string v2, ""

    .line 648
    .local v2, "uuid":Ljava/lang/String;
    iget-object v3, p0, Lcom/prey/PreyPhone;->ctx:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 650
    .local v1, "tManager":Landroid/telephony/TelephonyManager;
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_1

    .line 651
    iget-object v3, p0, Lcom/prey/PreyPhone;->ctx:Landroid/content/Context;

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 652
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 660
    :cond_0
    :goto_0
    return-object v2

    .line 655
    :cond_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 657
    :catch_0
    move-exception v0

    .line 658
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error getUuid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/prey/PreyPhone;->updateHardware()V

    .line 60
    invoke-direct {p0}, Lcom/prey/PreyPhone;->updateListWifi()V

    .line 61
    invoke-direct {p0}, Lcom/prey/PreyPhone;->updateWifi()V

    .line 62
    invoke-direct {p0}, Lcom/prey/PreyPhone;->update3g()V

    .line 63
    return-void
.end method

.method private initMemory()V
    .locals 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 93
    iget-object v8, p0, Lcom/prey/PreyPhone;->ctx:Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 94
    .local v0, "activityManager":Landroid/app/ActivityManager;
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 95
    .local v1, "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 96
    invoke-virtual {p0}, Lcom/prey/PreyPhone;->totalMemory()J

    move-result-wide v4

    .line 98
    .local v4, "totalMemory":J
    iget-wide v8, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v10, 0x100000

    div-long v2, v8, v10

    .line 99
    .local v2, "freeMemory":J
    sub-long v6, v4, v2

    .line 100
    .local v6, "usageMemory":J
    iget-object v8, p0, Lcom/prey/PreyPhone;->hardware:Lcom/prey/PreyPhone$Hardware;

    invoke-virtual {v8, v4, v5}, Lcom/prey/PreyPhone$Hardware;->setTotalMemory(J)V

    .line 101
    iget-object v8, p0, Lcom/prey/PreyPhone;->hardware:Lcom/prey/PreyPhone$Hardware;

    invoke-virtual {v8, v4, v5}, Lcom/prey/PreyPhone$Hardware;->setFreeMemory(J)V

    .line 102
    iget-object v8, p0, Lcom/prey/PreyPhone;->hardware:Lcom/prey/PreyPhone$Hardware;

    invoke-virtual {v8, v6, v7}, Lcom/prey/PreyPhone$Hardware;->setBusyMemory(J)V

    .line 103
    return-void
.end method

.method private update3g()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method private updateHardware()V
    .locals 4

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/prey/PreyPhone;->getProcessorData()Ljava/util/Map;

    move-result-object v0

    .line 70
    .local v0, "mapData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcom/prey/PreyPhone$Hardware;

    invoke-direct {v1, p0}, Lcom/prey/PreyPhone$Hardware;-><init>(Lcom/prey/PreyPhone;)V

    iput-object v1, p0, Lcom/prey/PreyPhone;->hardware:Lcom/prey/PreyPhone$Hardware;

    .line 71
    iget-object v1, p0, Lcom/prey/PreyPhone;->hardware:Lcom/prey/PreyPhone$Hardware;

    invoke-direct {p0}, Lcom/prey/PreyPhone;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/prey/PreyPhone$Hardware;->setUuid(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/prey/PreyPhone;->hardware:Lcom/prey/PreyPhone$Hardware;

    invoke-direct {p0}, Lcom/prey/PreyPhone;->getAndroidDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/prey/PreyPhone$Hardware;->setAndroidDeviceId(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/prey/PreyPhone;->hardware:Lcom/prey/PreyPhone$Hardware;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/prey/PreyPhone$Hardware;->setBiosVendor(Ljava/lang/String;)V

    .line 74
    iget-object v2, p0, Lcom/prey/PreyPhone;->hardware:Lcom/prey/PreyPhone$Hardware;

    const-string v1, "Revision"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/prey/PreyPhone$Hardware;->setBiosVersion(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/prey/PreyPhone;->hardware:Lcom/prey/PreyPhone$Hardware;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/prey/PreyPhone$Hardware;->setMbVendor(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/prey/PreyPhone;->hardware:Lcom/prey/PreyPhone$Hardware;

    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/prey/PreyPhone$Hardware;->setMbModel(Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lcom/prey/PreyPhone;->hardware:Lcom/prey/PreyPhone$Hardware;

    const-string v1, "Processor"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/prey/PreyPhone$Hardware;->setCpuModel(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/prey/PreyPhone;->hardware:Lcom/prey/PreyPhone$Hardware;

    invoke-virtual {p0}, Lcom/prey/PreyPhone;->maxCPUFreqMHz()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/prey/PreyPhone$Hardware;->setCpuSpeed(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/prey/PreyPhone;->hardware:Lcom/prey/PreyPhone$Hardware;

    invoke-direct {p0}, Lcom/prey/PreyPhone;->getCpuCores()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/prey/PreyPhone$Hardware;->setCpuCores(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/prey/PreyPhone;->hardware:Lcom/prey/PreyPhone$Hardware;

    invoke-direct {p0}, Lcom/prey/PreyPhone;->getMemoryRamSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/prey/PreyPhone$Hardware;->setRamSize(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/prey/PreyPhone;->hardware:Lcom/prey/PreyPhone$Hardware;

    invoke-direct {p0}, Lcom/prey/PreyPhone;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/prey/PreyPhone$Hardware;->setSerialNumber(Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Lcom/prey/PreyPhone;->initMemory()V

    .line 89
    return-void
.end method

.method private updateListWifi()V
    .locals 7

    .prologue
    .line 243
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/prey/PreyPhone;->listWifi:Ljava/util/List;

    .line 245
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_0

    iget-object v5, p0, Lcom/prey/PreyPhone;->ctx:Landroid/content/Context;

    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    .line 246
    invoke-static {v5, v6}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/prey/PreyPhone;->ctx:Landroid/content/Context;

    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    .line 247
    invoke-static {v5, v6}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    .line 248
    :cond_0
    iget-object v5, p0, Lcom/prey/PreyPhone;->ctx:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 249
    .local v4, "wifiMgr":Landroid/net/wifi/WifiManager;
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    .line 250
    .local v2, "listScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 251
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 252
    .local v3, "scan":Landroid/net/wifi/ScanResult;
    new-instance v0, Lcom/prey/PreyPhone$Wifi;

    invoke-direct {v0, p0}, Lcom/prey/PreyPhone$Wifi;-><init>(Lcom/prey/PreyPhone;)V

    .line 253
    .local v0, "_wifi":Lcom/prey/PreyPhone$Wifi;
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/prey/PreyPhone$Wifi;->setSsid(Ljava/lang/String;)V

    .line 254
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/prey/PreyPhone$Wifi;->setMacAddress(Ljava/lang/String;)V

    .line 255
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/prey/PreyPhone$Wifi;->setSecurity(Ljava/lang/String;)V

    .line 256
    iget v5, v3, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/prey/PreyPhone$Wifi;->setSignalStrength(Ljava/lang/String;)V

    .line 257
    iget v5, v3, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-direct {p0, v5}, Lcom/prey/PreyPhone;->getChannelFromFrequency(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/prey/PreyPhone$Wifi;->setChannel(Ljava/lang/String;)V

    .line 258
    iget-object v5, p0, Lcom/prey/PreyPhone;->listWifi:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    .end local v0    # "_wifi":Lcom/prey/PreyPhone$Wifi;
    .end local v1    # "i":I
    .end local v2    # "listScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v3    # "scan":Landroid/net/wifi/ScanResult;
    .end local v4    # "wifiMgr":Landroid/net/wifi/WifiManager;
    :cond_1
    return-void
.end method

.method private updateWifi()V
    .locals 9

    .prologue
    .line 182
    new-instance v7, Lcom/prey/PreyPhone$Wifi;

    invoke-direct {v7, p0}, Lcom/prey/PreyPhone$Wifi;-><init>(Lcom/prey/PreyPhone;)V

    iput-object v7, p0, Lcom/prey/PreyPhone;->wifi:Lcom/prey/PreyPhone$Wifi;

    .line 184
    :try_start_0
    iget-object v7, p0, Lcom/prey/PreyPhone;->ctx:Landroid/content/Context;

    const-string v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 185
    .local v6, "wifiMgr":Landroid/net/wifi/WifiManager;
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    .line 188
    .local v5, "wifiInfo":Landroid/net/wifi/WifiInfo;
    iget-object v7, p0, Lcom/prey/PreyPhone;->wifi:Lcom/prey/PreyPhone$Wifi;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/prey/PreyPhone$Wifi;->setWifiEnabled(Z)V

    .line 190
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v3

    .line 191
    .local v3, "ipAddress":I
    iget-object v7, p0, Lcom/prey/PreyPhone;->wifi:Lcom/prey/PreyPhone$Wifi;

    invoke-direct {p0, v3}, Lcom/prey/PreyPhone;->formatterIp(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/prey/PreyPhone$Wifi;->setIpAddress(Ljava/lang/String;)V

    .line 192
    iget-object v7, p0, Lcom/prey/PreyPhone;->wifi:Lcom/prey/PreyPhone$Wifi;

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/prey/PreyPhone$Wifi;->setMacAddress(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v1

    .line 194
    .local v1, "dhcpInfo":Landroid/net/DhcpInfo;
    iget-object v7, p0, Lcom/prey/PreyPhone;->wifi:Lcom/prey/PreyPhone$Wifi;

    iget v8, v1, Landroid/net/DhcpInfo;->netmask:I

    invoke-direct {p0, v8}, Lcom/prey/PreyPhone;->formatterIp(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/prey/PreyPhone$Wifi;->setNetmask(Ljava/lang/String;)V

    .line 195
    iget-object v7, p0, Lcom/prey/PreyPhone;->wifi:Lcom/prey/PreyPhone$Wifi;

    iget v8, v1, Landroid/net/DhcpInfo;->serverAddress:I

    invoke-direct {p0, v8}, Lcom/prey/PreyPhone;->formatterIp(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/prey/PreyPhone$Wifi;->setGatewayIp(Ljava/lang/String;)V

    .line 196
    if-eqz v3, :cond_1

    .line 197
    iget-object v7, p0, Lcom/prey/PreyPhone;->wifi:Lcom/prey/PreyPhone$Wifi;

    const-string v8, "Wireless"

    invoke-virtual {v7, v8}, Lcom/prey/PreyPhone$Wifi;->setInterfaceType(Ljava/lang/String;)V

    .line 205
    :goto_0
    iget-object v7, p0, Lcom/prey/PreyPhone;->wifi:Lcom/prey/PreyPhone$Wifi;

    const-string v8, "eth0"

    invoke-virtual {v7, v8}, Lcom/prey/PreyPhone$Wifi;->setName(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 208
    .local v4, "ssid":Ljava/lang/String;
    :try_start_1
    const-string v7, "\""

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    .line 212
    :goto_1
    :try_start_2
    iget-object v7, p0, Lcom/prey/PreyPhone;->wifi:Lcom/prey/PreyPhone$Wifi;

    invoke-virtual {v7, v4}, Lcom/prey/PreyPhone$Wifi;->setSsid(Ljava/lang/String;)V

    .line 214
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v7, p0, Lcom/prey/PreyPhone;->listWifi:Ljava/util/List;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/prey/PreyPhone;->listWifi:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 215
    iget-object v7, p0, Lcom/prey/PreyPhone;->listWifi:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prey/PreyPhone$Wifi;

    .line 216
    .local v0, "_wifi":Lcom/prey/PreyPhone$Wifi;
    invoke-virtual {v0}, Lcom/prey/PreyPhone$Wifi;->getSsid()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    .line 218
    :try_start_3
    const-string v7, "\""

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v4

    .line 222
    :goto_3
    :try_start_4
    iget-object v7, p0, Lcom/prey/PreyPhone;->wifi:Lcom/prey/PreyPhone$Wifi;

    invoke-virtual {v7}, Lcom/prey/PreyPhone$Wifi;->getSsid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 223
    iget-object v7, p0, Lcom/prey/PreyPhone;->wifi:Lcom/prey/PreyPhone$Wifi;

    invoke-virtual {v0}, Lcom/prey/PreyPhone$Wifi;->getSecurity()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/prey/PreyPhone$Wifi;->setSecurity(Ljava/lang/String;)V

    .line 224
    iget-object v7, p0, Lcom/prey/PreyPhone;->wifi:Lcom/prey/PreyPhone$Wifi;

    invoke-virtual {v0}, Lcom/prey/PreyPhone$Wifi;->getSignalStrength()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/prey/PreyPhone$Wifi;->setSignalStrength(Ljava/lang/String;)V

    .line 225
    iget-object v7, p0, Lcom/prey/PreyPhone;->wifi:Lcom/prey/PreyPhone$Wifi;

    invoke-virtual {v0}, Lcom/prey/PreyPhone$Wifi;->getChannel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/prey/PreyPhone$Wifi;->setChannel(Ljava/lang/String;)V

    .line 231
    .end local v0    # "_wifi":Lcom/prey/PreyPhone$Wifi;
    .end local v1    # "dhcpInfo":Landroid/net/DhcpInfo;
    .end local v2    # "i":I
    .end local v3    # "ipAddress":I
    .end local v4    # "ssid":Ljava/lang/String;
    .end local v5    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v6    # "wifiMgr":Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_4
    return-void

    .line 199
    .restart local v1    # "dhcpInfo":Landroid/net/DhcpInfo;
    .restart local v3    # "ipAddress":I
    .restart local v5    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .restart local v6    # "wifiMgr":Landroid/net/wifi/WifiManager;
    :cond_1
    iget-object v7, p0, Lcom/prey/PreyPhone;->ctx:Landroid/content/Context;

    invoke-static {v7}, Lcom/prey/managers/PreyConnectivityManager;->getInstance(Landroid/content/Context;)Lcom/prey/managers/PreyConnectivityManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/prey/managers/PreyConnectivityManager;->isMobileConnected()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 200
    iget-object v7, p0, Lcom/prey/PreyPhone;->wifi:Lcom/prey/PreyPhone$Wifi;

    const-string v8, "Mobile"

    invoke-virtual {v7, v8}, Lcom/prey/PreyPhone$Wifi;->setInterfaceType(Ljava/lang/String;)V

    goto :goto_0

    .line 229
    .end local v1    # "dhcpInfo":Landroid/net/DhcpInfo;
    .end local v3    # "ipAddress":I
    .end local v5    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v6    # "wifiMgr":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v7

    goto :goto_4

    .line 202
    .restart local v1    # "dhcpInfo":Landroid/net/DhcpInfo;
    .restart local v3    # "ipAddress":I
    .restart local v5    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .restart local v6    # "wifiMgr":Landroid/net/wifi/WifiManager;
    :cond_2
    iget-object v7, p0, Lcom/prey/PreyPhone;->wifi:Lcom/prey/PreyPhone$Wifi;

    const-string v8, ""

    invoke-virtual {v7, v8}, Lcom/prey/PreyPhone$Wifi;->setInterfaceType(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 214
    .restart local v0    # "_wifi":Lcom/prey/PreyPhone$Wifi;
    .restart local v2    # "i":I
    .restart local v4    # "ssid":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 219
    :catch_1
    move-exception v7

    goto :goto_3

    .line 209
    .end local v0    # "_wifi":Lcom/prey/PreyPhone$Wifi;
    .end local v2    # "i":I
    :catch_2
    move-exception v7

    goto :goto_1
.end method


# virtual methods
.method public getDataState()I
    .locals 5

    .prologue
    .line 683
    iget-object v3, p0, Lcom/prey/PreyPhone;->ctx:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 684
    .local v2, "tManager":Landroid/telephony/TelephonyManager;
    const/4 v0, -0x1

    .line 686
    .local v0, "dataState":I
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_1

    .line 687
    iget-object v3, p0, Lcom/prey/PreyPhone;->ctx:Landroid/content/Context;

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 688
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    .line 696
    :cond_0
    :goto_0
    return v0

    .line 691
    :cond_1
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 693
    :catch_0
    move-exception v1

    .line 694
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error getDataState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getHardware()Lcom/prey/PreyPhone$Hardware;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/prey/PreyPhone;->hardware:Lcom/prey/PreyPhone$Hardware;

    return-object v0
.end method

.method public getIPAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 611
    const-string v0, ""

    .line 613
    .local v0, "ip":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v1

    iget-object v2, p0, Lcom/prey/PreyPhone;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/prey/net/PreyWebServices;->getIPAddress(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 616
    :goto_0
    return-object v0

    .line 614
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 5

    .prologue
    .line 701
    iget-object v3, p0, Lcom/prey/PreyPhone;->ctx:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 702
    .local v2, "tManager":Landroid/telephony/TelephonyManager;
    const-string v1, ""

    .line 704
    .local v1, "line1Number":Ljava/lang/String;
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_1

    .line 705
    iget-object v3, p0, Lcom/prey/PreyPhone;->ctx:Landroid/content/Context;

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 706
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 714
    :cond_0
    :goto_0
    return-object v1

    .line 709
    :cond_1
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 711
    :catch_0
    move-exception v0

    .line 712
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error getDataState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getListWifi()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/prey/PreyPhone$Wifi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/prey/PreyPhone;->listWifi:Ljava/util/List;

    return-object v0
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .locals 5

    .prologue
    .line 664
    iget-object v3, p0, Lcom/prey/PreyPhone;->ctx:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 665
    .local v2, "tManager":Landroid/telephony/TelephonyManager;
    const-string v1, ""

    .line 667
    .local v1, "simSerialNumber":Ljava/lang/String;
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_1

    .line 668
    iget-object v3, p0, Lcom/prey/PreyPhone;->ctx:Landroid/content/Context;

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 669
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 677
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simSerialNumber["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 678
    return-object v1

    .line 672
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    .line 674
    :catch_0
    move-exception v0

    .line 675
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error getSimSerialNumber:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getSimState()I
    .locals 5

    .prologue
    .line 629
    iget-object v3, p0, Lcom/prey/PreyPhone;->ctx:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 630
    .local v2, "tManager":Landroid/telephony/TelephonyManager;
    const/4 v1, -0x1

    .line 632
    .local v1, "simState":I
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_1

    .line 633
    iget-object v3, p0, Lcom/prey/PreyPhone;->ctx:Landroid/content/Context;

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 634
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 642
    :cond_0
    :goto_0
    return v1

    .line 637
    :cond_1
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 639
    :catch_0
    move-exception v0

    .line 640
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error getSimSerialNumber:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getWifi()Lcom/prey/PreyPhone$Wifi;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/prey/PreyPhone;->wifi:Lcom/prey/PreyPhone$Wifi;

    return-object v0
.end method

.method public maxCPUFreqMHz()J
    .locals 16

    .prologue
    .line 146
    const-string v10, ""

    .line 147
    .local v10, "line":Ljava/lang/String;
    const/4 v6, 0x0

    .line 148
    .local v6, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 149
    .local v4, "fi":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .line 150
    .local v8, "ir":Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 151
    .local v0, "br":Ljava/io/BufferedReader;
    const-wide/16 v2, 0x0

    .line 153
    .local v2, "cpuMaxFreq":J
    :try_start_0
    new-instance v7, Ljava/io/File;

    const-string v11, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-direct {v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    .end local v6    # "file":Ljava/io/File;
    .local v7, "file":Ljava/io/File;
    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 155
    .end local v4    # "fi":Ljava/io/FileInputStream;
    .local v5, "fi":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 156
    .end local v8    # "ir":Ljava/io/InputStreamReader;
    .local v9, "ir":Ljava/io/InputStreamReader;
    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 157
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_0
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 158
    if-eqz v10, :cond_0

    const-string v11, ""

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 162
    :cond_1
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long v2, v12, v14
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 166
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 170
    :goto_0
    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 174
    :goto_1
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "ir":Ljava/io/InputStreamReader;
    .restart local v8    # "ir":Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5    # "fi":Ljava/io/FileInputStream;
    .restart local v4    # "fi":Ljava/io/FileInputStream;
    move-object v6, v7

    .line 178
    .end local v7    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    :goto_2
    return-wide v2

    .line 175
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fi":Ljava/io/FileInputStream;
    .end local v6    # "file":Ljava/io/File;
    .end local v8    # "ir":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fi":Ljava/io/FileInputStream;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v9    # "ir":Ljava/io/InputStreamReader;
    :catch_0
    move-exception v11

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "ir":Ljava/io/InputStreamReader;
    .restart local v8    # "ir":Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5    # "fi":Ljava/io/FileInputStream;
    .restart local v4    # "fi":Ljava/io/FileInputStream;
    move-object v6, v7

    .line 177
    .end local v7    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    goto :goto_2

    .line 163
    :catch_1
    move-exception v11

    .line 166
    :goto_3
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 170
    :goto_4
    :try_start_9
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 174
    :goto_5
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_2

    .line 175
    :catch_2
    move-exception v11

    goto :goto_2

    .line 165
    :catchall_0
    move-exception v11

    .line 166
    :goto_6
    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 170
    :goto_7
    :try_start_c
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 174
    :goto_8
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    .line 176
    :goto_9
    throw v11

    .line 167
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fi":Ljava/io/FileInputStream;
    .end local v6    # "file":Ljava/io/File;
    .end local v8    # "ir":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fi":Ljava/io/FileInputStream;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v9    # "ir":Ljava/io/InputStreamReader;
    :catch_3
    move-exception v11

    goto :goto_0

    .line 171
    :catch_4
    move-exception v11

    goto :goto_1

    .line 167
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fi":Ljava/io/FileInputStream;
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "ir":Ljava/io/InputStreamReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fi":Ljava/io/FileInputStream;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v8    # "ir":Ljava/io/InputStreamReader;
    :catch_5
    move-exception v11

    goto :goto_4

    .line 171
    :catch_6
    move-exception v11

    goto :goto_5

    .line 167
    :catch_7
    move-exception v12

    goto :goto_7

    .line 171
    :catch_8
    move-exception v12

    goto :goto_8

    .line 175
    :catch_9
    move-exception v12

    goto :goto_9

    .line 165
    .end local v6    # "file":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    :catchall_1
    move-exception v11

    move-object v6, v7

    .end local v7    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    goto :goto_6

    .end local v4    # "fi":Ljava/io/FileInputStream;
    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "fi":Ljava/io/FileInputStream;
    .restart local v7    # "file":Ljava/io/File;
    :catchall_2
    move-exception v11

    move-object v4, v5

    .end local v5    # "fi":Ljava/io/FileInputStream;
    .restart local v4    # "fi":Ljava/io/FileInputStream;
    move-object v6, v7

    .end local v7    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    goto :goto_6

    .end local v4    # "fi":Ljava/io/FileInputStream;
    .end local v6    # "file":Ljava/io/File;
    .end local v8    # "ir":Ljava/io/InputStreamReader;
    .restart local v5    # "fi":Ljava/io/FileInputStream;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v9    # "ir":Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v11

    move-object v8, v9

    .end local v9    # "ir":Ljava/io/InputStreamReader;
    .restart local v8    # "ir":Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5    # "fi":Ljava/io/FileInputStream;
    .restart local v4    # "fi":Ljava/io/FileInputStream;
    move-object v6, v7

    .end local v7    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    goto :goto_6

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fi":Ljava/io/FileInputStream;
    .end local v6    # "file":Ljava/io/File;
    .end local v8    # "ir":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fi":Ljava/io/FileInputStream;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v9    # "ir":Ljava/io/InputStreamReader;
    :catchall_4
    move-exception v11

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "ir":Ljava/io/InputStreamReader;
    .restart local v8    # "ir":Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5    # "fi":Ljava/io/FileInputStream;
    .restart local v4    # "fi":Ljava/io/FileInputStream;
    move-object v6, v7

    .end local v7    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    goto :goto_6

    .line 163
    .end local v6    # "file":Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    :catch_a
    move-exception v11

    move-object v6, v7

    .end local v7    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    goto :goto_3

    .end local v4    # "fi":Ljava/io/FileInputStream;
    .end local v6    # "file":Ljava/io/File;
    .restart local v5    # "fi":Ljava/io/FileInputStream;
    .restart local v7    # "file":Ljava/io/File;
    :catch_b
    move-exception v11

    move-object v4, v5

    .end local v5    # "fi":Ljava/io/FileInputStream;
    .restart local v4    # "fi":Ljava/io/FileInputStream;
    move-object v6, v7

    .end local v7    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    goto :goto_3

    .end local v4    # "fi":Ljava/io/FileInputStream;
    .end local v6    # "file":Ljava/io/File;
    .end local v8    # "ir":Ljava/io/InputStreamReader;
    .restart local v5    # "fi":Ljava/io/FileInputStream;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v9    # "ir":Ljava/io/InputStreamReader;
    :catch_c
    move-exception v11

    move-object v8, v9

    .end local v9    # "ir":Ljava/io/InputStreamReader;
    .restart local v8    # "ir":Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5    # "fi":Ljava/io/FileInputStream;
    .restart local v4    # "fi":Ljava/io/FileInputStream;
    move-object v6, v7

    .end local v7    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fi":Ljava/io/FileInputStream;
    .end local v6    # "file":Ljava/io/File;
    .end local v8    # "ir":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fi":Ljava/io/FileInputStream;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v9    # "ir":Ljava/io/InputStreamReader;
    :catch_d
    move-exception v11

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "ir":Ljava/io/InputStreamReader;
    .restart local v8    # "ir":Ljava/io/InputStreamReader;
    move-object v4, v5

    .end local v5    # "fi":Ljava/io/FileInputStream;
    .restart local v4    # "fi":Ljava/io/FileInputStream;
    move-object v6, v7

    .end local v7    # "file":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    goto :goto_3
.end method

.method public totalMemory()J
    .locals 16

    .prologue
    .line 106
    const-string v8, ""

    .line 107
    .local v8, "line":Ljava/lang/String;
    const/4 v4, 0x0

    .line 108
    .local v4, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 109
    .local v2, "fi":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 110
    .local v6, "ir":Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 111
    .local v0, "br":Ljava/io/BufferedReader;
    const-wide/16 v10, 0x0

    .line 113
    .local v10, "totalMemory":J
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v9, "/proc/meminfo"

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .end local v4    # "file":Ljava/io/File;
    .local v5, "file":Ljava/io/File;
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 115
    .end local v2    # "fi":Ljava/io/FileInputStream;
    .local v3, "fi":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 116
    .end local v6    # "ir":Ljava/io/InputStreamReader;
    .local v7, "ir":Ljava/io/InputStreamReader;
    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 117
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_0
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 118
    const-string v9, "MemTotal"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_0

    .line 119
    const-string v9, "MemTotal"

    const-string v12, ""

    invoke-virtual {v8, v9, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 120
    const-string v9, ":"

    const-string v12, ""

    invoke-virtual {v8, v9, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 121
    const-string v9, "kB"

    const-string v12, ""

    invoke-virtual {v8, v9, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 122
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 126
    :cond_1
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v14, 0x400

    div-long v10, v12, v14
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 130
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 134
    :goto_0
    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 138
    :goto_1
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "ir":Ljava/io/InputStreamReader;
    .restart local v6    # "ir":Ljava/io/InputStreamReader;
    move-object v2, v3

    .end local v3    # "fi":Ljava/io/FileInputStream;
    .restart local v2    # "fi":Ljava/io/FileInputStream;
    move-object v4, v5

    .line 142
    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :goto_2
    return-wide v10

    .line 139
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "fi":Ljava/io/FileInputStream;
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "ir":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "fi":Ljava/io/FileInputStream;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "ir":Ljava/io/InputStreamReader;
    :catch_0
    move-exception v9

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "ir":Ljava/io/InputStreamReader;
    .restart local v6    # "ir":Ljava/io/InputStreamReader;
    move-object v2, v3

    .end local v3    # "fi":Ljava/io/FileInputStream;
    .restart local v2    # "fi":Ljava/io/FileInputStream;
    move-object v4, v5

    .line 141
    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto :goto_2

    .line 127
    :catch_1
    move-exception v9

    .line 130
    :goto_3
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 134
    :goto_4
    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 138
    :goto_5
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_2

    .line 139
    :catch_2
    move-exception v9

    goto :goto_2

    .line 129
    :catchall_0
    move-exception v9

    .line 130
    :goto_6
    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 134
    :goto_7
    :try_start_c
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 138
    :goto_8
    :try_start_d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    .line 140
    :goto_9
    throw v9

    .line 131
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "fi":Ljava/io/FileInputStream;
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "ir":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "fi":Ljava/io/FileInputStream;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "ir":Ljava/io/InputStreamReader;
    :catch_3
    move-exception v9

    goto :goto_0

    .line 135
    :catch_4
    move-exception v9

    goto :goto_1

    .line 131
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fi":Ljava/io/FileInputStream;
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "ir":Ljava/io/InputStreamReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "fi":Ljava/io/FileInputStream;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "ir":Ljava/io/InputStreamReader;
    :catch_5
    move-exception v9

    goto :goto_4

    .line 135
    :catch_6
    move-exception v9

    goto :goto_5

    .line 131
    :catch_7
    move-exception v12

    goto :goto_7

    .line 135
    :catch_8
    move-exception v12

    goto :goto_8

    .line 139
    :catch_9
    move-exception v12

    goto :goto_9

    .line 129
    .end local v4    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto :goto_6

    .end local v2    # "fi":Ljava/io/FileInputStream;
    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "fi":Ljava/io/FileInputStream;
    .restart local v5    # "file":Ljava/io/File;
    :catchall_2
    move-exception v9

    move-object v2, v3

    .end local v3    # "fi":Ljava/io/FileInputStream;
    .restart local v2    # "fi":Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto :goto_6

    .end local v2    # "fi":Ljava/io/FileInputStream;
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "ir":Ljava/io/InputStreamReader;
    .restart local v3    # "fi":Ljava/io/FileInputStream;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "ir":Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v9

    move-object v6, v7

    .end local v7    # "ir":Ljava/io/InputStreamReader;
    .restart local v6    # "ir":Ljava/io/InputStreamReader;
    move-object v2, v3

    .end local v3    # "fi":Ljava/io/FileInputStream;
    .restart local v2    # "fi":Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto :goto_6

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "fi":Ljava/io/FileInputStream;
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "ir":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "fi":Ljava/io/FileInputStream;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "ir":Ljava/io/InputStreamReader;
    :catchall_4
    move-exception v9

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "ir":Ljava/io/InputStreamReader;
    .restart local v6    # "ir":Ljava/io/InputStreamReader;
    move-object v2, v3

    .end local v3    # "fi":Ljava/io/FileInputStream;
    .restart local v2    # "fi":Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto :goto_6

    .line 127
    .end local v4    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    :catch_a
    move-exception v9

    move-object v4, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto :goto_3

    .end local v2    # "fi":Ljava/io/FileInputStream;
    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "fi":Ljava/io/FileInputStream;
    .restart local v5    # "file":Ljava/io/File;
    :catch_b
    move-exception v9

    move-object v2, v3

    .end local v3    # "fi":Ljava/io/FileInputStream;
    .restart local v2    # "fi":Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto :goto_3

    .end local v2    # "fi":Ljava/io/FileInputStream;
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "ir":Ljava/io/InputStreamReader;
    .restart local v3    # "fi":Ljava/io/FileInputStream;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "ir":Ljava/io/InputStreamReader;
    :catch_c
    move-exception v9

    move-object v6, v7

    .end local v7    # "ir":Ljava/io/InputStreamReader;
    .restart local v6    # "ir":Ljava/io/InputStreamReader;
    move-object v2, v3

    .end local v3    # "fi":Ljava/io/FileInputStream;
    .restart local v2    # "fi":Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "fi":Ljava/io/FileInputStream;
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "ir":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "fi":Ljava/io/FileInputStream;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "ir":Ljava/io/InputStreamReader;
    :catch_d
    move-exception v9

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "ir":Ljava/io/InputStreamReader;
    .restart local v6    # "ir":Ljava/io/InputStreamReader;
    move-object v2, v3

    .end local v3    # "fi":Ljava/io/FileInputStream;
    .restart local v2    # "fi":Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto :goto_3
.end method
