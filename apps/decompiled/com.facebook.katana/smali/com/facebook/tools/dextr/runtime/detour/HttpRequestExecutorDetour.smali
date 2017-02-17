.class public Lcom/facebook/tools/dextr/runtime/detour/HttpRequestExecutorDetour;
.super Ljava/lang/Object;
.source "HttpRequestExecutorDetour.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method private static a(JI)Ljava/lang/String;
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 80
    invoke-static {p0, p1}, Lcom/facebook/fbtrace/FbTraceIdHelper;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    int-to-long v2, p2

    invoke-static {v2, v3}, Lcom/facebook/fbtrace/FbTraceIdHelper;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/facebook/http/engine/HttpRequestExecutor;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/facebook/http/interfaces/RequestState;Lorg/apache/http/protocol/HttpContext;Lcom/facebook/http/observer/HttpFlowStatistics;)Lorg/apache/http/HttpResponse;
    .locals 7
    .param p1    # Lorg/apache/http/client/methods/HttpUriRequest;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const v6, 0x47e7ce7e

    .line 38
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->NETWORK_OP_START:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-static {v0, v6}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;I)I

    move-result v0

    .line 39
    invoke-static {}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->b()Lcom/facebook/tools/dextr/runtime/logger/TraceManager;

    move-result-object v1

    .line 41
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    invoke-virtual {v1}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->e()J

    move-result-wide v2

    .line 47
    const-string v4, "X-FBTrace-Meta"

    invoke-static {v2, v3, v0}, Lcom/facebook/tools/dextr/runtime/detour/HttpRequestExecutorDetour;->a(JI)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v2, "X-FBTrace-Sampled"

    const-string v3, "true"

    invoke-interface {p1, v2, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/facebook/http/engine/HttpRequestExecutor;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/facebook/http/interfaces/RequestState;Lorg/apache/http/protocol/HttpContext;Lcom/facebook/http/observer/HttpFlowStatistics;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 56
    sget-object v3, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->NETWORK_OP_END:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-static {v3, v6, v0}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;II)I

    .line 58
    if-eqz v2, :cond_1

    .line 59
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    .line 60
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->COUNTER:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-static {v0, v6, v4, v5}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->b(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;IJ)I

    .line 62
    if-eqz v1, :cond_1

    const-string v0, "X-FBTrace-Backwards"

    invoke-interface {v2, v0}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    const-string v0, "X-FBTrace-Backwards"

    invoke-interface {v2, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 64
    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {v1}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->a(Z)V

    .line 72
    :cond_1
    return-object v2
.end method
