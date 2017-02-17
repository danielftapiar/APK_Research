.class public final Lcom/twitterapime/rest/handler/UserAccountHandler;
.super Ljava/lang/Object;
.source "UserAccountHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static populate(Ljava/util/Hashtable;Lcom/twitterapime/parser/JSONObject;)V
    .locals 4
    .param p0, "data"    # Ljava/util/Hashtable;
    .param p1, "jsonObj"    # Lcom/twitterapime/parser/JSONObject;

    .prologue
    .line 104
    const-string v1, "USERACCOUNT_ID"

    const-string v2, "id"

    invoke-static {p0, v1, p1, v2}, Lcom/twitterapime/rest/handler/UserAccountHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 105
    const-string v1, "USERACCOUNT_NAME"

    const-string v2, "name"

    invoke-static {p0, v1, p1, v2}, Lcom/twitterapime/rest/handler/UserAccountHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 106
    const-string v1, "USERACCOUNT_USER_NAME"

    const-string v2, "screen_name"

    invoke-static {p0, v1, p1, v2}, Lcom/twitterapime/rest/handler/UserAccountHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 107
    const-string v1, "USERACCOUNT_LOCATION"

    const-string v2, "location"

    invoke-static {p0, v1, p1, v2}, Lcom/twitterapime/rest/handler/UserAccountHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 108
    const-string v1, "USERACCOUNT_DESCRIPTION"

    const-string v2, "description"

    invoke-static {p0, v1, p1, v2}, Lcom/twitterapime/rest/handler/UserAccountHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 109
    const-string v1, "USERACCOUNT_PICTURE_URI"

    const-string v2, "profile_image_url"

    invoke-static {p0, v1, p1, v2}, Lcom/twitterapime/rest/handler/UserAccountHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 110
    const-string v1, "USERACCOUNT_URL"

    const-string v2, "url"

    invoke-static {p0, v1, p1, v2}, Lcom/twitterapime/rest/handler/UserAccountHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 111
    const-string v1, "USERACCOUNT_UTC_OFFSET"

    const-string v2, "utc_offset"

    invoke-static {p0, v1, p1, v2}, Lcom/twitterapime/rest/handler/UserAccountHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 112
    const-string v1, "USERACCOUNT_TIME_ZONE"

    const-string v2, "time_zone"

    invoke-static {p0, v1, p1, v2}, Lcom/twitterapime/rest/handler/UserAccountHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 113
    const-string v1, "USERACCOUNT_PROTECTED"

    const-string v2, "protected"

    invoke-static {p0, v1, p1, v2}, Lcom/twitterapime/rest/handler/UserAccountHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 114
    const-string v1, "USERACCOUNT_NOTIFICATIONS"

    const-string v2, "notifications"

    invoke-static {p0, v1, p1, v2}, Lcom/twitterapime/rest/handler/UserAccountHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 115
    const-string v1, "USERACCOUNT_VERIFIED"

    const-string v2, "verified"

    invoke-static {p0, v1, p1, v2}, Lcom/twitterapime/rest/handler/UserAccountHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 116
    const-string v1, "USERACCOUNT_GEO_ENABLED"

    const-string v2, "geo_enabled"

    invoke-static {p0, v1, p1, v2}, Lcom/twitterapime/rest/handler/UserAccountHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 117
    const-string v1, "USERACCOUNT_TWEETS_COUNT"

    const-string v2, "statuses_count"

    invoke-static {p0, v1, p1, v2}, Lcom/twitterapime/rest/handler/UserAccountHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 118
    const-string v1, "USERACCOUNT_FAVOURITES_COUNT"

    const-string v2, "favourites_count"

    invoke-static {p0, v1, p1, v2}, Lcom/twitterapime/rest/handler/UserAccountHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 119
    const-string v1, "USERACCOUNT_FOLLOWERS_COUNT"

    const-string v2, "followers_count"

    invoke-static {p0, v1, p1, v2}, Lcom/twitterapime/rest/handler/UserAccountHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 120
    const-string v1, "USERACCOUNT_FRIENDS_COUNT"

    const-string v2, "friends_count"

    invoke-static {p0, v1, p1, v2}, Lcom/twitterapime/rest/handler/UserAccountHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 121
    const-string v1, "USERACCOUNT_PROFILE_BACKGROUND_COLOR"

    const-string v2, "profile_background_color"

    invoke-static {p0, v1, p1, v2}, Lcom/twitterapime/rest/handler/UserAccountHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 122
    const-string v1, "USERACCOUNT_PROFILE_TEXT_COLOR"

    const-string v2, "profile_text_color"

    invoke-static {p0, v1, p1, v2}, Lcom/twitterapime/rest/handler/UserAccountHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 123
    const-string v1, "USERACCOUNT_PROFILE_LINK_COLOR"

    const-string v2, "profile_link_color"

    invoke-static {p0, v1, p1, v2}, Lcom/twitterapime/rest/handler/UserAccountHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 124
    const-string v1, "USERACCOUNT_PROFILE_BACKGROUND_IMAGE_URI"

    const-string v2, "profile_background_image_url"

    invoke-static {p0, v1, p1, v2}, Lcom/twitterapime/rest/handler/UserAccountHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 126
    const-string v1, "created_at"

    invoke-interface {p1, v1}, Lcom/twitterapime/parser/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    const-string v1, "USERACCOUNT_CREATE_DATE"

    const-string v2, "created_at"

    invoke-interface {p1, v2}, Lcom/twitterapime/parser/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/twitterapime/util/StringUtil;->convertTweetDateToLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_0
    const-string v1, "screen_name"

    invoke-interface {p1, v1}, Lcom/twitterapime/parser/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://api.twitter.com/1/users/profile_image/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "screen_name"

    invoke-interface {p1, v2}, Lcom/twitterapime/parser/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json?size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "picUri":Ljava/lang/String;
    const-string v1, "USERACCOUNT_PICTURE_URI_MINI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mini"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v1, "USERACCOUNT_PICTURE_URI_NORMAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "normal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v1, "USERACCOUNT_PICTURE_URI_BIGGER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bigger"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .end local v0    # "picUri":Ljava/lang/String;
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
    .line 152
    invoke-interface {p2, p3}, Lcom/twitterapime/parser/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-interface {p2, p3}, Lcom/twitterapime/parser/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_0
    return-void
.end method
