.class public Lcom/facebook/dalvik/DalvikInternals;
.super Ljava/lang/Object;
.source "DalvikInternals.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "fb_dalvik-internals"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->a(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 83
    const-string v0, "java.vm.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_0

    const-string v1, "0."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-static {p0}, Lcom/facebook/dalvik/DalvikInternals;->nativeRegisterDalvikStreamWithBreakpad(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static native deleteRecursive(Ljava/lang/String;)V
.end method

.method public static synchronized native declared-synchronized fixDvmForCrossDexHack()V
.end method

.method public static synchronized native declared-synchronized fixLinearAllocBuffer(I)V
.end method

.method public static native getElapsedGcMillis()J
.end method

.method public static native getOwnerUid(Ljava/lang/String;)I
.end method

.method public static native getTotalGcCount()J
.end method

.method public static native initGcInstrumentation()Z
.end method

.method public static native link(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method private static native nativeRegisterDalvikStreamWithBreakpad(Ljava/lang/String;)V
.end method

.method public static native noop()V
.end method

.method public static native readOdexDepBlock(Ljava/lang/String;)[B
.end method
