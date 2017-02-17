.class public final Lcom/twitterapime/io/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# instance fields
.field private bodyParams:Ljava/util/Hashtable;

.field private conn:Lcom/twitterapime/io/HttpConnection;

.field private headers:Ljava/util/Hashtable;

.field private method:Ljava/lang/String;

.field private signer:Lcom/twitterapime/xauth/XAuthSigner;

.field private token:Lcom/twitterapime/xauth/Token;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URL must not be empty/null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1
    iput-object p1, p0, Lcom/twitterapime/io/HttpRequest;->url:Ljava/lang/String;

    .line 141
    const-string v0, "GET"

    iput-object v0, p0, Lcom/twitterapime/io/HttpRequest;->method:Ljava/lang/String;

    .line 142
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/twitterapime/io/HttpRequest;->bodyParams:Ljava/util/Hashtable;

    .line 143
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/twitterapime/io/HttpRequest;->headers:Ljava/util/Hashtable;

    .line 144
    return-void
.end method

.method public static getQueryStringParams(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 6
    .param p0, "qryString"    # Ljava/lang/String;

    .prologue
    .line 86
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 88
    .local v1, "params":Ljava/util/Hashtable;
    if-eqz p0, :cond_0

    .line 89
    const/16 v4, 0x26

    invoke-static {p0, v4}, Lcom/twitterapime/util/StringUtil;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "ps":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 93
    aget-object v4, v2, v0

    const/16 v5, 0x3d

    invoke-static {v4, v5}, Lcom/twitterapime/util/StringUtil;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "pv":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v1, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    .end local v0    # "i":I
    .end local v2    # "ps":[Ljava/lang/String;
    .end local v3    # "pv":[Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private static queryString(Ljava/util/Hashtable;)Ljava/lang/String;
    .locals 5
    .param p0, "p"    # Ljava/util/Hashtable;

    .prologue
    .line 110
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 111
    .local v2, "queryStr":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 113
    .local v1, "keys":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 114
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 116
    .local v0, "key":Ljava/lang/String;
    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Lcom/twitterapime/util/StringUtil;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 118
    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Lcom/twitterapime/util/StringUtil;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 125
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private setHeaderFields(Lcom/twitterapime/io/HttpConnection;)V
    .locals 3
    .param p1, "conn"    # Lcom/twitterapime/io/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    iget-object v2, p0, Lcom/twitterapime/io/HttpRequest;->headers:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 316
    .local v1, "keys":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 317
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 318
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/twitterapime/io/HttpRequest;->headers:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v0, v2}, Lcom/twitterapime/io/HttpConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 320
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/twitterapime/io/HttpRequest;->conn:Lcom/twitterapime/io/HttpConnection;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/twitterapime/io/HttpRequest;->conn:Lcom/twitterapime/io/HttpConnection;

    invoke-interface {v0}, Lcom/twitterapime/io/HttpConnection;->close()V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitterapime/io/HttpRequest;->conn:Lcom/twitterapime/io/HttpConnection;

    .line 187
    :cond_0
    return-void
.end method

.method public final getBodyParameters()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/twitterapime/io/HttpRequest;->bodyParams:Ljava/util/Hashtable;

    return-object v0
.end method

.method public final getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/twitterapime/io/HttpRequest;->method:Ljava/lang/String;

    return-object v0
.end method

.method public final getQueryString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 288
    iget-object v1, p0, Lcom/twitterapime/io/HttpRequest;->url:Ljava/lang/String;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 290
    .local v0, "i":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/twitterapime/io/HttpRequest;->url:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/twitterapime/io/HttpRequest;->url:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getSanitizedURL()Ljava/lang/String;
    .locals 3

    .prologue
    .line 276
    iget-object v1, p0, Lcom/twitterapime/io/HttpRequest;->url:Ljava/lang/String;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 278
    .local v0, "i":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/twitterapime/io/HttpRequest;->url:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/twitterapime/io/HttpRequest;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public final send()Lcom/twitterapime/io/HttpResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-virtual {p0}, Lcom/twitterapime/io/HttpRequest;->close()V

    .line 156
    invoke-virtual {p0}, Lcom/twitterapime/io/HttpRequest;->getSanitizedURL()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "nurl":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/twitterapime/io/HttpRequest;->getQueryString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/twitterapime/io/HttpRequest;->getQueryString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/twitterapime/io/HttpRequest;->getQueryStringParams(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v3

    invoke-static {v3}, Lcom/twitterapime/io/HttpRequest;->queryString(Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "URL must not be null/empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {}, Lcom/twitterapime/platform/PlatformProviderSelector;->getCurrentProvider()Lcom/twitterapime/platform/PlatformProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitterapime/platform/PlatformProvider;->getID()J

    move-result-wide v3

    const-wide/16 v5, 0x2

    cmp-long v2, v3, v5

    if-nez v2, :cond_6

    new-instance v2, Limpl/android/com/twitterapime/io/HttpConnectionImpl;

    invoke-direct {v2}, Limpl/android/com/twitterapime/io/HttpConnectionImpl;-><init>()V

    const-string v1, "Twitter API ME/1.8 (compatible; Android 1.5)"

    :goto_0
    if-nez v2, :cond_3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Unknown platform ID: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-interface {v2, v0}, Lcom/twitterapime/io/HttpConnection;->open(Ljava/lang/String;)V

    const-string v3, "User-Agent"

    invoke-interface {v2, v3, v1}, Lcom/twitterapime/io/HttpConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/twitterapime/io/HttpRequest;->conn:Lcom/twitterapime/io/HttpConnection;

    .line 162
    iget-object v1, p0, Lcom/twitterapime/io/HttpRequest;->conn:Lcom/twitterapime/io/HttpConnection;

    iget-object v2, p0, Lcom/twitterapime/io/HttpRequest;->method:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/twitterapime/io/HttpConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/twitterapime/io/HttpRequest;->signer:Lcom/twitterapime/xauth/XAuthSigner;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/twitterapime/io/HttpRequest;->token:Lcom/twitterapime/xauth/Token;

    if-eqz v1, :cond_4

    .line 165
    iget-object v1, p0, Lcom/twitterapime/io/HttpRequest;->signer:Lcom/twitterapime/xauth/XAuthSigner;

    iget-object v2, p0, Lcom/twitterapime/io/HttpRequest;->token:Lcom/twitterapime/xauth/Token;

    invoke-virtual {v1, p0, v2}, Lcom/twitterapime/xauth/XAuthSigner;->sign(Lcom/twitterapime/io/HttpRequest;Lcom/twitterapime/xauth/Token;)V

    .line 168
    :cond_4
    iget-object v1, p0, Lcom/twitterapime/io/HttpRequest;->conn:Lcom/twitterapime/io/HttpConnection;

    invoke-direct {p0, v1}, Lcom/twitterapime/io/HttpRequest;->setHeaderFields(Lcom/twitterapime/io/HttpConnection;)V

    .line 169
    const-string v1, "POST"

    iget-object v2, p0, Lcom/twitterapime/io/HttpRequest;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 170
    iget-object v1, p0, Lcom/twitterapime/io/HttpRequest;->conn:Lcom/twitterapime/io/HttpConnection;

    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-interface {v1, v2, v3}, Lcom/twitterapime/io/HttpConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/twitterapime/io/HttpRequest;->bodyParams:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/twitterapime/io/HttpRequest;->bodyParams:Ljava/util/Hashtable;

    invoke-static {v2}, Lcom/twitterapime/io/HttpRequest;->queryString(Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "Content-Length"

    array-length v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/twitterapime/io/HttpConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/twitterapime/io/HttpConnection;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 173
    :cond_5
    new-instance v1, Lcom/twitterapime/io/HttpResponse;

    iget-object v2, p0, Lcom/twitterapime/io/HttpRequest;->conn:Lcom/twitterapime/io/HttpConnection;

    invoke-direct {v1, v2}, Lcom/twitterapime/io/HttpResponse;-><init>(Lcom/twitterapime/io/HttpConnection;)V

    return-object v1

    :cond_6
    move-object v2, v1

    goto/16 :goto_0
.end method

.method public final setBodyParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/twitterapime/io/HttpRequest;->bodyParams:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    return-void
.end method

.method public final setHeaderField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/twitterapime/io/HttpRequest;->headers:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    return-void
.end method

.method public final setMethod(Ljava/lang/String;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 231
    const-string v0, "GET"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "POST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    :cond_0
    iput-object p1, p0, Lcom/twitterapime/io/HttpRequest;->method:Ljava/lang/String;

    return-void

    .line 235
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid Http method: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setSigner(Lcom/twitterapime/xauth/XAuthSigner;Lcom/twitterapime/xauth/Token;)V
    .locals 0
    .param p1, "signer"    # Lcom/twitterapime/xauth/XAuthSigner;
    .param p2, "token"    # Lcom/twitterapime/xauth/Token;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/twitterapime/io/HttpRequest;->signer:Lcom/twitterapime/xauth/XAuthSigner;

    .line 302
    iput-object p2, p0, Lcom/twitterapime/io/HttpRequest;->token:Lcom/twitterapime/xauth/Token;

    .line 303
    return-void
.end method
