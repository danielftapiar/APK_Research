.class public Lcom/prey/actions/sms/SMSFactory;
.super Ljava/lang/Object;
.source "SMSFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execute(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-static {p1}, Lcom/prey/actions/sms/SMSUtil;->getSecretKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 23
    .local v2, "secretKey":Ljava/lang/String;
    const/4 v0, 0x0

    .line 25
    .local v0, "isPasswordOk":Z
    :try_start_0
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prey/PreyConfig;->getPinNumber()I

    move-result v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v3, v4, :cond_1

    const/4 v0, 0x1

    .line 28
    :goto_0
    if-eqz v0, :cond_0

    .line 29
    invoke-static {p1, p2}, Lcom/prey/actions/sms/SMSParser;->getJSONListFromText(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 30
    .local v1, "jsonList":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    invoke-static {p0}, Lcom/prey/actions/observer/ActionsController;->getInstance(Landroid/content/Context;)Lcom/prey/actions/observer/ActionsController;

    move-result-object v3

    invoke-virtual {v3, p0, v1}, Lcom/prey/actions/observer/ActionsController;->runActionJson(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    .line 32
    .end local v1    # "jsonList":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    :cond_0
    return-void

    .line 25
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 26
    :catch_0
    move-exception v3

    goto :goto_0
.end method
