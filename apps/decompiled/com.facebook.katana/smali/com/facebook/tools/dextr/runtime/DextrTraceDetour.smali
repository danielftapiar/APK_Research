.class public Lcom/facebook/tools/dextr/runtime/DextrTraceDetour;
.super Ljava/lang/Object;
.source "DextrTraceDetour.java"


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static start(I)V
    .locals 3
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 24
    invoke-static {}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->b()Lcom/facebook/tools/dextr/runtime/logger/TraceManager;

    move-result-object v0

    .line 25
    if-nez v0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 29
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->f()Z

    move-result v1

    if-nez v1, :cond_2

    .line 30
    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/facebook/tools/dextr/bridge/ManualTracingState;->a(ZZ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not enable manual tracing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_1
    new-instance v1, Lcom/facebook/tools/dextr/runtime/sampler/ManualTraceSampler;

    invoke-direct {v1, v0}, Lcom/facebook/tools/dextr/runtime/sampler/ManualTraceSampler;-><init>(Lcom/facebook/tools/dextr/runtime/logger/TraceManager;)V

    invoke-static {v1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->b(Lcom/facebook/tools/dextr/runtime/logger/TraceSampler;)Z

    .line 34
    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;->SAMPLING:Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;

    invoke-virtual {v0, v1}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->a(Lcom/facebook/tools/dextr/runtime/logger/TraceManager$TracingMode;)V

    .line 37
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->g()Z

    move-result v1

    if-nez v1, :cond_3

    .line 38
    invoke-virtual {v0, v2}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->a(I)Z

    .line 44
    :cond_3
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_START:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    goto :goto_0
.end method

.method public static stop(I)V
    .locals 3
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 49
    invoke-static {}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->b()Lcom/facebook/tools/dextr/runtime/logger/TraceManager;

    move-result-object v0

    .line 50
    if-nez v0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_STOP:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 56
    invoke-virtual {v0}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->a(Z)V

    goto :goto_0
.end method

.method public static syncTestClock()V
    .locals 3
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const v1, -0x5314ff4

    .line 85
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->TEST_CLOCK_SYNC_START:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 86
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->TEST_CLOCK_SYNC_END:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 91
    return-void
.end method
