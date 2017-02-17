.class public final Lcom/twitterapime/rest/handler/json/UserJSONHandler;
.super Lcom/twitterapime/parser/DefaultJSONHandler;
.source "UserJSONHandler.java"


# instance fields
.field private nextCursorIndex:J

.field private prevCursorIndex:J

.field private userHashList:Ljava/util/Vector;

.field private userList:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 67
    const-string v0, "root"

    invoke-direct {p0, v0}, Lcom/twitterapime/parser/DefaultJSONHandler;-><init>(Ljava/lang/String;)V

    .line 69
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/twitterapime/rest/handler/json/UserJSONHandler;->userList:Ljava/util/Vector;

    .line 70
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/twitterapime/rest/handler/json/UserJSONHandler;->userHashList:Ljava/util/Vector;

    .line 71
    return-void
.end method

.method private handleAccount(Lcom/twitterapime/parser/JSONObject;)V
    .locals 4
    .param p1, "jsonObj"    # Lcom/twitterapime/parser/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twitterapime/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Ljava/util/Hashtable;

    const/16 v2, 0x19

    invoke-direct {v0, v2}, Ljava/util/Hashtable;-><init>(I)V

    .line 117
    .local v0, "accountValues":Ljava/util/Hashtable;
    new-instance v1, Ljava/util/Hashtable;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    .line 119
    .local v1, "lastTweetValues":Ljava/util/Hashtable;
    new-instance v2, Lcom/twitterapime/rest/handler/UserAccountHandler;

    invoke-direct {v2}, Lcom/twitterapime/rest/handler/UserAccountHandler;-><init>()V

    invoke-static {v0, p1}, Lcom/twitterapime/rest/handler/UserAccountHandler;->populate(Ljava/util/Hashtable;Lcom/twitterapime/parser/JSONObject;)V

    .line 121
    const-string v2, "status"

    invoke-interface {p1, v2}, Lcom/twitterapime/parser/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    new-instance v2, Lcom/twitterapime/rest/handler/TweetHandler;

    invoke-direct {v2}, Lcom/twitterapime/rest/handler/TweetHandler;-><init>()V

    const-string v2, "status"

    invoke-interface {p1, v2}, Lcom/twitterapime/parser/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/twitterapime/parser/JSONObject;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/twitterapime/rest/handler/TweetHandler;->populate(Ljava/util/Hashtable;Lcom/twitterapime/parser/JSONObject;)V

    .line 125
    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 126
    const-string v2, "USERACCOUNT_LAST_TWEET"

    new-instance v3, Lcom/twitterapime/search/Tweet;

    invoke-direct {v3, v1}, Lcom/twitterapime/search/Tweet;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_0
    iget-object v2, p0, Lcom/twitterapime/rest/handler/json/UserJSONHandler;->userHashList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 133
    iget-object v2, p0, Lcom/twitterapime/rest/handler/json/UserJSONHandler;->userList:Ljava/util/Vector;

    new-instance v3, Lcom/twitterapime/rest/UserAccount;

    invoke-direct {v3, v0}, Lcom/twitterapime/rest/UserAccount;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method private handleAccounts(Lcom/twitterapime/parser/JSONArray;)V
    .locals 2
    .param p1, "jsonObj"    # Lcom/twitterapime/parser/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twitterapime/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Lcom/twitterapime/parser/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 104
    invoke-interface {p1, v0}, Lcom/twitterapime/parser/JSONArray;->getJSONObject(I)Lcom/twitterapime/parser/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/twitterapime/rest/handler/json/UserJSONHandler;->handleAccount(Lcom/twitterapime/parser/JSONObject;)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    return-void
.end method


# virtual methods
.method public final getParsedUserAccounts()[Lcom/twitterapime/rest/UserAccount;
    .locals 2

    .prologue
    .line 143
    iget-object v1, p0, Lcom/twitterapime/rest/handler/json/UserJSONHandler;->userList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v0, v1, [Lcom/twitterapime/rest/UserAccount;

    .line 144
    .local v0, "users":[Lcom/twitterapime/rest/UserAccount;
    iget-object v1, p0, Lcom/twitterapime/rest/handler/json/UserJSONHandler;->userList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 146
    return-object v0
.end method

.method public final handle(Lcom/twitterapime/parser/JSONObject;)V
    .locals 2
    .param p1, "jsonObj"    # Lcom/twitterapime/parser/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twitterapime/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/twitterapime/rest/handler/json/UserJSONHandler;->startKey:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/twitterapime/rest/handler/json/UserJSONHandler;->isArray(Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/twitterapime/rest/handler/json/UserJSONHandler;->startKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/twitterapime/parser/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/twitterapime/parser/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitterapime/rest/handler/json/UserJSONHandler;->handleAccounts(Lcom/twitterapime/parser/JSONArray;)V

    .line 93
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/twitterapime/rest/handler/json/UserJSONHandler;->startKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/twitterapime/parser/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/twitterapime/parser/JSONObject;

    move-result-object p1

    .line 82
    const-string v0, "users"

    invoke-interface {p1, v0}, Lcom/twitterapime/parser/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    const-string v0, "next_cursor"

    invoke-interface {p1, v0}, Lcom/twitterapime/parser/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitterapime/rest/handler/json/UserJSONHandler;->nextCursorIndex:J

    .line 85
    const-string v0, "previous_cursor"

    invoke-interface {p1, v0}, Lcom/twitterapime/parser/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitterapime/rest/handler/json/UserJSONHandler;->prevCursorIndex:J

    .line 88
    const-string v0, "users"

    invoke-interface {p1, v0}, Lcom/twitterapime/parser/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/twitterapime/parser/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitterapime/rest/handler/json/UserJSONHandler;->handleAccounts(Lcom/twitterapime/parser/JSONArray;)V

    goto :goto_0

    .line 90
    :cond_1
    invoke-direct {p0, p1}, Lcom/twitterapime/rest/handler/json/UserJSONHandler;->handleAccount(Lcom/twitterapime/parser/JSONObject;)V

    goto :goto_0
.end method

.method public final loadParsedUserAccount$604a5280(Lcom/twitterapime/rest/UserAccount;)V
    .locals 2
    .param p1, "user"    # Lcom/twitterapime/rest/UserAccount;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/twitterapime/rest/handler/json/UserJSONHandler;->userHashList:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    invoke-virtual {p1, v0}, Lcom/twitterapime/rest/UserAccount;->setData(Ljava/util/Hashtable;)V

    .line 158
    return-void
.end method
