.class public Lcom/twitterapime/parser/DefaultJSONHandler;
.super Ljava/lang/Object;
.source "DefaultJSONHandler.java"

# interfaces
.implements Lcom/twitterapime/parser/JSONHandler;


# instance fields
.field protected content:Ljava/util/Hashtable;

.field protected startKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "startKey"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/twitterapime/parser/DefaultJSONHandler;->startKey:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static isArray(Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)Z
    .locals 2
    .param p0, "jsonObj"    # Lcom/twitterapime/parser/JSONObject;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twitterapime/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-interface {p0, p1}, Lcom/twitterapime/parser/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private readJSON(Lcom/twitterapime/parser/JSONObject;Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 7
    .param p1, "jsonObj"    # Lcom/twitterapime/parser/JSONObject;
    .param p2, "data"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twitterapime/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-interface {p1}, Lcom/twitterapime/parser/JSONObject;->keys()Ljava/util/Enumeration;

    move-result-object v4

    .line 95
    .local v4, "keys":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 96
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "key":Ljava/lang/String;
    invoke-interface {p1, v3}, Lcom/twitterapime/parser/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "{"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 99
    invoke-interface {p1, v3}, Lcom/twitterapime/parser/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/twitterapime/parser/JSONObject;

    move-result-object v5

    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    invoke-direct {p0, v5, v6}, Lcom/twitterapime/parser/DefaultJSONHandler;->readJSON(Lcom/twitterapime/parser/JSONObject;Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v5

    invoke-virtual {p2, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 101
    :cond_0
    invoke-static {p1, v3}, Lcom/twitterapime/parser/DefaultJSONHandler;->isArray(Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 102
    invoke-interface {p1, v3}, Lcom/twitterapime/parser/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/twitterapime/parser/JSONArray;

    move-result-object v0

    .line 103
    .local v0, "array":Lcom/twitterapime/parser/JSONArray;
    invoke-interface {v0}, Lcom/twitterapime/parser/JSONArray;->length()I

    move-result v5

    new-array v1, v5, [Ljava/util/Hashtable;

    .line 105
    .local v1, "arrayObj":[Ljava/util/Hashtable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_1

    .line 106
    invoke-interface {v0, v2}, Lcom/twitterapime/parser/JSONArray;->getJSONObject(I)Lcom/twitterapime/parser/JSONObject;

    move-result-object v5

    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    invoke-direct {p0, v5, v6}, Lcom/twitterapime/parser/DefaultJSONHandler;->readJSON(Lcom/twitterapime/parser/JSONObject;Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v5

    aput-object v5, v1, v2

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 110
    :cond_1
    invoke-virtual {p2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 112
    .end local v0    # "array":Lcom/twitterapime/parser/JSONArray;
    .end local v1    # "arrayObj":[Ljava/util/Hashtable;
    .end local v2    # "i":I
    :cond_2
    invoke-interface {p1, v3}, Lcom/twitterapime/parser/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 116
    .end local v3    # "key":Ljava/lang/String;
    :cond_3
    return-object p2
.end method


# virtual methods
.method public handle(Lcom/twitterapime/parser/JSONObject;)V
    .locals 2
    .param p1, "jsonObj"    # Lcom/twitterapime/parser/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twitterapime/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/twitterapime/parser/DefaultJSONHandler;->startKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/twitterapime/parser/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/twitterapime/parser/JSONObject;

    move-result-object v0

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/twitterapime/parser/DefaultJSONHandler;->readJSON(Lcom/twitterapime/parser/JSONObject;Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lcom/twitterapime/parser/DefaultJSONHandler;->content:Ljava/util/Hashtable;

    .line 54
    return-void
.end method
