.class public final Lcom/twitterapime/io/HttpResponseCodeInterpreter;
.super Ljava/lang/Object;
.source "HttpResponseCodeInterpreter.java"


# direct methods
.method public static getErrorMessage(Lcom/twitterapime/io/HttpResponse;)Ljava/lang/String;
    .locals 5
    .param p0, "response"    # Lcom/twitterapime/io/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {}, Lcom/twitterapime/parser/ParserFactory;->getParser$31d4812a()Lcom/twitterapime/parser/Parser;

    move-result-object v2

    .line 95
    .local v2, "parser":Lcom/twitterapime/parser/Parser;
    new-instance v1, Lcom/twitterapime/io/handler/json/HttpResponseCodeErrorJSONHandler;

    invoke-direct {v1}, Lcom/twitterapime/io/handler/json/HttpResponseCodeErrorJSONHandler;-><init>()V

    .line 99
    .local v1, "handler":Lcom/twitterapime/io/handler/json/HttpResponseCodeErrorJSONHandler;
    :try_start_0
    invoke-virtual {p0}, Lcom/twitterapime/io/HttpResponse;->getStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/twitterapime/parser/Parser;->parse(Ljava/io/InputStream;Lcom/twitterapime/parser/Handler;)V

    .line 101
    invoke-virtual {v1}, Lcom/twitterapime/io/handler/json/HttpResponseCodeErrorJSONHandler;->getMessage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 106
    .local v0, "errorMsg":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 103
    .end local v0    # "errorMsg":Ljava/lang/String;
    :catch_0
    move-exception v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HTTP ERROR CODE: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twitterapime/io/HttpResponse;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "errorMsg":Ljava/lang/String;
    goto :goto_0
.end method

.method public static perform(Lcom/twitterapime/io/HttpResponse;)V
    .locals 6
    .param p0, "response"    # Lcom/twitterapime/io/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/twitterapime/search/LimitExceededException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 55
    if-nez p0, :cond_0

    .line 56
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Response must not be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/twitterapime/io/HttpResponse;->getCode()I

    move-result v2

    .line 61
    .local v2, "respCode":I
    const/16 v5, 0xc8

    if-eq v2, v5, :cond_a

    const/16 v5, 0x130

    if-eq v2, v5, :cond_a

    .line 63
    const/16 v5, 0x194

    if-eq v2, v5, :cond_1

    const/16 v5, 0x196

    if-ne v2, v5, :cond_2

    :cond_1
    move v5, v3

    :goto_0
    if-eqz v5, :cond_3

    .line 64
    new-instance v3, Lcom/twitterapime/search/InvalidQueryException;

    invoke-static {p0}, Lcom/twitterapime/io/HttpResponseCodeInterpreter;->getErrorMessage(Lcom/twitterapime/io/HttpResponse;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/twitterapime/search/InvalidQueryException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    move v5, v4

    .line 63
    goto :goto_0

    .line 65
    :cond_3
    const/16 v5, 0x1ad

    if-eq v2, v5, :cond_4

    const/16 v5, 0x190

    if-eq v2, v5, :cond_4

    const/16 v5, 0x193

    if-eq v2, v5, :cond_4

    const/16 v5, 0x1a4

    if-ne v2, v5, :cond_6

    :cond_4
    move v5, v3

    :goto_1
    if-eqz v5, :cond_7

    .line 66
    invoke-static {p0}, Lcom/twitterapime/io/HttpResponseCodeInterpreter;->getErrorMessage(Lcom/twitterapime/io/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "emgs":Ljava/lang/String;
    const-string v3, "X-Rate-Limit-Reset"

    invoke-virtual {p0, v3}, Lcom/twitterapime/io/HttpResponse;->getResponseField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "raft":Ljava/lang/String;
    invoke-static {v1}, Lcom/twitterapime/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / Retry after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " secs."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    :cond_5
    new-instance v3, Lcom/twitterapime/search/LimitExceededException;

    invoke-direct {v3, v0}, Lcom/twitterapime/search/LimitExceededException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v0    # "emgs":Ljava/lang/String;
    .end local v1    # "raft":Ljava/lang/String;
    :cond_6
    move v5, v4

    .line 65
    goto :goto_1

    .line 74
    :cond_7
    const/16 v5, 0x191

    if-ne v2, v5, :cond_8

    :goto_2
    if-eqz v3, :cond_9

    .line 75
    new-instance v3, Ljava/lang/SecurityException;

    invoke-static {p0}, Lcom/twitterapime/io/HttpResponseCodeInterpreter;->getErrorMessage(Lcom/twitterapime/io/HttpResponse;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_8
    move v3, v4

    .line 74
    goto :goto_2

    .line 77
    :cond_9
    new-instance v3, Ljava/io/IOException;

    invoke-static {p0}, Lcom/twitterapime/io/HttpResponseCodeInterpreter;->getErrorMessage(Lcom/twitterapime/io/HttpResponse;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 80
    :cond_a
    return-void
.end method
