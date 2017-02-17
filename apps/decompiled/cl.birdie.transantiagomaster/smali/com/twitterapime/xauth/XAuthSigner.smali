.class public final Lcom/twitterapime/xauth/XAuthSigner;
.super Lcom/twitterapime/xauth/OAuthSigner;
.source "XAuthSigner.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "consumerKey"    # Ljava/lang/String;
    .param p2, "consumerSecret"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/twitterapime/xauth/OAuthSigner;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method public final signForAccessToken(Lcom/twitterapime/io/HttpRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "req"    # Lcom/twitterapime/io/HttpRequest;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 45
    const-string v2, "POST"

    invoke-virtual {p1, v2}, Lcom/twitterapime/io/HttpRequest;->setMethod(Ljava/lang/String;)V

    .line 46
    const-string v2, "x_auth_mode"

    const-string v3, "client_auth"

    invoke-virtual {p1, v2, v3}, Lcom/twitterapime/io/HttpRequest;->setBodyParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v2, "x_auth_username"

    invoke-virtual {p1, v2, p2}, Lcom/twitterapime/io/HttpRequest;->setBodyParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v2, "x_auth_password"

    invoke-virtual {p1, v2, p3}, Lcom/twitterapime/io/HttpRequest;->setBodyParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v0, Lcom/twitterapime/xauth/OAuthParameters;

    iget-object v2, p0, Lcom/twitterapime/xauth/XAuthSigner;->consumerKey:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/twitterapime/xauth/OAuthParameters;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "params":Lcom/twitterapime/xauth/OAuthParameters;
    invoke-static {p1, v0}, Lcom/twitterapime/xauth/XAuthSigner;->getSignatureBaseString(Lcom/twitterapime/io/HttpRequest;Lcom/twitterapime/xauth/OAuthParameters;)Ljava/lang/String;

    move-result-object v2

    .line 54
    iget-object v3, p0, Lcom/twitterapime/xauth/XAuthSigner;->consumerSecret:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/twitterapime/xauth/XAuthSigner;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "str":Ljava/lang/String;
    const-string v2, "oauth_signature"

    invoke-virtual {v0, v2, v1}, Lcom/twitterapime/xauth/OAuthParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Lcom/twitterapime/xauth/OAuthParameters;->getAuthorizationHeaderValue()Ljava/lang/String;

    move-result-object v1

    .line 59
    const-string v2, "Authorization"

    invoke-virtual {p1, v2, v1}, Lcom/twitterapime/io/HttpRequest;->setHeaderField(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method
