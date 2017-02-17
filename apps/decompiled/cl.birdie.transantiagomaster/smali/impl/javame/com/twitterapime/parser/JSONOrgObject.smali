.class public final Limpl/javame/com/twitterapime/parser/JSONOrgObject;
.super Ljava/lang/Object;
.source "JSONOrgObject.java"

# interfaces
.implements Lcom/twitterapime/parser/JSONObject;


# instance fields
.field private jsonOrgObject:Lorg/json/me/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/me/JSONObject;)V
    .locals 0
    .param p1, "jo"    # Lorg/json/me/JSONObject;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Limpl/javame/com/twitterapime/parser/JSONOrgObject;->jsonOrgObject:Lorg/json/me/JSONObject;

    .line 42
    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 49
    :try_start_0
    iget-object v1, p0, Limpl/javame/com/twitterapime/parser/JSONOrgObject;->jsonOrgObject:Lorg/json/me/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/me/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/me/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Lorg/json/me/JSONException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lorg/json/me/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getInt(Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 71
    :try_start_0
    iget-object v1, p0, Limpl/javame/com/twitterapime/parser/JSONOrgObject;->jsonOrgObject:Lorg/json/me/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/me/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/me/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Lorg/json/me/JSONException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lorg/json/me/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getJSONArray(Ljava/lang/String;)Lcom/twitterapime/parser/JSONArray;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 82
    :try_start_0
    new-instance v1, Limpl/javame/com/twitterapime/parser/JSONOrgArray;

    iget-object v2, p0, Limpl/javame/com/twitterapime/parser/JSONOrgObject;->jsonOrgObject:Lorg/json/me/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/me/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/me/JSONArray;

    move-result-object v2

    invoke-direct {v1, v2}, Limpl/javame/com/twitterapime/parser/JSONOrgArray;-><init>(Lorg/json/me/JSONArray;)V
    :try_end_0
    .catch Lorg/json/me/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Lorg/json/me/JSONException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lorg/json/me/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getJSONObject(Ljava/lang/String;)Lcom/twitterapime/parser/JSONObject;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 93
    :try_start_0
    new-instance v1, Limpl/javame/com/twitterapime/parser/JSONOrgObject;

    iget-object v2, p0, Limpl/javame/com/twitterapime/parser/JSONOrgObject;->jsonOrgObject:Lorg/json/me/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/me/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/me/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Limpl/javame/com/twitterapime/parser/JSONOrgObject;-><init>(Lorg/json/me/JSONObject;)V
    :try_end_0
    .catch Lorg/json/me/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Lorg/json/me/JSONException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lorg/json/me/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 115
    :try_start_0
    iget-object v1, p0, Limpl/javame/com/twitterapime/parser/JSONOrgObject;->jsonOrgObject:Lorg/json/me/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/me/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Lorg/json/me/JSONException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lorg/json/me/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final has(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v0, p0, Limpl/javame/com/twitterapime/parser/JSONOrgObject;->jsonOrgObject:Lorg/json/me/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/me/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final keys()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Limpl/javame/com/twitterapime/parser/JSONOrgObject;->jsonOrgObject:Lorg/json/me/JSONObject;

    invoke-virtual {v0}, Lorg/json/me/JSONObject;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method
