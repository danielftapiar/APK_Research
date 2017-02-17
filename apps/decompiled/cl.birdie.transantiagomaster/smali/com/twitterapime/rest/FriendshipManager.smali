.class public final Lcom/twitterapime/rest/FriendshipManager;
.super Ljava/lang/Object;
.source "FriendshipManager.java"


# static fields
.field private static final SERVICES_URL:Ljava/util/Hashtable;

.field private static friendsMngrPool:Ljava/util/Hashtable;


# instance fields
.field private userAccountMngr:Lcom/twitterapime/rest/UserAccountManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 281
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    .line 283
    sput-object v0, Lcom/twitterapime/rest/FriendshipManager;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_FRIENDS_ID"

    const-string v2, "https://api.twitter.com/1.1/friends/ids.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/twitterapime/rest/FriendshipManager;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_FOLLOWERS_ID"

    const-string v2, "https://api.twitter.com/1.1/followers/ids.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/twitterapime/rest/FriendshipManager;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_FRIENDSHIPS_CREATE"

    const-string v2, "https://api.twitter.com/1.1/friendships/create.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/twitterapime/rest/FriendshipManager;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_FRIENDSHIPS_DESTROY"

    const-string v2, "https://api.twitter.com/1.1/friendships/destroy.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/twitterapime/rest/FriendshipManager;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_FRIENDSHIPS_EXISTS"

    const-string v2, "http://api.twitter.com/1/friendships/exists.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/twitterapime/rest/FriendshipManager;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_FRIENDSHIPS_INCOMING"

    const-string v2, "https://api.twitter.com/1.1/friendships/incoming.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/twitterapime/rest/FriendshipManager;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_FRIENDSHIPS_OUTGOING"

    const-string v2, "https://api.twitter.com/1.1/friendships/outgoing.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/twitterapime/rest/FriendshipManager;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_BLOCKS_CREATE"

    const-string v2, "https://api.twitter.com/1.1/blocks/create.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lcom/twitterapime/rest/FriendshipManager;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_BLOCKS_DESTROY"

    const-string v2, "https://api.twitter.com/1.1/blocks/destroy.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lcom/twitterapime/rest/FriendshipManager;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_BLOCKS_EXISTS"

    const-string v2, "http://api.twitter.com/1/blocks/exists/"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lcom/twitterapime/rest/FriendshipManager;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_STATUSES_FRIENDS"

    const-string v2, "https://api.twitter.com/1.1/friends/list.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/twitterapime/rest/FriendshipManager;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_STATUSES_FOLLOWERS"

    const-string v2, "https://api.twitter.com/1.1/followers/list.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lcom/twitterapime/rest/FriendshipManager;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_FRIENDSHIPS_SHOW"

    const-string v2, "https://api.twitter.com/1.1/friendships/show.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    return-void
.end method

.method private constructor <init>(Lcom/twitterapime/rest/UserAccountManager;)V
    .locals 0
    .param p1, "uam"    # Lcom/twitterapime/rest/UserAccountManager;

    .prologue
    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    iput-object p1, p0, Lcom/twitterapime/rest/FriendshipManager;->userAccountMngr:Lcom/twitterapime/rest/UserAccountManager;

    .line 464
    return-void
.end method

.method static declared-synchronized cleanPool()V
    .locals 4

    .prologue
    .line 348
    const-class v3, Lcom/twitterapime/rest/FriendshipManager;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/twitterapime/rest/FriendshipManager;->friendsMngrPool:Ljava/util/Hashtable;

    if-eqz v2, :cond_1

    .line 349
    sget-object v2, Lcom/twitterapime/rest/FriendshipManager;->friendsMngrPool:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 353
    .local v1, "keys":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 354
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    .line 355
    .local v0, "key":Ljava/lang/Object;
    sget-object v2, Lcom/twitterapime/rest/FriendshipManager;->friendsMngrPool:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitterapime/rest/FriendshipManager;

    .line 357
    iget-object v2, v2, Lcom/twitterapime/rest/FriendshipManager;->userAccountMngr:Lcom/twitterapime/rest/UserAccountManager;

    invoke-virtual {v2}, Lcom/twitterapime/rest/UserAccountManager;->isVerified()Z

    move-result v2

    if-nez v2, :cond_0

    .line 358
    sget-object v2, Lcom/twitterapime/rest/FriendshipManager;->friendsMngrPool:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 348
    .end local v0    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 362
    :cond_1
    monitor-exit v3

    return-void
.end method

.method public static declared-synchronized getInstance(Lcom/twitterapime/rest/UserAccountManager;)Lcom/twitterapime/rest/FriendshipManager;
    .locals 4
    .param p0, "uam"    # Lcom/twitterapime/rest/UserAccountManager;

    .prologue
    .line 404
    const-class v2, Lcom/twitterapime/rest/FriendshipManager;

    monitor-enter v2

    if-nez p0, :cond_0

    .line 405
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "UserAccountManager must not be null."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 409
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/twitterapime/rest/UserAccountManager;->isVerified()Z

    move-result v1

    if-nez v1, :cond_1

    .line 410
    new-instance v1, Ljava/lang/SecurityException;

    const-string v3, "User\'s credential must be verified."

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 413
    :cond_1
    sget-object v1, Lcom/twitterapime/rest/FriendshipManager;->friendsMngrPool:Ljava/util/Hashtable;

    if-nez v1, :cond_2

    .line 414
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lcom/twitterapime/rest/FriendshipManager;->friendsMngrPool:Ljava/util/Hashtable;

    .line 417
    :cond_2
    sget-object v1, Lcom/twitterapime/rest/FriendshipManager;->friendsMngrPool:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitterapime/rest/FriendshipManager;

    .line 418
    .local v0, "fsmr":Lcom/twitterapime/rest/FriendshipManager;
    if-nez v0, :cond_3

    .line 419
    new-instance v0, Lcom/twitterapime/rest/FriendshipManager;

    .end local v0    # "fsmr":Lcom/twitterapime/rest/FriendshipManager;
    invoke-direct {v0, p0}, Lcom/twitterapime/rest/FriendshipManager;-><init>(Lcom/twitterapime/rest/UserAccountManager;)V

    .line 420
    .restart local v0    # "fsmr":Lcom/twitterapime/rest/FriendshipManager;
    sget-object v1, Lcom/twitterapime/rest/FriendshipManager;->friendsMngrPool:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 423
    :cond_3
    monitor-exit v2

    return-object v0
.end method

.method private manageFriendship(Ljava/lang/String;Lcom/twitterapime/rest/UserAccount;)Lcom/twitterapime/rest/UserAccount;
    .locals 9
    .param p1, "servURLKey"    # Ljava/lang/String;
    .param p2, "ua"    # Lcom/twitterapime/rest/UserAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/twitterapime/search/LimitExceededException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1084
    if-nez p2, :cond_0

    .line 1085
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "UserAccount object must not me null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1088
    :cond_0
    invoke-virtual {p2}, Lcom/twitterapime/rest/UserAccount;->validateUserNameOrID()V

    .line 1090
    iget-object v6, p0, Lcom/twitterapime/rest/FriendshipManager;->userAccountMngr:Lcom/twitterapime/rest/UserAccountManager;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/twitterapime/rest/FriendshipManager;->userAccountMngr:Lcom/twitterapime/rest/UserAccountManager;

    invoke-virtual {v6}, Lcom/twitterapime/rest/UserAccountManager;->isVerified()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "User\'s credential must be entered to perform this operation."

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1092
    :cond_2
    invoke-virtual {p2}, Lcom/twitterapime/rest/UserAccount;->getUserNameOrIDParamValue()[Ljava/lang/String;

    move-result-object v3

    .line 1093
    .local v3, "pv":[Ljava/lang/String;
    iget-object v7, p0, Lcom/twitterapime/rest/FriendshipManager;->userAccountMngr:Lcom/twitterapime/rest/UserAccountManager;

    sget-object v6, Lcom/twitterapime/rest/FriendshipManager;->SERVICES_URL:Ljava/util/Hashtable;

    invoke-virtual {v6, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/twitterapime/rest/UserAccountManager;->createRequest(Ljava/lang/String;)Lcom/twitterapime/io/HttpRequest;

    move-result-object v4

    .line 1094
    .local v4, "req":Lcom/twitterapime/io/HttpRequest;
    const-string v6, "POST"

    invoke-virtual {v4, v6}, Lcom/twitterapime/io/HttpRequest;->setMethod(Ljava/lang/String;)V

    .line 1095
    aget-object v6, v3, v8

    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-virtual {v4, v6, v7}, Lcom/twitterapime/io/HttpRequest;->setBodyParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    :try_start_0
    invoke-virtual {v4}, Lcom/twitterapime/io/HttpRequest;->send()Lcom/twitterapime/io/HttpResponse;

    move-result-object v5

    .line 1100
    .local v5, "resp":Lcom/twitterapime/io/HttpResponse;
    invoke-virtual {v5}, Lcom/twitterapime/io/HttpResponse;->getCode()I

    move-result v6

    const/16 v7, 0x193

    if-ne v6, v7, :cond_3

    .line 1102
    new-instance v6, Lcom/twitterapime/search/InvalidQueryException;

    invoke-static {v5}, Lcom/twitterapime/io/HttpResponseCodeInterpreter;->getErrorMessage(Lcom/twitterapime/io/HttpResponse;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/twitterapime/search/InvalidQueryException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Lcom/twitterapime/parser/ParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1113
    .end local v5    # "resp":Lcom/twitterapime/io/HttpResponse;
    :catch_0
    move-exception v0

    .line 1114
    .local v0, "e":Lcom/twitterapime/parser/ParserException;
    :try_start_1
    new-instance v6, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/twitterapime/parser/ParserException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1116
    .end local v0    # "e":Lcom/twitterapime/parser/ParserException;
    :catchall_0
    move-exception v6

    invoke-virtual {v4}, Lcom/twitterapime/io/HttpRequest;->close()V

    throw v6

    .line 1106
    .restart local v5    # "resp":Lcom/twitterapime/io/HttpResponse;
    :cond_3
    :try_start_2
    invoke-static {v5}, Lcom/twitterapime/io/HttpResponseCodeInterpreter;->perform(Lcom/twitterapime/io/HttpResponse;)V

    .line 1108
    invoke-static {}, Lcom/twitterapime/parser/ParserFactory;->getParser$31d4812a()Lcom/twitterapime/parser/Parser;

    move-result-object v2

    .line 1109
    .local v2, "parser":Lcom/twitterapime/parser/Parser;
    new-instance v1, Lcom/twitterapime/rest/handler/json/UserJSONHandler;

    invoke-direct {v1}, Lcom/twitterapime/rest/handler/json/UserJSONHandler;-><init>()V

    .line 1110
    .local v1, "handler":Lcom/twitterapime/rest/handler/json/UserJSONHandler;
    invoke-virtual {v5}, Lcom/twitterapime/io/HttpResponse;->getStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v2, v6, v1}, Lcom/twitterapime/parser/Parser;->parse(Ljava/io/InputStream;Lcom/twitterapime/parser/Handler;)V

    .line 1112
    invoke-virtual {v1}, Lcom/twitterapime/rest/handler/json/UserJSONHandler;->getParsedUserAccounts()[Lcom/twitterapime/rest/UserAccount;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7
    :try_end_2
    .catch Lcom/twitterapime/parser/ParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1116
    invoke-virtual {v4}, Lcom/twitterapime/io/HttpRequest;->close()V

    return-object v6
.end method


# virtual methods
.method public final follow(Lcom/twitterapime/rest/UserAccount;)Lcom/twitterapime/rest/UserAccount;
    .locals 1
    .param p1, "ua"    # Lcom/twitterapime/rest/UserAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/twitterapime/search/LimitExceededException;
        }
    .end annotation

    .prologue
    .line 794
    const-string v0, "TWITTER_API_URL_SERVICE_FRIENDSHIPS_CREATE"

    invoke-direct {p0, v0, p1}, Lcom/twitterapime/rest/FriendshipManager;->manageFriendship(Ljava/lang/String;Lcom/twitterapime/rest/UserAccount;)Lcom/twitterapime/rest/UserAccount;

    move-result-object v0

    return-object v0
.end method
