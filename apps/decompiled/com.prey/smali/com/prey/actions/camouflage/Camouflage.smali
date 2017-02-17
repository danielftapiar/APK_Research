.class public Lcom/prey/actions/camouflage/Camouflage;
.super Ljava/lang/Object;
.source "Camouflage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hide(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;)V
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p2, "parameters"    # Lorg/json/JSONObject;
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
    .local p1, "lista":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/observer/ActionResult;>;"
    const/4 v8, 0x1

    .line 26
    const-string v3, "started hide"

    invoke-static {v3}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 27
    const/4 v1, 0x0

    .line 29
    .local v1, "messageId":Ljava/lang/String;
    :try_start_0
    const-string v3, "messageID"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 32
    :goto_0
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v3

    const-string v4, "start"

    const-string v5, "camouflage"

    const-string v6, "started"

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/prey/json/UtilJson;->makeMapParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Lcom/prey/net/PreyWebServices;->sendNotifyActionResultPreyHttp(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    .line 33
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/prey/PreyConfig;->setCamouflageSet(Z)V

    .line 35
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.prey"

    const-string v4, "com.prey.activities.LoginActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .local v0, "componentToDisabled":Landroid/content/ComponentName;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 37
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3, v8}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 38
    const-string v3, "stopped hide"

    invoke-static {v3}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 39
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v3

    const-string v4, "camouflage_hide"

    invoke-virtual {v3, v4}, Lcom/prey/PreyConfig;->setLastEvent(Ljava/lang/String;)V

    .line 40
    return-void

    .line 30
    .end local v0    # "componentToDisabled":Landroid/content/ComponentName;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static unhide(Landroid/content/Context;Ljava/util/List;Lorg/json/JSONObject;)V
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p2, "parameters"    # Lorg/json/JSONObject;
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
    .local p1, "lista":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/observer/ActionResult;>;"
    const/4 v8, 0x1

    .line 43
    const-string v3, "started unhide"

    invoke-static {v3}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 44
    const/4 v1, 0x0

    .line 46
    .local v1, "messageId":Ljava/lang/String;
    :try_start_0
    const-string v3, "messageID"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 49
    :goto_0
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v3

    const-string v4, "stop"

    const-string v5, "camouflage"

    const-string v6, "stopped"

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/prey/json/UtilJson;->makeMapParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Lcom/prey/net/PreyWebServices;->sendNotifyActionResultPreyHttp(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    .line 50
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/prey/PreyConfig;->setCamouflageSet(Z)V

    .line 52
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.prey"

    const-string v4, "com.prey.activities.LoginActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .local v0, "componentToEnabled":Landroid/content/ComponentName;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 54
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v0, v8, v8}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 55
    const-string v3, "stopped unhide"

    invoke-static {v3}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 56
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v3

    const-string v4, "camouflage_unhide"

    invoke-virtual {v3, v4}, Lcom/prey/PreyConfig;->setLastEvent(Ljava/lang/String;)V

    .line 57
    return-void

    .line 47
    .end local v0    # "componentToEnabled":Landroid/content/ComponentName;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    goto :goto_0
.end method
