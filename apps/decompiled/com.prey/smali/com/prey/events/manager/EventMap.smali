.class public Lcom/prey/events/manager/EventMap;
.super Ljava/util/HashMap;
.source "EventMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    .local p0, "this":Lcom/prey/events/manager/EventMap;, "Lcom/prey/events/manager/EventMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public isCompleteData()Z
    .locals 5

    .prologue
    .line 52
    .local p0, "this":Lcom/prey/events/manager/EventMap;, "Lcom/prey/events/manager/EventMap<TK;TV;>;"
    const/4 v1, 0x1

    .line 53
    .local v1, "isCompleteData":Z
    invoke-virtual {p0}, Lcom/prey/events/manager/EventMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 54
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 56
    .local v3, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v3}, Lcom/prey/events/manager/EventMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 57
    .local v0, "data":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 58
    const/4 v1, 0x0

    .line 62
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    :cond_1
    return v1
.end method

.method public toJSONArray()Lorg/json/JSONArray;
    .locals 5

    .prologue
    .line 20
    .local p0, "this":Lcom/prey/events/manager/EventMap;, "Lcom/prey/events/manager/EventMap<TK;TV;>;"
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 21
    .local v2, "jsonjArray":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/prey/events/manager/EventMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 22
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 24
    .local v3, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v3}, Lcom/prey/events/manager/EventMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 25
    .local v0, "data":Lorg/json/JSONObject;
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 27
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    :cond_0
    return-object v2
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 33
    .local p0, "this":Lcom/prey/events/manager/EventMap;, "Lcom/prey/events/manager/EventMap<TK;TV;>;"
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 34
    .local v3, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lcom/prey/events/manager/EventMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 35
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 37
    .local v4, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v4}, Lcom/prey/events/manager/EventMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 39
    .local v0, "data":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 40
    .local v2, "ite2":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 41
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 43
    .local v5, "name":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v6

    goto :goto_0

    .line 48
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "ite2":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "name":Ljava/lang/String;
    :cond_1
    return-object v3
.end method
