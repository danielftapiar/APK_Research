.class public Lcom/facebook/base/lwperf/perfstats/ProcIoStats;
.super Ljava/lang/Object;
.source "ProcIoStats.java"


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/base/lwperf/perfstats/ProcIoStats;->a:[I

    return-void

    :array_0
    .array-data 4
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x2020
        0x2020
        0x2020
        0x20
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()[J
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/facebook/base/lwperf/perfstats/ProcIoStats;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/base/lwperf/perfstats/ProcIoStats;->a(Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method

.method private static final a(Ljava/lang/String;)[J
    .locals 2

    .prologue
    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    .line 53
    sget-object v1, Lcom/facebook/base/lwperf/perfstats/ProcIoStats;->a:[I

    invoke-static {p0, v1, v0}, Lcom/facebook/base/lwperf/perfstats/ProcReader;->a(Ljava/lang/String;[I[J)Z

    .line 54
    return-object v0

    .line 52
    :array_0
    .array-data 8
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public static final b()[J
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcom/facebook/base/lwperf/perfstats/ProcIoStats;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/base/lwperf/perfstats/ProcIoStats;->a(Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method

.method public static final c()[J
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lcom/facebook/base/lwperf/perfstats/ProcIoStats;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/base/lwperf/perfstats/ProcIoStats;->a(Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method

.method private static final d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 29
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/proc/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/stat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    return-object v0
.end method

.method private static final e()Ljava/lang/String;
    .locals 4

    .prologue
    .line 39
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 40
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/proc/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/task/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/stat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    return-object v0
.end method
