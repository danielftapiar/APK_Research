.class public final Lcom/twitterapime/rest/handler/json/ListJSONHandler;
.super Lcom/twitterapime/parser/DefaultJSONHandler;
.source "ListJSONHandler.java"


# instance fields
.field private lists:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 46
    const-string v0, "root"

    invoke-direct {p0, v0}, Lcom/twitterapime/parser/DefaultJSONHandler;-><init>(Ljava/lang/String;)V

    .line 38
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/twitterapime/rest/handler/json/ListJSONHandler;->lists:Ljava/util/Vector;

    .line 48
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/twitterapime/rest/handler/json/ListJSONHandler;->lists:Ljava/util/Vector;

    .line 49
    return-void
.end method

.method private handleList(Lcom/twitterapime/parser/JSONObject;)V
    .locals 6
    .param p1, "jsonObj"    # Lcom/twitterapime/parser/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twitterapime/parser/ParserException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x19

    .line 83
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v5}, Ljava/util/Hashtable;-><init>(I)V

    .line 85
    .local v0, "listValues":Ljava/util/Hashtable;
    const-string v2, "LIST_ID"

    const-string v3, "id"

    invoke-static {v0, v2, p1, v3}, Lcom/twitterapime/rest/handler/json/ListJSONHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 86
    const-string v2, "LIST_NAME"

    const-string v3, "name"

    invoke-static {v0, v2, p1, v3}, Lcom/twitterapime/rest/handler/json/ListJSONHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 87
    const-string v2, "LIST_FULL_NAME"

    const-string v3, "full_name"

    invoke-static {v0, v2, p1, v3}, Lcom/twitterapime/rest/handler/json/ListJSONHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 88
    const-string v2, "LIST_SLUG"

    const-string v3, "slug"

    invoke-static {v0, v2, p1, v3}, Lcom/twitterapime/rest/handler/json/ListJSONHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 89
    const-string v2, "LIST_DESCRIPTION"

    const-string v3, "description"

    invoke-static {v0, v2, p1, v3}, Lcom/twitterapime/rest/handler/json/ListJSONHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 90
    const-string v2, "LIST_SUBSCRIBER_COUNT"

    const-string v3, "subscriber_count"

    invoke-static {v0, v2, p1, v3}, Lcom/twitterapime/rest/handler/json/ListJSONHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 91
    const-string v2, "LIST_MEMBER_COUNT"

    const-string v3, "member_count"

    invoke-static {v0, v2, p1, v3}, Lcom/twitterapime/rest/handler/json/ListJSONHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 92
    const-string v2, "LIST_URI"

    const-string v3, "uri"

    invoke-static {v0, v2, p1, v3}, Lcom/twitterapime/rest/handler/json/ListJSONHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 93
    const-string v2, "LIST_FOLLOWING"

    const-string v3, "following"

    invoke-static {v0, v2, p1, v3}, Lcom/twitterapime/rest/handler/json/ListJSONHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 94
    const-string v2, "LIST_MODE"

    const-string v3, "mode"

    invoke-static {v0, v2, p1, v3}, Lcom/twitterapime/rest/handler/json/ListJSONHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 96
    const-string v2, "created_at"

    invoke-interface {p1, v2}, Lcom/twitterapime/parser/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    const-string v2, "LIST_CREATE_DATE"

    const-string v3, "created_at"

    invoke-interface {p1, v3}, Lcom/twitterapime/parser/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/twitterapime/util/StringUtil;->convertTweetDateToLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_0
    const-string v2, "user"

    invoke-interface {p1, v2}, Lcom/twitterapime/parser/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1, v5}, Ljava/util/Hashtable;-><init>(I)V

    .line 106
    .local v1, "userValues":Ljava/util/Hashtable;
    new-instance v2, Lcom/twitterapime/rest/handler/UserAccountHandler;

    invoke-direct {v2}, Lcom/twitterapime/rest/handler/UserAccountHandler;-><init>()V

    const-string v2, "user"

    invoke-interface {p1, v2}, Lcom/twitterapime/parser/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/twitterapime/parser/JSONObject;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/twitterapime/rest/handler/UserAccountHandler;->populate(Ljava/util/Hashtable;Lcom/twitterapime/parser/JSONObject;)V

    .line 109
    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 110
    const-string v2, "LIST_USER_ACCOUNT"

    new-instance v3, Lcom/twitterapime/rest/UserAccount;

    invoke-direct {v3, v1}, Lcom/twitterapime/rest/UserAccount;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .end local v1    # "userValues":Ljava/util/Hashtable;
    :cond_1
    iget-object v2, p0, Lcom/twitterapime/rest/handler/json/ListJSONHandler;->lists:Ljava/util/Vector;

    new-instance v3, Lcom/twitterapime/rest/List;

    invoke-direct {v3, v0}, Lcom/twitterapime/rest/List;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method private static putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V
    .locals 1
    .param p0, "data"    # Ljava/util/Hashtable;
    .param p1, "dataKey"    # Ljava/lang/String;
    .param p2, "jsonObj"    # Lcom/twitterapime/parser/JSONObject;
    .param p3, "jsonKey"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-interface {p2, p3}, Lcom/twitterapime/parser/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-interface {p2, p3}, Lcom/twitterapime/parser/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_0
    return-void
.end method


# virtual methods
.method public final getParsedLists()[Lcom/twitterapime/rest/List;
    .locals 2

    .prologue
    .line 125
    iget-object v1, p0, Lcom/twitterapime/rest/handler/json/ListJSONHandler;->lists:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v0, v1, [Lcom/twitterapime/rest/List;

    .line 126
    .local v0, "ts":[Lcom/twitterapime/rest/List;
    iget-object v1, p0, Lcom/twitterapime/rest/handler/json/ListJSONHandler;->lists:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 128
    return-object v0
.end method

.method public final handle(Lcom/twitterapime/parser/JSONObject;)V
    .locals 3
    .param p1, "jsonObj"    # Lcom/twitterapime/parser/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twitterapime/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/twitterapime/rest/handler/json/ListJSONHandler;->startKey:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/twitterapime/rest/handler/json/ListJSONHandler;->isArray(Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/twitterapime/rest/handler/json/ListJSONHandler;->startKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/twitterapime/parser/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/twitterapime/parser/JSONArray;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Lcom/twitterapime/parser/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {v1, v0}, Lcom/twitterapime/parser/JSONArray;->getJSONObject(I)Lcom/twitterapime/parser/JSONObject;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/twitterapime/rest/handler/json/ListJSONHandler;->handleList(Lcom/twitterapime/parser/JSONObject;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/twitterapime/rest/handler/json/ListJSONHandler;->startKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/twitterapime/parser/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/twitterapime/parser/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitterapime/rest/handler/json/ListJSONHandler;->handleList(Lcom/twitterapime/parser/JSONObject;)V

    .line 60
    :cond_1
    return-void
.end method
