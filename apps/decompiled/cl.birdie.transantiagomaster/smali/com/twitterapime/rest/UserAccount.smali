.class public final Lcom/twitterapime/rest/UserAccount;
.super Lcom/twitterapime/model/DefaultEntity;
.source "UserAccount.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/twitterapime/model/DefaultEntity;-><init>()V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "userNameOrID"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/twitterapime/model/DefaultEntity;-><init>()V

    .line 93
    invoke-static {p1}, Lcom/twitterapime/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Username/ID must not be empty/null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 100
    .local v0, "data":Ljava/util/Hashtable;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 101
    const-string v1, "USERACCOUNT_ID"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    const-string v1, "USERACCOUNT_USER_NAME"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-virtual {p0, v0}, Lcom/twitterapime/rest/UserAccount;->setData(Ljava/util/Hashtable;)V

    .line 107
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 0
    .param p1, "data"    # Ljava/util/Hashtable;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/twitterapime/model/DefaultEntity;-><init>(Ljava/util/Hashtable;)V

    .line 81
    return-void
.end method


# virtual methods
.method final getUserNameOrIDParamValue()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 172
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    .line 174
    .local v1, "paramValue":[Ljava/lang/String;
    const-string v3, "USERACCOUNT_ID"

    invoke-virtual {p0, v3}, Lcom/twitterapime/rest/UserAccount;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Lcom/twitterapime/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 177
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 179
    const/4 v3, 0x0

    const-string v4, "user_id"

    aput-object v4, v1, v3

    .line 180
    const/4 v3, 0x1

    aput-object v0, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v3

    .line 188
    :cond_1
    const-string v3, "USERACCOUNT_USER_NAME"

    invoke-virtual {p0, v3}, Lcom/twitterapime/rest/UserAccount;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "us":Ljava/lang/String;
    invoke-static {v2}, Lcom/twitterapime/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 190
    const-string v3, "screen_name"

    aput-object v3, v1, v5

    .line 191
    aput-object v2, v1, v6

    goto :goto_0
.end method

.method final validateUserNameOrID()V
    .locals 2

    .prologue
    .line 204
    const-string v0, "USERACCOUNT_ID"

    invoke-virtual {p0, v0}, Lcom/twitterapime/rest/UserAccount;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitterapime/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "USERACCOUNT_USER_NAME"

    invoke-virtual {p0, v0}, Lcom/twitterapime/rest/UserAccount;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/twitterapime/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Username/ID must no be empty/null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_1
    return-void
.end method
