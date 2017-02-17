.class public Lcom/facebook/common/sdinstall/SDInstallChecker;
.super Ljava/lang/Object;
.source "SDInstallChecker.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/common/sdinstall/SDInstallCheckerDeps;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/common/sdinstall/SDInstallCheckerDeps;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/facebook/common/sdinstall/SDInstallChecker;->a:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Lcom/facebook/common/sdinstall/SDInstallChecker;->b:Lcom/facebook/common/sdinstall/SDInstallCheckerDeps;

    .line 18
    return-void
.end method

.method private b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 21
    iget-object v1, p0, Lcom/facebook/common/sdinstall/SDInstallChecker;->b:Lcom/facebook/common/sdinstall/SDInstallCheckerDeps;

    iget-object v1, p0, Lcom/facebook/common/sdinstall/SDInstallChecker;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/common/sdinstall/SDInstallCheckerDeps;->a(Landroid/content/Context;)I

    move-result v1

    .line 23
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1

    .line 39
    :cond_0
    :goto_0
    return v0

    .line 29
    :cond_1
    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_0

    .line 34
    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 39
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Lcom/facebook/common/sdinstall/SDInstallChecker;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/facebook/common/sdinstall/SDInstallChecker;->b:Lcom/facebook/common/sdinstall/SDInstallCheckerDeps;

    iget-object v1, p0, Lcom/facebook/common/sdinstall/SDInstallChecker;->b:Lcom/facebook/common/sdinstall/SDInstallCheckerDeps;

    invoke-static {}, Lcom/facebook/common/sdinstall/SDInstallCheckerDeps;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/common/sdinstall/SDInstallCheckerDeps;->a(Ljava/lang/String;)Landroid/os/StatFs;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v2, v4

    const-wide/32 v4, 0x1e00000

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/facebook/common/sdinstall/SDInstallChecker;->b:Lcom/facebook/common/sdinstall/SDInstallCheckerDeps;

    iget-object v1, p0, Lcom/facebook/common/sdinstall/SDInstallChecker;->b:Lcom/facebook/common/sdinstall/SDInstallCheckerDeps;

    invoke-static {}, Lcom/facebook/common/sdinstall/SDInstallCheckerDeps;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/common/sdinstall/SDInstallCheckerDeps;->a(Ljava/lang/String;)Landroid/os/StatFs;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v2, v4

    const-wide/32 v4, 0x6400000

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 66
    const/4 v0, 0x1

    goto :goto_0
.end method
