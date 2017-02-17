.class public Lcom/prey/actions/location/LocationNotifierAction;
.super Lcom/prey/actions/PreyAction;
.source "LocationNotifierAction.java"


# static fields
.field public static final DATA_ID:Ljava/lang/String; = "geo"


# instance fields
.field private data:Lcom/prey/actions/HttpDataService;

.field private lat:Ljava/lang/String;

.field private lng:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/prey/actions/PreyAction;-><init>()V

    .line 29
    new-instance v0, Lcom/prey/actions/HttpDataService;

    const-string v1, "geo"

    invoke-direct {v0, v1}, Lcom/prey/actions/HttpDataService;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/prey/actions/location/LocationNotifierAction;->data:Lcom/prey/actions/HttpDataService;

    .line 30
    iget-object v0, p0, Lcom/prey/actions/location/LocationNotifierAction;->data:Lcom/prey/actions/HttpDataService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/prey/actions/HttpDataService;->setList(Z)V

    .line 31
    return-void
.end method


# virtual methods
.method public execute(Lcom/prey/actions/observer/ActionJob;Landroid/content/Context;)V
    .locals 4
    .param p1, "actionJob"    # Lcom/prey/actions/observer/ActionJob;
    .param p2, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/prey/exceptions/PreyException;
        }
    .end annotation

    .prologue
    .line 66
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p2, v2, v3}, Lcom/prey/actions/location/LocationUtil;->dataLocation(Landroid/content/Context;Ljava/lang/String;Z)Lcom/prey/actions/HttpDataService;

    move-result-object v0

    .line 67
    .local v0, "data":Lcom/prey/actions/HttpDataService;
    new-instance v1, Lcom/prey/actions/observer/ActionResult;

    invoke-direct {v1}, Lcom/prey/actions/observer/ActionResult;-><init>()V

    .line 68
    .local v1, "result":Lcom/prey/actions/observer/ActionResult;
    invoke-virtual {v1, v0}, Lcom/prey/actions/observer/ActionResult;->setDataToSend(Lcom/prey/actions/HttpDataService;)V

    .line 69
    invoke-virtual {p1, v1}, Lcom/prey/actions/observer/ActionJob;->finish(Lcom/prey/actions/observer/ActionResult;)V

    .line 70
    return-void
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public isSyncAction()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method protected notifyLocationChange(Landroid/location/Location;)V
    .locals 4
    .param p1, "newLocation"    # Landroid/location/Location;

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/prey/actions/location/LocationNotifierAction;->lat:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/prey/actions/location/LocationNotifierAction;->lng:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    .local v0, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "lat"

    iget-object v2, p0, Lcom/prey/actions/location/LocationNotifierAction;->lat:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v1, "lng"

    iget-object v2, p0, Lcom/prey/actions/location/LocationNotifierAction;->lng:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v1, "acc"

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v1, "alt"

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v1, p0, Lcom/prey/actions/location/LocationNotifierAction;->data:Lcom/prey/actions/HttpDataService;

    invoke-virtual {v1}, Lcom/prey/actions/HttpDataService;->getDataList()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 42
    const/4 v0, 0x0

    .line 43
    return-void
.end method

.method public shouldNotify()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public textToNotifyUserOnEachReport(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 47
    const v3, 0x7f09007d

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "prefix":Ljava/lang/String;
    const-string v0, ""

    .line 50
    .local v0, "latToShow":Ljava/lang/String;
    const-string v1, ""

    .line 52
    .local v1, "lonToShow":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/prey/actions/location/LocationNotifierAction;->lat:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 53
    iget-object v3, p0, Lcom/prey/actions/location/LocationNotifierAction;->lng:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 56
    :goto_0
    const-string v3, " lat="

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " lon="

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 54
    :catch_0
    move-exception v3

    goto :goto_0
.end method
