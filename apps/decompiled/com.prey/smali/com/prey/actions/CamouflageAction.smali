.class public Lcom/prey/actions/CamouflageAction;
.super Lcom/prey/actions/PreyAction;
.source "CamouflageAction.java"


# static fields
.field public static final DATA_ID:Ljava/lang/String; = "camouflage"


# instance fields
.field public final ID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/prey/actions/PreyAction;-><init>()V

    .line 24
    const-string v0, "camouflage"

    iput-object v0, p0, Lcom/prey/actions/CamouflageAction;->ID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute(Lcom/prey/actions/observer/ActionJob;Landroid/content/Context;)V
    .locals 3
    .param p1, "actionJob"    # Lcom/prey/actions/observer/ActionJob;
    .param p2, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prey/exceptions/PreyException;
        }
    .end annotation

    .prologue
    .line 38
    const-string v2, "Ejecuting CamouflageAction Action"

    invoke-static {v2}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, "lista":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/observer/ActionResult;>;"
    const/4 v1, 0x0

    .line 41
    .local v1, "parameters":Lorg/json/JSONObject;
    invoke-static {p2, v0, v1}, Lcom/prey/actions/camouflage/Camouflage;->hide(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;)V

    .line 42
    const-string v2, "Ejecuting CamouflageAction Action[Finish]"

    invoke-static {v2}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x7

    return v0
.end method

.method public isSyncAction()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public shouldNotify()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public textToNotifyUserOnEachReport(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 28
    const-string v0, ""

    return-object v0
.end method
