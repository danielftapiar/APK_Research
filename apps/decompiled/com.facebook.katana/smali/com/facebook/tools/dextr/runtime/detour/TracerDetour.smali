.class public Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;
.super Ljava/lang/Object;
.source "TracerDetour.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)V
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_POP:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-static {v0, p0}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;I)I

    .line 51
    invoke-static {}, Lcom/facebook/debug/tracer/Tracer;->a()V

    .line 52
    return-void
.end method

.method public static a(JI)V
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_POP:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-static {v0, p2}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;I)I

    .line 56
    invoke-static {p0, p1}, Lcom/facebook/debug/tracer/Tracer;->a(J)V

    .line 57
    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 16
    invoke-static {p0}, Lcom/facebook/debug/tracer/Tracer;->a(Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_PUSH:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-static {v0, p1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;I)I

    .line 21
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/facebook/debug/tracer/Tracer;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/facebook/common/stringformat/StringFormatUtil;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 32
    :goto_0
    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_PUSH:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-static {v1, p2, v0}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 34
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/Object;I)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/Object;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-static {p0, p1}, Lcom/facebook/debug/tracer/Tracer;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/tools/dextr/runtime/detour/TracerDetour;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/facebook/common/stringformat/StringFormatUtil;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 45
    :goto_0
    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_PUSH:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-static {v1, p2, v0}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 47
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Z)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 70
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(I)J
    .locals 2

    .prologue
    .line 60
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_POP:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-static {v0, p0}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;I)I

    .line 61
    invoke-static {}, Lcom/facebook/debug/tracer/Tracer;->b()J

    move-result-wide v0

    return-wide v0
.end method
