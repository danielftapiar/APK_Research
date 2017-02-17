.class public abstract Lcom/facebook/tools/dextr/runtime/logger/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BadMethodUse-android.util.Log.v",
        "BadMethodUse-android.util.Log.d",
        "BadMethodUse-android.util.Log.i",
        "BadMethodUse-android.util.Log.w",
        "BadMethodUse-android.util.Log.e"
    }
.end annotation


# static fields
.field public static final a:Z

.field protected static final b:Lcom/facebook/tools/dextr/runtime/logger/LogEntry;

.field private static final c:Lcom/facebook/tools/dextr/runtime/logger/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 28
    sget-boolean v0, Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer;->a:Z

    .line 30
    sput-boolean v0, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a:Z

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Lcom/facebook/tools/dextr/runtime/logger/RealLogger;

    invoke-direct {v0}, Lcom/facebook/tools/dextr/runtime/logger/RealLogger;-><init>()V

    sput-object v0, Lcom/facebook/tools/dextr/runtime/logger/Logger;->c:Lcom/facebook/tools/dextr/runtime/logger/Logger;

    .line 40
    :goto_0
    new-instance v0, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;

    const/4 v1, -0x1

    sget-object v2, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->UNKNOWN_TYPE:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    const-string v3, "disabled"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/tools/dextr/runtime/logger/LogEntry;-><init>(ILcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/tools/dextr/runtime/logger/Logger;->b:Lcom/facebook/tools/dextr/runtime/logger/LogEntry;

    return-void

    .line 36
    :cond_0
    new-instance v0, Lcom/facebook/tools/dextr/runtime/logger/DummyLogger;

    invoke-direct {v0}, Lcom/facebook/tools/dextr/runtime/logger/DummyLogger;-><init>()V

    sput-object v0, Lcom/facebook/tools/dextr/runtime/logger/Logger;->c:Lcom/facebook/tools/dextr/runtime/logger/Logger;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;I)I
    .locals 8

    .prologue
    .line 52
    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/Logger;->c:Lcom/facebook/tools/dextr/runtime/logger/Logger;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p0

    move v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;IILjava/lang/String;J)I

    move-result v0

    return v0
.end method

.method public static a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;II)I
    .locals 8

    .prologue
    .line 83
    if-nez p2, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "writeEntry called with mMatchID = NO_MATCH"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/Logger;->c:Lcom/facebook/tools/dextr/runtime/logger/Logger;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v1 .. v7}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;IILjava/lang/String;J)I

    move-result v0

    return v0
.end method

.method public static a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;ILjava/lang/String;)I
    .locals 8
    .param p2    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 59
    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/Logger;->c:Lcom/facebook/tools/dextr/runtime/logger/Logger;

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p0

    move v3, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v7}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;IILjava/lang/String;J)I

    move-result v0

    return v0
.end method

.method public static a(J)V
    .locals 4

    .prologue
    .line 99
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/Logger;->c:Lcom/facebook/tools/dextr/runtime/logger/Logger;

    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->TRACE_BACKWARDS:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;IJ)I

    .line 105
    return-void
.end method

.method public static a(JI)V
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/Logger;->c:Lcom/facebook/tools/dextr/runtime/logger/Logger;

    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->TRACE_START:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    invoke-virtual {v0, v1, p2, p0, p1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;IJ)I

    .line 96
    return-void
.end method

.method public static b(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;IJ)I
    .locals 8

    .prologue
    .line 67
    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/Logger;->c:Lcom/facebook/tools/dextr/runtime/logger/Logger;

    const v3, 0x47e7ce7e

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-wide v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;IILjava/lang/String;J)I

    move-result v0

    return v0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/Logger;->c:Lcom/facebook/tools/dextr/runtime/logger/Logger;

    invoke-virtual {v0}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a()V

    .line 49
    return-void
.end method

.method public static b(Ljava/io/File;Lcom/facebook/tools/dextr/runtime/logger/Trace$ClosedListener;)V
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/Logger;->c:Lcom/facebook/tools/dextr/runtime/logger/Logger;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Ljava/io/File;Lcom/facebook/tools/dextr/runtime/logger/Trace$ClosedListener;)V

    .line 45
    return-void
.end method

.method public static b(Lcom/facebook/tools/dextr/runtime/logger/TraceSampler;)Z
    .locals 1
    .param p0    # Lcom/facebook/tools/dextr/runtime/logger/TraceSampler;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 129
    sget-object v0, Lcom/facebook/tools/dextr/runtime/logger/Logger;->c:Lcom/facebook/tools/dextr/runtime/logger/Logger;

    invoke-virtual {v0, p0}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/TraceSampler;)Z

    move-result v0

    return v0
.end method

.method public static c()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 108
    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/Logger;->c:Lcom/facebook/tools/dextr/runtime/logger/Logger;

    sget-object v2, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->TRACE_END:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move v4, v3

    invoke-virtual/range {v1 .. v7}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;IILjava/lang/String;J)I

    .line 114
    return-void
.end method

.method public static d()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 117
    sget-object v1, Lcom/facebook/tools/dextr/runtime/logger/Logger;->c:Lcom/facebook/tools/dextr/runtime/logger/Logger;

    sget-object v2, Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;->TRACE_ABORT:Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move v4, v3

    invoke-virtual/range {v1 .. v7}, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;IILjava/lang/String;J)I

    .line 123
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;IILjava/lang/String;J)I
    .param p4    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method protected abstract a(Lcom/facebook/tools/dextr/runtime/logger/LogEntry$EntryType;IJ)I
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end method

.method protected abstract a()V
.end method

.method protected abstract a(Ljava/io/File;Lcom/facebook/tools/dextr/runtime/logger/Trace$ClosedListener;)V
.end method

.method protected abstract a(Lcom/facebook/tools/dextr/runtime/logger/TraceSampler;)Z
    .param p1    # Lcom/facebook/tools/dextr/runtime/logger/TraceSampler;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method
