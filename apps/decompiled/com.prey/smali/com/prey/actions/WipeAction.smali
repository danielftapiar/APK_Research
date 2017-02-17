.class public Lcom/prey/actions/WipeAction;
.super Lcom/prey/actions/PreyAction;
.source "WipeAction.java"


# static fields
.field public static final DATA_ID:Ljava/lang/String; = "wipe"


# instance fields
.field public final ID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/prey/actions/PreyAction;-><init>()V

    .line 21
    const-string v0, "wipe"

    iput-object v0, p0, Lcom/prey/actions/WipeAction;->ID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute(Lcom/prey/actions/observer/ActionJob;Landroid/content/Context;)V
    .locals 5
    .param p1, "actionJob"    # Lcom/prey/actions/observer/ActionJob;
    .param p2, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prey/exceptions/PreyException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {p2}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v2

    .line 37
    .local v2, "preyConfig":Lcom/prey/PreyConfig;
    invoke-virtual {p0}, Lcom/prey/actions/WipeAction;->getConfig()Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "format_sim"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 38
    .local v1, "formatSim":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "format_sim:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 40
    :try_start_0
    const-string v3, "y"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    invoke-static {}, Lcom/prey/actions/wipe/WipeUtil;->deleteSD()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Lcom/prey/PreyConfig;->isFroyoOrAbove()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 48
    const-string v3, "Wiping the device!!"

    invoke-static {v3}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 49
    invoke-static {p2}, Lcom/prey/backwardcompatibility/FroyoSupport;->getInstance(Landroid/content/Context;)Lcom/prey/backwardcompatibility/FroyoSupport;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prey/backwardcompatibility/FroyoSupport;->wipe()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    :cond_1
    :goto_1
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 43
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x6

    return v0
.end method

.method public isSyncAction()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public shouldNotify()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public textToNotifyUserOnEachReport(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 25
    const-string v0, ""

    return-object v0
.end method
