.class public final Lcom/twitterapime/rest/handler/TweetHandler;
.super Ljava/lang/Object;
.source "TweetHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static populate(Ljava/util/Hashtable;Lcom/twitterapime/parser/JSONObject;)V
    .locals 3
    .param p0, "data"    # Ljava/util/Hashtable;
    .param p1, "jsonObj"    # Lcom/twitterapime/parser/JSONObject;

    .prologue
    .line 60
    const-string v0, "TWEET_ID"

    const-string v1, "id"

    invoke-static {p0, v0, p1, v1}, Lcom/twitterapime/rest/handler/TweetHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 61
    const-string v0, "TWEET_CONTENT"

    const-string v1, "text"

    invoke-static {p0, v0, p1, v1}, Lcom/twitterapime/rest/handler/TweetHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 62
    const-string v0, "TWEET_FAVOURITE"

    const-string v1, "favorited"

    invoke-static {p0, v0, p1, v1}, Lcom/twitterapime/rest/handler/TweetHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 63
    const-string v0, "TWEET_IN_REPLY_TO_TWEET_ID"

    const-string v1, "in_reply_to_status_id"

    invoke-static {p0, v0, p1, v1}, Lcom/twitterapime/rest/handler/TweetHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 65
    const-string v0, "created_at"

    invoke-interface {p1, v0}, Lcom/twitterapime/parser/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const-string v0, "TWEET_PUBLISH_DATE"

    const-string v1, "created_at"

    invoke-interface {p1, v1}, Lcom/twitterapime/parser/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/twitterapime/util/StringUtil;->convertTweetDateToLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_0
    const-string v0, "source"

    invoke-interface {p1, v0}, Lcom/twitterapime/parser/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    const-string v0, "TWEET_SOURCE"

    const-string v1, "source"

    invoke-interface {p1, v1}, Lcom/twitterapime/parser/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/twitterapime/util/StringUtil;->removeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_1
    return-void
.end method

.method private static putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V
    .locals 1
    .param p0, "data"    # Ljava/util/Hashtable;
    .param p1, "dataKey"    # Ljava/lang/String;
    .param p2, "jsonObj"    # Lcom/twitterapime/parser/JSONObject;
    .param p3, "jsonKey"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-interface {p2, p3}, Lcom/twitterapime/parser/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {p2, p3}, Lcom/twitterapime/parser/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_0
    return-void
.end method
