.class public final Lcom/twitterapime/io/handler/json/HttpResponseCodeErrorJSONHandler;
.super Lcom/twitterapime/parser/DefaultJSONHandler;
.source "HttpResponseCodeErrorJSONHandler.java"


# instance fields
.field private code:I

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "root"

    invoke-direct {p0, v0}, Lcom/twitterapime/parser/DefaultJSONHandler;-><init>(Ljava/lang/String;)V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/twitterapime/io/handler/json/HttpResponseCodeErrorJSONHandler;->code:I

    .line 47
    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/twitterapime/io/handler/json/HttpResponseCodeErrorJSONHandler;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final handle(Lcom/twitterapime/parser/JSONObject;)V
    .locals 2
    .param p1, "jsonObj"    # Lcom/twitterapime/parser/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twitterapime/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v1, p0, Lcom/twitterapime/io/handler/json/HttpResponseCodeErrorJSONHandler;->startKey:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/twitterapime/parser/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/twitterapime/parser/JSONObject;

    move-result-object p1

    .line 55
    const-string v1, "errors"

    invoke-interface {p1, v1}, Lcom/twitterapime/parser/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    const-string v1, "errors"

    invoke-interface {p1, v1}, Lcom/twitterapime/parser/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/twitterapime/parser/JSONArray;

    move-result-object v0

    .line 58
    .local v0, "errors":Lcom/twitterapime/parser/JSONArray;
    invoke-interface {v0}, Lcom/twitterapime/parser/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 59
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/twitterapime/parser/JSONArray;->getJSONObject(I)Lcom/twitterapime/parser/JSONObject;

    move-result-object p1

    .line 61
    const-string v1, "code"

    invoke-interface {p1, v1}, Lcom/twitterapime/parser/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const-string v1, "code"

    invoke-interface {p1, v1}, Lcom/twitterapime/parser/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/twitterapime/io/handler/json/HttpResponseCodeErrorJSONHandler;->code:I

    .line 64
    :cond_0
    const-string v1, "message"

    invoke-interface {p1, v1}, Lcom/twitterapime/parser/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    const-string v1, "message"

    invoke-interface {p1, v1}, Lcom/twitterapime/parser/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitterapime/io/handler/json/HttpResponseCodeErrorJSONHandler;->message:Ljava/lang/String;

    .line 69
    .end local v0    # "errors":Lcom/twitterapime/parser/JSONArray;
    :cond_1
    return-void
.end method
