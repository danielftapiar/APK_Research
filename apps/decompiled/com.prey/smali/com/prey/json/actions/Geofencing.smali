.class public Lcom/prey/json/actions/Geofencing;
.super Ljava/lang/Object;
.source "Geofencing.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p3, "parameters"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/prey/actions/observer/ActionResult;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/observer/ActionResult;>;"
    const-string v1, "starting Geofencing"

    invoke-static {v1}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 24
    const/4 v0, 0x0

    .line 26
    .local v0, "messageId":Ljava/lang/String;
    :try_start_0
    const-string v1, "messageID"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messageId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    invoke-static {}, Lcom/prey/actions/geofences/GeofenceController;->getInstance()Lcom/prey/actions/geofences/GeofenceController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/prey/actions/geofences/GeofenceController;->run(Landroid/content/Context;)V

    .line 31
    return-void

    .line 28
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public stop(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p3, "parameters"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/prey/actions/observer/ActionResult;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/observer/ActionResult;>;"
    const-string v1, "stop Geofencing"

    invoke-static {v1}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x0

    .line 37
    .local v0, "messageId":Ljava/lang/String;
    :try_start_0
    const-string v1, "messageID"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 40
    :goto_0
    invoke-static {}, Lcom/prey/actions/geofences/GeofenceController;->getInstance()Lcom/prey/actions/geofences/GeofenceController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/prey/actions/geofences/GeofenceController;->run(Landroid/content/Context;)V

    .line 41
    return-void

    .line 38
    :catch_0
    move-exception v1

    goto :goto_0
.end method
