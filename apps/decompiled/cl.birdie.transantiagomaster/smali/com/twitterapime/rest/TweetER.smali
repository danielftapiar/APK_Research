.class public final Lcom/twitterapime/rest/TweetER;
.super Ljava/lang/Object;
.source "TweetER.java"


# static fields
.field private static final SERVICES_URL:Ljava/util/Hashtable;

.field private static tweetERPool:Ljava/util/Hashtable;


# instance fields
.field private userAccountMngr:Lcom/twitterapime/rest/UserAccountManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 165
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    .line 167
    sput-object v0, Lcom/twitterapime/rest/TweetER;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_STATUSES_UPDATE"

    const-string v2, "https://api.twitter.com/1.1/statuses/update.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/twitterapime/rest/TweetER;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_STATUSES_SHOW"

    const-string v2, "https://api.twitter.com/1.1/statuses/show.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/twitterapime/rest/TweetER;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_STATUSES_RETWEET"

    const-string v2, "https://api.twitter.com/1.1/statuses/retweet/"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/twitterapime/rest/TweetER;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_DIRECT_MESSAGES_NEW"

    const-string v2, "https://api.twitter.com/1.1/direct_messages/new.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/twitterapime/rest/TweetER;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_FAVORITES_CREATE"

    const-string v2, "https://api.twitter.com/1.1/favorites/create.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/twitterapime/rest/TweetER;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_FAVORITES_DESTROY"

    const-string v2, "https://api.twitter.com/1.1/favorites/destroy.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    return-void
.end method

.method private constructor <init>(Lcom/twitterapime/rest/UserAccountManager;)V
    .locals 0
    .param p1, "uam"    # Lcom/twitterapime/rest/UserAccountManager;

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput-object p1, p0, Lcom/twitterapime/rest/TweetER;->userAccountMngr:Lcom/twitterapime/rest/UserAccountManager;

    .line 321
    return-void
.end method

.method static declared-synchronized cleanPool()V
    .locals 4

    .prologue
    .line 204
    const-class v3, Lcom/twitterapime/rest/TweetER;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/twitterapime/rest/TweetER;->tweetERPool:Ljava/util/Hashtable;

    if-eqz v2, :cond_1

    .line 205
    sget-object v2, Lcom/twitterapime/rest/TweetER;->tweetERPool:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 209
    .local v1, "keys":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    .line 211
    .local v0, "key":Ljava/lang/Object;
    sget-object v2, Lcom/twitterapime/rest/TweetER;->tweetERPool:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitterapime/rest/TweetER;

    .line 213
    iget-object v2, v2, Lcom/twitterapime/rest/TweetER;->userAccountMngr:Lcom/twitterapime/rest/UserAccountManager;

    invoke-virtual {v2}, Lcom/twitterapime/rest/UserAccountManager;->isVerified()Z

    move-result v2

    if-nez v2, :cond_0

    .line 214
    sget-object v2, Lcom/twitterapime/rest/TweetER;->tweetERPool:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 204
    .end local v0    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 218
    :cond_1
    monitor-exit v3

    return-void
.end method

.method public static declared-synchronized getInstance(Lcom/twitterapime/rest/UserAccountManager;)Lcom/twitterapime/rest/TweetER;
    .locals 4
    .param p0, "uam"    # Lcom/twitterapime/rest/UserAccountManager;

    .prologue
    .line 254
    const-class v2, Lcom/twitterapime/rest/TweetER;

    monitor-enter v2

    if-nez p0, :cond_0

    .line 255
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "UserAccountManager must not be null."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 259
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/twitterapime/rest/UserAccountManager;->isVerified()Z

    move-result v1

    if-nez v1, :cond_1

    .line 260
    new-instance v1, Ljava/lang/SecurityException;

    const-string v3, "User\'s credential must be verified."

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 263
    :cond_1
    sget-object v1, Lcom/twitterapime/rest/TweetER;->tweetERPool:Ljava/util/Hashtable;

    if-nez v1, :cond_2

    .line 264
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lcom/twitterapime/rest/TweetER;->tweetERPool:Ljava/util/Hashtable;

    .line 267
    :cond_2
    sget-object v1, Lcom/twitterapime/rest/TweetER;->tweetERPool:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitterapime/rest/TweetER;

    .line 268
    .local v0, "ter":Lcom/twitterapime/rest/TweetER;
    if-nez v0, :cond_3

    .line 269
    new-instance v0, Lcom/twitterapime/rest/TweetER;

    .end local v0    # "ter":Lcom/twitterapime/rest/TweetER;
    invoke-direct {v0, p0}, Lcom/twitterapime/rest/TweetER;-><init>(Lcom/twitterapime/rest/UserAccountManager;)V

    .line 270
    .restart local v0    # "ter":Lcom/twitterapime/rest/TweetER;
    sget-object v1, Lcom/twitterapime/rest/TweetER;->tweetERPool:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    :cond_3
    monitor-exit v2

    return-object v0
.end method
