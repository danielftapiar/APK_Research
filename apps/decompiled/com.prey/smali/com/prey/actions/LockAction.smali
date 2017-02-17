.class public Lcom/prey/actions/LockAction;
.super Lcom/prey/actions/PreyAction;
.source "LockAction.java"


# static fields
.field public static final DATA_ID:Ljava/lang/String; = "lock"


# instance fields
.field public final ID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/prey/actions/PreyAction;-><init>()V

    .line 19
    const-string v0, "lock"

    iput-object v0, p0, Lcom/prey/actions/LockAction;->ID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute(Lcom/prey/actions/observer/ActionJob;Landroid/content/Context;)V
    .locals 5
    .param p1, "actionJob"    # Lcom/prey/actions/observer/ActionJob;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 32
    invoke-static {p2}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v0

    .line 33
    .local v0, "preyConfig":Lcom/prey/PreyConfig;
    invoke-virtual {v0}, Lcom/prey/PreyConfig;->isFroyoOrAbove()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {v0, v4}, Lcom/prey/PreyConfig;->setLock(Z)V

    .line 35
    invoke-static {p2}, Lcom/prey/backwardcompatibility/FroyoSupport;->getInstance(Landroid/content/Context;)Lcom/prey/backwardcompatibility/FroyoSupport;

    move-result-object v2

    invoke-virtual {p0}, Lcom/prey/actions/LockAction;->getConfig()Ljava/util/HashMap;

    move-result-object v1

    const-string v3, "unlock_pass"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1, v4}, Lcom/prey/backwardcompatibility/FroyoSupport;->changePasswordAndLock(Ljava/lang/String;Z)V

    .line 37
    :cond_0
    return-void
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x5

    return v0
.end method

.method public isSyncAction()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public killAnyInstanceRunning(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-static {p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v0

    .line 52
    .local v0, "preyConfig":Lcom/prey/PreyConfig;
    invoke-virtual {v0}, Lcom/prey/PreyConfig;->isFroyoOrAbove()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    const-string v1, "-- Unlock instruction received"

    invoke-static {v1}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 54
    invoke-static {p1}, Lcom/prey/backwardcompatibility/FroyoSupport;->getInstance(Landroid/content/Context;)Lcom/prey/backwardcompatibility/FroyoSupport;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/prey/backwardcompatibility/FroyoSupport;->changePasswordAndLock(Ljava/lang/String;Z)V

    .line 56
    :cond_0
    return-void
.end method

.method public run(Landroid/content/Context;)Lcom/prey/actions/HttpDataService;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldNotify()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public textToNotifyUserOnEachReport(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 27
    const-string v0, ""

    return-object v0
.end method
