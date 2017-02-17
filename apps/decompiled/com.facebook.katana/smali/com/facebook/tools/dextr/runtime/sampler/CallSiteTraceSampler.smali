.class public Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler;
.super Ljava/lang/Object;
.source "CallSiteTraceSampler.java"

# interfaces
.implements Lcom/facebook/tools/dextr/runtime/logger/TraceSampler;


# instance fields
.field private final a:Lcom/facebook/tools/dextr/runtime/logger/TraceManager;

.field private final b:Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration;

.field private final c:Ljava/util/Random;

.field private d:Z

.field private e:J

.field private f:J

.field private g:J

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/facebook/tools/dextr/runtime/logger/TraceManager;Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler;->c:Ljava/util/Random;

    .line 34
    iput-boolean v1, p0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler;->d:Z

    .line 35
    iput-wide v2, p0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler;->e:J

    .line 36
    iput-wide v2, p0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler;->f:J

    .line 37
    iput-wide v2, p0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler;->g:J

    .line 38
    iput-boolean v1, p0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler;->h:Z

    .line 43
    iput-object p1, p0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler;->a:Lcom/facebook/tools/dextr/runtime/logger/TraceManager;

    .line 44
    iput-object p2, p0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler;->b:Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration;

    .line 45
    return-void
.end method

.method private a(Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration;JI)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-virtual {p1}, Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration;->b()Ljava/util/Collection;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    iput-wide p2, p0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler;->e:J

    iput-wide p2, p0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler;->f:J

    .line 116
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler;->g:J

    .line 117
    iput-boolean v0, p0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler;->h:Z

    .line 118
    const/4 v0, 0x1

    .line 121
    :cond_0
    return v0
.end method

.method private b(Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration;JI)Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    .line 125
    iget-wide v0, p0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler;->g:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler;->g:J

    sub-long v0, p2, v0

    invoke-virtual {p1}, Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration;->d()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 126
    sget-object v0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;->STOP_FINISHER_TIMEOUT:Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

    .line 177
    :goto_0
    return-object v0

    .line 130
    :cond_0
    iget-wide v0, p0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler;->e:J

    sub-long v0, p2, v0

    .line 131
    iget-wide v2, p0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler;->f:J

    sub-long v2, p2, v2

    .line 133
    invoke-virtual {p1}, Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration;->e()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 134
    iget-wide v0, p0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler;->g:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_1

    .line 135
    sget-object v0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;->STOP_MAIN_TIMEOUT:Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

    goto :goto_0

    .line 138
    :cond_1
    sget-object v0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;->ABORT_TIMEOUT:Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

    goto :goto_0

    .line 143
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler;->h:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration;->c()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-lez v0, :cond_3

    .line 144
    sget-object v0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;->ABORT_TIMEOUT:Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

    goto :goto_0

    .line 148
    :cond_3
    invoke-virtual {p1, p4}, Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration;->a(I)Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration$CallSiteKind;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_4

    .line 150
    sget-object v1, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$1;->b:[I

    invoke-virtual {v0}, Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration$CallSiteKind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 173
    const-string v1, "Dextr"

    const-string v2, "Unknown kind: %s"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/debug/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    :cond_4
    :goto_1
    sget-object v0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;->CONTINUE:Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

    goto :goto_0

    .line 152
    :pswitch_0
    iget-boolean v0, p0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler;->h:Z

    if-eqz v0, :cond_5

    .line 153
    iput-wide p2, p0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler;->g:J

    .line 154
    sget-object v0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;->CONTINUE:Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

    goto :goto_0

    .line 158
    :cond_5
    sget-object v0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;->ABORT_TIMEOUT:Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

    goto :goto_0

    .line 162
    :pswitch_1
    iget-boolean v0, p0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler;->h:Z

    if-nez v0, :cond_4

    .line 163
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler;->c:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    invoke-virtual {p1}, Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration;->a()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 164
    iput-boolean v6, p0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler;->h:Z

    goto :goto_1

    .line 167
    :cond_6
    sget-object v0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;->ABORT_DICE:Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 58
    iget-boolean v0, p0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler;->d:Z

    if-eqz v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler;->b:Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration;

    invoke-virtual {v0}, Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p1}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler;->f:J

    :cond_0
    move v1, v2

    .line 83
    :cond_1
    :goto_0
    return v1

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler;->b:Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration;

    invoke-virtual {p1}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->c()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->e()I

    move-result v3

    invoke-direct {p0, v0, v4, v5, v3}, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler;->a(Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration;JI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler;->b:Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration;

    invoke-virtual {v0}, Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration;->f()Ljava/util/EnumSet;

    move-result-object v0

    sget-object v3, Lcom/facebook/tools/dextr/bridge/constants/FilterType;->ASYNC:Lcom/facebook/tools/dextr/bridge/constants/FilterType;

    invoke-virtual {v0, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    .line 77
    :goto_1
    iget-object v3, p0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler;->a:Lcom/facebook/tools/dextr/runtime/logger/TraceManager;

    invoke-virtual {v3, v0}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iput-boolean v2, p0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler;->d:Z

    move v1, v2

    .line 80
    goto :goto_0

    :cond_3
    move v0, v1

    .line 74
    goto :goto_1
.end method

.method public final b(Lcom/facebook/tools/dextr/runtime/logger/LogEntry;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 89
    iget-object v2, p0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler;->b:Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration;

    invoke-virtual {p1}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->c()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;->e()I

    move-result v3

    invoke-direct {p0, v2, v4, v5, v3}, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler;->b(Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration;JI)Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;

    move-result-object v2

    .line 91
    sget-object v3, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$1;->a:[I

    invoke-virtual {v2}, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler$StopResult;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 108
    const-string v3, "Dextr"

    const-string v4, "Unknown status: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-static {v3, v4, v1}, Lcom/facebook/debug/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    :goto_0
    return v0

    .line 94
    :pswitch_0
    iget-object v1, p0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler;->a:Lcom/facebook/tools/dextr/runtime/logger/TraceManager;

    invoke-virtual {v1, v0}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->a(Z)V

    .line 96
    iput-boolean v0, p0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler;->d:Z

    goto :goto_0

    .line 101
    :pswitch_1
    iget-object v1, p0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler;->a:Lcom/facebook/tools/dextr/runtime/logger/TraceManager;

    invoke-virtual {v1}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->i()V

    .line 103
    iput-boolean v0, p0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler;->d:Z

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 106
    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
