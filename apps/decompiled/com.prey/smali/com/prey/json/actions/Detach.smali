.class public Lcom/prey/json/actions/Detach;
.super Ljava/lang/Object;
.source "Detach.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static detachDevice(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 31
    const/4 v1, 0x0

    .line 33
    .local v1, "error":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/prey/PreyConfig;->unregisterC2dm(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    :try_start_1
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/prey/PreyConfig;->setSecurityPrivilegesAlreadyPrompted(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    .line 37
    :goto_1
    :try_start_2
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/prey/PreyConfig;->setProtectAccount(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 38
    :goto_2
    :try_start_3
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/prey/PreyConfig;->setProtectPrivileges(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 39
    :goto_3
    :try_start_4
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/prey/PreyConfig;->setProtectTour(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 40
    :goto_4
    :try_start_5
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/prey/PreyConfig;->setProtectReady(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 43
    :goto_5
    :try_start_6
    invoke-static {p0}, Lcom/prey/backwardcompatibility/FroyoSupport;->getInstance(Landroid/content/Context;)Lcom/prey/backwardcompatibility/FroyoSupport;

    move-result-object v2

    .line 44
    .local v2, "fSupport":Lcom/prey/backwardcompatibility/FroyoSupport;
    invoke-virtual {v2}, Lcom/prey/backwardcompatibility/FroyoSupport;->isAdminActive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    invoke-virtual {v2}, Lcom/prey/backwardcompatibility/FroyoSupport;->removeAdminPrivileges()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    .line 50
    .end local v2    # "fSupport":Lcom/prey/backwardcompatibility/FroyoSupport;
    :cond_0
    :goto_6
    :try_start_7
    invoke-static {}, Lcom/prey/actions/geofences/GeofenceController;->getInstance()Lcom/prey/actions/geofences/GeofenceController;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/prey/actions/geofences/GeofenceController;->deleteAllZones(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    .line 54
    :goto_7
    :try_start_8
    invoke-static {}, Lcom/prey/actions/fileretrieval/FileretrievalController;->getInstance()Lcom/prey/actions/fileretrieval/FileretrievalController;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/prey/actions/fileretrieval/FileretrievalController;->deleteAll(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 57
    :goto_8
    :try_start_9
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/prey/net/PreyWebServices;->deleteDevice(Landroid/content/Context;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 58
    :goto_9
    :try_start_a
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prey/PreyConfig;->wipeData()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 59
    :goto_a
    return-object v1

    .line 33
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 37
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 38
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 39
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 40
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 57
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    .line 58
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    .line 55
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v3

    goto :goto_8

    .line 51
    :catch_8
    move-exception v3

    goto :goto_7

    .line 47
    :catch_9
    move-exception v3

    goto :goto_6

    .line 34
    :catch_a
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public start(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;)V
    .locals 1
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
    .line 26
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/observer/ActionResult;>;"
    const-string v0, "Detach device"

    invoke-static {v0}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 27
    invoke-static {p1}, Lcom/prey/json/actions/Detach;->detachDevice(Landroid/content/Context;)Ljava/lang/String;

    .line 28
    return-void
.end method
