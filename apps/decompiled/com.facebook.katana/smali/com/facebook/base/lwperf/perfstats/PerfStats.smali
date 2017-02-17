.class public Lcom/facebook/base/lwperf/perfstats/PerfStats;
.super Ljava/lang/Object;
.source "PerfStats.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:J

.field private h:J

.field private i:J

.field private j:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/facebook/base/lwperf/perfstats/PerfStats;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-direct {p0}, Lcom/facebook/base/lwperf/perfstats/PerfStats;->m()V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/facebook/base/lwperf/perfstats/PerfStats;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-direct {p0}, Lcom/facebook/base/lwperf/perfstats/PerfStats;->m()V

    .line 39
    if-eqz p1, :cond_0

    .line 40
    iget v0, p1, Lcom/facebook/base/lwperf/perfstats/PerfStats;->d:I

    iput v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->d:I

    .line 41
    iget v0, p1, Lcom/facebook/base/lwperf/perfstats/PerfStats;->e:I

    iput v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->e:I

    .line 42
    iget-wide v0, p1, Lcom/facebook/base/lwperf/perfstats/PerfStats;->g:J

    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->g:J

    .line 43
    iget-wide v0, p1, Lcom/facebook/base/lwperf/perfstats/PerfStats;->h:J

    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->h:J

    .line 44
    iget-wide v0, p1, Lcom/facebook/base/lwperf/perfstats/PerfStats;->i:J

    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->i:J

    .line 45
    iget-wide v0, p1, Lcom/facebook/base/lwperf/perfstats/PerfStats;->j:J

    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->j:J

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->b:Z

    .line 48
    :cond_0
    return-void
.end method

.method private l()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->d:I

    .line 96
    iput-wide v2, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->h:J

    .line 97
    iput-wide v2, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->j:J

    .line 98
    return-void
.end method

.method private m()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const-wide/16 v0, -0x1

    .line 155
    iput-boolean v3, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->b:Z

    .line 156
    iput-boolean v3, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->c:Z

    .line 157
    iput v2, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->d:I

    .line 158
    iput v2, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->e:I

    .line 159
    iput v2, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->f:I

    .line 160
    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->g:J

    .line 161
    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->h:J

    .line 162
    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->i:J

    .line 163
    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->j:J

    .line 164
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->b:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->c:Z

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->e:I

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->f:I

    return v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->g:J

    return-wide v0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->i:J

    return-wide v0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->h:J

    return-wide v0
.end method

.method public final h()J
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->j:J

    return-wide v0
.end method

.method public final i()Z
    .locals 2

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 88
    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Lcom/facebook/base/lwperf/perfstats/PerfStats;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 102
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->d:I

    .line 103
    iget v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->d:I

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->e:I

    .line 104
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->g:J

    .line 105
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->h:J

    .line 107
    invoke-static {}, Lcom/facebook/base/lwperf/perfstats/ProcIoStats;->b()[J

    move-result-object v0

    .line 108
    aget-wide v0, v0, v2

    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->i:J

    .line 109
    invoke-static {}, Lcom/facebook/base/lwperf/perfstats/ProcIoStats;->c()[J

    move-result-object v0

    .line 110
    aget-wide v0, v0, v2

    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->j:J

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->b:Z

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->c:Z

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->f:I

    .line 116
    return-object p0
.end method

.method public final k()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const-wide/16 v6, 0x0

    .line 120
    iget-boolean v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->b:Z

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    .line 125
    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1

    iput v1, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->f:I

    .line 126
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->g:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->g:J

    .line 128
    invoke-static {}, Lcom/facebook/base/lwperf/perfstats/ProcIoStats;->b()[J

    move-result-object v1

    .line 129
    aget-wide v2, v1, v8

    iget-wide v4, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->i:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->i:J

    .line 130
    iget v1, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->d:I

    if-ne v0, v1, :cond_3

    .line 131
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->h:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->h:J

    .line 133
    invoke-static {}, Lcom/facebook/base/lwperf/perfstats/ProcIoStats;->c()[J

    move-result-object v0

    .line 134
    aget-wide v0, v0, v8

    iget-wide v2, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->j:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->j:J

    .line 140
    :goto_1
    iget-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->g:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_1

    iget-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->i:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/base/lwperf/perfstats/PerfStats;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->h:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_1

    iget-wide v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->j:J

    cmp-long v0, v0, v6

    if-gez v0, :cond_4

    .line 144
    :cond_1
    sget-object v0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->a:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    sget-object v0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->a:Ljava/lang/String;

    const-string v1, "Negative values detected for PerfStats, discarding stats."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_2
    invoke-direct {p0}, Lcom/facebook/base/lwperf/perfstats/PerfStats;->m()V

    goto :goto_0

    .line 136
    :cond_3
    invoke-direct {p0}, Lcom/facebook/base/lwperf/perfstats/PerfStats;->l()V

    goto :goto_1

    .line 151
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/base/lwperf/perfstats/PerfStats;->c:Z

    goto :goto_0
.end method
