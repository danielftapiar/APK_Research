.class public Lcom/prey/PreyEmail;
.super Ljava/lang/Object;
.source "PreyEmail.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAccount(Landroid/content/Context;Landroid/accounts/AccountManager;)Landroid/accounts/Account;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountManager"    # Landroid/accounts/AccountManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prey/PreyConfig;->isEclairOrAbove()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    const-string v1, "com.google"

    invoke-virtual {p1, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 69
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 70
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 77
    .end local v0    # "accounts":[Landroid/accounts/Account;
    :goto_0
    return-object v1

    .line 72
    .restart local v0    # "accounts":[Landroid/accounts/Account;
    :cond_0
    const-string v1, "account length 0"

    invoke-static {v1}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 77
    .end local v0    # "accounts":[Landroid/accounts/Account;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 75
    :cond_1
    const-string v1, "account bajo eckair"

    invoke-static {v1}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getEmail(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 48
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1

    .line 49
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 50
    .local v1, "accountManager":Landroid/accounts/AccountManager;
    invoke-static {p0, v1}, Lcom/prey/PreyEmail;->getAccount(Landroid/content/Context;Landroid/accounts/AccountManager;)Landroid/accounts/Account;

    move-result-object v0

    .line 51
    .local v0, "account":Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 52
    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 60
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "accountManager":Landroid/accounts/AccountManager;
    :goto_0
    return-object v2

    .line 54
    .restart local v0    # "account":Landroid/accounts/Account;
    .restart local v1    # "accountManager":Landroid/accounts/AccountManager;
    :cond_0
    const-string v2, "account nulo"

    invoke-static {v2}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 60
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "accountManager":Landroid/accounts/AccountManager;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 58
    :cond_1
    const-string v2, "sdk menor"

    invoke-static {v2}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static sendDataMail(Landroid/content/Context;Lcom/prey/actions/HttpDataService;)V
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "data"    # Lcom/prey/actions/HttpDataService;

    .prologue
    .line 29
    if-eqz p1, :cond_0

    .line 30
    :try_start_0
    invoke-virtual {p1}, Lcom/prey/actions/HttpDataService;->getEntityFiles()Ljava/util/List;

    move-result-object v1

    .line 31
    .local v1, "entityFiles":Ljava/util/List;, "Ljava/util/List<Lcom/prey/net/http/EntityFile;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ltz v6, :cond_0

    .line 32
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/prey/net/PreyWebServices;->getFileUrlJson(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 33
    .local v5, "url":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "URL:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 34
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 35
    .local v2, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v3

    .line 36
    .local v3, "preyConfig":Lcom/prey/PreyConfig;
    const/4 v4, 0x0

    .line 37
    .local v4, "preyHttpResponse":Lcom/prey/net/PreyHttpResponse;
    invoke-static {p0}, Lcom/prey/net/PreyRestHttpClient;->getInstance(Landroid/content/Context;)Lcom/prey/net/PreyRestHttpClient;

    move-result-object v6

    invoke-virtual {v6, v5, v2, v1}, Lcom/prey/net/PreyRestHttpClient;->postAutentication(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v4

    .line 38
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "status line:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/prey/net/PreyHttpResponse;->getStatusCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v1    # "entityFiles":Ljava/util/List;, "Ljava/util/List<Lcom/prey/net/http/EntityFile;>;"
    .end local v2    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "preyConfig":Lcom/prey/PreyConfig;
    .end local v4    # "preyHttpResponse":Lcom/prey/net/PreyHttpResponse;
    .end local v5    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error causa:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
