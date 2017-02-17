.class public Lcom/facebook/tools/dextr/runtime/logger/DummyLogger;
.super Lcom/facebook/tools/dextr/runtime/logger/Logger;
.source "DummyLogger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/facebook/tools/dextr/runtime/logger/Logger;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;IILjava/lang/String;J)I
    .locals 1
    .param p4    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 25
    const/4 v0, -0x1

    return v0
.end method

.method protected final a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;IJ)I
    .locals 1
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 32
    const/4 v0, -0x1

    return v0
.end method

.method protected final a()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method protected final declared-synchronized a(Ljava/io/File;Lcom/facebook/tools/dextr/runtime/logger/Trace$ClosedListener;)V
    .locals 0

    .prologue
    .line 39
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method protected final a(Lcom/facebook/tools/dextr/runtime/logger/TraceSampler;)Z
    .locals 1
    .param p1    # Lcom/facebook/tools/dextr/runtime/logger/TraceSampler;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method
