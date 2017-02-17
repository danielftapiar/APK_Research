.class public final Lcom/twitterapime/search/handler/TweetEntityHandler;
.super Ljava/lang/Object;
.source "TweetEntityHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static populate(Ljava/util/Hashtable;Lcom/twitterapime/parser/JSONObject;)V
    .locals 13
    .param p0, "data"    # Ljava/util/Hashtable;
    .param p1, "jsonObj"    # Lcom/twitterapime/parser/JSONObject;

    .prologue
    .line 125
    const-string v11, "user_mentions"

    invoke-interface {p1, v11}, Lcom/twitterapime/parser/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 126
    const-string v11, "user_mentions"

    invoke-interface {p1, v11}, Lcom/twitterapime/parser/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/twitterapime/parser/JSONArray;

    move-result-object v4

    .line 127
    .local v4, "jsonMentions":Lcom/twitterapime/parser/JSONArray;
    new-instance v7, Ljava/util/Vector;

    invoke-interface {v4}, Lcom/twitterapime/parser/JSONArray;->length()I

    move-result v11

    invoke-direct {v7, v11}, Ljava/util/Vector;-><init>(I)V

    .line 129
    .local v7, "mentions":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v4}, Lcom/twitterapime/parser/JSONArray;->length()I

    move-result v11

    if-ge v1, v11, :cond_1

    .line 130
    invoke-interface {v4, v1}, Lcom/twitterapime/parser/JSONArray;->getJSONObject(I)Lcom/twitterapime/parser/JSONObject;

    move-result-object v8

    .line 131
    .local v8, "obj":Lcom/twitterapime/parser/JSONObject;
    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    .line 133
    .local v9, "t":Ljava/util/Hashtable;
    const-string v11, "TWEETENTITY_USERACCOUNT_ID"

    const-string v12, "id"

    invoke-static {v9, v11, v8, v12}, Lcom/twitterapime/search/handler/TweetEntityHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 134
    const-string v11, "TWEETENTITY_USERACCOUNT_USER_NAME"

    const-string v12, "screen_name"

    invoke-static {v9, v11, v8, v12}, Lcom/twitterapime/search/handler/TweetEntityHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 135
    const-string v11, "TWEETENTITY_USERACCOUNT_NAME"

    const-string v12, "name"

    invoke-static {v9, v11, v8, v12}, Lcom/twitterapime/search/handler/TweetEntityHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v9}, Ljava/util/Hashtable;->size()I

    move-result v11

    if-lez v11, :cond_0

    .line 138
    new-instance v11, Lcom/twitterapime/search/TweetEntity;

    invoke-direct {v11, v9}, Lcom/twitterapime/search/TweetEntity;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v7, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 129
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    .end local v8    # "obj":Lcom/twitterapime/parser/JSONObject;
    .end local v9    # "t":Ljava/util/Hashtable;
    :cond_1
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v11

    if-lez v11, :cond_2

    .line 143
    const-string v11, "TWEETENTITY_MENTIONS"

    invoke-virtual {p0, v11, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .end local v1    # "i":I
    .end local v4    # "jsonMentions":Lcom/twitterapime/parser/JSONArray;
    .end local v7    # "mentions":Ljava/util/Vector;
    :cond_2
    const-string v11, "media"

    invoke-interface {p1, v11}, Lcom/twitterapime/parser/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 148
    const-string v11, "media"

    invoke-interface {p1, v11}, Lcom/twitterapime/parser/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/twitterapime/parser/JSONArray;

    move-result-object v3

    .line 149
    .local v3, "jsonMedias":Lcom/twitterapime/parser/JSONArray;
    new-instance v6, Ljava/util/Vector;

    invoke-interface {v3}, Lcom/twitterapime/parser/JSONArray;->length()I

    move-result v11

    invoke-direct {v6, v11}, Ljava/util/Vector;-><init>(I)V

    .line 151
    .local v6, "medias":Ljava/util/Vector;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-interface {v3}, Lcom/twitterapime/parser/JSONArray;->length()I

    move-result v11

    if-ge v1, v11, :cond_4

    .line 152
    invoke-interface {v3, v1}, Lcom/twitterapime/parser/JSONArray;->getJSONObject(I)Lcom/twitterapime/parser/JSONObject;

    move-result-object v8

    .line 153
    .restart local v8    # "obj":Lcom/twitterapime/parser/JSONObject;
    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    .line 155
    .restart local v9    # "t":Ljava/util/Hashtable;
    const-string v11, "TWEETENTITY_MEDIA"

    const-string v12, "media_url"

    invoke-static {v9, v11, v8, v12}, Lcom/twitterapime/search/handler/TweetEntityHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 156
    const-string v11, "TWEETENTITY_DISPLAY_URL"

    const-string v12, "display_url"

    invoke-static {v9, v11, v8, v12}, Lcom/twitterapime/search/handler/TweetEntityHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v9}, Ljava/util/Hashtable;->size()I

    move-result v11

    if-lez v11, :cond_3

    .line 159
    new-instance v11, Lcom/twitterapime/search/TweetEntity;

    invoke-direct {v11, v9}, Lcom/twitterapime/search/TweetEntity;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v6, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 151
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 163
    .end local v8    # "obj":Lcom/twitterapime/parser/JSONObject;
    .end local v9    # "t":Ljava/util/Hashtable;
    :cond_4
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v11

    if-lez v11, :cond_5

    .line 164
    const-string v11, "TWEETENTITY_MEDIAS"

    invoke-virtual {p0, v11, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .end local v1    # "i":I
    .end local v3    # "jsonMedias":Lcom/twitterapime/parser/JSONArray;
    .end local v6    # "medias":Ljava/util/Vector;
    :cond_5
    const-string v11, "urls"

    invoke-interface {p1, v11}, Lcom/twitterapime/parser/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 169
    const-string v11, "urls"

    invoke-interface {p1, v11}, Lcom/twitterapime/parser/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/twitterapime/parser/JSONArray;

    move-result-object v5

    .line 170
    .local v5, "jsonUrls":Lcom/twitterapime/parser/JSONArray;
    new-instance v10, Ljava/util/Vector;

    invoke-interface {v5}, Lcom/twitterapime/parser/JSONArray;->length()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/Vector;-><init>(I)V

    .line 172
    .local v10, "urls":Ljava/util/Vector;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    invoke-interface {v5}, Lcom/twitterapime/parser/JSONArray;->length()I

    move-result v11

    if-ge v1, v11, :cond_7

    .line 173
    invoke-interface {v5, v1}, Lcom/twitterapime/parser/JSONArray;->getJSONObject(I)Lcom/twitterapime/parser/JSONObject;

    move-result-object v8

    .line 174
    .restart local v8    # "obj":Lcom/twitterapime/parser/JSONObject;
    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    .line 176
    .restart local v9    # "t":Ljava/util/Hashtable;
    const-string v11, "TWEETENTITY_URL"

    const-string v12, "url"

    invoke-static {v9, v11, v8, v12}, Lcom/twitterapime/search/handler/TweetEntityHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 177
    const-string v11, "TWEETENTITY_DISPLAY_URL"

    const-string v12, "display_url"

    invoke-static {v9, v11, v8, v12}, Lcom/twitterapime/search/handler/TweetEntityHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 178
    const-string v11, "TWEETENTITY_EXPANDED_URL"

    const-string v12, "expanded_url"

    invoke-static {v9, v11, v8, v12}, Lcom/twitterapime/search/handler/TweetEntityHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v9}, Ljava/util/Hashtable;->size()I

    move-result v11

    if-lez v11, :cond_6

    .line 181
    new-instance v11, Lcom/twitterapime/search/TweetEntity;

    invoke-direct {v11, v9}, Lcom/twitterapime/search/TweetEntity;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v10, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 172
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 185
    .end local v8    # "obj":Lcom/twitterapime/parser/JSONObject;
    .end local v9    # "t":Ljava/util/Hashtable;
    :cond_7
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v11

    if-lez v11, :cond_8

    .line 186
    const-string v11, "TWEETENTITY_URLS"

    invoke-virtual {p0, v11, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .end local v1    # "i":I
    .end local v5    # "jsonUrls":Lcom/twitterapime/parser/JSONArray;
    .end local v10    # "urls":Ljava/util/Vector;
    :cond_8
    const-string v11, "hashtags"

    invoke-interface {p1, v11}, Lcom/twitterapime/parser/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 191
    const-string v11, "hashtags"

    invoke-interface {p1, v11}, Lcom/twitterapime/parser/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/twitterapime/parser/JSONArray;

    move-result-object v2

    .line 192
    .local v2, "jsonHashtags":Lcom/twitterapime/parser/JSONArray;
    new-instance v0, Ljava/util/Vector;

    invoke-interface {v2}, Lcom/twitterapime/parser/JSONArray;->length()I

    move-result v11

    invoke-direct {v0, v11}, Ljava/util/Vector;-><init>(I)V

    .line 194
    .local v0, "hashtags":Ljava/util/Vector;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    invoke-interface {v2}, Lcom/twitterapime/parser/JSONArray;->length()I

    move-result v11

    if-ge v1, v11, :cond_a

    .line 195
    invoke-interface {v2, v1}, Lcom/twitterapime/parser/JSONArray;->getJSONObject(I)Lcom/twitterapime/parser/JSONObject;

    move-result-object v8

    .line 196
    .restart local v8    # "obj":Lcom/twitterapime/parser/JSONObject;
    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    .line 198
    .restart local v9    # "t":Ljava/util/Hashtable;
    const-string v11, "TWEETENTITY_HASHTAG"

    const-string v12, "text"

    invoke-static {v9, v11, v8, v12}, Lcom/twitterapime/search/handler/TweetEntityHandler;->putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v9}, Ljava/util/Hashtable;->size()I

    move-result v11

    if-lez v11, :cond_9

    .line 201
    new-instance v11, Lcom/twitterapime/search/TweetEntity;

    invoke-direct {v11, v9}, Lcom/twitterapime/search/TweetEntity;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v0, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 194
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 205
    .end local v8    # "obj":Lcom/twitterapime/parser/JSONObject;
    .end local v9    # "t":Ljava/util/Hashtable;
    :cond_a
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v11

    if-lez v11, :cond_b

    .line 206
    const-string v11, "TWEETENTITY_HASHTAGS"

    invoke-virtual {p0, v11, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .end local v0    # "hashtags":Ljava/util/Vector;
    .end local v1    # "i":I
    .end local v2    # "jsonHashtags":Lcom/twitterapime/parser/JSONArray;
    :cond_b
    return-void
.end method

.method private static putIf(Ljava/util/Hashtable;Ljava/lang/String;Lcom/twitterapime/parser/JSONObject;Ljava/lang/String;)V
    .locals 1
    .param p0, "data"    # Ljava/util/Hashtable;
    .param p1, "dataKey"    # Ljava/lang/String;
    .param p2, "jsonObj"    # Lcom/twitterapime/parser/JSONObject;
    .param p3, "jsonKey"    # Ljava/lang/String;

    .prologue
    .line 222
    invoke-interface {p2, p3}, Lcom/twitterapime/parser/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-interface {p2, p3}, Lcom/twitterapime/parser/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_0
    return-void
.end method
