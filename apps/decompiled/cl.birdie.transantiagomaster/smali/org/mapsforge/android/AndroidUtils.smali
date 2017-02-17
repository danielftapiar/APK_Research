.class public final Lorg/mapsforge/android/AndroidUtils;
.super Ljava/lang/Object;
.source "AndroidUtils.java"


# static fields
.field private static final EMULATOR_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "google_sdk"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sdk"

    aput-object v2, v0, v1

    sput-object v0, Lorg/mapsforge/android/AndroidUtils;->EMULATOR_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public static applicationRunsOnAndroidEmulator()Z
    .locals 4

    .prologue
    .line 33
    const/4 v0, 0x0

    .local v0, "i":I
    sget-object v2, Lorg/mapsforge/android/AndroidUtils;->EMULATOR_NAMES:[Ljava/lang/String;

    array-length v1, v2

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 34
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    sget-object v3, Lorg/mapsforge/android/AndroidUtils;->EMULATOR_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    const/4 v2, 0x1

    .line 39
    :goto_1
    return v2

    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static currentThreadIsUiThread()Z
    .locals 2

    .prologue
    .line 46
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
