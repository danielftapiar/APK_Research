.class public Lcom/facebook/tools/dextr/runtime/detour/PerformanceLoggerDetour;
.super Ljava/lang/Object;
.source "PerformanceLoggerDetour.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 196
    invoke-static {}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const/4 v0, 0x0

    .line 202
    :goto_0
    return-object v0

    .line 199
    :cond_0
    if-nez p1, :cond_1

    .line 200
    const-string v0, "P%s"

    invoke-static {v0, p0}, Lcom/facebook/common/stringformat/StringFormatUtil;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 202
    :cond_1
    const-string v0, "P%s:%s"

    invoke-static {v0, p0, p1}, Lcom/facebook/common/stringformat/StringFormatUtil;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/facebook/performancelogger/PerformanceLogger;ILjava/lang/String;I)V
    .locals 2

    .prologue
    .line 44
    invoke-interface {p0, p1, p2}, Lcom/facebook/performancelogger/PerformanceLogger;->c(ILjava/lang/String;)V

    .line 45
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_START:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/facebook/tools/dextr/runtime/detour/PerformanceLoggerDetour;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 46
    return-void
.end method

.method public static a(Lcom/facebook/performancelogger/PerformanceLogger;ILjava/lang/String;J)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 121
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/facebook/performancelogger/PerformanceLogger;->a(ILjava/lang/String;Ljava/lang/String;J)V

    .line 122
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_STOP:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    const v1, -0x4fffae17

    invoke-static {p2, v3}, Lcom/facebook/tools/dextr/runtime/detour/PerformanceLoggerDetour;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 126
    return-void
.end method

.method public static a(Lcom/facebook/performancelogger/PerformanceLogger;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 32
    invoke-interface {p0, p1, p2, p3}, Lcom/facebook/performancelogger/PerformanceLogger;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_START:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-static {p2, p3}, Lcom/facebook/tools/dextr/runtime/detour/PerformanceLoggerDetour;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p4, v1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 37
    return-void
.end method

.method public static a(Lcom/facebook/performancelogger/PerformanceLogger;Lcom/facebook/performancelogger/MarkerConfig;I)V
    .locals 3

    .prologue
    .line 52
    invoke-interface {p0, p1}, Lcom/facebook/performancelogger/PerformanceLogger;->c(Lcom/facebook/performancelogger/MarkerConfig;)V

    .line 53
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_START:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-virtual {p1}, Lcom/facebook/performancelogger/MarkerConfig;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/performancelogger/MarkerConfig;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/PerformanceLoggerDetour;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 57
    return-void
.end method

.method public static a(Lcom/facebook/performancelogger/PerformanceLogger;Lcom/facebook/performancelogger/MarkerConfig;ZI)V
    .locals 3

    .prologue
    .line 64
    invoke-interface {p0, p1, p2}, Lcom/facebook/performancelogger/PerformanceLogger;->a(Lcom/facebook/performancelogger/MarkerConfig;Z)V

    .line 65
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_START:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-virtual {p1}, Lcom/facebook/performancelogger/MarkerConfig;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/performancelogger/MarkerConfig;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/PerformanceLoggerDetour;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 69
    return-void
.end method

.method public static b(Lcom/facebook/performancelogger/PerformanceLogger;ILjava/lang/String;I)V
    .locals 2

    .prologue
    .line 87
    invoke-interface {p0, p1, p2}, Lcom/facebook/performancelogger/PerformanceLogger;->e(ILjava/lang/String;)V

    .line 88
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_STOP:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/facebook/tools/dextr/runtime/detour/PerformanceLoggerDetour;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 89
    return-void
.end method

.method public static b(Lcom/facebook/performancelogger/PerformanceLogger;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 97
    invoke-interface {p0, p1, p2, p3}, Lcom/facebook/performancelogger/PerformanceLogger;->c(ILjava/lang/String;Ljava/lang/String;)V

    .line 98
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_STOP:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-static {p2, p3}, Lcom/facebook/tools/dextr/runtime/detour/PerformanceLoggerDetour;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p4, v1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 102
    return-void
.end method

.method public static b(Lcom/facebook/performancelogger/PerformanceLogger;Lcom/facebook/performancelogger/MarkerConfig;I)V
    .locals 3

    .prologue
    .line 75
    invoke-interface {p0, p1}, Lcom/facebook/performancelogger/PerformanceLogger;->d(Lcom/facebook/performancelogger/MarkerConfig;)V

    .line 76
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_STOP:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-virtual {p1}, Lcom/facebook/performancelogger/MarkerConfig;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/performancelogger/MarkerConfig;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/PerformanceLoggerDetour;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 80
    return-void
.end method

.method public static c(Lcom/facebook/performancelogger/PerformanceLogger;ILjava/lang/String;I)V
    .locals 2

    .prologue
    .line 144
    invoke-interface {p0, p1, p2}, Lcom/facebook/performancelogger/PerformanceLogger;->f(ILjava/lang/String;)V

    .line 145
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_FAIL:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/facebook/tools/dextr/runtime/detour/PerformanceLoggerDetour;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 146
    return-void
.end method

.method public static c(Lcom/facebook/performancelogger/PerformanceLogger;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 154
    invoke-interface {p0, p1, p2, p3}, Lcom/facebook/performancelogger/PerformanceLogger;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 155
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_FAIL:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-static {p2, p3}, Lcom/facebook/tools/dextr/runtime/detour/PerformanceLoggerDetour;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p4, v1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 159
    return-void
.end method

.method public static c(Lcom/facebook/performancelogger/PerformanceLogger;Lcom/facebook/performancelogger/MarkerConfig;I)V
    .locals 3

    .prologue
    .line 132
    invoke-interface {p0, p1}, Lcom/facebook/performancelogger/PerformanceLogger;->e(Lcom/facebook/performancelogger/MarkerConfig;)V

    .line 133
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_FAIL:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-virtual {p1}, Lcom/facebook/performancelogger/MarkerConfig;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/performancelogger/MarkerConfig;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/PerformanceLoggerDetour;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 137
    return-void
.end method

.method public static d(Lcom/facebook/performancelogger/PerformanceLogger;ILjava/lang/String;I)V
    .locals 2

    .prologue
    .line 177
    invoke-interface {p0, p1, p2}, Lcom/facebook/performancelogger/PerformanceLogger;->g(ILjava/lang/String;)V

    .line 178
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_CANCEL:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/facebook/tools/dextr/runtime/detour/PerformanceLoggerDetour;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 179
    return-void
.end method

.method public static d(Lcom/facebook/performancelogger/PerformanceLogger;Lcom/facebook/performancelogger/MarkerConfig;I)V
    .locals 3

    .prologue
    .line 165
    invoke-interface {p0, p1}, Lcom/facebook/performancelogger/PerformanceLogger;->f(Lcom/facebook/performancelogger/MarkerConfig;)V

    .line 166
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_CANCEL:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-virtual {p1}, Lcom/facebook/performancelogger/MarkerConfig;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/performancelogger/MarkerConfig;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/PerformanceLoggerDetour;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 170
    return-void
.end method
