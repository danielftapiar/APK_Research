.class public final Lcom/twitterapime/rest/ListManager;
.super Ljava/lang/Object;
.source "ListManager.java"


# static fields
.field private static final SERVICES_URL:Ljava/util/Hashtable;

.field private static listsMngrPool:Ljava/util/Hashtable;


# instance fields
.field private userAccountMngr:Lcom/twitterapime/rest/UserAccountManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 359
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    .line 361
    sput-object v0, Lcom/twitterapime/rest/ListManager;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_LISTS_MEMBERS_DESTROY"

    const-string v2, "https://api.twitter.com/1.1/lists/members/destroy.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lcom/twitterapime/rest/ListManager;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_LISTS_MEMBERS"

    const-string v2, "https://api.twitter.com/1.1/lists/members.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lcom/twitterapime/rest/ListManager;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_LISTS_MEMBERS_CREATE"

    const-string v2, "https://api.twitter.com/1.1/lists/members/create.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lcom/twitterapime/rest/ListManager;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_LISTS_SUBSCRIBERS_DESTROY"

    const-string v2, "https://api.twitter.com/1.1/lists/subscribers/destroy.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v0, Lcom/twitterapime/rest/ListManager;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_LISTS_SUBSCRIBERS_CREATE"

    const-string v2, "https://api.twitter.com/1.1/lists/subscribers/create.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v0, Lcom/twitterapime/rest/ListManager;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_LISTS_SUBSCRIBERS"

    const-string v2, "https://api.twitter.com/1.1/lists/subscribers.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v0, Lcom/twitterapime/rest/ListManager;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_LISTS_DESTROY"

    const-string v2, "https://api.twitter.com/1.1/lists/destroy.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lcom/twitterapime/rest/ListManager;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_LISTS_UPDATE"

    const-string v2, "https://api.twitter.com/1.1/lists/update.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v0, Lcom/twitterapime/rest/ListManager;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_LISTS_ALL"

    const-string v2, "http://api.twitter.com/1.1/lists/list.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v0, Lcom/twitterapime/rest/ListManager;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_LISTS_CREATE"

    const-string v2, "https://api.twitter.com/1.1/lists/create.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v0, Lcom/twitterapime/rest/ListManager;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_LISTS_MEMBERSHIPS"

    const-string v2, "https://api.twitter.com/1.1/lists/memberships.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v0, Lcom/twitterapime/rest/ListManager;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_LISTS"

    const-string v2, "https://api.twitter.com/1.1/lists/list.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    return-void
.end method

.method private constructor <init>(Lcom/twitterapime/rest/UserAccountManager;)V
    .locals 0
    .param p1, "uam"    # Lcom/twitterapime/rest/UserAccountManager;

    .prologue
    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    iput-object p1, p0, Lcom/twitterapime/rest/ListManager;->userAccountMngr:Lcom/twitterapime/rest/UserAccountManager;

    .line 500
    return-void
.end method

.method private checkUserAuth()V
    .locals 2

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/twitterapime/rest/ListManager;->userAccountMngr:Lcom/twitterapime/rest/UserAccountManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitterapime/rest/ListManager;->userAccountMngr:Lcom/twitterapime/rest/UserAccountManager;

    invoke-virtual {v0}, Lcom/twitterapime/rest/UserAccountManager;->isVerified()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1085
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "User\'s credential must be entered to perform this operation."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1088
    :cond_1
    return-void
.end method

.method static declared-synchronized cleanPool()V
    .locals 4

    .prologue
    .line 412
    const-class v3, Lcom/twitterapime/rest/ListManager;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/twitterapime/rest/ListManager;->listsMngrPool:Ljava/util/Hashtable;

    if-eqz v2, :cond_1

    .line 413
    sget-object v2, Lcom/twitterapime/rest/ListManager;->listsMngrPool:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 417
    .local v1, "keys":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 418
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    .line 419
    .local v0, "key":Ljava/lang/Object;
    sget-object v2, Lcom/twitterapime/rest/ListManager;->listsMngrPool:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitterapime/rest/ListManager;

    .line 421
    iget-object v2, v2, Lcom/twitterapime/rest/ListManager;->userAccountMngr:Lcom/twitterapime/rest/UserAccountManager;

    invoke-virtual {v2}, Lcom/twitterapime/rest/UserAccountManager;->isVerified()Z

    move-result v2

    if-nez v2, :cond_0

    .line 422
    sget-object v2, Lcom/twitterapime/rest/ListManager;->listsMngrPool:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 412
    .end local v0    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 426
    :cond_1
    monitor-exit v3

    return-void
.end method

.method public static declared-synchronized getInstance(Lcom/twitterapime/rest/UserAccountManager;)Lcom/twitterapime/rest/ListManager;
    .locals 4
    .param p0, "uam"    # Lcom/twitterapime/rest/UserAccountManager;

    .prologue
    .line 440
    const-class v2, Lcom/twitterapime/rest/ListManager;

    monitor-enter v2

    if-nez p0, :cond_0

    .line 441
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "UserAccountManager must not be null."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 445
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/twitterapime/rest/UserAccountManager;->isVerified()Z

    move-result v1

    if-nez v1, :cond_1

    .line 446
    new-instance v1, Ljava/lang/SecurityException;

    const-string v3, "User\'s credential must be verified."

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 449
    :cond_1
    sget-object v1, Lcom/twitterapime/rest/ListManager;->listsMngrPool:Ljava/util/Hashtable;

    if-nez v1, :cond_2

    .line 450
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lcom/twitterapime/rest/ListManager;->listsMngrPool:Ljava/util/Hashtable;

    .line 453
    :cond_2
    sget-object v1, Lcom/twitterapime/rest/ListManager;->listsMngrPool:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitterapime/rest/ListManager;

    .line 454
    .local v0, "fsmr":Lcom/twitterapime/rest/ListManager;
    if-nez v0, :cond_3

    .line 455
    new-instance v0, Lcom/twitterapime/rest/ListManager;

    .end local v0    # "fsmr":Lcom/twitterapime/rest/ListManager;
    invoke-direct {v0, p0}, Lcom/twitterapime/rest/ListManager;-><init>(Lcom/twitterapime/rest/UserAccountManager;)V

    .line 456
    .restart local v0    # "fsmr":Lcom/twitterapime/rest/ListManager;
    sget-object v1, Lcom/twitterapime/rest/ListManager;->listsMngrPool:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 459
    :cond_3
    monitor-exit v2

    return-object v0
.end method

.method private getLists(Lcom/twitterapime/rest/UserAccount;)[Lcom/twitterapime/rest/List;
    .locals 4
    .param p1, "user"    # Lcom/twitterapime/rest/UserAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/twitterapime/search/LimitExceededException;
        }
    .end annotation

    .prologue
    .line 948
    invoke-direct {p0}, Lcom/twitterapime/rest/ListManager;->checkUserAuth()V

    .line 950
    if-nez p1, :cond_0

    .line 951
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "User must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 955
    :cond_0
    :try_start_0
    const-string v2, "USERACCOUNT_ID"

    invoke-virtual {p1, v2}, Lcom/twitterapime/rest/UserAccount;->checkEmpty(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 960
    :goto_0
    invoke-virtual {p1}, Lcom/twitterapime/rest/UserAccount;->getUserNameOrIDParamValue()[Ljava/lang/String;

    move-result-object v1

    .line 961
    .local v1, "usrp":[Ljava/lang/String;
    const-string v2, "TWITTER_API_URL_SERVICE_LISTS"

    invoke-static {v2}, Lcom/twitterapime/rest/ListManager;->getURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 963
    .local v0, "url":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 965
    iget-object v2, p0, Lcom/twitterapime/rest/ListManager;->userAccountMngr:Lcom/twitterapime/rest/UserAccountManager;

    invoke-virtual {v2, v0}, Lcom/twitterapime/rest/UserAccountManager;->createRequest(Ljava/lang/String;)Lcom/twitterapime/io/HttpRequest;

    move-result-object v2

    .line 967
    invoke-static {v2}, Lcom/twitterapime/rest/ListManager;->processRequest(Lcom/twitterapime/io/HttpRequest;)[Lcom/twitterapime/rest/List;

    move-result-object v2

    return-object v2

    .line 957
    .end local v0    # "url":Ljava/lang/String;
    .end local v1    # "usrp":[Ljava/lang/String;
    :catch_0
    move-exception v2

    const-string v2, "USERACCOUNT_USER_NAME"

    invoke-virtual {p1, v2}, Lcom/twitterapime/rest/UserAccount;->checkEmpty(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "serviceKey"    # Ljava/lang/String;

    .prologue
    .line 1074
    sget-object v0, Lcom/twitterapime/rest/ListManager;->SERVICES_URL:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static processRequest(Lcom/twitterapime/io/HttpRequest;)[Lcom/twitterapime/rest/List;
    .locals 6
    .param p0, "req"    # Lcom/twitterapime/io/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/twitterapime/search/LimitExceededException;
        }
    .end annotation

    .prologue
    .line 1005
    :try_start_0
    invoke-virtual {p0}, Lcom/twitterapime/io/HttpRequest;->send()Lcom/twitterapime/io/HttpResponse;

    move-result-object v3

    .line 1007
    .local v3, "resp":Lcom/twitterapime/io/HttpResponse;
    invoke-static {v3}, Lcom/twitterapime/io/HttpResponseCodeInterpreter;->perform(Lcom/twitterapime/io/HttpResponse;)V

    .line 1009
    invoke-static {}, Lcom/twitterapime/parser/ParserFactory;->getParser$31d4812a()Lcom/twitterapime/parser/Parser;

    move-result-object v2

    .line 1010
    .local v2, "parser":Lcom/twitterapime/parser/Parser;
    new-instance v1, Lcom/twitterapime/rest/handler/json/ListJSONHandler;

    invoke-direct {v1}, Lcom/twitterapime/rest/handler/json/ListJSONHandler;-><init>()V

    .line 1011
    .local v1, "handler":Lcom/twitterapime/rest/handler/json/ListJSONHandler;
    invoke-virtual {v3}, Lcom/twitterapime/io/HttpResponse;->getStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Lcom/twitterapime/parser/Parser;->parse(Ljava/io/InputStream;Lcom/twitterapime/parser/Handler;)V

    .line 1013
    invoke-virtual {v1}, Lcom/twitterapime/rest/handler/json/ListJSONHandler;->getParsedLists()[Lcom/twitterapime/rest/List;
    :try_end_0
    .catch Lcom/twitterapime/parser/ParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 1017
    invoke-virtual {p0}, Lcom/twitterapime/io/HttpRequest;->close()V

    return-object v4

    .line 1014
    .end local v1    # "handler":Lcom/twitterapime/rest/handler/json/ListJSONHandler;
    .end local v2    # "parser":Lcom/twitterapime/parser/Parser;
    .end local v3    # "resp":Lcom/twitterapime/io/HttpResponse;
    :catch_0
    move-exception v0

    .line 1015
    .local v0, "e":Lcom/twitterapime/parser/ParserException;
    :try_start_1
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/twitterapime/parser/ParserException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1017
    .end local v0    # "e":Lcom/twitterapime/parser/ParserException;
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lcom/twitterapime/io/HttpRequest;->close()V

    throw v4
.end method


# virtual methods
.method public final addMember(Lcom/twitterapime/rest/List;Lcom/twitterapime/rest/UserAccount;)Lcom/twitterapime/rest/List;
    .locals 5
    .param p1, "list"    # Lcom/twitterapime/rest/List;
    .param p2, "user"    # Lcom/twitterapime/rest/UserAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/twitterapime/search/LimitExceededException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 812
    invoke-direct {p0}, Lcom/twitterapime/rest/ListManager;->checkUserAuth()V

    .line 814
    if-nez p1, :cond_0

    .line 815
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "List must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 817
    :cond_0
    if-nez p2, :cond_1

    .line 818
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "User must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 821
    :cond_1
    const-string v2, "LIST_ID"

    invoke-virtual {p1, v2}, Lcom/twitterapime/rest/List;->checkEmpty(Ljava/lang/String;)V

    .line 823
    :try_start_0
    const-string v2, "USERACCOUNT_ID"

    invoke-virtual {p2, v2}, Lcom/twitterapime/rest/UserAccount;->checkEmpty(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    :goto_0
    iget-object v2, p0, Lcom/twitterapime/rest/ListManager;->userAccountMngr:Lcom/twitterapime/rest/UserAccountManager;

    const-string v3, "TWITTER_API_URL_SERVICE_LISTS_MEMBERS_CREATE"

    invoke-static {v3}, Lcom/twitterapime/rest/ListManager;->getURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twitterapime/rest/UserAccountManager;->createRequest(Ljava/lang/String;)Lcom/twitterapime/io/HttpRequest;

    move-result-object v0

    .line 831
    .local v0, "req":Lcom/twitterapime/io/HttpRequest;
    const-string v2, "POST"

    invoke-virtual {v0, v2}, Lcom/twitterapime/io/HttpRequest;->setMethod(Ljava/lang/String;)V

    .line 833
    invoke-virtual {p2}, Lcom/twitterapime/rest/UserAccount;->getUserNameOrIDParamValue()[Ljava/lang/String;

    move-result-object v1

    .line 835
    .local v1, "usrp":[Ljava/lang/String;
    const-string v2, "list_id"

    const-string v3, "LIST_ID"

    invoke-virtual {p1, v3}, Lcom/twitterapime/rest/List;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/twitterapime/io/HttpRequest;->setBodyParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    aget-object v2, v1, v4

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v0, v2, v3}, Lcom/twitterapime/io/HttpRequest;->setBodyParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    invoke-static {v0}, Lcom/twitterapime/rest/ListManager;->processRequest(Lcom/twitterapime/io/HttpRequest;)[Lcom/twitterapime/rest/List;

    move-result-object v2

    aget-object v2, v2, v4

    return-object v2

    .line 825
    .end local v0    # "req":Lcom/twitterapime/io/HttpRequest;
    .end local v1    # "usrp":[Ljava/lang/String;
    :catch_0
    move-exception v2

    const-string v2, "USERACCOUNT_USER_NAME"

    invoke-virtual {p2, v2}, Lcom/twitterapime/rest/UserAccount;->checkEmpty(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final create(Lcom/twitterapime/rest/List;)Lcom/twitterapime/rest/List;
    .locals 3
    .param p1, "list"    # Lcom/twitterapime/rest/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/twitterapime/search/LimitExceededException;
        }
    .end annotation

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/twitterapime/rest/ListManager;->checkUserAuth()V

    .line 545
    if-nez p1, :cond_0

    .line 546
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "List must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 549
    :cond_0
    const-string v1, "LIST_NAME"

    invoke-virtual {p1, v1}, Lcom/twitterapime/rest/List;->checkEmpty(Ljava/lang/String;)V

    .line 551
    iget-object v1, p0, Lcom/twitterapime/rest/ListManager;->userAccountMngr:Lcom/twitterapime/rest/UserAccountManager;

    const-string v2, "TWITTER_API_URL_SERVICE_LISTS_CREATE"

    invoke-static {v2}, Lcom/twitterapime/rest/ListManager;->getURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitterapime/rest/UserAccountManager;->createRequest(Ljava/lang/String;)Lcom/twitterapime/io/HttpRequest;

    move-result-object v0

    .line 554
    .local v0, "req":Lcom/twitterapime/io/HttpRequest;
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lcom/twitterapime/io/HttpRequest;->setMethod(Ljava/lang/String;)V

    .line 556
    const-string v1, "name"

    const-string v2, "LIST_NAME"

    invoke-virtual {p1, v2}, Lcom/twitterapime/rest/List;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitterapime/io/HttpRequest;->setBodyParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string v1, "LIST_MODE"

    invoke-virtual {p1, v1}, Lcom/twitterapime/rest/List;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 558
    const-string v1, "mode"

    const-string v2, "LIST_MODE"

    invoke-virtual {p1, v2}, Lcom/twitterapime/rest/List;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitterapime/io/HttpRequest;->setBodyParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    :cond_1
    const-string v1, "LIST_DESCRIPTION"

    invoke-virtual {p1, v1}, Lcom/twitterapime/rest/List;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 561
    const-string v1, "description"

    const-string v2, "LIST_DESCRIPTION"

    invoke-virtual {p1, v2}, Lcom/twitterapime/rest/List;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitterapime/io/HttpRequest;->setBodyParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    :cond_2
    invoke-static {v0}, Lcom/twitterapime/rest/ListManager;->processRequest(Lcom/twitterapime/io/HttpRequest;)[Lcom/twitterapime/rest/List;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    return-object v1
.end method

.method public final getLists()[Lcom/twitterapime/rest/List;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/twitterapime/search/LimitExceededException;
        }
    .end annotation

    .prologue
    .line 931
    new-instance v0, Lcom/twitterapime/rest/UserAccount;

    iget-object v1, p0, Lcom/twitterapime/rest/ListManager;->userAccountMngr:Lcom/twitterapime/rest/UserAccountManager;

    invoke-virtual {v1}, Lcom/twitterapime/rest/UserAccountManager;->getCredential()Lcom/twitterapime/rest/Credential;

    move-result-object v1

    const-string v2, "CREDENTIAL_USERNAME"

    invoke-virtual {v1, v2}, Lcom/twitterapime/rest/Credential;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitterapime/rest/UserAccount;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/twitterapime/rest/ListManager;->getLists(Lcom/twitterapime/rest/UserAccount;)[Lcom/twitterapime/rest/List;

    move-result-object v0

    return-object v0
.end method

.method public final update(Lcom/twitterapime/rest/List;)Lcom/twitterapime/rest/List;
    .locals 3
    .param p1, "list"    # Lcom/twitterapime/rest/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/twitterapime/search/LimitExceededException;
        }
    .end annotation

    .prologue
    .line 580
    invoke-direct {p0}, Lcom/twitterapime/rest/ListManager;->checkUserAuth()V

    .line 582
    if-nez p1, :cond_0

    .line 583
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "List must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 586
    :cond_0
    const-string v1, "LIST_ID"

    invoke-virtual {p1, v1}, Lcom/twitterapime/rest/List;->checkEmpty(Ljava/lang/String;)V

    .line 588
    iget-object v1, p0, Lcom/twitterapime/rest/ListManager;->userAccountMngr:Lcom/twitterapime/rest/UserAccountManager;

    const-string v2, "TWITTER_API_URL_SERVICE_LISTS_UPDATE"

    invoke-static {v2}, Lcom/twitterapime/rest/ListManager;->getURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitterapime/rest/UserAccountManager;->createRequest(Ljava/lang/String;)Lcom/twitterapime/io/HttpRequest;

    move-result-object v0

    .line 591
    .local v0, "req":Lcom/twitterapime/io/HttpRequest;
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lcom/twitterapime/io/HttpRequest;->setMethod(Ljava/lang/String;)V

    .line 593
    const-string v1, "list_id"

    const-string v2, "LIST_ID"

    invoke-virtual {p1, v2}, Lcom/twitterapime/rest/List;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitterapime/io/HttpRequest;->setBodyParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const-string v1, "LIST_NAME"

    invoke-virtual {p1, v1}, Lcom/twitterapime/rest/List;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 595
    const-string v1, "name"

    const-string v2, "LIST_NAME"

    invoke-virtual {p1, v2}, Lcom/twitterapime/rest/List;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitterapime/io/HttpRequest;->setBodyParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    :cond_1
    const-string v1, "LIST_MODE"

    invoke-virtual {p1, v1}, Lcom/twitterapime/rest/List;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 598
    const-string v1, "mode"

    const-string v2, "LIST_MODE"

    invoke-virtual {p1, v2}, Lcom/twitterapime/rest/List;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitterapime/io/HttpRequest;->setBodyParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :cond_2
    const-string v1, "LIST_DESCRIPTION"

    invoke-virtual {p1, v1}, Lcom/twitterapime/rest/List;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 601
    const-string v1, "description"

    const-string v2, "LIST_DESCRIPTION"

    invoke-virtual {p1, v2}, Lcom/twitterapime/rest/List;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitterapime/io/HttpRequest;->setBodyParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    :cond_3
    invoke-static {v0}, Lcom/twitterapime/rest/ListManager;->processRequest(Lcom/twitterapime/io/HttpRequest;)[Lcom/twitterapime/rest/List;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    return-object v1
.end method
