.class public final Limpl/javame/com/twitterapime/parser/JSONOrgParser;
.super Lcom/twitterapime/parser/Parser;
.source "JSONOrgParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/twitterapime/parser/Parser;-><init>()V

    return-void
.end method

.method private static streamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 68
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "c":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 69
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 72
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 74
    .local v1, "json":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "{\"root\": "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 76
    return-object v3
.end method


# virtual methods
.method public final parse(Ljava/io/InputStream;Lcom/twitterapime/parser/Handler;)V
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "handler"    # Lcom/twitterapime/parser/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/twitterapime/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 37
    instance-of v4, p2, Lcom/twitterapime/parser/JSONHandler;

    if-nez v4, :cond_0

    .line 38
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Handler object must implement JSONHandler."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 43
    :cond_0
    :try_start_0
    move-object v0, p2

    check-cast v0, Lcom/twitterapime/parser/JSONHandler;

    move-object v2, v0

    .line 44
    .local v2, "hdlr":Lcom/twitterapime/parser/JSONHandler;
    new-instance v3, Lorg/json/me/JSONObject;

    invoke-static {p1}, Limpl/javame/com/twitterapime/parser/JSONOrgParser;->streamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/me/JSONObject;-><init>(Ljava/lang/String;)V

    .line 46
    .local v3, "outer":Lorg/json/me/JSONObject;
    new-instance v4, Limpl/javame/com/twitterapime/parser/JSONOrgObject;

    invoke-direct {v4, v3}, Limpl/javame/com/twitterapime/parser/JSONOrgObject;-><init>(Lorg/json/me/JSONObject;)V

    invoke-interface {v2, v4}, Lcom/twitterapime/parser/JSONHandler;->handle(Lcom/twitterapime/parser/JSONObject;)V
    :try_end_0
    .catch Lcom/twitterapime/parser/ParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/me/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 53
    return-void

    .line 47
    .end local v2    # "hdlr":Lcom/twitterapime/parser/JSONHandler;
    .end local v3    # "outer":Lorg/json/me/JSONObject;
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Lcom/twitterapime/parser/ParserException;
    new-instance v4, Lcom/twitterapime/parser/ParserException;

    invoke-virtual {v1}, Lcom/twitterapime/parser/ParserException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/twitterapime/parser/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 49
    .end local v1    # "e":Lcom/twitterapime/parser/ParserException;
    :catch_1
    move-exception v1

    .line 50
    .local v1, "e":Lorg/json/me/JSONException;
    new-instance v4, Lcom/twitterapime/parser/ParserException;

    invoke-virtual {v1}, Lorg/json/me/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/twitterapime/parser/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 51
    .end local v1    # "e":Lorg/json/me/JSONException;
    :catch_2
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/twitterapime/parser/ParserException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/twitterapime/parser/ParserException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
