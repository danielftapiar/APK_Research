.class public Lcom/facebook/tools/dextr/runtime/sampler/BackwardsTraceSampler;
.super Ljava/lang/Object;
.source "BackwardsTraceSampler.java"

# interfaces
.implements Lcom/facebook/tools/dextr/runtime/logger/TraceSampler;


# instance fields
.field private final a:Lcom/facebook/tools/dextr/bridge/sampling/BackTracerSamplingConfiguration;


# direct methods
.method public constructor <init>(Lcom/facebook/tools/dextr/bridge/sampling/BackTracerSamplingConfiguration;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/facebook/tools/dextr/runtime/sampler/BackwardsTraceSampler;->a:Lcom/facebook/tools/dextr/bridge/sampling/BackTracerSamplingConfiguration;

    .line 18
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry;)Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public final b(Lcom/facebook/tools/dextr/runtime/logger/LogEntry;)Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method
