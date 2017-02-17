.class public final Lcom/twitterapime/rest/Credential;
.super Lcom/twitterapime/model/DefaultEntity;
.source "Credential.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/twitterapime/xauth/Token;)V
    .locals 1
    .param p1, "consumerKey"    # Ljava/lang/String;
    .param p2, "consumerSecret"    # Ljava/lang/String;
    .param p3, "accessToken"    # Lcom/twitterapime/xauth/Token;

    .prologue
    .line 132
    const-string v0, "ignored"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/twitterapime/rest/Credential;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/twitterapime/xauth/Token;)V

    .line 133
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/twitterapime/xauth/Token;)V
    .locals 2
    .param p1, "usernameOrEmail"    # Ljava/lang/String;
    .param p2, "consumerKey"    # Ljava/lang/String;
    .param p3, "consumerSecret"    # Ljava/lang/String;
    .param p4, "accessToken"    # Lcom/twitterapime/xauth/Token;

    .prologue
    .line 112
    const-string v0, "ignored"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/twitterapime/rest/Credential;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    if-nez p4, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accessToken must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/twitterapime/rest/Credential;->data:Ljava/util/Hashtable;

    const-string v1, "CREDENTIAL_ACCESS_TOKEN"

    invoke-virtual {v0, v1, p4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "usernameOrEmail"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "consumerKey"    # Ljava/lang/String;
    .param p4, "consumerSecret"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/twitterapime/model/DefaultEntity;-><init>()V

    .line 67
    invoke-static {p1}, Lcom/twitterapime/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Username or e-mail must not be empty/null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_0
    invoke-static {p2}, Lcom/twitterapime/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Password must not be empty/null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_1
    invoke-static {p3}, Lcom/twitterapime/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Consumer Key must not be empty/null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :cond_2
    invoke-static {p4}, Lcom/twitterapime/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 80
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Consumer Secret must not be empty/null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_3
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    .line 86
    .local v0, "credtls":Ljava/util/Hashtable;
    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 87
    const-string v1, "CREDENTIAL_EMAIL"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :goto_0
    const-string v1, "CREDENTIAL_PASSWORD"

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v1, "CREDENTIAL_CONSUMER_KEY"

    invoke-virtual {v0, v1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v1, "CREDENTIAL_CONSUMER_SECRET"

    invoke-virtual {v0, v1, p4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {p0, v0}, Lcom/twitterapime/rest/Credential;->setData(Ljava/util/Hashtable;)V

    .line 96
    return-void

    .line 89
    :cond_4
    const-string v1, "CREDENTIAL_USERNAME"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method final getAccessToken()Lcom/twitterapime/xauth/Token;
    .locals 1

    .prologue
    .line 142
    const-string v0, "CREDENTIAL_ACCESS_TOKEN"

    invoke-virtual {p0, v0}, Lcom/twitterapime/rest/Credential;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitterapime/xauth/Token;

    return-object v0
.end method

.method final getUsernameOrEmail()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    const-string v1, "CREDENTIAL_USERNAME"

    invoke-virtual {p0, v1}, Lcom/twitterapime/rest/Credential;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "username":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 165
    const-string v1, "CREDENTIAL_EMAIL"

    invoke-virtual {p0, v1}, Lcom/twitterapime/rest/Credential;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    :cond_0
    return-object v0
.end method

.method final setUsername(Ljava/lang/String;)V
    .locals 2
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/twitterapime/rest/Credential;->data:Ljava/util/Hashtable;

    const-string v1, "CREDENTIAL_USERNAME"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    return-void
.end method
