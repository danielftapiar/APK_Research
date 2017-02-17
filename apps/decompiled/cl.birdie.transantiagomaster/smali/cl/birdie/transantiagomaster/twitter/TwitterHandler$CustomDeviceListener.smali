.class final Lcl/birdie/transantiagomaster/twitter/TwitterHandler$CustomDeviceListener;
.super Ljava/lang/Object;
.source "TwitterHandler.java"

# interfaces
.implements Lcom/twitterapime/search/SearchDeviceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/twitter/TwitterHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomDeviceListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/twitter/TwitterHandler$CustomDeviceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final searchCompleted()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 337
    sget-object v1, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->timeline:Ljava/util/Vector;

    monitor-enter v1

    .line 338
    :try_start_0
    sget-object v0, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->timeline:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    :goto_0
    return-void

    .line 337
    :cond_0
    monitor-exit v1

    .line 342
    sget v0, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->showTweets:I

    if-nez v0, :cond_1

    .line 343
    const/4 v0, 0x0

    sput v0, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->cnt:I

    .line 344
    sput v2, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->showTweets:I

    .line 346
    :cond_1
    sput-boolean v2, Lcl/birdie/transantiagomaster/TileHandler;->refresh:Z

    .line 347
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "busqueda completa"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final tweetFound(Lcom/twitterapime/search/Tweet;)V
    .locals 13
    .param p1, "tweet"    # Lcom/twitterapime/search/Tweet;

    .prologue
    .line 356
    invoke-virtual {p1}, Lcom/twitterapime/search/Tweet;->getUserAccount()Lcom/twitterapime/rest/UserAccount;

    move-result-object v4

    .line 357
    .local v4, "user":Lcom/twitterapime/rest/UserAccount;
    const-string v7, "USERACCOUNT_UTC_OFFSET"

    invoke-virtual {v4, v7}, Lcom/twitterapime/rest/UserAccount;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v2, v7, v9

    .line 358
    .local v2, "offset":J
    const-string v7, "TWEET_PUBLISH_DATE"

    invoke-virtual {p1, v7}, Lcom/twitterapime/search/Tweet;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 359
    .local v0, "d":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    add-long/2addr v7, v2

    invoke-virtual {v0, v7, v8}, Ljava/util/Date;->setTime(J)V

    .line 361
    sget-object v8, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->newestTweet:Ljava/util/Date;

    monitor-enter v8

    .line 362
    :try_start_0
    sget-object v7, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->newestTweet:Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    cmp-long v7, v9, v11

    if-gez v7, :cond_0

    .line 363
    sget-object v7, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->newestTweet:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/util/Date;->setTime(J)V

    .line 364
    const-string v7, "TWEET_ID"

    invoke-virtual {p1, v7}, Lcom/twitterapime/search/Tweet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->newestTweetId:Ljava/lang/String;

    .line 361
    :cond_0
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    const-string v7, "USERACCOUNT_ID"

    invoke-virtual {v4, v7}, Lcom/twitterapime/rest/UserAccount;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 369
    .local v5, "userId":Ljava/lang/String;
    const-string v7, "USERACCOUNT_USER_NAME"

    invoke-virtual {v4, v7}, Lcom/twitterapime/rest/UserAccount;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 371
    .local v6, "userName":Ljava/lang/String;
    new-instance v7, Lcl/birdie/toolkit/ImageCacheHandler;

    invoke-direct {v7}, Lcl/birdie/toolkit/ImageCacheHandler;-><init>()V

    .line 372
    const-string v7, "USERACCOUNT_PICTURE_URI"

    invoke-virtual {v4, v7}, Lcom/twitterapime/rest/UserAccount;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcl/birdie/toolkit/ImageCacheHandler;->descargarImagen(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    new-instance v1, Lcl/birdie/transantiagomaster/twitter/TwitterHandler$Mensaje;

    invoke-direct {v1}, Lcl/birdie/transantiagomaster/twitter/TwitterHandler$Mensaje;-><init>()V

    .line 375
    .local v1, "m":Lcl/birdie/transantiagomaster/twitter/TwitterHandler$Mensaje;
    const/4 v7, 0x0

    iput v7, v1, Lcl/birdie/transantiagomaster/twitter/TwitterHandler$Mensaje;->estado:I

    .line 376
    iput-object v5, v1, Lcl/birdie/transantiagomaster/twitter/TwitterHandler$Mensaje;->userId:Ljava/lang/String;

    .line 377
    iput-object v6, v1, Lcl/birdie/transantiagomaster/twitter/TwitterHandler$Mensaje;->userName:Ljava/lang/String;

    .line 378
    const-string v7, "TWEET_CONTENT"

    invoke-virtual {p1, v7}, Lcom/twitterapime/search/Tweet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcl/birdie/transantiagomaster/twitter/TwitterHandler$Mensaje;->mensaje:Ljava/lang/String;

    .line 379
    iput-object v0, v1, Lcl/birdie/transantiagomaster/twitter/TwitterHandler$Mensaje;->fecha:Ljava/util/Date;

    .line 380
    sget-object v8, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->timeline:Ljava/util/Vector;

    monitor-enter v8

    .line 381
    :try_start_1
    sget-object v7, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->timeline:Ljava/util/Vector;

    invoke-virtual {v7, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 380
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 361
    .end local v1    # "m":Lcl/birdie/transantiagomaster/twitter/TwitterHandler$Mensaje;
    .end local v5    # "userId":Ljava/lang/String;
    .end local v6    # "userName":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 380
    .restart local v1    # "m":Lcl/birdie/transantiagomaster/twitter/TwitterHandler$Mensaje;
    .restart local v5    # "userId":Ljava/lang/String;
    .restart local v6    # "userName":Ljava/lang/String;
    :catchall_1
    move-exception v7

    monitor-exit v8

    throw v7
.end method
