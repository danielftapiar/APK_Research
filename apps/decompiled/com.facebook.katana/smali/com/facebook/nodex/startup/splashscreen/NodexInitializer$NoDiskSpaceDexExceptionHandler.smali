.class Lcom/facebook/nodex/startup/splashscreen/NodexInitializer$NoDiskSpaceDexExceptionHandler;
.super Ljava/lang/Object;
.source "NodexInitializer.java"

# interfaces
.implements Lcom/facebook/nodex/startup/splashscreen/NodexInitializer$EnsureDexExceptionHandler;


# instance fields
.field final synthetic a:Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;


# direct methods
.method constructor <init>(Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer$NoDiskSpaceDexExceptionHandler;->a:Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Lcom/facebook/nodex/startup/splashscreen/NodexError;
    .locals 6

    .prologue
    .line 209
    const-wide v0, 0x7fffffffffffffffL

    .line 211
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    iget-object v3, p0, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer$NoDiskSpaceDexExceptionHandler;->a:Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;

    invoke-static {v3}, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->a(Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    .line 213
    invoke-static {}, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->c()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    const-class v2, Ljava/io/IOException;

    const-string v3, "No space left on device"

    invoke-static {p1, v2, v3}, Lcom/facebook/nodex/startup/splashscreen/NodexExceptionUtil;->a(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_0

    const-wide/32 v2, 0x600000

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 223
    :cond_0
    const-string v0, "nodex_not_enough_space_string"

    .line 224
    new-instance v1, Lcom/facebook/common/sdinstall/SDInstallChecker;

    iget-object v2, p0, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer$NoDiskSpaceDexExceptionHandler;->a:Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;

    invoke-static {v2}, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->a(Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/facebook/common/sdinstall/SDInstallCheckerDeps;

    invoke-direct {v3}, Lcom/facebook/common/sdinstall/SDInstallCheckerDeps;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/facebook/common/sdinstall/SDInstallChecker;-><init>(Landroid/content/Context;Lcom/facebook/common/sdinstall/SDInstallCheckerDeps;)V

    invoke-virtual {v1}, Lcom/facebook/common/sdinstall/SDInstallChecker;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    const-string v0, "nodex_not_enough_space_promote_sd_move_string"

    .line 229
    :cond_1
    iget-object v1, p0, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer$NoDiskSpaceDexExceptionHandler;->a:Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;

    invoke-static {v1}, Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;->a(Lcom/facebook/nodex/startup/splashscreen/NodexInitializer;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/nodex/startup/splashscreen/NodexError;->b(Landroid/content/Context;)Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;

    move-result-object v1

    const-string v2, "nodex_cannot_launch_fb_app_string"

    invoke-virtual {v1, v2}, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->a(Ljava/lang/String;)Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->c(Ljava/lang/String;)Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->a(Ljava/lang/Throwable;)Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;

    move-result-object v0

    sget-object v1, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;->APP_SETTINGS:Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;

    invoke-virtual {v0, v1}, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->a(Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;)Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/nodex/startup/splashscreen/NodexError$Builder;->a()Lcom/facebook/nodex/startup/splashscreen/NodexError;

    move-result-object v0

    .line 236
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0
.end method
