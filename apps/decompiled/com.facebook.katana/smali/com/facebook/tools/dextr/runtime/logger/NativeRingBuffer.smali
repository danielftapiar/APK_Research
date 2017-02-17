.class Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer;
.super Ljava/lang/Object;
.source "NativeRingBuffer.java"


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation


# static fields
.field public static final a:Z


# instance fields
.field private mPtr:J
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "armeabi-v7a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "arm64-v8a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer;->a:Z

    .line 26
    const-string v0, "dextr"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->a(Ljava/lang/String;)V

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer;->a:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer;->nativeInit(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not initialize native buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer;)J
    .locals 2

    .prologue
    .line 15
    iget-wide v0, p0, Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer;->mPtr:J

    return-wide v0
.end method

.method private native nativeDeinit()V
.end method

.method private native nativeInit(I)Z
.end method

.method private static native nativeWrite(JIIIIIJJ)V
.end method

.method private static native nativeWriteAndGetCursor(JLcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer$Cursor;IIIIIJJ)V
.end method


# virtual methods
.method final a()Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer$Cursor;
    .locals 1

    .prologue
    .line 185
    new-instance v0, Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer$Cursor;

    invoke-direct {v0, p0}, Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer$Cursor;-><init>(Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer;)V

    return-object v0
.end method

.method final a(IIIIIJJ)V
    .locals 12

    .prologue
    .line 145
    iget-wide v1, p0, Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer;->mPtr:J

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-static/range {v1 .. v11}, Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer;->nativeWrite(JIIIIIJJ)V

    .line 146
    return-void
.end method

.method final a(Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer$Cursor;IIIIIJJ)V
    .locals 13

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer;->mPtr:J

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-static/range {v0 .. v11}, Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer;->nativeWriteAndGetCursor(JLcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer$Cursor;IIIIIJJ)V

    .line 158
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/facebook/tools/dextr/runtime/logger/NativeRingBuffer;->nativeDeinit()V

    .line 130
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 131
    return-void
.end method
