.class public final Limpl/javame/com/twitterapime/parser/JSONOrgArray;
.super Ljava/lang/Object;
.source "JSONOrgArray.java"

# interfaces
.implements Lcom/twitterapime/parser/JSONArray;


# instance fields
.field private jsonOrgArray:Lorg/json/me/JSONArray;


# direct methods
.method public constructor <init>(Lorg/json/me/JSONArray;)V
    .locals 0
    .param p1, "ja"    # Lorg/json/me/JSONArray;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Limpl/javame/com/twitterapime/parser/JSONOrgArray;->jsonOrgArray:Lorg/json/me/JSONArray;

    .line 40
    return-void
.end method


# virtual methods
.method public final getJSONObject(I)Lcom/twitterapime/parser/JSONObject;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 80
    :try_start_0
    new-instance v1, Limpl/javame/com/twitterapime/parser/JSONOrgObject;

    iget-object v2, p0, Limpl/javame/com/twitterapime/parser/JSONOrgArray;->jsonOrgArray:Lorg/json/me/JSONArray;

    invoke-virtual {v2, p1}, Lorg/json/me/JSONArray;->getJSONObject(I)Lorg/json/me/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Limpl/javame/com/twitterapime/parser/JSONOrgObject;-><init>(Lorg/json/me/JSONObject;)V
    :try_end_0
    .catch Lorg/json/me/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Lorg/json/me/JSONException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lorg/json/me/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 91
    :try_start_0
    iget-object v1, p0, Limpl/javame/com/twitterapime/parser/JSONOrgArray;->jsonOrgArray:Lorg/json/me/JSONArray;

    invoke-virtual {v1, p1}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/me/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Lorg/json/me/JSONException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lorg/json/me/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final length()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Limpl/javame/com/twitterapime/parser/JSONOrgArray;->jsonOrgArray:Lorg/json/me/JSONArray;

    invoke-virtual {v0}, Lorg/json/me/JSONArray;->length()I

    move-result v0

    return v0
.end method
