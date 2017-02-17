.class public final Lcom/twitterapime/rest/handler/json/StatusJSONHandler;
.super Lcom/twitterapime/parser/DefaultJSONHandler;
.source "StatusJSONHandler.java"


# instance fields
.field private listener:Lcom/twitterapime/search/SearchDeviceListener;

.field private statusHashList:Ljava/util/Vector;

.field private statusList:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 65
    const-string v0, "root"

    invoke-direct {p0, v0}, Lcom/twitterapime/parser/DefaultJSONHandler;-><init>(Ljava/lang/String;)V

    .line 67
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/twitterapime/rest/handler/json/StatusJSONHandler;->statusList:Ljava/util/Vector;

    .line 68
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/twitterapime/rest/handler/json/StatusJSONHandler;->statusHashList:Ljava/util/Vector;

    .line 69
    return-void
.end method

.method private handleStatus(Lcom/twitterapime/parser/JSONObject;)V
    .locals 7
    .param p1, "jsonObj"    # Lcom/twitterapime/parser/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twitterapime/parser/ParserException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    .line 109
    new-instance v2, Ljava/util/Hashtable;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/Hashtable;-><init>(I)V

    .line 110
    .local v2, "statusValues":Ljava/util/Hashtable;
    new-instance v3, Lcom/twitterapime/rest/handler/TweetHandler;

    invoke-direct {v3}, Lcom/twitterapime/rest/handler/TweetHandler;-><init>()V

    .line 112
    invoke-static {v2, p1}, Lcom/twitterapime/rest/handler/TweetHandler;->populate(Ljava/util/Hashtable;Lcom/twitterapime/parser/JSONObject;)V

    .line 113
    invoke-static {v2, p1}, Lcom/twitterapime/rest/handler/json/StatusJSONHandler;->populateUser(Ljava/util/Hashtable;Lcom/twitterapime/parser/JSONObject;)V

    .line 114
    invoke-static {v2, p1}, Lcom/twitterapime/rest/handler/json/StatusJSONHandler;->populateEntity(Ljava/util/Hashtable;Lcom/twitterapime/parser/JSONObject;)V

    .line 115
    invoke-static {v2, p1}, Lcom/twitterapime/rest/handler/json/StatusJSONHandler;->populateLocation(Ljava/util/Hashtable;Lcom/twitterapime/parser/JSONObject;)V

    .line 117
    const-string v3, "sender"

    invoke-interface {p1, v3}, Lcom/twitterapime/parser/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3, v6}, Ljava/util/Hashtable;-><init>(I)V

    new-instance v4, Lcom/twitterapime/rest/handler/UserAccountHandler;

    invoke-direct {v4}, Lcom/twitterapime/rest/handler/UserAccountHandler;-><init>()V

    const-string v4, "sender"

    invoke-interface {p1, v4}, Lcom/twitterapime/parser/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/twitterapime/parser/JSONObject;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/twitterapime/rest/handler/UserAccountHandler;->populate(Ljava/util/Hashtable;Lcom/twitterapime/parser/JSONObject;)V

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v4

    if-lez v4, :cond_0

    const-string v4, "TWEET_USER_ACCOUNT"

    new-instance v5, Lcom/twitterapime/rest/UserAccount;

    invoke-direct {v5, v3}, Lcom/twitterapime/rest/UserAccount;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v2, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_0
    const-string v3, "recipient"

    invoke-interface {p1, v3}, Lcom/twitterapime/parser/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3, v6}, Ljava/util/Hashtable;-><init>(I)V

    new-instance v4, Lcom/twitterapime/rest/handler/UserAccountHandler;

    invoke-direct {v4}, Lcom/twitterapime/rest/handler/UserAccountHandler;-><init>()V

    const-string v4, "recipient"

    invoke-interface {p1, v4}, Lcom/twitterapime/parser/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/twitterapime/parser/JSONObject;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/twitterapime/rest/handler/UserAccountHandler;->populate(Ljava/util/Hashtable;Lcom/twitterapime/parser/JSONObject;)V

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, "TWEET_RECIPIENT_ACCOUNT"

    new-instance v5, Lcom/twitterapime/rest/UserAccount;

    invoke-direct {v5, v3}, Lcom/twitterapime/rest/UserAccount;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v2, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_1
    const-string v3, "retweeted_status"

    invoke-interface {p1, v3}, Lcom/twitterapime/parser/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 121
    const-string v3, "retweeted_status"

    invoke-interface {p1, v3}, Lcom/twitterapime/parser/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/twitterapime/parser/JSONObject;

    move-result-object p1

    .line 123
    new-instance v0, Ljava/util/Hashtable;

    const/16 v3, 0x19

    invoke-direct {v0, v3}, Ljava/util/Hashtable;-><init>(I)V

    .line 125
    .local v0, "retweetValues":Ljava/util/Hashtable;
    invoke-static {v0, p1}, Lcom/twitterapime/rest/handler/TweetHandler;->populate(Ljava/util/Hashtable;Lcom/twitterapime/parser/JSONObject;)V

    .line 127
    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 128
    invoke-static {v0, p1}, Lcom/twitterapime/rest/handler/json/StatusJSONHandler;->populateUser(Ljava/util/Hashtable;Lcom/twitterapime/parser/JSONObject;)V

    .line 129
    invoke-static {v0, p1}, Lcom/twitterapime/rest/handler/json/StatusJSONHandler;->populateEntity(Ljava/util/Hashtable;Lcom/twitterapime/parser/JSONObject;)V

    .line 130
    invoke-static {v0, p1}, Lcom/twitterapime/rest/handler/json/StatusJSONHandler;->populateLocation(Ljava/util/Hashtable;Lcom/twitterapime/parser/JSONObject;)V

    .line 132
    const-string v3, "TWEET_REPOSTED_TWEET"

    new-instance v4, Lcom/twitterapime/search/Tweet;

    invoke-direct {v4, v0}, Lcom/twitterapime/search/Tweet;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .end local v0    # "retweetValues":Ljava/util/Hashtable;
    :cond_2
    new-instance v1, Lcom/twitterapime/search/Tweet;

    invoke-direct {v1, v2}, Lcom/twitterapime/search/Tweet;-><init>(Ljava/util/Hashtable;)V

    .line 139
    .local v1, "status":Lcom/twitterapime/search/Tweet;
    iget-object v3, p0, Lcom/twitterapime/rest/handler/json/StatusJSONHandler;->listener:Lcom/twitterapime/search/SearchDeviceListener;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/twitterapime/rest/handler/json/StatusJSONHandler;->listener:Lcom/twitterapime/search/SearchDeviceListener;

    invoke-interface {v3, v1}, Lcom/twitterapime/search/SearchDeviceListener;->tweetFound(Lcom/twitterapime/search/Tweet;)V

    .line 141
    :cond_3
    iget-object v3, p0, Lcom/twitterapime/rest/handler/json/StatusJSONHandler;->statusHashList:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 142
    iget-object v3, p0, Lcom/twitterapime/rest/handler/json/StatusJSONHandler;->statusList:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method private handleStatuses(Lcom/twitterapime/parser/JSONArray;)V
    .locals 2
    .param p1, "jsonObj"    # Lcom/twitterapime/parser/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twitterapime/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Lcom/twitterapime/parser/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 97
    invoke-interface {p1, v0}, Lcom/twitterapime/parser/JSONArray;->getJSONObject(I)Lcom/twitterapime/parser/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/twitterapime/rest/handler/json/StatusJSONHandler;->handleStatus(Lcom/twitterapime/parser/JSONObject;)V

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    return-void
.end method

.method private static populateEntity(Ljava/util/Hashtable;Lcom/twitterapime/parser/JSONObject;)V
    .locals 3
    .param p0, "tweetValues"    # Ljava/util/Hashtable;
    .param p1, "jsonObj"    # Lcom/twitterapime/parser/JSONObject;

    .prologue
    .line 217
    const-string v1, "entities"

    invoke-interface {p1, v1}, Lcom/twitterapime/parser/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    .line 220
    .local v0, "entityValues":Ljava/util/Hashtable;
    new-instance v1, Lcom/twitterapime/search/handler/TweetEntityHandler;

    invoke-direct {v1}, Lcom/twitterapime/search/handler/TweetEntityHandler;-><init>()V

    const-string v1, "entities"

    invoke-interface {p1, v1}, Lcom/twitterapime/parser/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/twitterapime/parser/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitterapime/search/handler/TweetEntityHandler;->populate(Ljava/util/Hashtable;Lcom/twitterapime/parser/JSONObject;)V

    .line 223
    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 224
    const-string v1, "TWEET_ENTITY"

    new-instance v2, Lcom/twitterapime/search/TweetEntity;

    invoke-direct {v2, v0}, Lcom/twitterapime/search/TweetEntity;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {p0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .end local v0    # "entityValues":Ljava/util/Hashtable;
    :cond_0
    return-void
.end method

.method private static populateLocation(Ljava/util/Hashtable;Lcom/twitterapime/parser/JSONObject;)V
    .locals 3
    .param p0, "tweetValues"    # Ljava/util/Hashtable;
    .param p1, "jsonObj"    # Lcom/twitterapime/parser/JSONObject;

    .prologue
    .line 236
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    .line 237
    .local v0, "geoValues":Ljava/util/Hashtable;
    new-instance v1, Lcom/twitterapime/rest/handler/GeoLocationHandler;

    invoke-direct {v1}, Lcom/twitterapime/rest/handler/GeoLocationHandler;-><init>()V

    .line 239
    const-string v1, "geo"

    invoke-interface {p1, v1}, Lcom/twitterapime/parser/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "geo"

    invoke-interface {p1, v1}, Lcom/twitterapime/parser/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 242
    const-string v1, "geo"

    invoke-interface {p1, v1}, Lcom/twitterapime/parser/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/twitterapime/parser/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitterapime/rest/handler/GeoLocationHandler;->populate(Ljava/util/Hashtable;Lcom/twitterapime/parser/JSONObject;)V

    .line 244
    :cond_0
    const-string v1, "place"

    invoke-interface {p1, v1}, Lcom/twitterapime/parser/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "place"

    invoke-interface {p1, v1}, Lcom/twitterapime/parser/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 247
    const-string v1, "place"

    invoke-interface {p1, v1}, Lcom/twitterapime/parser/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/twitterapime/parser/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitterapime/rest/handler/GeoLocationHandler;->populate(Ljava/util/Hashtable;Lcom/twitterapime/parser/JSONObject;)V

    .line 250
    :cond_1
    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 251
    const-string v1, "TWEET_LOCATION"

    new-instance v2, Lcom/twitterapime/rest/GeoLocation;

    invoke-direct {v2, v0}, Lcom/twitterapime/rest/GeoLocation;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {p0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_2
    return-void
.end method

.method private static populateUser(Ljava/util/Hashtable;Lcom/twitterapime/parser/JSONObject;)V
    .locals 3
    .param p0, "tweetValues"    # Ljava/util/Hashtable;
    .param p1, "jsonObj"    # Lcom/twitterapime/parser/JSONObject;

    .prologue
    .line 197
    const-string v1, "user"

    invoke-interface {p1, v1}, Lcom/twitterapime/parser/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    .line 200
    .local v0, "userValues":Ljava/util/Hashtable;
    new-instance v1, Lcom/twitterapime/rest/handler/UserAccountHandler;

    invoke-direct {v1}, Lcom/twitterapime/rest/handler/UserAccountHandler;-><init>()V

    const-string v1, "user"

    invoke-interface {p1, v1}, Lcom/twitterapime/parser/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/twitterapime/parser/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitterapime/rest/handler/UserAccountHandler;->populate(Ljava/util/Hashtable;Lcom/twitterapime/parser/JSONObject;)V

    .line 203
    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 204
    const-string v1, "TWEET_USER_ACCOUNT"

    new-instance v2, Lcom/twitterapime/rest/UserAccount;

    invoke-direct {v2, v0}, Lcom/twitterapime/rest/UserAccount;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {p0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .end local v0    # "userValues":Ljava/util/Hashtable;
    :cond_0
    return-void
.end method


# virtual methods
.method public final handle(Lcom/twitterapime/parser/JSONObject;)V
    .locals 1
    .param p1, "jsonObj"    # Lcom/twitterapime/parser/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twitterapime/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/twitterapime/rest/handler/json/StatusJSONHandler;->startKey:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/twitterapime/rest/handler/json/StatusJSONHandler;->isArray(Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/twitterapime/rest/handler/json/StatusJSONHandler;->startKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/twitterapime/parser/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/twitterapime/parser/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitterapime/rest/handler/json/StatusJSONHandler;->handleStatuses(Lcom/twitterapime/parser/JSONArray;)V

    .line 86
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/twitterapime/rest/handler/json/StatusJSONHandler;->startKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/twitterapime/parser/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/twitterapime/parser/JSONObject;

    move-result-object p1

    .line 80
    const-string v0, "statuses"

    invoke-interface {p1, v0}, Lcom/twitterapime/parser/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    const-string v0, "statuses"

    invoke-interface {p1, v0}, Lcom/twitterapime/parser/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/twitterapime/parser/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitterapime/rest/handler/json/StatusJSONHandler;->handleStatuses(Lcom/twitterapime/parser/JSONArray;)V

    goto :goto_0

    .line 83
    :cond_1
    invoke-direct {p0, p1}, Lcom/twitterapime/rest/handler/json/StatusJSONHandler;->handleStatus(Lcom/twitterapime/parser/JSONObject;)V

    goto :goto_0
.end method

.method public final setSearchDeviceListener(Lcom/twitterapime/search/SearchDeviceListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/twitterapime/search/SearchDeviceListener;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/twitterapime/rest/handler/json/StatusJSONHandler;->listener:Lcom/twitterapime/search/SearchDeviceListener;

    .line 177
    return-void
.end method
