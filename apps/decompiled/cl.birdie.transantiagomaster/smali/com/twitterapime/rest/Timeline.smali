.class public final Lcom/twitterapime/rest/Timeline;
.super Ljava/lang/Object;
.source "Timeline.java"


# static fields
.field private static final SERVICES_URL:Ljava/util/Hashtable;

.field private static timelinePool:Ljava/util/Hashtable;


# instance fields
.field private userAccountMngr:Lcom/twitterapime/rest/UserAccountManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 268
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    .line 270
    sput-object v0, Lcom/twitterapime/rest/Timeline;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_STATUSES_PUBLIC_TIMELINE"

    const-string v2, "http://api.twitter.com/1/statuses/public_timeline.xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/twitterapime/rest/Timeline;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_STATUSES_HOME_TIMELINE"

    const-string v2, "https://api.twitter.com/1.1/statuses/home_timeline.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/twitterapime/rest/Timeline;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_STATUSES_USER_TIMELINE"

    const-string v2, "https://api.twitter.com/1.1/statuses/user_timeline.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/twitterapime/rest/Timeline;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_STATUSES_MENTIONS"

    const-string v2, "https://api.twitter.com/1.1/statuses/mentions_timeline.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/twitterapime/rest/Timeline;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_DIRECT_MESSAGES"

    const-string v2, "https://api.twitter.com/1.1/direct_messages.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/twitterapime/rest/Timeline;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_DIRECT_MESSAGES_SENT"

    const-string v2, "https://api.twitter.com/1.1/direct_messages/sent.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/twitterapime/rest/Timeline;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_STATUSES_RETWEETS_OF_ME"

    const-string v2, "https://api.twitter.com/1.1/statuses/retweets_of_me.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/twitterapime/rest/Timeline;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_STATUSES_RETWEETED_BY_ME"

    const-string v2, "http://api.twitter.com/1/statuses/retweeted_by_me.xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lcom/twitterapime/rest/Timeline;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_STATUSES_RETWEETED_TO_ME"

    const-string v2, "http://api.twitter.com/1/statuses/retweeted_to_me.xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/twitterapime/rest/Timeline;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_FAVORITES"

    const-string v2, "https://api.twitter.com/1.1/favorites/list.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/twitterapime/rest/Timeline;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_LISTS_STATUSES"

    const-string v2, "https://api.twitter.com/1.1/lists/statuses.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    return-void
.end method

.method private constructor <init>(Lcom/twitterapime/rest/UserAccountManager;)V
    .locals 0
    .param p1, "uam"    # Lcom/twitterapime/rest/UserAccountManager;

    .prologue
    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    iput-object p1, p0, Lcom/twitterapime/rest/Timeline;->userAccountMngr:Lcom/twitterapime/rest/UserAccountManager;

    .line 444
    return-void
.end method

.method static synthetic access$000$672a9f4(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-static {p0}, Lcom/twitterapime/rest/Timeline;->getURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/twitterapime/rest/Timeline;)Lcom/twitterapime/rest/UserAccountManager;
    .locals 1
    .param p0, "x0"    # Lcom/twitterapime/rest/Timeline;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/twitterapime/rest/Timeline;->userAccountMngr:Lcom/twitterapime/rest/UserAccountManager;

    return-object v0
.end method

.method static declared-synchronized cleanPool()V
    .locals 4

    .prologue
    .line 322
    const-class v3, Lcom/twitterapime/rest/Timeline;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/twitterapime/rest/Timeline;->timelinePool:Ljava/util/Hashtable;

    if-eqz v2, :cond_1

    .line 323
    sget-object v2, Lcom/twitterapime/rest/Timeline;->timelinePool:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 327
    .local v1, "keys":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 328
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    .line 329
    .local v0, "key":Ljava/lang/Object;
    sget-object v2, Lcom/twitterapime/rest/Timeline;->timelinePool:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitterapime/rest/Timeline;

    .line 331
    iget-object v2, v2, Lcom/twitterapime/rest/Timeline;->userAccountMngr:Lcom/twitterapime/rest/UserAccountManager;

    invoke-virtual {v2}, Lcom/twitterapime/rest/UserAccountManager;->isVerified()Z

    move-result v2

    if-nez v2, :cond_0

    .line 332
    sget-object v2, Lcom/twitterapime/rest/Timeline;->timelinePool:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 322
    .end local v0    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 336
    :cond_1
    monitor-exit v3

    return-void
.end method

.method public static declared-synchronized getInstance(Lcom/twitterapime/rest/UserAccountManager;)Lcom/twitterapime/rest/Timeline;
    .locals 4
    .param p0, "uam"    # Lcom/twitterapime/rest/UserAccountManager;

    .prologue
    .line 377
    const-class v2, Lcom/twitterapime/rest/Timeline;

    monitor-enter v2

    if-nez p0, :cond_0

    .line 378
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "UserAccountManager must not be null."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 382
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/twitterapime/rest/UserAccountManager;->isVerified()Z

    move-result v1

    if-nez v1, :cond_1

    .line 383
    new-instance v1, Ljava/lang/SecurityException;

    const-string v3, "User\'s credential must be verified."

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 386
    :cond_1
    sget-object v1, Lcom/twitterapime/rest/Timeline;->timelinePool:Ljava/util/Hashtable;

    if-nez v1, :cond_2

    .line 387
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lcom/twitterapime/rest/Timeline;->timelinePool:Ljava/util/Hashtable;

    .line 390
    :cond_2
    sget-object v1, Lcom/twitterapime/rest/Timeline;->timelinePool:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitterapime/rest/Timeline;

    .line 391
    .local v0, "ter":Lcom/twitterapime/rest/Timeline;
    if-nez v0, :cond_3

    .line 392
    new-instance v0, Lcom/twitterapime/rest/Timeline;

    .end local v0    # "ter":Lcom/twitterapime/rest/Timeline;
    invoke-direct {v0, p0}, Lcom/twitterapime/rest/Timeline;-><init>(Lcom/twitterapime/rest/UserAccountManager;)V

    .line 393
    .restart local v0    # "ter":Lcom/twitterapime/rest/Timeline;
    sget-object v1, Lcom/twitterapime/rest/Timeline;->timelinePool:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 396
    :cond_3
    monitor-exit v2

    return-object v0
.end method

.method private static getURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "serviceKey"    # Ljava/lang/String;

    .prologue
    .line 313
    sget-object v0, Lcom/twitterapime/rest/Timeline;->SERVICES_URL:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private startGet$29dd8c46(Ljava/lang/String;Lcom/twitterapime/search/Query;Lcom/twitterapime/search/SearchDeviceListener;Lcom/twitterapime/parser/Handler;)V
    .locals 6
    .param p1, "servURLKey"    # Ljava/lang/String;
    .param p2, "q"    # Lcom/twitterapime/search/Query;
    .param p3, "l"    # Lcom/twitterapime/search/SearchDeviceListener;
    .param p4, "h"    # Lcom/twitterapime/parser/Handler;

    .prologue
    .line 875
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 876
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Url must not be empty/null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 878
    :cond_1
    if-nez p3, :cond_2

    .line 879
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Listener must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 881
    :cond_2
    if-nez p4, :cond_3

    .line 882
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Handler must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 885
    :cond_3
    iget-object v1, p0, Lcom/twitterapime/rest/Timeline;->userAccountMngr:Lcom/twitterapime/rest/UserAccountManager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/twitterapime/rest/Timeline;->userAccountMngr:Lcom/twitterapime/rest/UserAccountManager;

    invoke-virtual {v1}, Lcom/twitterapime/rest/UserAccountManager;->isVerified()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "User\'s credential must be entered to perform this operation."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 887
    :cond_5
    new-instance v0, Lcom/twitterapime/rest/Timeline$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/twitterapime/rest/Timeline$1;-><init>(Lcom/twitterapime/rest/Timeline;Ljava/lang/String;Lcom/twitterapime/search/Query;Lcom/twitterapime/parser/Handler;Lcom/twitterapime/search/SearchDeviceListener;)V

    .line 922
    .local v0, "r":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 923
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 924
    return-void
.end method


# virtual methods
.method public final startGetHomeTweets(Lcom/twitterapime/search/Query;Lcom/twitterapime/search/SearchDeviceListener;)V
    .locals 2
    .param p1, "q"    # Lcom/twitterapime/search/Query;
    .param p2, "l"    # Lcom/twitterapime/search/SearchDeviceListener;

    .prologue
    .line 508
    new-instance v0, Lcom/twitterapime/rest/handler/json/StatusJSONHandler;

    invoke-direct {v0}, Lcom/twitterapime/rest/handler/json/StatusJSONHandler;-><init>()V

    .line 509
    .local v0, "h":Lcom/twitterapime/rest/handler/json/StatusJSONHandler;
    invoke-virtual {v0, p2}, Lcom/twitterapime/rest/handler/json/StatusJSONHandler;->setSearchDeviceListener(Lcom/twitterapime/search/SearchDeviceListener;)V

    .line 511
    const-string v1, "TWITTER_API_URL_SERVICE_STATUSES_HOME_TIMELINE"

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/twitterapime/rest/Timeline;->startGet$29dd8c46(Ljava/lang/String;Lcom/twitterapime/search/Query;Lcom/twitterapime/search/SearchDeviceListener;Lcom/twitterapime/parser/Handler;)V

    .line 512
    return-void
.end method

.method public final startGetListTweets(Lcom/twitterapime/rest/List;Lcom/twitterapime/search/Query;Lcom/twitterapime/search/SearchDeviceListener;)V
    .locals 6
    .param p1, "list"    # Lcom/twitterapime/rest/List;
    .param p2, "q"    # Lcom/twitterapime/search/Query;
    .param p3, "l"    # Lcom/twitterapime/search/SearchDeviceListener;

    .prologue
    .line 759
    if-nez p1, :cond_0

    .line 760
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "List must not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 763
    :cond_0
    const-string v4, "LIST_ID"

    invoke-virtual {p1, v4}, Lcom/twitterapime/rest/List;->checkEmpty(Ljava/lang/String;)V

    .line 765
    new-instance v0, Lcom/twitterapime/rest/handler/json/StatusJSONHandler;

    invoke-direct {v0}, Lcom/twitterapime/rest/handler/json/StatusJSONHandler;-><init>()V

    .line 766
    .local v0, "h":Lcom/twitterapime/rest/handler/json/StatusJSONHandler;
    invoke-virtual {v0, p3}, Lcom/twitterapime/rest/handler/json/StatusJSONHandler;->setSearchDeviceListener(Lcom/twitterapime/search/SearchDeviceListener;)V

    .line 768
    const-string v4, "TWITTER_API_URL_SERVICE_LISTS_STATUSES"

    invoke-static {v4}, Lcom/twitterapime/rest/Timeline;->getURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 769
    .local v3, "url":Ljava/lang/String;
    new-instance v2, Lcom/twitterapime/search/Query;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "list_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "LIST_ID"

    invoke-virtual {p1, v5}, Lcom/twitterapime/rest/List;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/twitterapime/search/Query;-><init>(Ljava/lang/String;)V

    .line 771
    .local v2, "qry":Lcom/twitterapime/search/Query;
    if-eqz p2, :cond_2

    .line 772
    if-nez p2, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Q1/Q2 must not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    new-instance v1, Lcom/twitterapime/search/Query;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/twitterapime/search/Query;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x26

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/twitterapime/search/Query;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/twitterapime/search/Query;-><init>(Ljava/lang/String;)V

    .end local p2    # "q":Lcom/twitterapime/search/Query;
    .local v1, "q":Lcom/twitterapime/search/Query;
    move-object p2, v1

    .line 777
    .end local v1    # "q":Lcom/twitterapime/search/Query;
    .restart local p2    # "q":Lcom/twitterapime/search/Query;
    :goto_0
    invoke-direct {p0, v3, p2, p3, v0}, Lcom/twitterapime/rest/Timeline;->startGet$29dd8c46(Ljava/lang/String;Lcom/twitterapime/search/Query;Lcom/twitterapime/search/SearchDeviceListener;Lcom/twitterapime/parser/Handler;)V

    .line 778
    return-void

    .line 774
    :cond_2
    move-object p2, v2

    goto :goto_0
.end method
