.class public Lcom/facebook/tools/dextr/runtime/sampler/TraceSamplerFactory;
.super Ljava/lang/Object;
.source "TraceSamplerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/facebook/tools/dextr/runtime/logger/TraceManager;ZLcom/facebook/tools/dextr/bridge/sampling/SamplingConfiguration;)Lcom/facebook/tools/dextr/runtime/logger/TraceSampler;
    .locals 1
    .param p2    # Lcom/facebook/tools/dextr/bridge/sampling/SamplingConfiguration;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 24
    if-eqz p1, :cond_0

    .line 26
    new-instance v0, Lcom/facebook/tools/dextr/runtime/sampler/ManualTraceSampler;

    invoke-direct {v0, p0}, Lcom/facebook/tools/dextr/runtime/sampler/ManualTraceSampler;-><init>(Lcom/facebook/tools/dextr/runtime/logger/TraceManager;)V

    .line 38
    :goto_0
    return-object v0

    .line 28
    :cond_0
    instance-of v0, p2, Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration;

    if-eqz v0, :cond_1

    .line 29
    new-instance v0, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler;

    check-cast p2, Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration;

    invoke-direct {v0, p0, p2}, Lcom/facebook/tools/dextr/runtime/sampler/CallSiteTraceSampler;-><init>(Lcom/facebook/tools/dextr/runtime/logger/TraceManager;Lcom/facebook/tools/dextr/bridge/sampling/CallSiteSamplingConfiguration;)V

    goto :goto_0

    .line 30
    :cond_1
    instance-of v0, p2, Lcom/facebook/tools/dextr/bridge/sampling/SequenceLoggerSamplingConfiguration;

    if-eqz v0, :cond_2

    .line 31
    new-instance v0, Lcom/facebook/tools/dextr/runtime/sampler/SequenceLoggerTraceSampler;

    check-cast p2, Lcom/facebook/tools/dextr/bridge/sampling/SequenceLoggerSamplingConfiguration;

    invoke-direct {v0, p0, p2}, Lcom/facebook/tools/dextr/runtime/sampler/SequenceLoggerTraceSampler;-><init>(Lcom/facebook/tools/dextr/runtime/logger/TraceManager;Lcom/facebook/tools/dextr/bridge/sampling/SequenceLoggerSamplingConfiguration;)V

    goto :goto_0

    .line 34
    :cond_2
    instance-of v0, p2, Lcom/facebook/tools/dextr/bridge/sampling/BackTracerSamplingConfiguration;

    if-eqz v0, :cond_3

    .line 35
    new-instance v0, Lcom/facebook/tools/dextr/runtime/sampler/BackwardsTraceSampler;

    check-cast p2, Lcom/facebook/tools/dextr/bridge/sampling/BackTracerSamplingConfiguration;

    invoke-direct {v0, p2}, Lcom/facebook/tools/dextr/runtime/sampler/BackwardsTraceSampler;-><init>(Lcom/facebook/tools/dextr/bridge/sampling/BackTracerSamplingConfiguration;)V

    goto :goto_0

    .line 38
    :cond_3
    new-instance v0, Lcom/facebook/tools/dextr/runtime/sampler/TraceSamplerFactory$1;

    invoke-direct {v0}, Lcom/facebook/tools/dextr/runtime/sampler/TraceSamplerFactory$1;-><init>()V

    goto :goto_0
.end method
