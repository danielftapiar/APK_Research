.class public abstract Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;
.super Ljava/lang/Object;
.source "OAuthDialogWrapper.java"


# instance fields
.field protected accessTokenUrl:Ljava/lang/String;

.field protected callbackUrl:Ljava/lang/String;

.field protected consumerKey:Ljava/lang/String;

.field protected consumerSecret:Ljava/lang/String;

.field protected deniedPageHtml:Ljava/lang/String;

.field protected enableCustomResultPages:Z

.field protected errorPageHtml:Ljava/lang/String;

.field protected loginPageUrl:Ljava/lang/String;

.field protected oauthListener:Lcom/twitterapime/xauth/ui/OAuthDialogListener;

.field protected requestTokenUrl:Ljava/lang/String;

.field protected signer:Lcom/twitterapime/xauth/OAuthSigner;

.field protected successPageHtml:Ljava/lang/String;

.field protected token:Lcom/twitterapime/xauth/Token;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const-string v0, "https://api.twitter.com/oauth/request_token"

    iput-object v0, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->requestTokenUrl:Ljava/lang/String;

    .line 127
    const-string v0, "https://api.twitter.com/oauth/authorize"

    iput-object v0, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->loginPageUrl:Ljava/lang/String;

    .line 135
    const-string v0, "https://api.twitter.com/oauth/access_token"

    iput-object v0, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->accessTokenUrl:Ljava/lang/String;

    .line 178
    iput-object v1, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->consumerKey:Ljava/lang/String;

    .line 179
    iput-object v1, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->consumerSecret:Ljava/lang/String;

    .line 180
    invoke-virtual {p0, v1}, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->setCallbackUrl(Ljava/lang/String;)V

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->enableCustomResultPages:Z

    .line 182
    iput-object v1, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->oauthListener:Lcom/twitterapime/xauth/ui/OAuthDialogListener;

    .line 183
    return-void
.end method

.method private displayOAuthErrorPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 521
    iget-boolean v1, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->enableCustomResultPages:Z

    if-eqz v1, :cond_1

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<html><body><center><font color=\"blue\"><br/><b>Twitter</b></font></center><br/><center>Authorization failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")<br/><br/>Close this page.</center></body></html>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, "html":Ljava/lang/String;
    iget-object v1, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->errorPageHtml:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 531
    iget-object v0, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->errorPageHtml:Ljava/lang/String;

    .line 534
    :cond_0
    invoke-virtual {p0, v0}, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->loadHTML(Ljava/lang/String;)V

    .line 536
    .end local v0    # "html":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract loadHTML(Ljava/lang/String;)V
.end method

.method protected abstract loadUrl(Ljava/lang/String;)V
.end method

.method public final login()V
    .locals 3

    .prologue
    .line 304
    iget-object v0, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->consumerKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitterapime/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Consumer Key must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->consumerSecret:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitterapime/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Consumer Secret must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->callbackUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitterapime/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback Url must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->token:Lcom/twitterapime/xauth/Token;

    .line 318
    new-instance v0, Lcom/twitterapime/xauth/OAuthSigner;

    iget-object v1, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->consumerKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->consumerSecret:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/twitterapime/xauth/OAuthSigner;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->signer:Lcom/twitterapime/xauth/OAuthSigner;

    .line 320
    new-instance v0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper$1;

    invoke-direct {v0, p0}, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper$1;-><init>(Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;)V

    invoke-virtual {v0}, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper$1;->start()V

    .line 325
    return-void
.end method

.method protected requestToken()V
    .locals 8

    .prologue
    .line 379
    new-instance v4, Lcom/twitterapime/io/HttpRequest;

    iget-object v6, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->requestTokenUrl:Ljava/lang/String;

    invoke-direct {v4, v6}, Lcom/twitterapime/io/HttpRequest;-><init>(Ljava/lang/String;)V

    .line 381
    .local v4, "req":Lcom/twitterapime/io/HttpRequest;
    iget-object v6, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->signer:Lcom/twitterapime/xauth/OAuthSigner;

    iget-object v7, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->callbackUrl:Ljava/lang/String;

    invoke-virtual {v6, v4, v7}, Lcom/twitterapime/xauth/OAuthSigner;->signForRequestToken(Lcom/twitterapime/io/HttpRequest;Ljava/lang/String;)V

    .line 384
    :try_start_0
    invoke-virtual {v4}, Lcom/twitterapime/io/HttpRequest;->send()Lcom/twitterapime/io/HttpResponse;

    move-result-object v5

    .line 385
    .local v5, "resp":Lcom/twitterapime/io/HttpResponse;
    invoke-virtual {v5}, Lcom/twitterapime/io/HttpResponse;->getBodyContent()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "body":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/twitterapime/io/HttpResponse;->getCode()I

    move-result v6

    const/16 v7, 0xc8

    if-eq v6, v7, :cond_0

    .line 388
    const-string v6, "oauth_request_token_failed"

    invoke-direct {p0, v6, v0}, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->displayOAuthErrorPage(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v6, "oauth_request_token_failed"

    invoke-virtual {p0, v6, v0}, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->triggerOnFail(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    :try_start_1
    invoke-virtual {v4}, Lcom/twitterapime/io/HttpRequest;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 417
    .end local v0    # "body":Ljava/lang/String;
    .end local v5    # "resp":Lcom/twitterapime/io/HttpResponse;
    :goto_0
    return-void

    .line 394
    .restart local v0    # "body":Ljava/lang/String;
    .restart local v5    # "resp":Lcom/twitterapime/io/HttpResponse;
    :cond_0
    :try_start_2
    const-string v6, "oauth_callback_confirmed"

    invoke-static {v0, v6}, Lcom/twitterapime/util/StringUtil;->getUrlParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, "conf":Ljava/lang/String;
    const-string v6, "true"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 398
    invoke-static {v0}, Lcom/twitterapime/xauth/Token;->parse(Ljava/lang/String;)Lcom/twitterapime/xauth/Token;

    move-result-object v6

    iput-object v6, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->token:Lcom/twitterapime/xauth/Token;

    .line 400
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->loginPageUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "?oauth_token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->token:Lcom/twitterapime/xauth/Token;

    invoke-virtual {v7}, Lcom/twitterapime/xauth/Token;->getToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&force_login=true"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 404
    .local v3, "oauthUrl":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->loadUrl(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 414
    .end local v3    # "oauthUrl":Ljava/lang/String;
    :goto_1
    :try_start_3
    invoke-virtual {v4}, Lcom/twitterapime/io/HttpRequest;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 417
    :catch_0
    move-exception v6

    goto :goto_0

    .line 406
    :cond_1
    :try_start_4
    const-string v6, "oauth_request_token_failed"

    invoke-direct {p0, v6, v0}, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->displayOAuthErrorPage(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v6, "oauth_request_token_failed"

    invoke-virtual {p0, v6, v0}, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->triggerOnFail(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 409
    .end local v0    # "body":Ljava/lang/String;
    .end local v1    # "conf":Ljava/lang/String;
    .end local v5    # "resp":Lcom/twitterapime/io/HttpResponse;
    :catch_1
    move-exception v2

    .line 410
    .local v2, "e":Ljava/io/IOException;
    :try_start_5
    const-string v6, "oauth_io_exception"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->displayOAuthErrorPage(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v6, "oauth_io_exception"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->triggerOnFail(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 414
    :try_start_6
    invoke-virtual {v4}, Lcom/twitterapime/io/HttpRequest;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 417
    :catch_2
    move-exception v6

    goto :goto_0

    .line 413
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 414
    :try_start_7
    invoke-virtual {v4}, Lcom/twitterapime/io/HttpRequest;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 416
    :goto_2
    throw v6

    .restart local v0    # "body":Ljava/lang/String;
    .restart local v5    # "resp":Lcom/twitterapime/io/HttpResponse;
    :catch_3
    move-exception v6

    goto :goto_0

    .end local v0    # "body":Ljava/lang/String;
    .end local v5    # "resp":Lcom/twitterapime/io/HttpResponse;
    :catch_4
    move-exception v7

    goto :goto_2
.end method

.method public final setCallbackUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "callbackUrl"    # Ljava/lang/String;

    .prologue
    .line 212
    invoke-static {p1}, Lcom/twitterapime/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "oob"

    .end local p1    # "callbackUrl":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->callbackUrl:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public final setConsumerKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "consumerKey"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->consumerKey:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public final setConsumerSecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "consumerSecret"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->consumerSecret:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public final setCustomDeniedPageHtml(Ljava/lang/String;)V
    .locals 0
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->deniedPageHtml:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public final setCustomErrorPageHtml(Ljava/lang/String;)V
    .locals 0
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->errorPageHtml:Ljava/lang/String;

    .line 285
    return-void
.end method

.method public final setCustomSuccessPageHtml(Ljava/lang/String;)V
    .locals 0
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->successPageHtml:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public final setOAuthListener(Lcom/twitterapime/xauth/ui/OAuthDialogListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/twitterapime/xauth/ui/OAuthDialogListener;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->oauthListener:Lcom/twitterapime/xauth/ui/OAuthDialogListener;

    .line 295
    return-void
.end method

.method protected final trackUrl(Ljava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 428
    iget-object v5, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->callbackUrl:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->oauthListener:Lcom/twitterapime/xauth/ui/OAuthDialogListener;

    if-eqz v5, :cond_2

    .line 429
    const-string v5, "oauth_verifier="

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v6, :cond_4

    .line 430
    const-string v5, "oauth_verifier"

    invoke-static {p1, v5}, Lcom/twitterapime/util/StringUtil;->getUrlParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 432
    .local v4, "verifier":Ljava/lang/String;
    new-instance v2, Lcom/twitterapime/io/HttpRequest;

    iget-object v5, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->accessTokenUrl:Ljava/lang/String;

    invoke-direct {v2, v5}, Lcom/twitterapime/io/HttpRequest;-><init>(Ljava/lang/String;)V

    .line 434
    .local v2, "req":Lcom/twitterapime/io/HttpRequest;
    iget-object v5, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->signer:Lcom/twitterapime/xauth/OAuthSigner;

    iget-object v6, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->token:Lcom/twitterapime/xauth/Token;

    invoke-virtual {v5, v2, v6, v4}, Lcom/twitterapime/xauth/OAuthSigner;->signForAccessToken(Lcom/twitterapime/io/HttpRequest;Lcom/twitterapime/xauth/Token;Ljava/lang/String;)V

    .line 437
    :try_start_0
    invoke-virtual {v2}, Lcom/twitterapime/io/HttpRequest;->send()Lcom/twitterapime/io/HttpResponse;

    move-result-object v3

    .line 438
    .local v3, "resp":Lcom/twitterapime/io/HttpResponse;
    invoke-virtual {v3}, Lcom/twitterapime/io/HttpResponse;->getBodyContent()Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "body":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/twitterapime/io/HttpResponse;->getCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_3

    .line 441
    iget-boolean v5, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->enableCustomResultPages:Z

    if-eqz v5, :cond_1

    const-string v5, "<html><body><center><font color=\"blue\"><br/><b>Twitter</b></font></center><br/><center>Authorization granted!<br/><br/>Close this page.</center></body></html>"

    iget-object v6, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->successPageHtml:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v5, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->successPageHtml:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, v5}, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->loadHTML(Ljava/lang/String;)V

    .line 442
    :cond_1
    invoke-static {v0}, Lcom/twitterapime/xauth/Token;->parse(Ljava/lang/String;)Lcom/twitterapime/xauth/Token;

    move-result-object v5

    iput-object v5, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->token:Lcom/twitterapime/xauth/Token;

    .line 443
    iget-object v5, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->token:Lcom/twitterapime/xauth/Token;

    invoke-virtual {p0, v5}, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->triggerOnAuthorize(Lcom/twitterapime/xauth/Token;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Lcom/twitterapime/io/HttpRequest;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 462
    .end local v0    # "body":Ljava/lang/String;
    .end local v2    # "req":Lcom/twitterapime/io/HttpRequest;
    .end local v3    # "resp":Lcom/twitterapime/io/HttpResponse;
    .end local v4    # "verifier":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 445
    .restart local v0    # "body":Ljava/lang/String;
    .restart local v2    # "req":Lcom/twitterapime/io/HttpRequest;
    .restart local v3    # "resp":Lcom/twitterapime/io/HttpResponse;
    .restart local v4    # "verifier":Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string v5, "oauth_access_token_failed"

    invoke-direct {p0, v5, v0}, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->displayOAuthErrorPage(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string v5, "oauth_access_token_failed"

    invoke-virtual {p0, v5, v0}, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->triggerOnFail(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 448
    .end local v0    # "body":Ljava/lang/String;
    .end local v3    # "resp":Lcom/twitterapime/io/HttpResponse;
    :catch_0
    move-exception v1

    .line 449
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    const-string v5, "oauth_io_exception"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->displayOAuthErrorPage(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string v5, "oauth_io_exception"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->triggerOnFail(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 453
    :try_start_4
    invoke-virtual {v2}, Lcom/twitterapime/io/HttpRequest;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 456
    :catch_1
    move-exception v5

    goto :goto_1

    .line 452
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 453
    :try_start_5
    invoke-virtual {v2}, Lcom/twitterapime/io/HttpRequest;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 455
    :goto_2
    throw v5

    .line 457
    .end local v2    # "req":Lcom/twitterapime/io/HttpRequest;
    .end local v4    # "verifier":Ljava/lang/String;
    :cond_4
    const-string v5, "denied="

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v6, :cond_2

    .line 458
    const-string v5, "Access Denied"

    iget-boolean v6, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->enableCustomResultPages:Z

    if-eqz v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "<html><body><center><font color=\"blue\"><br/><b>Twitter</b></font></center><br/><center>Authorization denied: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<br/><br/>Close this page.</center></body></html>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->deniedPageHtml:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v5, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->deniedPageHtml:Ljava/lang/String;

    :cond_5
    invoke-virtual {p0, v5}, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->loadHTML(Ljava/lang/String;)V

    .line 459
    :cond_6
    const-string v5, "oauth_access_token_denied"

    invoke-virtual {p0, v5}, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->triggerOnAccessDenied(Ljava/lang/String;)V

    goto :goto_1

    .line 456
    .restart local v0    # "body":Ljava/lang/String;
    .restart local v2    # "req":Lcom/twitterapime/io/HttpRequest;
    .restart local v3    # "resp":Lcom/twitterapime/io/HttpResponse;
    .restart local v4    # "verifier":Ljava/lang/String;
    :catch_2
    move-exception v5

    goto :goto_1

    .end local v0    # "body":Ljava/lang/String;
    .end local v3    # "resp":Lcom/twitterapime/io/HttpResponse;
    :catch_3
    move-exception v6

    goto :goto_2
.end method

.method protected triggerOnAccessDenied(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 570
    iget-object v0, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->oauthListener:Lcom/twitterapime/xauth/ui/OAuthDialogListener;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->oauthListener:Lcom/twitterapime/xauth/ui/OAuthDialogListener;

    invoke-interface {v0}, Lcom/twitterapime/xauth/ui/OAuthDialogListener;->onAccessDenied$552c4e01()V

    .line 573
    :cond_0
    return-void
.end method

.method protected triggerOnAuthorize(Lcom/twitterapime/xauth/Token;)V
    .locals 1
    .param p1, "accessToken"    # Lcom/twitterapime/xauth/Token;

    .prologue
    .line 545
    iget-object v0, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->oauthListener:Lcom/twitterapime/xauth/ui/OAuthDialogListener;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->oauthListener:Lcom/twitterapime/xauth/ui/OAuthDialogListener;

    invoke-interface {v0, p1}, Lcom/twitterapime/xauth/ui/OAuthDialogListener;->onAuthorize(Lcom/twitterapime/xauth/Token;)V

    .line 548
    :cond_0
    return-void
.end method

.method protected triggerOnFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 558
    iget-object v0, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->oauthListener:Lcom/twitterapime/xauth/ui/OAuthDialogListener;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/twitterapime/xauth/ui/OAuthDialogWrapper;->oauthListener:Lcom/twitterapime/xauth/ui/OAuthDialogListener;

    invoke-interface {v0}, Lcom/twitterapime/xauth/ui/OAuthDialogListener;->onFail$16da05f7()V

    .line 561
    :cond_0
    return-void
.end method
