.class public Lcom/facebook/tools/dextr/runtime/sampler/ManualTraceSampler;
.super Ljava/lang/Object;
.source "ManualTraceSampler.java"

# interfaces
.implements Lcom/facebook/tools/dextr/runtime/logger/TraceSampler;


# instance fields
.field private final a:Lcom/facebook/tools/dextr/runtime/logger/TraceManager;


# direct methods
.method public constructor <init>(Lcom/facebook/tools/dextr/runtime/logger/TraceManager;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/facebook/tools/dextr/runtime/sampler/ManualTraceSampler;->a:Lcom/facebook/tools/dextr/runtime/logger/TraceManager;

    .line 19
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry;)Z
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/sampler/ManualTraceSampler;->a:Lcom/facebook/tools/dextr/runtime/logger/TraceManager;

    invoke-virtual {v0}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    const/4 v0, 0x1

    .line 31
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/facebook/tools/dextr/runtime/logger/LogEntry;)Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/sampler/ManualTraceSampler;->a:Lcom/facebook/tools/dextr/runtime/logger/TraceManager;

    invoke-virtual {v0}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 39
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
