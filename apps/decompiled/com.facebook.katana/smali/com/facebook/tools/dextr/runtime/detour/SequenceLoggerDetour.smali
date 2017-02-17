.class public Lcom/facebook/tools/dextr/runtime/detour/SequenceLoggerDetour;
.super Ljava/lang/Object;
.source "SequenceLoggerDetour.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/facebook/sequencelogger/Sequence;Ljava/lang/String;I)Lcom/facebook/sequencelogger/Sequence;
    .locals 3

    .prologue
    .line 198
    invoke-interface {p0, p1}, Lcom/facebook/sequencelogger/Sequence;->a(Ljava/lang/String;)Lcom/facebook/sequencelogger/Sequence;

    move-result-object v0

    .line 199
    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_START:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/facebook/tools/dextr/runtime/detour/SequenceLoggerDetour;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 203
    return-object v0
.end method

.method public static a(Lcom/facebook/sequencelogger/Sequence;Ljava/lang/String;J)Lcom/facebook/sequencelogger/Sequence;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 382
    invoke-interface {p0, p1, v3, p2, p3}, Lcom/facebook/sequencelogger/Sequence;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/facebook/sequencelogger/Sequence;

    move-result-object v0

    .line 383
    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_CANCEL:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    const v2, 0x63e6cbed

    invoke-static {p1, v3}, Lcom/facebook/tools/dextr/runtime/detour/SequenceLoggerDetour;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 387
    return-object v0
.end method

.method public static a(Lcom/facebook/sequencelogger/Sequence;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;JI)Lcom/facebook/sequencelogger/Sequence;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/sequencelogger/Sequence;",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;JI)",
            "Lcom/facebook/sequencelogger/Sequence;"
        }
    .end annotation

    .prologue
    .line 408
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/facebook/sequencelogger/Sequence;->a(Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;J)Lcom/facebook/sequencelogger/Sequence;

    move-result-object v0

    .line 409
    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_FLAG:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/facebook/tools/dextr/runtime/detour/SequenceLoggerDetour;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p5, v2}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 413
    return-object v0
.end method

.method public static a(Lcom/facebook/sequencelogger/Sequence;Ljava/lang/String;Ljava/lang/String;I)Lcom/facebook/sequencelogger/Sequence;
    .locals 3

    .prologue
    .line 368
    invoke-interface {p0, p1, p2}, Lcom/facebook/sequencelogger/Sequence;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/sequencelogger/Sequence;

    move-result-object v0

    .line 369
    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_CANCEL:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-static {p1, p2}, Lcom/facebook/tools/dextr/runtime/detour/SequenceLoggerDetour;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p3, v2}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 373
    return-object v0
.end method

.method public static a(Lcom/facebook/sequencelogger/Sequence;Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;I)Lcom/facebook/sequencelogger/Sequence;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/sequencelogger/Sequence;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/facebook/sequencelogger/Sequence;"
        }
    .end annotation

    .prologue
    .line 212
    invoke-interface {p0, p1, p2, p3}, Lcom/facebook/sequencelogger/Sequence;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;)Lcom/facebook/sequencelogger/Sequence;

    move-result-object v0

    .line 213
    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_START:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-static {p1, p2}, Lcom/facebook/tools/dextr/runtime/detour/SequenceLoggerDetour;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p4, v2}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 217
    return-object v0
.end method

.method public static a(Lcom/facebook/sequencelogger/Sequence;Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;JI)Lcom/facebook/sequencelogger/Sequence;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/sequencelogger/Sequence;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;JI)",
            "Lcom/facebook/sequencelogger/Sequence;"
        }
    .end annotation

    .prologue
    .line 227
    invoke-interface/range {p0 .. p5}, Lcom/facebook/sequencelogger/Sequence;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;J)Lcom/facebook/sequencelogger/Sequence;

    move-result-object v0

    .line 228
    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_START:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-static {p1, p2}, Lcom/facebook/tools/dextr/runtime/detour/SequenceLoggerDetour;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p6, v2}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 232
    return-object v0
.end method

.method public static a(Lcom/facebook/sequencelogger/Sequence;Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;JLjava/lang/Boolean;)Lcom/facebook/sequencelogger/Sequence;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/sequencelogger/Sequence;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/facebook/sequencelogger/Sequence;"
        }
    .end annotation

    .prologue
    .line 243
    invoke-interface/range {p0 .. p6}, Lcom/facebook/sequencelogger/Sequence;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;JLjava/lang/Boolean;)Lcom/facebook/sequencelogger/Sequence;

    move-result-object v0

    .line 245
    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_START:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    const v2, 0x32672ba1

    invoke-static {p1, p2}, Lcom/facebook/tools/dextr/runtime/detour/SequenceLoggerDetour;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 249
    return-object v0
.end method

.method public static a(Lcom/facebook/sequencelogger/SequenceLogger;Lcom/facebook/sequencelogger/SequenceDefinition;I)Lcom/facebook/sequencelogger/Sequence;
    .locals 4

    .prologue
    .line 23
    invoke-interface {p0, p1}, Lcom/facebook/sequencelogger/SequenceLogger;->a(Lcom/facebook/sequencelogger/SequenceDefinition;)Lcom/facebook/sequencelogger/Sequence;

    move-result-object v0

    .line 24
    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_START:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-interface {p1}, Lcom/facebook/sequencelogger/SequenceDefinition;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/facebook/tools/dextr/runtime/detour/SequenceLoggerDetour;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 28
    return-object v0
.end method

.method public static a(Lcom/facebook/sequencelogger/SequenceLogger;Lcom/facebook/sequencelogger/SequenceDefinition;JLjava/lang/Boolean;)Lcom/facebook/sequencelogger/Sequence;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/sequencelogger/SequenceLogger;",
            "Lcom/facebook/sequencelogger/SequenceDefinition;",
            "J",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/facebook/sequencelogger/Sequence;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 81
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-wide v4, p2

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/facebook/sequencelogger/SequenceLogger;->a(Lcom/facebook/sequencelogger/SequenceDefinition;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;JLjava/lang/Boolean;)Lcom/facebook/sequencelogger/Sequence;

    move-result-object v0

    .line 87
    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_START:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    const v3, 0x1acd4bd9

    invoke-interface {p1}, Lcom/facebook/sequencelogger/SequenceDefinition;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/facebook/tools/dextr/runtime/detour/SequenceLoggerDetour;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 91
    return-object v0
.end method

.method public static a(Lcom/facebook/sequencelogger/SequenceLogger;Lcom/facebook/sequencelogger/SequenceDefinition;Lcom/google/common/collect/ImmutableMap;I)Lcom/facebook/sequencelogger/Sequence;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/sequencelogger/SequenceLogger;",
            "Lcom/facebook/sequencelogger/SequenceDefinition;",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/facebook/sequencelogger/Sequence;"
        }
    .end annotation

    .prologue
    .line 36
    invoke-interface {p0, p1, p2}, Lcom/facebook/sequencelogger/SequenceLogger;->a(Lcom/facebook/sequencelogger/SequenceDefinition;Lcom/google/common/collect/ImmutableMap;)Lcom/facebook/sequencelogger/Sequence;

    move-result-object v0

    .line 37
    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_START:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-interface {p1}, Lcom/facebook/sequencelogger/SequenceDefinition;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/facebook/tools/dextr/runtime/detour/SequenceLoggerDetour;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p3, v2}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 41
    return-object v0
.end method

.method public static a(Lcom/facebook/sequencelogger/SequenceLogger;Lcom/facebook/sequencelogger/SequenceDefinition;Lcom/google/common/collect/ImmutableMap;JI)Lcom/facebook/sequencelogger/Sequence;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/sequencelogger/SequenceLogger;",
            "Lcom/facebook/sequencelogger/SequenceDefinition;",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;JI)",
            "Lcom/facebook/sequencelogger/Sequence;"
        }
    .end annotation

    .prologue
    .line 50
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/facebook/sequencelogger/SequenceLogger;->a(Lcom/facebook/sequencelogger/SequenceDefinition;Lcom/google/common/collect/ImmutableMap;J)Lcom/facebook/sequencelogger/Sequence;

    move-result-object v0

    .line 51
    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_START:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-interface {p1}, Lcom/facebook/sequencelogger/SequenceDefinition;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/facebook/tools/dextr/runtime/detour/SequenceLoggerDetour;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p5, v2}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 55
    return-object v0
.end method

.method public static a(Lcom/facebook/sequencelogger/SequenceLogger;Lcom/facebook/sequencelogger/SequenceDefinition;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;JI)Lcom/facebook/sequencelogger/Sequence;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/sequencelogger/SequenceLogger;",
            "Lcom/facebook/sequencelogger/SequenceDefinition;",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;JI)",
            "Lcom/facebook/sequencelogger/Sequence;"
        }
    .end annotation

    .prologue
    .line 65
    invoke-interface/range {p0 .. p5}, Lcom/facebook/sequencelogger/SequenceLogger;->a(Lcom/facebook/sequencelogger/SequenceDefinition;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;J)Lcom/facebook/sequencelogger/Sequence;

    move-result-object v0

    .line 66
    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_START:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-interface {p1}, Lcom/facebook/sequencelogger/SequenceDefinition;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/facebook/tools/dextr/runtime/detour/SequenceLoggerDetour;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p6, v2}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 70
    return-object v0
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
    .line 417
    invoke-static {}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    const/4 v0, 0x0

    .line 423
    :goto_0
    return-object v0

    .line 420
    :cond_0
    if-nez p1, :cond_1

    .line 421
    const-string v0, "S%s"

    invoke-static {v0, p0}, Lcom/facebook/common/stringformat/StringFormatUtil;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 423
    :cond_1
    const-string v0, "S%s:%s"

    invoke-static {v0, p0, p1}, Lcom/facebook/common/stringformat/StringFormatUtil;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/facebook/sequencelogger/SequenceLogger;Lcom/facebook/sequencelogger/SequenceDefinition;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 187
    invoke-interface {p0, p1, p2}, Lcom/facebook/sequencelogger/SequenceLogger;->a(Lcom/facebook/sequencelogger/SequenceDefinition;Ljava/lang/String;)V

    .line 188
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_CANCEL:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-interface {p1}, Lcom/facebook/sequencelogger/SequenceDefinition;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/facebook/tools/dextr/runtime/detour/SequenceLoggerDetour;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 192
    return-void
.end method

.method public static b(Lcom/facebook/sequencelogger/Sequence;Ljava/lang/String;I)Lcom/facebook/sequencelogger/Sequence;
    .locals 3

    .prologue
    .line 256
    invoke-interface {p0, p1}, Lcom/facebook/sequencelogger/Sequence;->b(Ljava/lang/String;)Lcom/facebook/sequencelogger/Sequence;

    move-result-object v0

    .line 257
    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_STOP:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/facebook/tools/dextr/runtime/detour/SequenceLoggerDetour;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 261
    return-object v0
.end method

.method public static b(Lcom/facebook/sequencelogger/Sequence;Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;I)Lcom/facebook/sequencelogger/Sequence;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/sequencelogger/Sequence;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/facebook/sequencelogger/Sequence;"
        }
    .end annotation

    .prologue
    .line 270
    invoke-interface {p0, p1, p2, p3}, Lcom/facebook/sequencelogger/Sequence;->b(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;)Lcom/facebook/sequencelogger/Sequence;

    move-result-object v0

    .line 271
    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_STOP:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-static {p1, p2}, Lcom/facebook/tools/dextr/runtime/detour/SequenceLoggerDetour;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p4, v2}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 275
    return-object v0
.end method

.method public static b(Lcom/facebook/sequencelogger/Sequence;Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;JI)Lcom/facebook/sequencelogger/Sequence;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/sequencelogger/Sequence;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;JI)",
            "Lcom/facebook/sequencelogger/Sequence;"
        }
    .end annotation

    .prologue
    .line 285
    invoke-interface/range {p0 .. p5}, Lcom/facebook/sequencelogger/Sequence;->b(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;J)Lcom/facebook/sequencelogger/Sequence;

    move-result-object v0

    .line 286
    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_STOP:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-static {p1, p2}, Lcom/facebook/tools/dextr/runtime/detour/SequenceLoggerDetour;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p6, v2}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 290
    return-object v0
.end method

.method public static b(Lcom/facebook/sequencelogger/Sequence;Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;JLjava/lang/Boolean;)Lcom/facebook/sequencelogger/Sequence;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/sequencelogger/Sequence;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/facebook/sequencelogger/Sequence;"
        }
    .end annotation

    .prologue
    .line 301
    invoke-interface/range {p0 .. p6}, Lcom/facebook/sequencelogger/Sequence;->b(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;JLjava/lang/Boolean;)Lcom/facebook/sequencelogger/Sequence;

    move-result-object v0

    .line 303
    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_STOP:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    const v2, 0x611fc560

    invoke-static {p1, p2}, Lcom/facebook/tools/dextr/runtime/detour/SequenceLoggerDetour;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 307
    return-object v0
.end method

.method public static b(Lcom/facebook/sequencelogger/SequenceLogger;Lcom/facebook/sequencelogger/SequenceDefinition;I)V
    .locals 3

    .prologue
    .line 98
    invoke-interface {p0, p1}, Lcom/facebook/sequencelogger/SequenceLogger;->b(Lcom/facebook/sequencelogger/SequenceDefinition;)V

    .line 99
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_STOP:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-interface {p1}, Lcom/facebook/sequencelogger/SequenceDefinition;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/SequenceLoggerDetour;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 103
    return-void
.end method

.method public static b(Lcom/facebook/sequencelogger/SequenceLogger;Lcom/facebook/sequencelogger/SequenceDefinition;Lcom/google/common/collect/ImmutableMap;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/sequencelogger/SequenceLogger;",
            "Lcom/facebook/sequencelogger/SequenceDefinition;",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 110
    invoke-interface {p0, p1, p2}, Lcom/facebook/sequencelogger/SequenceLogger;->b(Lcom/facebook/sequencelogger/SequenceDefinition;Lcom/google/common/collect/ImmutableMap;)V

    .line 111
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_STOP:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-interface {p1}, Lcom/facebook/sequencelogger/SequenceDefinition;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/SequenceLoggerDetour;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 115
    return-void
.end method

.method public static b(Lcom/facebook/sequencelogger/SequenceLogger;Lcom/facebook/sequencelogger/SequenceDefinition;Lcom/google/common/collect/ImmutableMap;JI)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/sequencelogger/SequenceLogger;",
            "Lcom/facebook/sequencelogger/SequenceDefinition;",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;JI)V"
        }
    .end annotation

    .prologue
    .line 123
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/facebook/sequencelogger/SequenceLogger;->b(Lcom/facebook/sequencelogger/SequenceDefinition;Lcom/google/common/collect/ImmutableMap;J)V

    .line 124
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_STOP:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-interface {p1}, Lcom/facebook/sequencelogger/SequenceDefinition;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/SequenceLoggerDetour;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p5, v1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 128
    return-void
.end method

.method public static b(Lcom/facebook/sequencelogger/SequenceLogger;Lcom/facebook/sequencelogger/SequenceDefinition;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;JI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/sequencelogger/SequenceLogger;",
            "Lcom/facebook/sequencelogger/SequenceDefinition;",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;JI)V"
        }
    .end annotation

    .prologue
    .line 138
    invoke-interface/range {p0 .. p5}, Lcom/facebook/sequencelogger/SequenceLogger;->b(Lcom/facebook/sequencelogger/SequenceDefinition;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;J)V

    .line 139
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_STOP:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-interface {p1}, Lcom/facebook/sequencelogger/SequenceDefinition;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/facebook/tools/dextr/runtime/detour/SequenceLoggerDetour;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p6, v1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 143
    return-void
.end method

.method public static c(Lcom/facebook/sequencelogger/Sequence;Ljava/lang/String;I)Lcom/facebook/sequencelogger/Sequence;
    .locals 3

    .prologue
    .line 314
    invoke-interface {p0, p1}, Lcom/facebook/sequencelogger/Sequence;->c(Ljava/lang/String;)Lcom/facebook/sequencelogger/Sequence;

    move-result-object v0

    .line 315
    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_FAIL:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/facebook/tools/dextr/runtime/detour/SequenceLoggerDetour;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 319
    return-object v0
.end method

.method public static c(Lcom/facebook/sequencelogger/Sequence;Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;I)Lcom/facebook/sequencelogger/Sequence;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/sequencelogger/Sequence;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/facebook/sequencelogger/Sequence;"
        }
    .end annotation

    .prologue
    .line 328
    invoke-interface {p0, p1, p2, p3}, Lcom/facebook/sequencelogger/Sequence;->c(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;)Lcom/facebook/sequencelogger/Sequence;

    move-result-object v0

    .line 329
    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_FAIL:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-static {p1, p2}, Lcom/facebook/tools/dextr/runtime/detour/SequenceLoggerDetour;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p4, v2}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 333
    return-object v0
.end method

.method public static c(Lcom/facebook/sequencelogger/Sequence;Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;JI)Lcom/facebook/sequencelogger/Sequence;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/sequencelogger/Sequence;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;JI)",
            "Lcom/facebook/sequencelogger/Sequence;"
        }
    .end annotation

    .prologue
    .line 343
    invoke-interface/range {p0 .. p5}, Lcom/facebook/sequencelogger/Sequence;->c(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;J)Lcom/facebook/sequencelogger/Sequence;

    move-result-object v0

    .line 344
    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_FAIL:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-static {p1, p2}, Lcom/facebook/tools/dextr/runtime/detour/SequenceLoggerDetour;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p6, v2}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 348
    return-object v0
.end method

.method public static c(Lcom/facebook/sequencelogger/SequenceLogger;Lcom/facebook/sequencelogger/SequenceDefinition;I)V
    .locals 3

    .prologue
    .line 175
    invoke-interface {p0, p1}, Lcom/facebook/sequencelogger/SequenceLogger;->d(Lcom/facebook/sequencelogger/SequenceDefinition;)V

    .line 176
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_CANCEL:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-interface {p1}, Lcom/facebook/sequencelogger/SequenceDefinition;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/SequenceLoggerDetour;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 180
    return-void
.end method

.method public static d(Lcom/facebook/sequencelogger/Sequence;Ljava/lang/String;I)Lcom/facebook/sequencelogger/Sequence;
    .locals 3

    .prologue
    .line 355
    invoke-interface {p0, p1}, Lcom/facebook/sequencelogger/Sequence;->d(Ljava/lang/String;)Lcom/facebook/sequencelogger/Sequence;

    move-result-object v0

    .line 356
    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_CANCEL:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/facebook/tools/dextr/runtime/detour/SequenceLoggerDetour;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 360
    return-object v0
.end method

.method public static e(Lcom/facebook/sequencelogger/Sequence;Ljava/lang/String;I)Lcom/facebook/sequencelogger/Sequence;
    .locals 3

    .prologue
    .line 394
    invoke-interface {p0, p1}, Lcom/facebook/sequencelogger/Sequence;->e(Ljava/lang/String;)Lcom/facebook/sequencelogger/Sequence;

    move-result-object v0

    .line 395
    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->MARK_FLAG:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/facebook/tools/dextr/runtime/detour/SequenceLoggerDetour;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I

    .line 399
    return-object v0
.end method
