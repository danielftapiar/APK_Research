.class public Lcom/facebook/tools/dextr/bridge/upload/DextrUploadMethod;
.super Ljava/lang/Object;
.source "DextrUploadMethod.java"

# interfaces
.implements Lcom/facebook/http/protocol/ApiMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/http/protocol/ApiMethod",
        "<",
        "Ljava/io/File;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/io/File;)Lcom/facebook/http/protocol/ApiRequest;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 31
    new-instance v0, Lcom/facebook/http/protocol/ProgressDataStreamBody;

    const-string v1, "application/x-gzip"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/facebook/tools/dextr/bridge/upload/DextrUploadMethod$1;

    invoke-direct {v3, p0}, Lcom/facebook/tools/dextr/bridge/upload/DextrUploadMethod$1;-><init>(Lcom/facebook/tools/dextr/bridge/upload/DextrUploadMethod;)V

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/facebook/http/protocol/ProgressDataStreamBody;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/http/protocol/CountingOutputStreamWithProgress$ProgressListener;)V

    .line 40
    new-array v1, v6, [Lorg/apache/http/NameValuePair;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "type"

    const-string v4, "dextr"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 44
    new-instance v2, Lcom/facebook/http/entity/mime/apache/FormBodyPart;

    const-string v3, "file"

    invoke-direct {v2, v3, v0}, Lcom/facebook/http/entity/mime/apache/FormBodyPart;-><init>(Ljava/lang/String;Lcom/facebook/http/entity/mime/apache/content/ContentBody;)V

    .line 45
    new-instance v0, Lcom/facebook/http/protocol/ApiRequestBuilder;

    invoke-direct {v0}, Lcom/facebook/http/protocol/ApiRequestBuilder;-><init>()V

    const-string v3, "dextrUpload"

    invoke-virtual {v0, v3}, Lcom/facebook/http/protocol/ApiRequestBuilder;->a(Ljava/lang/String;)Lcom/facebook/http/protocol/ApiRequestBuilder;

    move-result-object v0

    const-string v3, "me/traces"

    invoke-virtual {v0, v3}, Lcom/facebook/http/protocol/ApiRequestBuilder;->d(Ljava/lang/String;)Lcom/facebook/http/protocol/ApiRequestBuilder;

    move-result-object v0

    const-string v3, "POST"

    invoke-virtual {v0, v3}, Lcom/facebook/http/protocol/ApiRequestBuilder;->c(Ljava/lang/String;)Lcom/facebook/http/protocol/ApiRequestBuilder;

    move-result-object v0

    sget-object v3, Lcom/facebook/http/protocol/ApiResponseType;->JSON:Lcom/facebook/http/protocol/ApiResponseType;

    invoke-virtual {v0, v3}, Lcom/facebook/http/protocol/ApiRequestBuilder;->a(Lcom/facebook/http/protocol/ApiResponseType;)Lcom/facebook/http/protocol/ApiRequestBuilder;

    move-result-object v0

    new-array v3, v6, [Lcom/facebook/http/entity/mime/apache/FormBodyPart;

    aput-object v2, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/http/protocol/ApiRequestBuilder;->b(Ljava/util/List;)Lcom/facebook/http/protocol/ApiRequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/http/protocol/ApiRequestBuilder;->a(Ljava/util/List;)Lcom/facebook/http/protocol/ApiRequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/http/protocol/ApiRequest$PostEntityType;->MULTI_PART_ENTITY:Lcom/facebook/http/protocol/ApiRequest$PostEntityType;

    invoke-virtual {v0, v1}, Lcom/facebook/http/protocol/ApiRequestBuilder;->a(Lcom/facebook/http/protocol/ApiRequest$PostEntityType;)Lcom/facebook/http/protocol/ApiRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/http/protocol/ApiRequestBuilder;->C()Lcom/facebook/http/protocol/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/facebook/http/protocol/ApiResponse;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0}, Lcom/facebook/http/protocol/ApiResponse;->i()V

    .line 59
    invoke-virtual {p0}, Lcom/facebook/http/protocol/ApiResponse;->c()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    .line 60
    invoke-virtual {p0}, Lcom/facebook/http/protocol/ApiResponse;->a()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    const-string v2, "success"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "success"

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->b(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lcom/facebook/http/protocol/ApiRequest;
    .locals 1

    .prologue
    .line 26
    check-cast p1, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/facebook/tools/dextr/bridge/upload/DextrUploadMethod;->a(Ljava/io/File;)Lcom/facebook/http/protocol/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lcom/facebook/http/protocol/ApiResponse;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-static {p2}, Lcom/facebook/tools/dextr/bridge/upload/DextrUploadMethod;->a(Lcom/facebook/http/protocol/ApiResponse;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
