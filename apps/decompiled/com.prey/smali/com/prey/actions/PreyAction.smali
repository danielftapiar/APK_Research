.class public abstract Lcom/prey/actions/PreyAction;
.super Ljava/lang/Object;
.source "PreyAction.java"


# static fields
.field private static preyActions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/prey/actions/PreyAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ALARM_PRIORITY:I

.field public final CALLLOG_PRIORITY:I

.field public final CAMOUFLAGE_PRIORITY:I

.field public final GEO_PRIORITY:I

.field public final ID:Ljava/lang/String;

.field public final LOCK_PRIORITY:I

.field public final POPUPALERT_PRIORITY:I

.field public final RINGTONE_PRIORITY:I

.field public final UN_CAMOUFLAGE_PRIORITY:I

.field public final WEBCAM_PRIORITY:I

.field public final WIPE_PRIORITY:I

.field protected config:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/prey/actions/PreyAction;->preyActions:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/prey/actions/PreyAction;->ID:Ljava/lang/String;

    .line 26
    iput v1, p0, Lcom/prey/actions/PreyAction;->RINGTONE_PRIORITY:I

    .line 27
    iput v1, p0, Lcom/prey/actions/PreyAction;->CALLLOG_PRIORITY:I

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/prey/actions/PreyAction;->GEO_PRIORITY:I

    .line 29
    const/4 v0, 0x2

    iput v0, p0, Lcom/prey/actions/PreyAction;->ALARM_PRIORITY:I

    .line 30
    const/4 v0, 0x3

    iput v0, p0, Lcom/prey/actions/PreyAction;->WEBCAM_PRIORITY:I

    .line 31
    const/4 v0, 0x5

    iput v0, p0, Lcom/prey/actions/PreyAction;->LOCK_PRIORITY:I

    .line 32
    const/4 v0, 0x4

    iput v0, p0, Lcom/prey/actions/PreyAction;->POPUPALERT_PRIORITY:I

    .line 33
    const/4 v0, 0x6

    iput v0, p0, Lcom/prey/actions/PreyAction;->WIPE_PRIORITY:I

    .line 34
    const/4 v0, 0x7

    iput v0, p0, Lcom/prey/actions/PreyAction;->CAMOUFLAGE_PRIORITY:I

    .line 35
    const/16 v0, 0x8

    iput v0, p0, Lcom/prey/actions/PreyAction;->UN_CAMOUFLAGE_PRIORITY:I

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/prey/actions/PreyAction;->config:Ljava/util/HashMap;

    return-void
.end method

.method public static getActionFromName(Ljava/lang/String;)Lcom/prey/actions/PreyAction;
    .locals 1
    .param p0, "moduleName"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-static {}, Lcom/prey/actions/PreyAction;->getAvailablesActions()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prey/actions/PreyAction;

    return-object v0
.end method

.method public static getActionsFromPreyControlStatus(Landroid/content/Context;Lcom/prey/actions/ReportActionResponse;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "preyControlStatus"    # Lcom/prey/actions/ReportActionResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/prey/actions/ReportActionResponse;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/prey/actions/PreyAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/prey/actions/PreyAction;>;"
    invoke-virtual {p1, p0}, Lcom/prey/actions/ReportActionResponse;->getActionsToPerform(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/prey/actions/PreyAction;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 63
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/prey/actions/PreyAction;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/prey/actions/PreyAction;>;"
    :cond_0
    return-object v0
.end method

.method private static getAvailablesActions()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/prey/actions/PreyAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    sget-object v1, Lcom/prey/actions/PreyAction;->preyActions:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    .local v0, "actions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/prey/actions/PreyAction;>;"
    const-string v1, "geo"

    new-instance v2, Lcom/prey/actions/location/LocationNotifierAction;

    invoke-direct {v2}, Lcom/prey/actions/location/LocationNotifierAction;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v1, "ringtone"

    new-instance v2, Lcom/prey/actions/RingtonePlayerAction;

    invoke-direct {v2}, Lcom/prey/actions/RingtonePlayerAction;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v1, "alarm"

    new-instance v2, Lcom/prey/actions/Mp3PlayerAction;

    invoke-direct {v2}, Lcom/prey/actions/Mp3PlayerAction;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v1, "alert"

    new-instance v2, Lcom/prey/actions/PopUpAlertAction;

    invoke-direct {v2}, Lcom/prey/actions/PopUpAlertAction;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v1, "lock"

    new-instance v2, Lcom/prey/actions/LockAction;

    invoke-direct {v2}, Lcom/prey/actions/LockAction;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v1, "webcam"

    new-instance v2, Lcom/prey/actions/camera/CameraAction;

    invoke-direct {v2}, Lcom/prey/actions/camera/CameraAction;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v1, "wipe"

    new-instance v2, Lcom/prey/actions/WipeAction;

    invoke-direct {v2}, Lcom/prey/actions/WipeAction;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v1, "camouflage"

    new-instance v2, Lcom/prey/actions/CamouflageAction;

    invoke-direct {v2}, Lcom/prey/actions/CamouflageAction;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v1, "uncamouflage"

    new-instance v2, Lcom/prey/actions/UnCamouflageAction;

    invoke-direct {v2}, Lcom/prey/actions/UnCamouflageAction;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sput-object v0, Lcom/prey/actions/PreyAction;->preyActions:Ljava/util/HashMap;

    .line 56
    :cond_0
    sget-object v1, Lcom/prey/actions/PreyAction;->preyActions:Ljava/util/HashMap;

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, ""

    check-cast p1, Lcom/prey/actions/PreyAction;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract execute(Lcom/prey/actions/observer/ActionJob;Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prey/exceptions/PreyException;
        }
    .end annotation
.end method

.method public getConfig()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/prey/actions/PreyAction;->config:Ljava/util/HashMap;

    return-object v0
.end method

.method public abstract getPriority()I
.end method

.method public abstract isSyncAction()Z
.end method

.method public killAnyInstanceRunning(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 105
    return-void
.end method

.method public abstract shouldNotify()Z
.end method

.method public abstract textToNotifyUserOnEachReport(Landroid/content/Context;)Ljava/lang/String;
.end method
