.class public Lcom/prey/actions/sms/SMSParser;
.super Ljava/lang/Object;
.source "SMSParser.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getJSONListFromText(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    const/4 v2, 0x0

    .line 22
    .local v2, "jsonObjectList":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    invoke-static {p0}, Lcom/prey/actions/sms/SMSUtil;->getListCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 24
    .local v5, "listCommand":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_0

    .line 25
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 26
    .local v1, "json":Lorg/json/JSONObject;
    const-string v7, "command"

    const-string v8, "sms"

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    const-string v7, "target"

    const/4 v8, 0x2

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    .line 29
    const-string v7, "options"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .end local v2    # "jsonObjectList":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    .local v3, "jsonObjectList":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    :try_start_1
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 46
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v3    # "jsonObjectList":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    .restart local v2    # "jsonObjectList":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    :cond_0
    :goto_1
    return-object v2

    .line 31
    .restart local v1    # "json":Lorg/json/JSONObject;
    :cond_1
    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 32
    .local v4, "jsonParameter":Lorg/json/JSONObject;
    const-string v6, ""

    .line 33
    .local v6, "parameter":Ljava/lang/String;
    const/4 v0, 0x3

    .local v0, "i":I
    :goto_2
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 34
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 36
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 37
    const-string v7, "parameter"

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    const-string v7, "phoneNumber"

    invoke-virtual {v4, v7, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string v7, "options"

    invoke-virtual {v1, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 44
    .end local v0    # "i":I
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v4    # "jsonParameter":Lorg/json/JSONObject;
    .end local v6    # "parameter":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto :goto_1

    .end local v2    # "jsonObjectList":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    .restart local v1    # "json":Lorg/json/JSONObject;
    .restart local v3    # "jsonObjectList":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    :catch_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "jsonObjectList":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    .restart local v2    # "jsonObjectList":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    goto :goto_1
.end method
