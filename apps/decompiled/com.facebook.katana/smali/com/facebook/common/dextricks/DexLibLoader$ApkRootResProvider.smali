.class final Lcom/facebook/common/dextricks/DexLibLoader$ApkRootResProvider;
.super Lcom/facebook/common/dextricks/DexLibLoader$ResProvider;
.source "DexLibLoader.java"


# static fields
.field private static a:Ljava/lang/reflect/Method;


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 296
    invoke-direct {p0, v4}, Lcom/facebook/common/dextricks/DexLibLoader$ResProvider;-><init>(B)V

    .line 297
    sget-object v0, Lcom/facebook/common/dextricks/DexLibLoader$ApkRootResProvider;->a:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 298
    const-class v0, Landroid/content/res/AssetManager;

    const-string v1, "openNonAsset"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/facebook/common/dextricks/DexLibLoader$ApkRootResProvider;->a:Ljava/lang/reflect/Method;

    .line 301
    :cond_0
    iput-object p1, p0, Lcom/facebook/common/dextricks/DexLibLoader$ApkRootResProvider;->b:Landroid/content/Context;

    .line 302
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;B)V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0, p1}, Lcom/facebook/common/dextricks/DexLibLoader$ApkRootResProvider;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 307
    :try_start_0
    sget-object v0, Lcom/facebook/common/dextricks/DexLibLoader$ApkRootResProvider;->a:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/facebook/common/dextricks/DexLibLoader$ApkRootResProvider;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 308
    :catch_0
    move-exception v0

    .line 310
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 311
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 312
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 313
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    .line 314
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 317
    :cond_0
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_1

    .line 318
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 321
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
