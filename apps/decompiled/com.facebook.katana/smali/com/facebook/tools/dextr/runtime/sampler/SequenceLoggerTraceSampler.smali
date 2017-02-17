.class public Lcom/facebook/tools/dextr/runtime/sampler/SequenceLoggerTraceSampler;
.super Ljava/lang/Object;
.source "SequenceLoggerTraceSampler.java"

# interfaces
.implements Lcom/facebook/tools/dextr/runtime/logger/TraceSampler;


# instance fields
.field private final a:Ljava/util/Random;

.field private final b:Lcom/facebook/tools/dextr/runtime/logger/TraceManager;

.field private final c:Lcom/facebook/tools/dextr/bridge/sampling/SequenceLoggerSamplingConfiguration;

.field private final d:Ljava/lang/String;

.field private e:J

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/tools/dextr/runtime/logger/TraceManager;Lcom/facebook/tools/dextr/bridge/sampling/SequenceLoggerSamplingConfiguration;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/facebook/tools/dextr/runtime/sampler/SequenceLoggerTraceSampler;->a:Ljava/util/Random;

    .line 34
    iput-object p1, p0, Lcom/facebook/tools/dextr/runtime/sampler/SequenceLoggerTraceSampler;->b:Lcom/facebook/tools/dextr/runtime/logger/TraceManager;

    .line 35
    iput-object p2, p0, Lcom/facebook/tools/dextr/runtime/sampler/SequenceLoggerTraceSampler;->c:Lcom/facebook/tools/dextr/bridge/sampling/SequenceLoggerSamplingConfiguration;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "S"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/facebook/tools/dextr/bridge/sampling/SequenceLoggerSamplingConfiguration;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/tools/dextr/runtime/sampler/SequenceLoggerTraceSampler;->d:Ljava/lang/String;

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/tools/dextr/runtime/sampler/SequenceLoggerTraceSampler;->e:J

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/tools/dextr/runtime/sampler/SequenceLoggerTraceSampler;->f:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private c(Lcom/facebook/tools/dextr/runtime/logger/LogEntry;)Z
    .locals 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-virtual {p1}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->b()Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    move-result-object v1

    sget-object v2, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_START:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    if-eq v1, v2, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 115
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->g()Ljava/lang/String;

    move-result-object v1

    .line 116
    if-eqz v1, :cond_0

    .line 120
    iget-object v2, p0, Lcom/facebook/tools/dextr/runtime/sampler/SequenceLoggerTraceSampler;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/facebook/tools/dextr/runtime/sampler/SequenceLoggerTraceSampler;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/facebook/tools/dextr/runtime/sampler/SequenceLoggerTraceSampler;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_0

    .line 123
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d(Lcom/facebook/tools/dextr/runtime/logger/LogEntry;)Z
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p1}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->b()Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    move-result-object v0

    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_STOP:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/sampler/SequenceLoggerTraceSampler;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x1

    .line 136
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Lcom/facebook/tools/dextr/runtime/logger/LogEntry;)Z
    .locals 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p1}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/tools/dextr/runtime/sampler/SequenceLoggerTraceSampler;->e:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/facebook/tools/dextr/runtime/sampler/SequenceLoggerTraceSampler;->c:Lcom/facebook/tools/dextr/bridge/sampling/SequenceLoggerSamplingConfiguration;

    invoke-virtual {v2}, Lcom/facebook/tools/dextr/bridge/sampling/SequenceLoggerSamplingConfiguration;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->b()Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    move-result-object v0

    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_CANCEL:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/sampler/SequenceLoggerTraceSampler;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    :cond_0
    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 54
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/facebook/tools/dextr/runtime/sampler/SequenceLoggerTraceSampler;->b:Lcom/facebook/tools/dextr/runtime/logger/TraceManager;

    invoke-virtual {v2}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->g()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 58
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/facebook/tools/dextr/runtime/sampler/SequenceLoggerTraceSampler;->c(Lcom/facebook/tools/dextr/runtime/logger/LogEntry;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 59
    iget-object v2, p0, Lcom/facebook/tools/dextr/runtime/sampler/SequenceLoggerTraceSampler;->c:Lcom/facebook/tools/dextr/bridge/sampling/SequenceLoggerSamplingConfiguration;

    invoke-virtual {v2}, Lcom/facebook/tools/dextr/bridge/sampling/SequenceLoggerSamplingConfiguration;->d()Ljava/util/EnumSet;

    move-result-object v2

    sget-object v3, Lcom/facebook/tools/dextr/bridge/constants/FilterType;->ASYNC:Lcom/facebook/tools/dextr/bridge/constants/FilterType;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    .line 68
    :goto_1
    invoke-virtual {p1}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->c()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/facebook/tools/dextr/runtime/sampler/SequenceLoggerTraceSampler;->e:J

    .line 69
    invoke-virtual {p1}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->g()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/tools/dextr/runtime/sampler/SequenceLoggerTraceSampler;->f:Ljava/lang/String;

    .line 71
    iget-object v3, p0, Lcom/facebook/tools/dextr/runtime/sampler/SequenceLoggerTraceSampler;->b:Lcom/facebook/tools/dextr/runtime/logger/TraceManager;

    invoke-virtual {v3, v2}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->a(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/facebook/tools/dextr/runtime/sampler/SequenceLoggerTraceSampler;->e:J

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/tools/dextr/runtime/sampler/SequenceLoggerTraceSampler;->f:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    move v0, v1

    .line 77
    goto :goto_0

    :cond_3
    move v2, v1

    .line 59
    goto :goto_1

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/facebook/tools/dextr/runtime/logger/LogEntry;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 86
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/facebook/tools/dextr/runtime/sampler/SequenceLoggerTraceSampler;->b:Lcom/facebook/tools/dextr/runtime/logger/TraceManager;

    invoke-virtual {v1}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->g()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 106
    :goto_0
    monitor-exit p0

    return v0

    .line 89
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/facebook/tools/dextr/runtime/sampler/SequenceLoggerTraceSampler;->e(Lcom/facebook/tools/dextr/runtime/logger/LogEntry;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/facebook/tools/dextr/runtime/sampler/SequenceLoggerTraceSampler;->b:Lcom/facebook/tools/dextr/runtime/logger/TraceManager;

    invoke-virtual {v1}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 95
    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/facebook/tools/dextr/runtime/sampler/SequenceLoggerTraceSampler;->d(Lcom/facebook/tools/dextr/runtime/logger/LogEntry;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 96
    iget-object v1, p0, Lcom/facebook/tools/dextr/runtime/sampler/SequenceLoggerTraceSampler;->a:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    iget-object v2, p0, Lcom/facebook/tools/dextr/runtime/sampler/SequenceLoggerTraceSampler;->c:Lcom/facebook/tools/dextr/bridge/sampling/SequenceLoggerSamplingConfiguration;

    invoke-virtual {v2}, Lcom/facebook/tools/dextr/bridge/sampling/SequenceLoggerSamplingConfiguration;->a()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    .line 97
    iget-object v1, p0, Lcom/facebook/tools/dextr/runtime/sampler/SequenceLoggerTraceSampler;->b:Lcom/facebook/tools/dextr/runtime/logger/TraceManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->a(Z)V

    goto :goto_0

    .line 100
    :cond_2
    iget-object v1, p0, Lcom/facebook/tools/dextr/runtime/sampler/SequenceLoggerTraceSampler;->b:Lcom/facebook/tools/dextr/runtime/logger/TraceManager;

    invoke-virtual {v1}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->i()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 106
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
