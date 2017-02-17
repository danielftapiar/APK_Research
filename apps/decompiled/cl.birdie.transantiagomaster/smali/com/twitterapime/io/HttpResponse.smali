.class public final Lcom/twitterapime/io/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# instance fields
.field private body:Ljava/lang/String;

.field private code:I

.field private conn:Lcom/twitterapime/io/HttpConnection;

.field private stream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/twitterapime/io/HttpConnection;)V
    .locals 1
    .param p1, "conn"    # Lcom/twitterapime/io/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/twitterapime/io/HttpResponse;->conn:Lcom/twitterapime/io/HttpConnection;

    .line 62
    invoke-interface {p1}, Lcom/twitterapime/io/HttpConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/twitterapime/io/HttpResponse;->code:I

    .line 63
    invoke-interface {p1}, Lcom/twitterapime/io/HttpConnection;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/twitterapime/io/HttpResponse;->stream:Ljava/io/InputStream;

    .line 64
    return-void
.end method

.method private static parseBody(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x400

    .line 129
    if-nez p0, :cond_0

    .line 130
    const/4 v4, 0x0

    .line 141
    :goto_0
    return-object v4

    .line 133
    :cond_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 134
    .local v3, "out":Ljava/io/ByteArrayOutputStream;
    new-array v0, v4, [B

    .line 136
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "n":I
    if-lez v2, :cond_1

    .line 137
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 141
    :cond_1
    :try_start_0
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public final getBodyContent()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/twitterapime/io/HttpResponse;->body:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitterapime/io/HttpResponse;->body:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitterapime/io/HttpResponse;->stream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/twitterapime/io/HttpResponse;->parseBody(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitterapime/io/HttpResponse;->body:Ljava/lang/String;

    goto :goto_0
.end method

.method public final getCode()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/twitterapime/io/HttpResponse;->code:I

    return v0
.end method

.method public final getResponseField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/twitterapime/io/HttpResponse;->conn:Lcom/twitterapime/io/HttpConnection;

    invoke-interface {v0, p1}, Lcom/twitterapime/io/HttpConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/twitterapime/io/HttpResponse;->stream:Ljava/io/InputStream;

    return-object v0
.end method
