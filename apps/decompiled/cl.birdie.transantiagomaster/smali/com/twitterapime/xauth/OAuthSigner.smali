.class public Lcom/twitterapime/xauth/OAuthSigner;
.super Ljava/lang/Object;
.source "OAuthSigner.java"


# instance fields
.field protected final consumerKey:Ljava/lang/String;

.field protected final consumerSecret:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "consumerKey"    # Ljava/lang/String;
    .param p2, "consumerSecret"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {p1}, Lcom/twitterapime/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Consumer key must not be empty/null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    invoke-static {p2}, Lcom/twitterapime/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Consumer secret must not be empty/null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    iput-object p1, p0, Lcom/twitterapime/xauth/OAuthSigner;->consumerKey:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/twitterapime/xauth/OAuthSigner;->consumerSecret:Ljava/lang/String;

    .line 79
    return-void
.end method

.method private static addParams(Lcom/twitterapime/xauth/OAuthParameters;Ljava/util/Hashtable;)V
    .locals 3
    .param p0, "params"    # Lcom/twitterapime/xauth/OAuthParameters;
    .param p1, "p"    # Ljava/util/Hashtable;

    .prologue
    .line 182
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 184
    .local v1, "keys":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 186
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/twitterapime/xauth/OAuthParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected static getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "baseString"    # Ljava/lang/String;
    .param p1, "consumerSecret"    # Ljava/lang/String;
    .param p2, "tokenSecret"    # Ljava/lang/String;

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/twitterapime/xauth/encoders/HMAC;->getHmac(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/twitterapime/xauth/encoders/Base64Encoder;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getSignatureBaseString(Lcom/twitterapime/io/HttpRequest;Lcom/twitterapime/xauth/OAuthParameters;)Ljava/lang/String;
    .locals 6
    .param p0, "req"    # Lcom/twitterapime/io/HttpRequest;
    .param p1, "params"    # Lcom/twitterapime/xauth/OAuthParameters;

    .prologue
    const/16 v5, 0x26

    .line 159
    invoke-virtual {p0}, Lcom/twitterapime/io/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Lcom/twitterapime/util/StringUtil;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "method":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/twitterapime/io/HttpRequest;->getSanitizedURL()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Lcom/twitterapime/util/StringUtil;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/twitterapime/io/HttpRequest;->getQueryString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/twitterapime/io/HttpRequest;->getQueryStringParams(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/twitterapime/xauth/OAuthSigner;->addParams(Lcom/twitterapime/xauth/OAuthParameters;Ljava/util/Hashtable;)V

    .line 164
    invoke-virtual {p0}, Lcom/twitterapime/io/HttpRequest;->getBodyParameters()Ljava/util/Hashtable;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/twitterapime/xauth/OAuthSigner;->addParams(Lcom/twitterapime/xauth/OAuthParameters;Ljava/util/Hashtable;)V

    .line 166
    invoke-virtual {p1}, Lcom/twitterapime/xauth/OAuthParameters;->getSortedEncodedParamsAsString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Lcom/twitterapime/util/StringUtil;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "sortedParams":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public final sign(Lcom/twitterapime/io/HttpRequest;Lcom/twitterapime/xauth/Token;)V
    .locals 5
    .param p1, "req"    # Lcom/twitterapime/io/HttpRequest;
    .param p2, "access"    # Lcom/twitterapime/xauth/Token;

    .prologue
    .line 137
    new-instance v0, Lcom/twitterapime/xauth/OAuthParameters;

    iget-object v2, p0, Lcom/twitterapime/xauth/OAuthSigner;->consumerKey:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/twitterapime/xauth/OAuthParameters;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, "params":Lcom/twitterapime/xauth/OAuthParameters;
    const-string v2, "oauth_token"

    invoke-virtual {p2}, Lcom/twitterapime/xauth/Token;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/twitterapime/xauth/OAuthParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static {p1, v0}, Lcom/twitterapime/xauth/OAuthSigner;->getSignatureBaseString(Lcom/twitterapime/io/HttpRequest;Lcom/twitterapime/xauth/OAuthParameters;)Ljava/lang/String;

    move-result-object v2

    .line 142
    iget-object v3, p0, Lcom/twitterapime/xauth/OAuthSigner;->consumerSecret:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/twitterapime/xauth/Token;->getSecret()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/twitterapime/xauth/OAuthSigner;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "str":Ljava/lang/String;
    const-string v2, "oauth_signature"

    invoke-virtual {v0, v2, v1}, Lcom/twitterapime/xauth/OAuthParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Lcom/twitterapime/xauth/OAuthParameters;->getAuthorizationHeaderValue()Ljava/lang/String;

    move-result-object v1

    .line 146
    const-string v2, "Authorization"

    invoke-virtual {p1, v2, v1}, Lcom/twitterapime/io/HttpRequest;->setHeaderField(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public final signForAccessToken(Lcom/twitterapime/io/HttpRequest;Lcom/twitterapime/xauth/Token;Ljava/lang/String;)V
    .locals 5
    .param p1, "req"    # Lcom/twitterapime/io/HttpRequest;
    .param p2, "access"    # Lcom/twitterapime/xauth/Token;
    .param p3, "verifier"    # Ljava/lang/String;

    .prologue
    .line 114
    const-string v2, "POST"

    invoke-virtual {p1, v2}, Lcom/twitterapime/io/HttpRequest;->setMethod(Ljava/lang/String;)V

    .line 116
    new-instance v0, Lcom/twitterapime/xauth/OAuthParameters;

    iget-object v2, p0, Lcom/twitterapime/xauth/OAuthSigner;->consumerKey:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/twitterapime/xauth/OAuthParameters;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "params":Lcom/twitterapime/xauth/OAuthParameters;
    const-string v2, "oauth_token"

    invoke-virtual {p2}, Lcom/twitterapime/xauth/Token;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/twitterapime/xauth/OAuthParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v2, "oauth_verifier"

    invoke-virtual {v0, v2, p3}, Lcom/twitterapime/xauth/OAuthParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {p1, v0}, Lcom/twitterapime/xauth/OAuthSigner;->getSignatureBaseString(Lcom/twitterapime/io/HttpRequest;Lcom/twitterapime/xauth/OAuthParameters;)Ljava/lang/String;

    move-result-object v2

    .line 122
    iget-object v3, p0, Lcom/twitterapime/xauth/OAuthSigner;->consumerSecret:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/twitterapime/xauth/Token;->getSecret()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/twitterapime/xauth/OAuthSigner;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "str":Ljava/lang/String;
    const-string v2, "oauth_signature"

    invoke-virtual {v0, v2, v1}, Lcom/twitterapime/xauth/OAuthParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Lcom/twitterapime/xauth/OAuthParameters;->getAuthorizationHeaderValue()Ljava/lang/String;

    move-result-object v1

    .line 126
    const-string v2, "Authorization"

    invoke-virtual {p1, v2, v1}, Lcom/twitterapime/io/HttpRequest;->setHeaderField(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public final signForRequestToken(Lcom/twitterapime/io/HttpRequest;Ljava/lang/String;)V
    .locals 5
    .param p1, "req"    # Lcom/twitterapime/io/HttpRequest;
    .param p2, "urlCallback"    # Ljava/lang/String;

    .prologue
    .line 89
    const-string v2, "POST"

    invoke-virtual {p1, v2}, Lcom/twitterapime/io/HttpRequest;->setMethod(Ljava/lang/String;)V

    .line 91
    new-instance v0, Lcom/twitterapime/xauth/OAuthParameters;

    iget-object v2, p0, Lcom/twitterapime/xauth/OAuthSigner;->consumerKey:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/twitterapime/xauth/OAuthParameters;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, "params":Lcom/twitterapime/xauth/OAuthParameters;
    const-string v2, "oauth_callback"

    invoke-virtual {v0, v2, p2}, Lcom/twitterapime/xauth/OAuthParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {p1, v0}, Lcom/twitterapime/xauth/OAuthSigner;->getSignatureBaseString(Lcom/twitterapime/io/HttpRequest;Lcom/twitterapime/xauth/OAuthParameters;)Ljava/lang/String;

    move-result-object v2

    .line 96
    iget-object v3, p0, Lcom/twitterapime/xauth/OAuthSigner;->consumerSecret:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/twitterapime/xauth/OAuthSigner;->getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "str":Ljava/lang/String;
    const-string v2, "oauth_signature"

    invoke-virtual {v0, v2, v1}, Lcom/twitterapime/xauth/OAuthParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Lcom/twitterapime/xauth/OAuthParameters;->getAuthorizationHeaderValue()Ljava/lang/String;

    move-result-object v1

    .line 101
    const-string v2, "Authorization"

    invoke-virtual {p1, v2, v1}, Lcom/twitterapime/io/HttpRequest;->setHeaderField(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method
