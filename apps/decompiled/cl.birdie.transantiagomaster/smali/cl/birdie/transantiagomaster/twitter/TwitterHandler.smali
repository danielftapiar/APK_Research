.class public final Lcl/birdie/transantiagomaster/twitter/TwitterHandler;
.super Ljava/lang/Object;
.source "TwitterHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/birdie/transantiagomaster/twitter/TwitterHandler$CustomDeviceListener;,
        Lcl/birdie/transantiagomaster/twitter/TwitterHandler$Mensaje;,
        Lcl/birdie/transantiagomaster/twitter/TwitterHandler$TwitterBackgroundUpdate;
    }
.end annotation


# static fields
.field private static TWITTER_HACE:Ljava/lang/String;

.field private static TWITTER_HORA:Ljava/lang/String;

.field private static TWITTER_HORAS:Ljava/lang/String;

.field private static TWITTER_JUSTO_AHORA:Ljava/lang/String;

.field private static TWITTER_MINUTO:Ljava/lang/String;

.field private static TWITTER_MINUTOS:Ljava/lang/String;

.field static cacheLoggedIn:Z

.field static caltweet:Ljava/util/Calendar;

.field static cnt:I

.field static listaEspeciales:Lcom/twitterapime/rest/List;

.field static loggedIn:Z

.field static newestTweet:Ljava/util/Date;

.field static newestTweetId:Ljava/lang/String;

.field static sdffull:Ljava/text/SimpleDateFormat;

.field public static volatile showTweets:I

.field static timeline:Ljava/util/Vector;

.field static token:Lcom/twitterapime/xauth/Token;

.field static tweeter:Lcom/twitterapime/rest/TweetER;

.field public static twitter_soloespeciales:I

.field static uam:Lcom/twitterapime/rest/UserAccountManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->listaEspeciales:Lcom/twitterapime/rest/List;

    .line 49
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    sub-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->newestTweet:Ljava/util/Date;

    .line 50
    const-string v0, ""

    sput-object v0, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->newestTweetId:Ljava/lang/String;

    .line 63
    sput v5, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->twitter_soloespeciales:I

    .line 64
    sput-boolean v5, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->cacheLoggedIn:Z

    .line 65
    sput-boolean v5, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->loggedIn:Z

    .line 67
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->timeline:Ljava/util/Vector;

    .line 70
    sput v5, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->cnt:I

    .line 72
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d-MM HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->sdffull:Ljava/text/SimpleDateFormat;

    .line 73
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->caltweet:Ljava/util/Calendar;

    return-void
.end method

.method public static actualizarTimeline()V
    .locals 1

    .prologue
    .line 414
    invoke-static {}, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->estaConectado()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-boolean v0, v0, Lcl/birdie/params/Preferencias;->twitter_enabled:Z

    if-eqz v0, :cond_0

    .line 415
    new-instance v0, Lcl/birdie/transantiagomaster/twitter/TwitterHandler$TwitterBackgroundUpdate;

    invoke-direct {v0}, Lcl/birdie/transantiagomaster/twitter/TwitterHandler$TwitterBackgroundUpdate;-><init>()V

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/twitter/TwitterHandler$TwitterBackgroundUpdate;->start()V

    .line 416
    :cond_0
    return-void
.end method

.method public static descargarTimeline()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 388
    sget-object v3, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->uam:Lcom/twitterapime/rest/UserAccountManager;

    if-nez v3, :cond_0

    .line 405
    .local v0, "q":Lcom/twitterapime/search/Query;
    .local v2, "tml":Lcom/twitterapime/rest/Timeline;
    :goto_0
    return-void

    .line 391
    .end local v0    # "q":Lcom/twitterapime/search/Query;
    .end local v2    # "tml":Lcom/twitterapime/rest/Timeline;
    :cond_0
    sget-object v3, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->uam:Lcom/twitterapime/rest/UserAccountManager;

    invoke-static {v3}, Lcom/twitterapime/rest/Timeline;->getInstance(Lcom/twitterapime/rest/UserAccountManager;)Lcom/twitterapime/rest/Timeline;

    move-result-object v2

    .line 392
    .restart local v2    # "tml":Lcom/twitterapime/rest/Timeline;
    const/4 v0, 0x0

    .line 394
    .restart local v0    # "q":Lcom/twitterapime/search/Query;
    sget-object v4, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->newestTweet:Ljava/util/Date;

    monitor-enter v4

    .line 395
    :try_start_0
    sget-object v3, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->newestTweetId:Ljava/lang/String;

    if-eqz v3, :cond_1

    sget-object v3, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->newestTweetId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 396
    sget-object v3, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->newestTweetId:Ljava/lang/String;

    new-instance v1, Lcom/twitterapime/search/Query;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "since_id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/twitterapime/search/Query;-><init>(Ljava/lang/String;)V

    .end local v0    # "q":Lcom/twitterapime/search/Query;
    .local v1, "q":Lcom/twitterapime/search/Query;
    move-object v0, v1

    .line 394
    .end local v1    # "q":Lcom/twitterapime/search/Query;
    .restart local v0    # "q":Lcom/twitterapime/search/Query;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "descargarTimeline"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 401
    sget v3, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->twitter_soloespeciales:I

    if-eqz v3, :cond_2

    sget-object v3, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->listaEspeciales:Lcom/twitterapime/rest/List;

    if-eqz v3, :cond_2

    .line 402
    sget-object v3, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->listaEspeciales:Lcom/twitterapime/rest/List;

    new-instance v4, Lcl/birdie/transantiagomaster/twitter/TwitterHandler$CustomDeviceListener;

    invoke-direct {v4, v7}, Lcl/birdie/transantiagomaster/twitter/TwitterHandler$CustomDeviceListener;-><init>(B)V

    invoke-virtual {v2, v3, v0, v4}, Lcom/twitterapime/rest/Timeline;->startGetListTweets(Lcom/twitterapime/rest/List;Lcom/twitterapime/search/Query;Lcom/twitterapime/search/SearchDeviceListener;)V

    goto :goto_0

    .line 394
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 404
    :cond_2
    new-instance v3, Lcl/birdie/transantiagomaster/twitter/TwitterHandler$CustomDeviceListener;

    invoke-direct {v3, v7}, Lcl/birdie/transantiagomaster/twitter/TwitterHandler$CustomDeviceListener;-><init>(B)V

    invoke-virtual {v2, v0, v3}, Lcom/twitterapime/rest/Timeline;->startGetHomeTweets(Lcom/twitterapime/search/Query;Lcom/twitterapime/search/SearchDeviceListener;)V

    goto :goto_0
.end method

.method public static desconectar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iput-object v1, v0, Lcl/birdie/params/Preferencias;->twitter_userid:Ljava/lang/String;

    .line 135
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iput-object v1, v0, Lcl/birdie/params/Preferencias;->twitter_username:Ljava/lang/String;

    .line 136
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iput-object v1, v0, Lcl/birdie/params/Preferencias;->twitter_token:Ljava/lang/String;

    .line 137
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iput-object v1, v0, Lcl/birdie/params/Preferencias;->twitter_secret:Ljava/lang/String;

    .line 138
    invoke-static {}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->persistirPreferencias()V

    .line 140
    sget-object v0, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->uam:Lcom/twitterapime/rest/UserAccountManager;

    if-eqz v0, :cond_0

    .line 142
    :try_start_0
    sget-object v0, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->uam:Lcom/twitterapime/rest/UserAccountManager;

    invoke-virtual {v0}, Lcom/twitterapime/rest/UserAccountManager;->signOut()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    sput-object v1, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->uam:Lcom/twitterapime/rest/UserAccountManager;

    .line 147
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->cacheLoggedIn:Z

    .line 148
    sput-object v1, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->token:Lcom/twitterapime/xauth/Token;

    .line 149
    sput-object v1, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->tweeter:Lcom/twitterapime/rest/TweetER;

    .line 150
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static estaConectado()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 153
    sget-object v2, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->uam:Lcom/twitterapime/rest/UserAccountManager;

    if-nez v2, :cond_1

    .line 180
    :cond_0
    :goto_0
    return v0

    .line 156
    :cond_1
    sget-boolean v2, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->cacheLoggedIn:Z

    if-nez v2, :cond_2

    .line 157
    sput-boolean v1, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->cacheLoggedIn:Z

    .line 159
    sget-object v2, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->tweeter:Lcom/twitterapime/rest/TweetER;

    if-eqz v2, :cond_0

    .line 161
    sget-object v2, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->token:Lcom/twitterapime/xauth/Token;

    if-eqz v2, :cond_0

    .line 165
    :try_start_0
    sget-object v2, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->uam:Lcom/twitterapime/rest/UserAccountManager;

    invoke-virtual {v2}, Lcom/twitterapime/rest/UserAccountManager;->verifyCredential()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 166
    const/4 v2, 0x1

    sput-boolean v2, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->loggedIn:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/twitterapime/search/LimitExceededException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    .line 167
    goto :goto_0

    .line 169
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 173
    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lcom/twitterapime/search/LimitExceededException;->printStackTrace()V

    goto :goto_0

    .line 180
    :cond_2
    sget-boolean v0, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->loggedIn:Z

    goto :goto_0
.end method

.method public static guardar(Lcom/twitterapime/rest/UserAccountManager;)V
    .locals 6
    .param p0, "uam"    # Lcom/twitterapime/rest/UserAccountManager;

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/twitterapime/rest/UserAccountManager;->getAccessToken()Lcom/twitterapime/xauth/Token;

    move-result-object v1

    .line 282
    .local v1, "tk":Lcom/twitterapime/xauth/Token;
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    invoke-virtual {v1}, Lcom/twitterapime/xauth/Token;->getUsername()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcl/birdie/params/Preferencias;->twitter_username:Ljava/lang/String;

    .line 283
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    invoke-virtual {v1}, Lcom/twitterapime/xauth/Token;->getUserId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcl/birdie/params/Preferencias;->twitter_userid:Ljava/lang/String;

    .line 284
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    invoke-virtual {v1}, Lcom/twitterapime/xauth/Token;->getToken()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcl/birdie/params/Preferencias;->twitter_token:Ljava/lang/String;

    .line 285
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    invoke-virtual {v1}, Lcom/twitterapime/xauth/Token;->getSecret()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcl/birdie/params/Preferencias;->twitter_secret:Ljava/lang/String;

    .line 286
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    sget v4, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->twitter_soloespeciales:I

    iput v4, v3, Lcl/birdie/params/Preferencias;->twitter_soloespeciales:I

    .line 289
    :try_start_0
    invoke-virtual {p0}, Lcom/twitterapime/rest/UserAccountManager;->getUserAccount()Lcom/twitterapime/rest/UserAccount;

    move-result-object v2

    .line 290
    .local v2, "uac":Lcom/twitterapime/rest/UserAccount;
    if-eqz v2, :cond_0

    .line 291
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    const-string v4, "USERACCOUNT_PICTURE_URI"

    invoke-virtual {v2, v4}, Lcom/twitterapime/rest/UserAccount;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcl/birdie/params/Preferencias;->twitter_profilepic:Ljava/lang/String;

    .line 292
    sget-object v3, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    const-string v4, "USERACCOUNT_NAME"

    invoke-virtual {v2, v4}, Lcom/twitterapime/rest/UserAccount;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcl/birdie/params/Preferencias;->twitter_name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    .end local v2    # "uac":Lcom/twitterapime/rest/UserAccount;
    :cond_0
    :goto_0
    invoke-static {}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->persistirPreferencias()V

    .line 300
    invoke-static {}, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->inicializar()Z

    .line 301
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "TwitterHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "guardar: excepcion en getUserAccount: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static inicializar()Z
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 95
    sget-object v5, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v2, v5, Lcl/birdie/params/Preferencias;->twitter_token:Ljava/lang/String;

    .line 96
    .local v2, "tk":Ljava/lang/String;
    sget-object v5, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v1, v5, Lcl/birdie/params/Preferencias;->twitter_secret:Ljava/lang/String;

    .line 97
    .local v1, "se":Ljava/lang/String;
    sget-object v5, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget v5, v5, Lcl/birdie/params/Preferencias;->twitter_soloespeciales:I

    sput v5, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->twitter_soloespeciales:I

    .line 98
    sput-boolean v4, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->loggedIn:Z

    .line 99
    sput-boolean v3, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->cacheLoggedIn:Z

    .line 100
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 102
    :try_start_0
    new-instance v5, Lcom/twitterapime/xauth/Token;

    invoke-direct {v5, v2, v1}, Lcom/twitterapime/xauth/Token;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->token:Lcom/twitterapime/xauth/Token;

    .line 103
    new-instance v5, Lcom/twitterapime/rest/Credential;

    const-string v6, "gu4fZMyFBXQY1GNeaPigAg"

    const-string v7, "R8vI11GWCqkiZ0JK4OYdbjWnqOpaUC9rsqUK6nuuA"

    sget-object v8, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->token:Lcom/twitterapime/xauth/Token;

    invoke-direct {v5, v6, v7, v8}, Lcom/twitterapime/rest/Credential;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/twitterapime/xauth/Token;)V

    .line 104
    invoke-static {v5}, Lcom/twitterapime/rest/UserAccountManager;->getInstance(Lcom/twitterapime/rest/Credential;)Lcom/twitterapime/rest/UserAccountManager;

    move-result-object v5

    .line 105
    sput-object v5, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->uam:Lcom/twitterapime/rest/UserAccountManager;

    invoke-virtual {v5}, Lcom/twitterapime/rest/UserAccountManager;->verifyCredential()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 106
    sget-object v5, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->uam:Lcom/twitterapime/rest/UserAccountManager;

    invoke-static {v5}, Lcom/twitterapime/rest/TweetER;->getInstance(Lcom/twitterapime/rest/UserAccountManager;)Lcom/twitterapime/rest/TweetER;

    move-result-object v5

    sput-object v5, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->tweeter:Lcom/twitterapime/rest/TweetER;

    .line 110
    invoke-static {}, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->revisarLista()Z

    .line 111
    const/4 v5, 0x1

    sput-boolean v5, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->loggedIn:Z

    .line 129
    :goto_0
    return v3

    .line 114
    :cond_0
    const/4 v3, 0x0

    sput-object v3, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->token:Lcom/twitterapime/xauth/Token;

    .line 115
    const/4 v3, 0x0

    sput-object v3, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->uam:Lcom/twitterapime/rest/UserAccountManager;

    .line 116
    const/4 v3, 0x0

    sput-object v3, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->tweeter:Lcom/twitterapime/rest/TweetER;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 117
    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "TwitterHandler.inicializar: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 121
    sput-object v9, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->token:Lcom/twitterapime/xauth/Token;

    .line 122
    sput-object v9, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->uam:Lcom/twitterapime/rest/UserAccountManager;

    .line 123
    sput-object v9, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->tweeter:Lcom/twitterapime/rest/TweetER;

    move v3, v4

    .line 124
    goto :goto_0

    .line 128
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    sput-object v9, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->token:Lcom/twitterapime/xauth/Token;

    move v3, v4

    .line 129
    goto :goto_0
.end method

.method public static inicializarStrings(Landroid/content/Context;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 84
    const v0, 0x7f0600bb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->TWITTER_HACE:Ljava/lang/String;

    .line 85
    const v0, 0x7f0600bc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->TWITTER_HORAS:Ljava/lang/String;

    .line 86
    const v0, 0x7f0600bd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->TWITTER_HORA:Ljava/lang/String;

    .line 87
    const v0, 0x7f0600be

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->TWITTER_MINUTOS:Ljava/lang/String;

    .line 88
    const v0, 0x7f0600bf

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->TWITTER_MINUTO:Ljava/lang/String;

    .line 89
    const v0, 0x7f0600c0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->TWITTER_JUSTO_AHORA:Ljava/lang/String;

    .line 90
    return-void
.end method

.method private static revisarLista()Z
    .locals 14

    .prologue
    .line 184
    sget-object v9, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->tweeter:Lcom/twitterapime/rest/TweetER;

    if-nez v9, :cond_0

    .line 185
    const/4 v9, 0x0

    .line 241
    .local v4, "lm":Lcom/twitterapime/rest/ListManager;
    :goto_0
    return v9

    .line 187
    .end local v4    # "lm":Lcom/twitterapime/rest/ListManager;
    :cond_0
    sget-object v9, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->uam:Lcom/twitterapime/rest/UserAccountManager;

    invoke-static {v9}, Lcom/twitterapime/rest/ListManager;->getInstance(Lcom/twitterapime/rest/UserAccountManager;)Lcom/twitterapime/rest/ListManager;

    move-result-object v4

    .line 188
    .restart local v4    # "lm":Lcom/twitterapime/rest/ListManager;
    :try_start_0
    invoke-virtual {v4}, Lcom/twitterapime/rest/ListManager;->getLists()[Lcom/twitterapime/rest/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 196
    .local v2, "l":[Lcom/twitterapime/rest/List;
    const/4 v0, 0x0

    .line 197
    .local v0, "existe":Z
    array-length v7, v2

    .line 198
    .local v7, "sz":I
    const/4 v3, 0x0

    .line 200
    .local v3, "list":Lcom/twitterapime/rest/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v7, :cond_2

    .line 210
    :goto_2
    if-nez v0, :cond_5

    .line 211
    new-instance v3, Lcom/twitterapime/rest/List;

    .end local v3    # "list":Lcom/twitterapime/rest/List;
    const-string v9, "TransantiagoMaster"

    const-string v10, "Usuarios para notificaciones de TransantiagoMaster"

    invoke-direct {v3, v9, v10}, Lcom/twitterapime/rest/List;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .restart local v3    # "list":Lcom/twitterapime/rest/List;
    :try_start_1
    invoke-virtual {v4, v3}, Lcom/twitterapime/rest/ListManager;->create(Lcom/twitterapime/rest/List;)Lcom/twitterapime/rest/List;

    move-result-object v3

    .line 214
    const/4 v9, 0x3

    new-array v6, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "TransantiagoMas"

    aput-object v10, v6, v9

    const/4 v9, 0x1

    const-string v10, "transantiago"

    aput-object v10, v6, v9

    const/4 v9, 0x2

    const-string v10, "metrodesantiago"

    aput-object v10, v6, v9

    .line 215
    .local v6, "names":[Ljava/lang/String;
    sget-object v10, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->uam:Lcom/twitterapime/rest/UserAccountManager;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v9, 0x0

    :goto_3
    array-length v12, v6

    if-ge v9, v12, :cond_4

    if-lez v9, :cond_1

    const/16 v12, 0x2c

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    aget-object v12, v6, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 192
    .end local v0    # "existe":Z
    .end local v1    # "i":I
    .end local v2    # "l":[Lcom/twitterapime/rest/List;
    .end local v3    # "list":Lcom/twitterapime/rest/List;
    .end local v6    # "names":[Ljava/lang/String;
    .end local v7    # "sz":I
    :catch_0
    move-exception v9

    const/4 v9, 0x0

    sput-object v9, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->listaEspeciales:Lcom/twitterapime/rest/List;

    .line 193
    const/4 v9, 0x0

    goto :goto_0

    .line 201
    .restart local v0    # "existe":Z
    .restart local v1    # "i":I
    .restart local v2    # "l":[Lcom/twitterapime/rest/List;
    .restart local v3    # "list":Lcom/twitterapime/rest/List;
    .restart local v7    # "sz":I
    :cond_2
    aget-object v3, v2, v1

    .line 202
    const-string v9, "LIST_NAME"

    invoke-virtual {v3, v9}, Lcom/twitterapime/rest/List;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 203
    .local v5, "lname":Ljava/lang/String;
    if-eqz v5, :cond_3

    const-string v9, "TransantiagoMaster"

    invoke-virtual {v5, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_3

    .line 204
    const/4 v0, 0x1

    .line 205
    aget-object v9, v2, v1

    sput-object v9, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->listaEspeciales:Lcom/twitterapime/rest/List;

    goto :goto_2

    .line 200
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 215
    .end local v5    # "lname":Ljava/lang/String;
    .restart local v6    # "names":[Ljava/lang/String;
    :cond_4
    :try_start_2
    new-instance v9, Lcom/twitterapime/search/Query;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "screen_name="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Lcom/twitterapime/search/Query;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Lcom/twitterapime/rest/UserAccountManager;->lookup(Lcom/twitterapime/search/Query;)[Lcom/twitterapime/rest/UserAccount;

    move-result-object v8

    .line 216
    .local v8, "usuarios":[Lcom/twitterapime/rest/UserAccount;
    if-eqz v8, :cond_6

    array-length v7, v8

    .line 217
    :goto_4
    const/4 v1, 0x0

    :goto_5
    if-lt v1, v7, :cond_7

    .line 224
    invoke-virtual {v4, v3}, Lcom/twitterapime/rest/ListManager;->update(Lcom/twitterapime/rest/List;)Lcom/twitterapime/rest/List;

    .line 225
    sput-object v3, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->listaEspeciales:Lcom/twitterapime/rest/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 228
    const/4 v1, 0x0

    :goto_6
    if-lt v1, v7, :cond_8

    .line 241
    .end local v6    # "names":[Ljava/lang/String;
    .end local v8    # "usuarios":[Lcom/twitterapime/rest/UserAccount;
    :cond_5
    :goto_7
    if-eqz v3, :cond_9

    const/4 v9, 0x1

    goto/16 :goto_0

    .line 216
    .restart local v6    # "names":[Ljava/lang/String;
    .restart local v8    # "usuarios":[Lcom/twitterapime/rest/UserAccount;
    :cond_6
    const/4 v7, 0x0

    goto :goto_4

    .line 219
    :cond_7
    :try_start_3
    aget-object v9, v8, v1

    invoke-virtual {v4, v3, v9}, Lcom/twitterapime/rest/ListManager;->addMember(Lcom/twitterapime/rest/List;Lcom/twitterapime/rest/UserAccount;)Lcom/twitterapime/rest/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 217
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 230
    :cond_8
    :try_start_4
    sget-object v9, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->uam:Lcom/twitterapime/rest/UserAccountManager;

    aget-object v10, v8, v1

    invoke-virtual {v9, v10}, Lcom/twitterapime/rest/UserAccountManager;->follow(Lcom/twitterapime/rest/UserAccount;)Lcom/twitterapime/rest/UserAccount;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 228
    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 236
    .end local v6    # "names":[Ljava/lang/String;
    .end local v8    # "usuarios":[Lcom/twitterapime/rest/UserAccount;
    :catch_1
    move-exception v9

    const/4 v3, 0x0

    .line 237
    const/4 v9, 0x0

    sput-object v9, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->listaEspeciales:Lcom/twitterapime/rest/List;

    goto :goto_7

    .line 241
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_0

    .restart local v6    # "names":[Ljava/lang/String;
    .restart local v8    # "usuarios":[Lcom/twitterapime/rest/UserAccount;
    :catch_2
    move-exception v9

    goto :goto_9

    :catch_3
    move-exception v9

    goto :goto_8
.end method
