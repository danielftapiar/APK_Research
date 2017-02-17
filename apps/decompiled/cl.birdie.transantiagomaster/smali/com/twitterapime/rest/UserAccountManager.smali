.class public final Lcom/twitterapime/rest/UserAccountManager;
.super Ljava/lang/Object;
.source "UserAccountManager.java"


# static fields
.field private static final SERVICES_URL:Ljava/util/Hashtable;

.field private static userAccountMngrPoll:Ljava/util/Hashtable;


# instance fields
.field private credential:Lcom/twitterapime/rest/Credential;

.field private invalidated:Z

.field private signer:Lcom/twitterapime/xauth/XAuthSigner;

.field private token:Lcom/twitterapime/xauth/Token;

.field private verified:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 188
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    .line 190
    sput-object v0, Lcom/twitterapime/rest/UserAccountManager;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_ACCOUNT_VERIFY_CREDENTIALS"

    const-string v2, "https://api.twitter.com/1.1/account/verify_credentials.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/twitterapime/rest/UserAccountManager;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_OAUTH_ACCESS_TOKEN"

    const-string v2, "https://api.twitter.com/oauth/access_token"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/twitterapime/rest/UserAccountManager;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_ACCOUNT_RATE_LIMIT_STATUS"

    const-string v2, "http://api.twitter.com/1/account/rate_limit_status.xml"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/twitterapime/rest/UserAccountManager;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_USERS_SHOW"

    const-string v2, "https://api.twitter.com/1.1/users/show.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/twitterapime/rest/UserAccountManager;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_ACCOUNT_UPDATE_PROFILE"

    const-string v2, "https://api.twitter.com/1.1/account/update_profile.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/twitterapime/rest/UserAccountManager;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_REPORT_SPAM"

    const-string v2, "https://api.twitter.com/1.1/users/report_spam.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/twitterapime/rest/UserAccountManager;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_USERS_SEARCH"

    const-string v2, "https://api.twitter.com/1.1/users/search.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/twitterapime/rest/UserAccountManager;->SERVICES_URL:Ljava/util/Hashtable;

    const-string v1, "TWITTER_API_URL_SERVICE_USERS_LOOKUP"

    const-string v2, "https://api.twitter.com/1.1/users/lookup.json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    return-void
.end method

.method private constructor <init>(Lcom/twitterapime/rest/Credential;)V
    .locals 3
    .param p1, "c"    # Lcom/twitterapime/rest/Credential;

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput-object p1, p0, Lcom/twitterapime/rest/UserAccountManager;->credential:Lcom/twitterapime/rest/Credential;

    .line 326
    new-instance v0, Lcom/twitterapime/xauth/XAuthSigner;

    const-string v1, "CREDENTIAL_CONSUMER_KEY"

    invoke-virtual {p1, v1}, Lcom/twitterapime/rest/Credential;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CREDENTIAL_CONSUMER_SECRET"

    invoke-virtual {p1, v2}, Lcom/twitterapime/rest/Credential;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/twitterapime/xauth/XAuthSigner;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/twitterapime/rest/UserAccountManager;->signer:Lcom/twitterapime/xauth/XAuthSigner;

    .line 330
    return-void
.end method

.method private declared-synchronized checkValid()V
    .locals 2

    .prologue
    .line 1081
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/twitterapime/rest/UserAccountManager;->invalidated:Z

    if-eqz v0, :cond_0

    .line 1082
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This instance is no longer valid. Get a new one!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1081
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1085
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private checkVerified()V
    .locals 2

    .prologue
    .line 1094
    iget-boolean v0, p0, Lcom/twitterapime/rest/UserAccountManager;->verified:Z

    if-nez v0, :cond_0

    .line 1095
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "User\'s credentials have not been verified yet."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1098
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance(Lcom/twitterapime/rest/Credential;)Lcom/twitterapime/rest/UserAccountManager;
    .locals 5
    .param p0, "c"    # Lcom/twitterapime/rest/Credential;

    .prologue
    .line 297
    const-class v3, Lcom/twitterapime/rest/UserAccountManager;

    monitor-enter v3

    if-nez p0, :cond_0

    .line 298
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Credential must not be null."

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 301
    :cond_0
    const/4 v1, 0x0

    .line 303
    .local v1, "uam":Lcom/twitterapime/rest/UserAccountManager;
    :try_start_1
    sget-object v2, Lcom/twitterapime/rest/UserAccountManager;->userAccountMngrPoll:Ljava/util/Hashtable;

    if-nez v2, :cond_1

    .line 304
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    sput-object v2, Lcom/twitterapime/rest/UserAccountManager;->userAccountMngrPoll:Ljava/util/Hashtable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    :goto_0
    if-eqz v1, :cond_2

    .end local v1    # "uam":Lcom/twitterapime/rest/UserAccountManager;
    :goto_1
    monitor-exit v3

    return-object v1

    .line 306
    .restart local v1    # "uam":Lcom/twitterapime/rest/UserAccountManager;
    :cond_1
    :try_start_2
    sget-object v4, Lcom/twitterapime/rest/UserAccountManager;->userAccountMngrPoll:Ljava/util/Hashtable;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 307
    :try_start_3
    sget-object v2, Lcom/twitterapime/rest/UserAccountManager;->userAccountMngrPoll:Ljava/util/Hashtable;

    invoke-virtual {v2, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/twitterapime/rest/UserAccountManager;

    move-object v1, v0

    .line 308
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v4

    throw v2

    .line 311
    :cond_2
    new-instance v1, Lcom/twitterapime/rest/UserAccountManager;

    .end local v1    # "uam":Lcom/twitterapime/rest/UserAccountManager;
    invoke-direct {v1, p0}, Lcom/twitterapime/rest/UserAccountManager;-><init>(Lcom/twitterapime/rest/Credential;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private static getURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "serviceKey"    # Ljava/lang/String;

    .prologue
    .line 259
    sget-object v0, Lcom/twitterapime/rest/UserAccountManager;->SERVICES_URL:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private getUserAccount(Lcom/twitterapime/rest/UserAccount;)Lcom/twitterapime/rest/UserAccount;
    .locals 9
    .param p1, "user"    # Lcom/twitterapime/rest/UserAccount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/twitterapime/search/LimitExceededException;
        }
    .end annotation

    .prologue
    .line 541
    invoke-direct {p0}, Lcom/twitterapime/rest/UserAccountManager;->checkValid()V

    .line 542
    invoke-direct {p0}, Lcom/twitterapime/rest/UserAccountManager;->checkVerified()V

    .line 544
    if-nez p1, :cond_0

    .line 545
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "User must not be null."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 547
    :cond_0
    invoke-virtual {p1}, Lcom/twitterapime/rest/UserAccount;->validateUserNameOrID()V

    .line 549
    invoke-virtual {p1}, Lcom/twitterapime/rest/UserAccount;->getUserNameOrIDParamValue()[Ljava/lang/String;

    move-result-object v4

    .line 550
    .local v4, "pv":[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "?"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 552
    .local v2, "param":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TWITTER_API_URL_SERVICE_USERS_SHOW"

    invoke-static {v8}, Lcom/twitterapime/rest/UserAccountManager;->getURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/twitterapime/rest/UserAccountManager;->createRequest(Ljava/lang/String;)Lcom/twitterapime/io/HttpRequest;

    move-result-object v5

    .line 556
    .local v5, "req":Lcom/twitterapime/io/HttpRequest;
    :try_start_0
    invoke-virtual {v5}, Lcom/twitterapime/io/HttpRequest;->send()Lcom/twitterapime/io/HttpResponse;

    move-result-object v6

    .line 558
    .local v6, "resp":Lcom/twitterapime/io/HttpResponse;
    invoke-static {v6}, Lcom/twitterapime/io/HttpResponseCodeInterpreter;->perform(Lcom/twitterapime/io/HttpResponse;)V

    .line 560
    invoke-static {}, Lcom/twitterapime/parser/ParserFactory;->getParser$31d4812a()Lcom/twitterapime/parser/Parser;

    move-result-object v3

    .line 561
    .local v3, "parser":Lcom/twitterapime/parser/Parser;
    new-instance v1, Lcom/twitterapime/rest/handler/json/UserJSONHandler;

    invoke-direct {v1}, Lcom/twitterapime/rest/handler/json/UserJSONHandler;-><init>()V

    .line 562
    .local v1, "handler":Lcom/twitterapime/rest/handler/json/UserJSONHandler;
    invoke-virtual {v6}, Lcom/twitterapime/io/HttpResponse;->getStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v3, v7, v1}, Lcom/twitterapime/parser/Parser;->parse(Ljava/io/InputStream;Lcom/twitterapime/parser/Handler;)V

    .line 564
    invoke-virtual {v1, p1}, Lcom/twitterapime/rest/handler/json/UserJSONHandler;->loadParsedUserAccount$604a5280(Lcom/twitterapime/rest/UserAccount;)V
    :try_end_0
    .catch Lcom/twitterapime/parser/ParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    invoke-virtual {v5}, Lcom/twitterapime/io/HttpRequest;->close()V

    return-object p1

    .line 567
    .end local v1    # "handler":Lcom/twitterapime/rest/handler/json/UserJSONHandler;
    .end local v3    # "parser":Lcom/twitterapime/parser/Parser;
    .end local v6    # "resp":Lcom/twitterapime/io/HttpResponse;
    :catch_0
    move-exception v0

    .line 568
    .local v0, "e":Lcom/twitterapime/parser/ParserException;
    :try_start_1
    new-instance v7, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/twitterapime/parser/ParserException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 570
    .end local v0    # "e":Lcom/twitterapime/parser/ParserException;
    :catchall_0
    move-exception v7

    invoke-virtual {v5}, Lcom/twitterapime/io/HttpRequest;->close()V

    throw v7
.end method

.method private declared-synchronized saveSelfOnPool()V
    .locals 2

    .prologue
    .line 1106
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/twitterapime/rest/UserAccountManager;->userAccountMngrPoll:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/twitterapime/rest/UserAccountManager;->credential:Lcom/twitterapime/rest/Credential;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1107
    sget-object v0, Lcom/twitterapime/rest/UserAccountManager;->userAccountMngrPoll:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/twitterapime/rest/UserAccountManager;->credential:Lcom/twitterapime/rest/Credential;

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1109
    :cond_0
    monitor-exit p0

    return-void

    .line 1106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final declared-synchronized createRequest(Ljava/lang/String;)Lcom/twitterapime/io/HttpRequest;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1068
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/twitterapime/io/HttpRequest;

    invoke-direct {v0, p1}, Lcom/twitterapime/io/HttpRequest;-><init>(Ljava/lang/String;)V

    .line 1069
    .local v0, "req":Lcom/twitterapime/io/HttpRequest;
    iget-object v1, p0, Lcom/twitterapime/rest/UserAccountManager;->signer:Lcom/twitterapime/xauth/XAuthSigner;

    iget-object v2, p0, Lcom/twitterapime/rest/UserAccountManager;->token:Lcom/twitterapime/xauth/Token;

    invoke-virtual {v0, v1, v2}, Lcom/twitterapime/io/HttpRequest;->setSigner(Lcom/twitterapime/xauth/XAuthSigner;Lcom/twitterapime/xauth/Token;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1071
    monitor-exit p0

    return-object v0

    .line 1068
    .end local v0    # "req":Lcom/twitterapime/io/HttpRequest;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1033
    if-ne p1, p0, :cond_0

    .line 1034
    const/4 v0, 0x1

    .line 1038
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .line 1035
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/twitterapime/rest/UserAccountManager;

    if-nez v0, :cond_2

    .line 1036
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1038
    :cond_2
    iget-object v0, p0, Lcom/twitterapime/rest/UserAccountManager;->credential:Lcom/twitterapime/rest/Credential;

    check-cast p1, Lcom/twitterapime/rest/UserAccountManager;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/twitterapime/rest/UserAccountManager;->credential:Lcom/twitterapime/rest/Credential;

    invoke-virtual {v0, v1}, Lcom/twitterapime/rest/Credential;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

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
    .line 579
    invoke-direct {p0}, Lcom/twitterapime/rest/UserAccountManager;->checkValid()V

    .line 581
    invoke-static {p0}, Lcom/twitterapime/rest/FriendshipManager;->getInstance(Lcom/twitterapime/rest/UserAccountManager;)Lcom/twitterapime/rest/FriendshipManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitterapime/rest/FriendshipManager;->follow(Lcom/twitterapime/rest/UserAccount;)Lcom/twitterapime/rest/UserAccount;

    move-result-object v0

    return-object v0
.end method

.method public final getAccessToken()Lcom/twitterapime/xauth/Token;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/twitterapime/rest/UserAccountManager;->token:Lcom/twitterapime/xauth/Token;

    return-object v0
.end method

.method final getCredential()Lcom/twitterapime/rest/Credential;
    .locals 1

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/twitterapime/rest/UserAccountManager;->credential:Lcom/twitterapime/rest/Credential;

    return-object v0
.end method

.method public final getUserAccount()Lcom/twitterapime/rest/UserAccount;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/twitterapime/search/LimitExceededException;
        }
    .end annotation

    .prologue
    .line 523
    new-instance v0, Lcom/twitterapime/rest/UserAccount;

    iget-object v1, p0, Lcom/twitterapime/rest/UserAccountManager;->credential:Lcom/twitterapime/rest/Credential;

    const-string v2, "CREDENTIAL_USERNAME"

    invoke-virtual {v1, v2}, Lcom/twitterapime/rest/Credential;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitterapime/rest/UserAccount;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/twitterapime/rest/UserAccountManager;->getUserAccount(Lcom/twitterapime/rest/UserAccount;)Lcom/twitterapime/rest/UserAccount;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/twitterapime/rest/UserAccountManager;->credential:Lcom/twitterapime/rest/Credential;

    invoke-virtual {v0}, Lcom/twitterapime/rest/Credential;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isVerified()Z
    .locals 1

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/twitterapime/rest/UserAccountManager;->checkValid()V

    .line 382
    iget-boolean v0, p0, Lcom/twitterapime/rest/UserAccountManager;->verified:Z

    return v0
.end method

.method public final lookup(Lcom/twitterapime/search/Query;)[Lcom/twitterapime/rest/UserAccount;
    .locals 11
    .param p1, "query"    # Lcom/twitterapime/search/Query;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/twitterapime/search/LimitExceededException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    .line 983
    invoke-direct {p0}, Lcom/twitterapime/rest/UserAccountManager;->checkValid()V

    .line 984
    invoke-direct {p0}, Lcom/twitterapime/rest/UserAccountManager;->checkVerified()V

    .line 986
    if-nez p1, :cond_0

    .line 987
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Query must not be null."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 990
    :cond_0
    invoke-virtual {p1}, Lcom/twitterapime/search/Query;->toString()Ljava/lang/String;

    move-result-object v6

    .line 992
    .local v6, "qryStr":Ljava/lang/String;
    const-string v9, "user_id="

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v10, :cond_1

    const-string v9, "screen_name="

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v10, :cond_1

    .line 994
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "QueryComposer#userIDs(String[]) or QueryComposer#screenNames(String[]) is required."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 999
    :cond_1
    const-string v9, "TWITTER_API_URL_SERVICE_USERS_LOOKUP"

    invoke-static {v9}, Lcom/twitterapime/rest/UserAccountManager;->getURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/twitterapime/rest/UserAccountManager;->createRequest(Ljava/lang/String;)Lcom/twitterapime/io/HttpRequest;

    move-result-object v7

    .line 1001
    .local v7, "req":Lcom/twitterapime/io/HttpRequest;
    const-string v9, "POST"

    invoke-virtual {v7, v9}, Lcom/twitterapime/io/HttpRequest;->setMethod(Ljava/lang/String;)V

    .line 1003
    invoke-static {v6}, Lcom/twitterapime/io/HttpRequest;->getQueryStringParams(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v4

    .line 1004
    .local v4, "params":Ljava/util/Hashtable;
    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 1006
    .local v3, "keys":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1007
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1009
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v2, v9}, Lcom/twitterapime/io/HttpRequest;->setBodyParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1013
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    :try_start_0
    invoke-virtual {v7}, Lcom/twitterapime/io/HttpRequest;->send()Lcom/twitterapime/io/HttpResponse;

    move-result-object v8

    .line 1015
    .local v8, "resp":Lcom/twitterapime/io/HttpResponse;
    invoke-static {v8}, Lcom/twitterapime/io/HttpResponseCodeInterpreter;->perform(Lcom/twitterapime/io/HttpResponse;)V

    .line 1017
    invoke-static {}, Lcom/twitterapime/parser/ParserFactory;->getParser$31d4812a()Lcom/twitterapime/parser/Parser;

    move-result-object v5

    .line 1018
    .local v5, "parser":Lcom/twitterapime/parser/Parser;
    new-instance v1, Lcom/twitterapime/rest/handler/json/UserJSONHandler;

    invoke-direct {v1}, Lcom/twitterapime/rest/handler/json/UserJSONHandler;-><init>()V

    .line 1019
    .local v1, "handler":Lcom/twitterapime/rest/handler/json/UserJSONHandler;
    invoke-virtual {v8}, Lcom/twitterapime/io/HttpResponse;->getStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {v5, v9, v1}, Lcom/twitterapime/parser/Parser;->parse(Ljava/io/InputStream;Lcom/twitterapime/parser/Handler;)V

    .line 1021
    invoke-virtual {v1}, Lcom/twitterapime/rest/handler/json/UserJSONHandler;->getParsedUserAccounts()[Lcom/twitterapime/rest/UserAccount;
    :try_end_0
    .catch Lcom/twitterapime/parser/ParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 1025
    invoke-virtual {v7}, Lcom/twitterapime/io/HttpRequest;->close()V

    return-object v9

    .line 1022
    .end local v1    # "handler":Lcom/twitterapime/rest/handler/json/UserJSONHandler;
    .end local v5    # "parser":Lcom/twitterapime/parser/Parser;
    .end local v8    # "resp":Lcom/twitterapime/io/HttpResponse;
    :catch_0
    move-exception v0

    .line 1023
    .local v0, "e":Lcom/twitterapime/parser/ParserException;
    :try_start_1
    new-instance v9, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/twitterapime/parser/ParserException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1025
    .end local v0    # "e":Lcom/twitterapime/parser/ParserException;
    :catchall_0
    move-exception v9

    invoke-virtual {v7}, Lcom/twitterapime/io/HttpRequest;->close()V

    throw v9
.end method

.method public final declared-synchronized signOut()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/twitterapime/search/LimitExceededException;
        }
    .end annotation

    .prologue
    .line 496
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/twitterapime/rest/UserAccountManager;->checkValid()V

    .line 498
    iget-boolean v0, p0, Lcom/twitterapime/rest/UserAccountManager;->verified:Z

    if-eqz v0, :cond_0

    .line 499
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitterapime/rest/UserAccountManager;->verified:Z

    .line 500
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitterapime/rest/UserAccountManager;->token:Lcom/twitterapime/xauth/Token;

    .line 501
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitterapime/rest/UserAccountManager;->signer:Lcom/twitterapime/xauth/XAuthSigner;

    .line 502
    sget-object v0, Lcom/twitterapime/rest/UserAccountManager;->userAccountMngrPoll:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/twitterapime/rest/UserAccountManager;->credential:Lcom/twitterapime/rest/Credential;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    invoke-static {}, Lcom/twitterapime/rest/Timeline;->cleanPool()V

    .line 504
    invoke-static {}, Lcom/twitterapime/rest/TweetER;->cleanPool()V

    .line 505
    invoke-static {}, Lcom/twitterapime/rest/FriendshipManager;->cleanPool()V

    .line 506
    invoke-static {}, Lcom/twitterapime/rest/ListManager;->cleanPool()V

    .line 508
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitterapime/rest/UserAccountManager;->invalidated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    :cond_0
    monitor-exit p0

    return-void

    .line 496
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized verifyCredential()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/twitterapime/search/LimitExceededException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x191

    const/16 v11, 0xc8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 396
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/twitterapime/rest/UserAccountManager;->checkValid()V

    .line 398
    iget-boolean v7, p0, Lcom/twitterapime/rest/UserAccountManager;->verified:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    .line 459
    :goto_0
    monitor-exit p0

    return v5

    .line 404
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/twitterapime/rest/UserAccountManager;->credential:Lcom/twitterapime/rest/Credential;

    invoke-virtual {v7}, Lcom/twitterapime/rest/Credential;->getAccessToken()Lcom/twitterapime/xauth/Token;

    move-result-object v7

    iput-object v7, p0, Lcom/twitterapime/rest/UserAccountManager;->token:Lcom/twitterapime/xauth/Token;

    .line 406
    iget-object v7, p0, Lcom/twitterapime/rest/UserAccountManager;->token:Lcom/twitterapime/xauth/Token;

    if-nez v7, :cond_1

    .line 407
    const-string v7, "TWITTER_API_URL_SERVICE_OAUTH_ACCESS_TOKEN"

    invoke-static {v7}, Lcom/twitterapime/rest/UserAccountManager;->getURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/twitterapime/rest/UserAccountManager;->createRequest(Ljava/lang/String;)Lcom/twitterapime/io/HttpRequest;

    move-result-object v2

    .line 411
    .local v2, "req":Lcom/twitterapime/io/HttpRequest;
    iget-object v7, p0, Lcom/twitterapime/rest/UserAccountManager;->signer:Lcom/twitterapime/xauth/XAuthSigner;

    iget-object v8, p0, Lcom/twitterapime/rest/UserAccountManager;->credential:Lcom/twitterapime/rest/Credential;

    invoke-virtual {v8}, Lcom/twitterapime/rest/Credential;->getUsernameOrEmail()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/twitterapime/rest/UserAccountManager;->credential:Lcom/twitterapime/rest/Credential;

    const-string v10, "CREDENTIAL_PASSWORD"

    invoke-virtual {v9, v10}, Lcom/twitterapime/rest/Credential;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v2, v8, v9}, Lcom/twitterapime/xauth/XAuthSigner;->signForAccessToken(Lcom/twitterapime/io/HttpRequest;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    :try_start_2
    invoke-virtual {v2}, Lcom/twitterapime/io/HttpRequest;->send()Lcom/twitterapime/io/HttpResponse;

    move-result-object v3

    .line 419
    .local v3, "resp":Lcom/twitterapime/io/HttpResponse;
    invoke-virtual {v3}, Lcom/twitterapime/io/HttpResponse;->getCode()I

    move-result v7

    if-ne v7, v11, :cond_2

    .line 420
    invoke-virtual {v3}, Lcom/twitterapime/io/HttpResponse;->getBodyContent()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/twitterapime/xauth/Token;->parse(Ljava/lang/String;)Lcom/twitterapime/xauth/Token;

    move-result-object v7

    iput-object v7, p0, Lcom/twitterapime/rest/UserAccountManager;->token:Lcom/twitterapime/xauth/Token;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 426
    :try_start_3
    invoke-virtual {v2}, Lcom/twitterapime/io/HttpRequest;->close()V

    .line 433
    .end local v2    # "req":Lcom/twitterapime/io/HttpRequest;
    .end local v3    # "resp":Lcom/twitterapime/io/HttpResponse;
    :cond_1
    const-string v7, "TWITTER_API_URL_SERVICE_ACCOUNT_VERIFY_CREDENTIALS"

    invoke-static {v7}, Lcom/twitterapime/rest/UserAccountManager;->getURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/twitterapime/rest/UserAccountManager;->createRequest(Ljava/lang/String;)Lcom/twitterapime/io/HttpRequest;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 437
    .restart local v2    # "req":Lcom/twitterapime/io/HttpRequest;
    :try_start_4
    invoke-virtual {v2}, Lcom/twitterapime/io/HttpRequest;->send()Lcom/twitterapime/io/HttpResponse;

    move-result-object v3

    .line 439
    .restart local v3    # "resp":Lcom/twitterapime/io/HttpResponse;
    invoke-virtual {v3}, Lcom/twitterapime/io/HttpResponse;->getCode()I

    move-result v7

    if-ne v7, v11, :cond_4

    .line 440
    new-instance v1, Lcom/twitterapime/rest/handler/json/UserJSONHandler;

    invoke-direct {v1}, Lcom/twitterapime/rest/handler/json/UserJSONHandler;-><init>()V

    .line 441
    .local v1, "handler":Lcom/twitterapime/rest/handler/json/UserJSONHandler;
    invoke-static {}, Lcom/twitterapime/parser/ParserFactory;->getParser$31d4812a()Lcom/twitterapime/parser/Parser;

    move-result-object v6

    .line 442
    invoke-virtual {v3}, Lcom/twitterapime/io/HttpResponse;->getStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Lcom/twitterapime/parser/Parser;->parse(Ljava/io/InputStream;Lcom/twitterapime/parser/Handler;)V

    .line 443
    invoke-virtual {v1}, Lcom/twitterapime/rest/handler/json/UserJSONHandler;->getParsedUserAccounts()[Lcom/twitterapime/rest/UserAccount;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v4, v6, v7

    .line 445
    .local v4, "ua":Lcom/twitterapime/rest/UserAccount;
    iget-object v6, p0, Lcom/twitterapime/rest/UserAccountManager;->credential:Lcom/twitterapime/rest/Credential;

    const-string v7, "USERACCOUNT_USER_NAME"

    invoke-virtual {v4, v7}, Lcom/twitterapime/rest/UserAccount;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/twitterapime/rest/Credential;->setUsername(Ljava/lang/String;)V

    .line 448
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/twitterapime/rest/UserAccountManager;->verified:Z

    .line 449
    invoke-direct {p0}, Lcom/twitterapime/rest/UserAccountManager;->saveSelfOnPool()V
    :try_end_4
    .catch Lcom/twitterapime/parser/ParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 451
    :try_start_5
    invoke-virtual {v2}, Lcom/twitterapime/io/HttpRequest;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 396
    .end local v1    # "handler":Lcom/twitterapime/rest/handler/json/UserJSONHandler;
    .end local v2    # "req":Lcom/twitterapime/io/HttpRequest;
    .end local v3    # "resp":Lcom/twitterapime/io/HttpResponse;
    .end local v4    # "ua":Lcom/twitterapime/rest/UserAccount;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 421
    .restart local v2    # "req":Lcom/twitterapime/io/HttpRequest;
    .restart local v3    # "resp":Lcom/twitterapime/io/HttpResponse;
    :cond_2
    :try_start_6
    invoke-virtual {v3}, Lcom/twitterapime/io/HttpResponse;->getCode()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v5

    if-ne v5, v12, :cond_3

    .line 422
    :try_start_7
    invoke-virtual {v2}, Lcom/twitterapime/io/HttpRequest;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move v5, v6

    goto/16 :goto_0

    .line 424
    :cond_3
    :try_start_8
    invoke-static {v3}, Lcom/twitterapime/io/HttpResponseCodeInterpreter;->perform(Lcom/twitterapime/io/HttpResponse;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 426
    :try_start_9
    invoke-virtual {v2}, Lcom/twitterapime/io/HttpRequest;->close()V

    move v5, v6

    goto/16 :goto_0

    .line 429
    .end local v3    # "resp":Lcom/twitterapime/io/HttpResponse;
    :catchall_1
    move-exception v5

    invoke-virtual {v2}, Lcom/twitterapime/io/HttpRequest;->close()V

    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 452
    .restart local v3    # "resp":Lcom/twitterapime/io/HttpResponse;
    :cond_4
    :try_start_a
    invoke-virtual {v3}, Lcom/twitterapime/io/HttpResponse;->getCode()I

    move-result v5

    if-ne v5, v12, :cond_5

    .line 453
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/twitterapime/rest/UserAccountManager;->token:Lcom/twitterapime/xauth/Token;
    :try_end_a
    .catch Lcom/twitterapime/parser/ParserException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 455
    :try_start_b
    invoke-virtual {v2}, Lcom/twitterapime/io/HttpRequest;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move v5, v6

    goto/16 :goto_0

    .line 457
    :cond_5
    :try_start_c
    invoke-static {v3}, Lcom/twitterapime/io/HttpResponseCodeInterpreter;->perform(Lcom/twitterapime/io/HttpResponse;)V
    :try_end_c
    .catch Lcom/twitterapime/parser/ParserException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 459
    :try_start_d
    invoke-virtual {v2}, Lcom/twitterapime/io/HttpRequest;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move v5, v6

    goto/16 :goto_0

    .line 461
    .end local v3    # "resp":Lcom/twitterapime/io/HttpResponse;
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Lcom/twitterapime/parser/ParserException;
    :try_start_e
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/twitterapime/parser/ParserException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 464
    .end local v0    # "e":Lcom/twitterapime/parser/ParserException;
    :catchall_2
    move-exception v5

    :try_start_f
    invoke-virtual {v2}, Lcom/twitterapime/io/HttpRequest;->close()V

    throw v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
.end method
