.class Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer$Cursor;
.super Ljava/lang/Object;
.source "NativeRingBuffer.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation


# instance fields
.field private final mBuffer:Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private final mBufferPtr:J
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field private mNativeCursor:J
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer;)V
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer$Cursor;->mBuffer:Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer;

    .line 60
    iget-object v0, p0, Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer$Cursor;->mBuffer:Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer;

    invoke-static {v0}, Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer;->a(Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer$Cursor;->mBufferPtr:J

    .line 61
    invoke-direct {p0}, Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer$Cursor;->nativeInit()V

    .line 62
    return-void
.end method

.method private native nativeInit()V
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 66
    new-instance v0, Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer$Cursor;

    iget-object v1, p0, Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer$Cursor;->mBuffer:Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer;

    invoke-direct {v0, v1}, Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer$Cursor;-><init>(Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer;)V

    .line 68
    iget-wide v2, p0, Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer$Cursor;->mNativeCursor:J

    iput-wide v2, v0, Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer$Cursor;->mNativeCursor:J

    .line 69
    return-object v0
.end method

.method native resetToTail(D)V
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 113
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "{Cursor: mBufferPtr = 0x%x, mNativeCursor = 0x%x}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer$Cursor;->mBufferPtr:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer$Cursor;->mNativeCursor:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method native tryReadBackward(Lcom/facebook/tools/dextr/runtime/logger/LogEntry;)Z
.end method

.method native tryReadForward(Lcom/facebook/tools/dextr/runtime/logger/LogEntry;)Z
.end method

.method native waitAndTryReadForward(Lcom/facebook/tools/dextr/runtime/logger/LogEntry;)Z
.end method
