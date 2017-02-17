.class public Lcom/facebook/tools/dextr/runtime/Bootstrap;
.super Ljava/lang/Object;
.source "Bootstrap.java"


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
.field private static a:Lcom/facebook/tools/dextr/runtime/logger/FileManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 204
    sget-boolean v0, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a:Z

    if-nez v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-static {p0}, Lcom/facebook/tools/dextr/runtime/Bootstrap;->c(Landroid/content/Context;)V

    goto :goto_0
.end method

.method static b(Landroid/content/Context;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LogMethodNoExceptionInCatch"
        }
    .end annotation

    .prologue
    .line 213
    sget-boolean v0, Lcom/facebook/tools/dextr/runtime/logger/Logger;->a:Z

    if-nez v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 217
    :cond_0
    :try_start_0
    const-string v0, "com.facebook.inject.FbInjector"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 218
    sget-object v0, Lcom/facebook/tools/dextr/runtime/Bootstrap;->a:Lcom/facebook/tools/dextr/runtime/logger/FileManager;

    invoke-static {p0, v0}, Lcom/facebook/tools/dextr/runtime/Bootstrap$Stage2And3Holder;->a(Landroid/content/Context;Lcom/facebook/tools/dextr/runtime/logger/FileManager;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    goto :goto_0

    .line 230
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/facebook/tools/dextr/runtime/logger/FileManager;

    invoke-static {p0}, Lcom/facebook/tools/dextr/runtime/Bootstrap;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/tools/dextr/runtime/logger/FileManager;-><init>(Ljava/io/File;)V

    sput-object v0, Lcom/facebook/tools/dextr/runtime/Bootstrap;->a:Lcom/facebook/tools/dextr/runtime/logger/FileManager;

    .line 52
    invoke-static {}, Lcom/facebook/tools/dextr/runtime/logger/TraceManager;->a()V

    .line 57
    return-void
.end method

.method private static d(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    .prologue
    .line 233
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 237
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mounted"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 241
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-object v0

    .line 247
    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move-object v0, v1

    .line 249
    goto :goto_0

    :cond_3
    move-object v0, v2

    .line 252
    goto :goto_0
.end method
