.class public final Lcom/twitterapime/rest/handler/GeoLocationHandler;
.super Ljava/lang/Object;
.source "GeoLocationHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static populate(Ljava/util/Hashtable;Lcom/twitterapime/parser/JSONObject;)V
    .locals 7
    .param p0, "data"    # Ljava/util/Hashtable;
    .param p1, "jsonObj"    # Lcom/twitterapime/parser/JSONObject;

    .prologue
    .line 68
    const-string v5, "GEOLOCATION_PLACE_ID"

    const-string v6, "id"

    invoke-static {p0, v5, p1, v6}, Lcom/twitterapime/rest/handler/GeoLocationHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 69
    const-string v5, "GEOLOCATION_PLACE_NAME"

    const-string v6, "name"

    invoke-static {p0, v5, p1, v6}, Lcom/twitterapime/rest/handler/GeoLocationHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 70
    const-string v5, "GEOLOCATION_PLACE_FULL_NAME"

    const-string v6, "full_name"

    invoke-static {p0, v5, p1, v6}, Lcom/twitterapime/rest/handler/GeoLocationHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 71
    const-string v5, "GEOLOCATION_PLACE_TYPE"

    const-string v6, "place_type"

    invoke-static {p0, v5, p1, v6}, Lcom/twitterapime/rest/handler/GeoLocationHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 72
    const-string v5, "GEOLOCATION_PLACE_URL"

    const-string v6, "url"

    invoke-static {p0, v5, p1, v6}, Lcom/twitterapime/rest/handler/GeoLocationHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 73
    const-string v5, "GEOLOCATION_COUNTRY"

    const-string v6, "country"

    invoke-static {p0, v5, p1, v6}, Lcom/twitterapime/rest/handler/GeoLocationHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 75
    const-string v5, "coordinates"

    invoke-interface {p1, v5}, Lcom/twitterapime/parser/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 76
    const-string v5, "coordinates"

    invoke-interface {p1, v5}, Lcom/twitterapime/parser/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/twitterapime/parser/JSONArray;

    move-result-object v1

    .line 78
    .local v1, "coord":Lcom/twitterapime/parser/JSONArray;
    invoke-interface {v1}, Lcom/twitterapime/parser/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    .line 79
    const-string v5, "GEOLOCATION_LATITUDE"

    const/4 v6, 0x0

    invoke-interface {v1, v6}, Lcom/twitterapime/parser/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v5, "GEOLOCATION_LONGITUDE"

    const/4 v6, 0x1

    invoke-interface {v1, v6}, Lcom/twitterapime/parser/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .end local v1    # "coord":Lcom/twitterapime/parser/JSONArray;
    :cond_0
    const-string v5, "polylines"

    invoke-interface {p1, v5}, Lcom/twitterapime/parser/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 85
    const-string v5, "polylines"

    invoke-interface {p1, v5}, Lcom/twitterapime/parser/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/twitterapime/parser/JSONArray;

    move-result-object v3

    .line 87
    .local v3, "lines":Lcom/twitterapime/parser/JSONArray;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 89
    .local v4, "vector":Ljava/util/Vector;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v3}, Lcom/twitterapime/parser/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 90
    invoke-interface {v3, v2}, Lcom/twitterapime/parser/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/String;

    .line 94
    .local v0, "array":[Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 96
    const-string v5, "GEOLOCATION_POLYGON"

    invoke-virtual {p0, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .end local v0    # "array":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "lines":Lcom/twitterapime/parser/JSONArray;
    .end local v4    # "vector":Ljava/util/Vector;
    :cond_2
    return-void
.end method

.method private static putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V
    .locals 1
    .param p0, "data"    # Ljava/util/Hashtable;
    .param p1, "dataKey"    # Ljava/lang/String;
    .param p2, "jsonObj"    # Lcom/twitterapime/parser/JSONObject;
    .param p3, "jsonKey"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-interface {p2, p3}, Lcom/twitterapime/parser/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-interface {p2, p3}, Lcom/twitterapime/parser/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_0
    return-void
.end method
