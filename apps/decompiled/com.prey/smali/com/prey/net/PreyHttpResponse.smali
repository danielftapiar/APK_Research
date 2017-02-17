.class public Lcom/prey/net/PreyHttpResponse;
.super Ljava/lang/Object;
.source "PreyHttpResponse.java"


# instance fields
.field private mapHeaderFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private response:Ljava/net/HttpURLConnection;

.field private responseAsString:Ljava/lang/String;

.field private statusCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "responseAsString"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/prey/net/PreyHttpResponse;->response:Ljava/net/HttpURLConnection;

    .line 43
    iput p1, p0, Lcom/prey/net/PreyHttpResponse;->statusCode:I

    .line 44
    iput-object p2, p0, Lcom/prey/net/PreyHttpResponse;->responseAsString:Ljava/lang/String;

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "responseAsString:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Can\'t receive body stream from http connection, setting response string as \'\'"

    invoke-static {v1}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 48
    const-string v1, ""

    iput-object v1, p0, Lcom/prey/net/PreyHttpResponse;->responseAsString:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "responseAsString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p3, "mapHeaderFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/prey/net/PreyHttpResponse;->response:Ljava/net/HttpURLConnection;

    .line 57
    iput p1, p0, Lcom/prey/net/PreyHttpResponse;->statusCode:I

    .line 58
    iput-object p2, p0, Lcom/prey/net/PreyHttpResponse;->responseAsString:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/prey/net/PreyHttpResponse;->mapHeaderFields:Ljava/util/Map;

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "responseAsString:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Can\'t receive body stream from http connection, setting response string as \'\'"

    invoke-static {v1}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 63
    const-string v1, ""

    iput-object v1, p0, Lcom/prey/net/PreyHttpResponse;->responseAsString:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 3
    .param p1, "connection"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    :try_start_0
    iput-object p1, p0, Lcom/prey/net/PreyHttpResponse;->response:Ljava/net/HttpURLConnection;

    .line 30
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iput v1, p0, Lcom/prey/net/PreyHttpResponse;->statusCode:I

    .line 31
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/prey/net/PreyHttpResponse;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/prey/net/PreyHttpResponse;->responseAsString:Ljava/lang/String;

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "responseAsString:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/prey/net/PreyHttpResponse;->responseAsString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Can\'t receive body stream from http connection, setting response string as \'\'"

    invoke-static {v1}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 35
    const-string v1, ""

    iput-object v1, p0, Lcom/prey/net/PreyHttpResponse;->responseAsString:Ljava/lang/String;

    goto :goto_0
.end method

.method private convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 70
    const/4 v1, 0x0

    .line 72
    .local v1, "out":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 74
    .local v2, "rd":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 75
    .local v3, "response":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 81
    .end local v0    # "line":Ljava/lang/String;
    .end local v2    # "rd":Ljava/io/BufferedReader;
    .end local v3    # "response":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v4

    .line 84
    :goto_1
    return-object v1

    .line 79
    .restart local v0    # "line":Ljava/lang/String;
    .restart local v2    # "rd":Ljava/io/BufferedReader;
    .restart local v3    # "response":Ljava/lang/StringBuffer;
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public getMapHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/prey/net/PreyHttpResponse;->mapHeaderFields:Ljava/util/Map;

    return-object v0
.end method

.method public getResponse()Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/prey/net/PreyHttpResponse;->response:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public getResponseAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/prey/net/PreyHttpResponse;->responseAsString:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/prey/net/PreyHttpResponse;->statusCode:I

    return v0
.end method

.method public setResponse(Ljava/net/HttpURLConnection;)V
    .locals 0
    .param p1, "response"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/prey/net/PreyHttpResponse;->response:Ljava/net/HttpURLConnection;

    .line 109
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/prey/net/PreyHttpResponse;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/prey/net/PreyHttpResponse;->responseAsString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
