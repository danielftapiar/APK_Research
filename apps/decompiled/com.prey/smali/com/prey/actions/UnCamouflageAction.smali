.class public Lcom/prey/actions/UnCamouflageAction;
.super Lcom/prey/actions/PreyAction;
.source "UnCamouflageAction.java"


# static fields
.field public static final DATA_ID:Ljava/lang/String; = "uncamouflage"


# instance fields
.field public final ID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/prey/actions/PreyAction;-><init>()V

    .line 23
    const-string v0, "uncamouflage"

    iput-object v0, p0, Lcom/prey/actions/UnCamouflageAction;->ID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute(Lcom/prey/actions/observer/ActionJob;Landroid/content/Context;)V
    .locals 2
    .param p1, "actionJob"    # Lcom/prey/actions/observer/ActionJob;
    .param p2, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prey/exceptions/PreyException;
        }
    .end annotation

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, "lista":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/observer/ActionResult;>;"
    const/4 v1, 0x0

    .line 39
    .local v1, "parameters":Lorg/json/JSONObject;
    invoke-static {p2, v0, v1}, Lcom/prey/actions/camouflage/Camouflage;->unhide(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;)V

    .line 40
    return-void
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 49
    const/16 v0, 0x8

    return v0
.end method

.method public isSyncAction()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public shouldNotify()Z
    .locals 1

    .prologue
    .line 32
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
