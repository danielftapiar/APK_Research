.class public Lcom/facebook/Response;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/Response$PagedResults;,
        Lcom/facebook/Response$PagingDirection;,
        Lcom/facebook/Response$PagingInfo;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BODY_KEY:Ljava/lang/String; = "body"

.field private static final CODE_KEY:Ljava/lang/String; = "code"

.field private static final INVALID_SESSION_FACEBOOK_ERROR_CODE:I = 0xbe

.field public static final NON_JSON_RESPONSE_PROPERTY:Ljava/lang/String; = "FACEBOOK_NON_JSON_RESULT"

.field private static final RESPONSE_CACHE_TAG:Ljava/lang/String; = "ResponseCache"

.field private static final RESPONSE_LOG_TAG:Ljava/lang/String; = "Response"

.field private static responseCache:Lcom/facebook/internal/FileLruCache;


# instance fields
.field private final connection:Ljava/net/HttpURLConnection;

.field private final error:Lcom/facebook/FacebookRequestError;

.field private final graphObject:Lcom/facebook/model/GraphObject;

.field private final graphObjectList:Lcom/facebook/model/GraphObjectList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/model/GraphObjectList",
            "<",
            "Lcom/facebook/model/GraphObject;",
            ">;"
        }
    .end annotation
.end field

.field private final isFromCache:Z

.field private final rawResponse:Ljava/lang/String;

.field private final request:Lcom/facebook/Request;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/facebook/Response;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/Response;->$assertionsDisabled:Z

    .line 63
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V
    .locals 8
    .param p1, "request"    # Lcom/facebook/Request;
    .param p2, "connection"    # Ljava/net/HttpURLConnection;
    .param p3, "error"    # Lcom/facebook/FacebookRequestError;

    .prologue
    const/4 v3, 0x0

    .line 75
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/model/GraphObjectList;ZLcom/facebook/FacebookRequestError;)V

    .line 76
    return-void
.end method

.method constructor <init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/model/GraphObjectList;ZLcom/facebook/FacebookRequestError;)V
    .locals 0
    .param p1, "request"    # Lcom/facebook/Request;
    .param p2, "connection"    # Ljava/net/HttpURLConnection;
    .param p3, "rawResponse"    # Ljava/lang/String;
    .param p4, "graphObject"    # Lcom/facebook/model/GraphObject;
    .param p6, "isFromCache"    # Z
    .param p7, "error"    # Lcom/facebook/FacebookRequestError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/Request;",
            "Ljava/net/HttpURLConnection;",
            "Ljava/lang/String;",
            "Lcom/facebook/model/GraphObject;",
            "Lcom/facebook/model/GraphObjectList",
            "<",
            "Lcom/facebook/model/GraphObject;",
            ">;Z",
            "Lcom/facebook/FacebookRequestError;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    .local p5, "graphObjects":Lcom/facebook/model/GraphObjectList;, "Lcom/facebook/model/GraphObjectList<Lcom/facebook/model/GraphObject;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/facebook/Response;->request:Lcom/facebook/Request;

    .line 80
    iput-object p2, p0, Lcom/facebook/Response;->connection:Ljava/net/HttpURLConnection;

    .line 81
    iput-object p3, p0, Lcom/facebook/Response;->rawResponse:Ljava/lang/String;

    .line 82
    iput-object p4, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/model/GraphObject;

    .line 83
    iput-object p5, p0, Lcom/facebook/Response;->graphObjectList:Lcom/facebook/model/GraphObjectList;

    .line 84
    iput-boolean p6, p0, Lcom/facebook/Response;->isFromCache:Z

    .line 85
    iput-object p7, p0, Lcom/facebook/Response;->error:Lcom/facebook/FacebookRequestError;

    .line 86
    return-void
.end method

.method constructor <init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/model/GraphObject;Z)V
    .locals 8
    .param p1, "request"    # Lcom/facebook/Request;
    .param p2, "connection"    # Ljava/net/HttpURLConnection;
    .param p3, "rawResponse"    # Ljava/lang/String;
    .param p4, "graphObject"    # Lcom/facebook/model/GraphObject;
    .param p5, "isFromCache"    # Z

    .prologue
    const/4 v5, 0x0

    .line 66
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/model/GraphObjectList;ZLcom/facebook/FacebookRequestError;)V

    .line 67
    return-void
.end method

.method constructor <init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/model/GraphObjectList;Z)V
    .locals 8
    .param p1, "request"    # Lcom/facebook/Request;
    .param p2, "connection"    # Ljava/net/HttpURLConnection;
    .param p3, "rawResponse"    # Ljava/lang/String;
    .param p5, "isFromCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/Request;",
            "Ljava/net/HttpURLConnection;",
            "Ljava/lang/String;",
            "Lcom/facebook/model/GraphObjectList",
            "<",
            "Lcom/facebook/model/GraphObject;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p4, "graphObjects":Lcom/facebook/model/GraphObjectList;, "Lcom/facebook/model/GraphObjectList<Lcom/facebook/model/GraphObject;>;"
    const/4 v4, 0x0

    .line 71
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/model/GraphObjectList;ZLcom/facebook/FacebookRequestError;)V

    .line 72
    return-void
.end method

.method static constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
    .locals 6
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "error"    # Lcom/facebook/FacebookException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Request;",
            ">;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/FacebookException;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 453
    .local p0, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/Request;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 454
    .local v0, "count":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 455
    .local v3, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/Response;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 459
    return-object v3

    .line 456
    :cond_0
    new-instance v2, Lcom/facebook/Response;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/Request;

    new-instance v5, Lcom/facebook/FacebookRequestError;

    invoke-direct {v5, p1, p2}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v2, v4, p1, v5}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    .line 457
    .local v2, "response":Lcom/facebook/Response;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static createResponseFromObject(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/Object;ZLjava/lang/Object;)Lcom/facebook/Response;
    .locals 23
    .param p0, "request"    # Lcom/facebook/Request;
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "isFromCache"    # Z
    .param p4, "originalResult"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 414
    move-object/from16 v0, p2

    instance-of v3, v0, Lorg/json/JSONObject;

    if-eqz v3, :cond_4

    move-object/from16 v21, p2

    .line 415
    check-cast v21, Lorg/json/JSONObject;

    .line 418
    .local v21, "jsonObject":Lorg/json/JSONObject;
    move-object/from16 v0, v21

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/facebook/FacebookRequestError;->checkResponseAndCreateError(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)Lcom/facebook/FacebookRequestError;

    move-result-object v20

    .line 419
    .local v20, "error":Lcom/facebook/FacebookRequestError;
    if-eqz v20, :cond_1

    .line 420
    invoke-virtual/range {v20 .. v20}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v3

    const/16 v4, 0xbe

    if-ne v3, v4, :cond_0

    .line 421
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/Request;->getSession()Lcom/facebook/Session;

    move-result-object v22

    .line 422
    .local v22, "session":Lcom/facebook/Session;
    if-eqz v22, :cond_0

    .line 423
    invoke-virtual/range {v22 .. v22}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 426
    .end local v22    # "session":Lcom/facebook/Session;
    :cond_0
    new-instance v3, Lcom/facebook/Response;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v3, v0, v1, v2}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    .line 444
    .end local v20    # "error":Lcom/facebook/FacebookRequestError;
    .end local v21    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 429
    .restart local v20    # "error":Lcom/facebook/FacebookRequestError;
    .restart local v21    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    const-string v3, "body"

    const-string v4, "FACEBOOK_NON_JSON_RESULT"

    move-object/from16 v0, v21

    invoke-static {v0, v3, v4}, Lcom/facebook/internal/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    .line 431
    .local v19, "body":Ljava/lang/Object;
    move-object/from16 v0, v19

    instance-of v3, v0, Lorg/json/JSONObject;

    if-eqz v3, :cond_2

    move-object/from16 v3, v19

    .line 432
    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/facebook/model/GraphObject$Factory;->create(Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;

    move-result-object v7

    .line 433
    .local v7, "graphObject":Lcom/facebook/model/GraphObject;
    new-instance v3, Lcom/facebook/Response;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/model/GraphObject;Z)V

    goto :goto_0

    .line 434
    .end local v7    # "graphObject":Lcom/facebook/model/GraphObject;
    :cond_2
    move-object/from16 v0, v19

    instance-of v3, v0, Lorg/json/JSONArray;

    if-eqz v3, :cond_3

    move-object/from16 v3, v19

    .line 436
    check-cast v3, Lorg/json/JSONArray;

    const-class v4, Lcom/facebook/model/GraphObject;

    .line 435
    invoke-static {v3, v4}, Lcom/facebook/model/GraphObject$Factory;->createList(Lorg/json/JSONArray;Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;

    move-result-object v12

    .line 437
    .local v12, "graphObjectList":Lcom/facebook/model/GraphObjectList;, "Lcom/facebook/model/GraphObjectList<Lcom/facebook/model/GraphObject;>;"
    new-instance v8, Lcom/facebook/Response;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v13, p3

    invoke-direct/range {v8 .. v13}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/model/GraphObjectList;Z)V

    move-object v3, v8

    goto :goto_0

    .line 440
    .end local v12    # "graphObjectList":Lcom/facebook/model/GraphObjectList;, "Lcom/facebook/model/GraphObjectList<Lcom/facebook/model/GraphObject;>;"
    :cond_3
    sget-object p2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 443
    .end local v19    # "body":Ljava/lang/Object;
    .end local v20    # "error":Lcom/facebook/FacebookRequestError;
    .end local v21    # "jsonObject":Lorg/json/JSONObject;
    :cond_4
    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_5

    .line 444
    new-instance v13, Lcom/facebook/Response;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move/from16 v18, p3

    invoke-direct/range {v13 .. v18}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/model/GraphObject;Z)V

    move-object v3, v13

    goto :goto_0

    .line 446
    :cond_5
    new-instance v3, Lcom/facebook/FacebookException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got unexpected object type in response, class: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 447
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 446
    invoke-direct {v3, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static createResponsesFromObject(Ljava/net/HttpURLConnection;Ljava/util/List;Ljava/lang/Object;Z)Ljava/util/List;
    .locals 12
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "isFromCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Request;",
            ">;",
            "Ljava/lang/Object;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 361
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/Request;>;"
    sget-boolean v10, Lcom/facebook/Response;->$assertionsDisabled:Z

    if-nez v10, :cond_0

    if-nez p0, :cond_0

    if-nez p3, :cond_0

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 363
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 364
    .local v4, "numRequests":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 365
    .local v9, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/Response;>;"
    move-object v6, p2

    .line 367
    .local v6, "originalResult":Ljava/lang/Object;
    const/4 v10, 0x1

    if-ne v4, v10, :cond_1

    .line 368
    const/4 v10, 0x0

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/Request;

    .line 373
    .local v7, "request":Lcom/facebook/Request;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 374
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v10, "body"

    invoke-virtual {v3, v10, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 375
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 376
    .local v8, "responseCode":I
    :goto_0
    const-string v10, "code"

    invoke-virtual {v3, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 378
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 379
    .local v2, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 382
    move-object p2, v2

    .line 390
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v7    # "request":Lcom/facebook/Request;
    .end local v8    # "responseCode":I
    .end local p2    # "object":Ljava/lang/Object;
    :cond_1
    :goto_1
    instance-of v10, p2, Lorg/json/JSONArray;

    if-eqz v10, :cond_2

    move-object v10, p2

    check-cast v10, Lorg/json/JSONArray;

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-eq v10, v4, :cond_4

    .line 391
    :cond_2
    new-instance v10, Lcom/facebook/FacebookException;

    const-string v11, "Unexpected number of results"

    invoke-direct {v10, v11}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 392
    throw v10

    .line 375
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v7    # "request":Lcom/facebook/Request;
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_3
    const/16 v8, 0xc8

    goto :goto_0

    .line 383
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Lorg/json/JSONException;
    new-instance v10, Lcom/facebook/Response;

    new-instance v11, Lcom/facebook/FacebookRequestError;

    invoke-direct {v11, p0, v0}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v10, v7, p0, v11}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 385
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 386
    .local v0, "e":Ljava/io/IOException;
    new-instance v10, Lcom/facebook/Response;

    new-instance v11, Lcom/facebook/FacebookRequestError;

    invoke-direct {v11, p0, v0}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v10, v7, p0, v11}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "e":Ljava/io/IOException;
    .end local v7    # "request":Lcom/facebook/Request;
    .end local p2    # "object":Ljava/lang/Object;
    :cond_4
    move-object v2, p2

    .line 395
    check-cast v2, Lorg/json/JSONArray;

    .line 397
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v1, v10, :cond_5

    .line 409
    return-object v9

    .line 398
    :cond_5
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/Request;

    .line 400
    .restart local v7    # "request":Lcom/facebook/Request;
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 401
    .local v5, "obj":Ljava/lang/Object;
    invoke-static {v7, p0, v5, p3, v6}, Lcom/facebook/Response;->createResponseFromObject(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/Object;ZLjava/lang/Object;)Lcom/facebook/Response;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/facebook/FacebookException; {:try_start_1 .. :try_end_1} :catch_3

    .line 397
    .end local v5    # "obj":Ljava/lang/Object;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 402
    :catch_2
    move-exception v0

    .line 403
    .local v0, "e":Lorg/json/JSONException;
    new-instance v10, Lcom/facebook/Response;

    new-instance v11, Lcom/facebook/FacebookRequestError;

    invoke-direct {v11, p0, v0}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v10, v7, p0, v11}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 404
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v0

    .line 405
    .local v0, "e":Lcom/facebook/FacebookException;
    new-instance v10, Lcom/facebook/Response;

    new-instance v11, Lcom/facebook/FacebookRequestError;

    invoke-direct {v11, p0, v0}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v10, v7, p0, v11}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method static createResponsesFromStream(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;Z)Ljava/util/List;
    .locals 7
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "requests"    # Lcom/facebook/RequestBatch;
    .param p3, "isFromCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/RequestBatch;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    invoke-static {p0}, Lcom/facebook/internal/Utility;->readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "responseString":Ljava/lang/String;
    sget-object v1, Lcom/facebook/LoggingBehavior;->INCLUDE_RAW_RESPONSES:Lcom/facebook/LoggingBehavior;

    const-string v2, "Response"

    .line 341
    const-string v3, "Response (raw)\n  Size: %d\n  Response:\n%s\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 342
    aput-object v0, v4, v5

    .line 340
    invoke-static {v1, v2, v3, v4}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    invoke-static {v0, p1, p2, p3}, Lcom/facebook/Response;->createResponsesFromString(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;Z)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method static createResponsesFromString(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;Z)Ljava/util/List;
    .locals 8
    .param p0, "responseString"    # Ljava/lang/String;
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "requests"    # Lcom/facebook/RequestBatch;
    .param p3, "isFromCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/RequestBatch;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    .line 352
    .local v1, "resultObject":Ljava/lang/Object;
    invoke-static {p1, p2, v1, p3}, Lcom/facebook/Response;->createResponsesFromObject(Ljava/net/HttpURLConnection;Ljava/util/List;Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v0

    .line 353
    .local v0, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/Response;>;"
    sget-object v2, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const-string v3, "Response"

    const-string v4, "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 354
    invoke-virtual {p2}, Lcom/facebook/RequestBatch;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v0, v5, v6

    .line 353
    invoke-static {v2, v3, v4, v5}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    return-object v0
.end method

.method static fromHttpConnection(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Ljava/util/List;
    .locals 12
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .param p1, "requests"    # Lcom/facebook/RequestBatch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/RequestBatch;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 270
    const/4 v6, 0x0

    .line 272
    .local v6, "stream":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 273
    .local v0, "cache":Lcom/facebook/internal/FileLruCache;
    const/4 v1, 0x0

    .line 274
    .local v1, "cacheKey":Ljava/lang/String;
    instance-of v7, p1, Lcom/facebook/internal/CacheableRequestBatch;

    if-eqz v7, :cond_2

    move-object v2, p1

    .line 275
    check-cast v2, Lcom/facebook/internal/CacheableRequestBatch;

    .line 276
    .local v2, "cacheableRequestBatch":Lcom/facebook/internal/CacheableRequestBatch;
    invoke-static {}, Lcom/facebook/Response;->getResponseCache()Lcom/facebook/internal/FileLruCache;

    move-result-object v0

    .line 277
    invoke-virtual {v2}, Lcom/facebook/internal/CacheableRequestBatch;->getCacheKeyOverride()Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 279
    invoke-virtual {p1}, Lcom/facebook/RequestBatch;->size()I

    move-result v7

    if-ne v7, v9, :cond_1

    .line 281
    invoke-virtual {p1, v8}, Lcom/facebook/RequestBatch;->get(I)Lcom/facebook/Request;

    move-result-object v7

    invoke-virtual {v7}, Lcom/facebook/Request;->getUrlForSingleRequest()Ljava/lang/String;

    move-result-object v1

    .line 289
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/facebook/internal/CacheableRequestBatch;->getForceRoundTrip()Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v0, :cond_2

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 291
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/facebook/internal/FileLruCache;->get(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 292
    if-eqz v6, :cond_4

    .line 293
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v6, v7, p1, v8}, Lcom/facebook/Response;->createResponsesFromStream(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;Z)Ljava/util/List;
    :try_end_0
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 299
    invoke-static {v6}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 330
    .end local v2    # "cacheableRequestBatch":Lcom/facebook/internal/CacheableRequestBatch;
    :goto_1
    return-object v7

    .line 283
    .restart local v2    # "cacheableRequestBatch":Lcom/facebook/internal/CacheableRequestBatch;
    :cond_1
    sget-object v7, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const-string v8, "ResponseCache"

    .line 284
    const-string v9, "Not using cache for cacheable request because no key was specified"

    .line 283
    invoke-static {v7, v8, v9}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :catch_0
    move-exception v7

    invoke-static {v6}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 306
    .end local v2    # "cacheableRequestBatch":Lcom/facebook/internal/CacheableRequestBatch;
    :cond_2
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0x190

    if-lt v7, v8, :cond_5

    .line 307
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    .line 318
    :cond_3
    :goto_3
    const/4 v7, 0x0

    invoke-static {v6, p0, p1, v7}, Lcom/facebook/Response;->createResponsesFromStream(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;Z)Ljava/util/List;
    :try_end_1
    .catch Lcom/facebook/FacebookException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v7

    .line 332
    invoke-static {v6}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    .line 299
    .restart local v2    # "cacheableRequestBatch":Lcom/facebook/internal/CacheableRequestBatch;
    :catch_1
    move-exception v7

    invoke-static {v6}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :catch_2
    move-exception v7

    invoke-static {v6}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    .line 298
    :catchall_0
    move-exception v7

    .line 299
    invoke-static {v6}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 300
    throw v7

    .line 299
    :cond_4
    invoke-static {v6}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    .line 309
    .end local v2    # "cacheableRequestBatch":Lcom/facebook/internal/CacheableRequestBatch;
    :cond_5
    :try_start_2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 310
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-eqz v6, :cond_3

    .line 311
    invoke-virtual {v0, v1, v6}, Lcom/facebook/internal/FileLruCache;->interceptAndPut(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_2
    .catch Lcom/facebook/FacebookException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v5

    .line 312
    .local v5, "interceptStream":Ljava/io/InputStream;
    if-eqz v5, :cond_3

    .line 313
    move-object v6, v5

    goto :goto_3

    .line 319
    .end local v5    # "interceptStream":Ljava/io/InputStream;
    :catch_3
    move-exception v4

    .line 320
    .local v4, "facebookException":Lcom/facebook/FacebookException;
    :try_start_3
    sget-object v7, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const-string v8, "Response"

    const-string v9, "Response <Error>: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    invoke-static {v7, v8, v9, v10}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    invoke-static {p1, p0, v4}, Lcom/facebook/Response;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v7

    .line 332
    invoke-static {v6}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    .line 322
    .end local v4    # "facebookException":Lcom/facebook/FacebookException;
    :catch_4
    move-exception v3

    .line 323
    .local v3, "exception":Lorg/json/JSONException;
    :try_start_4
    sget-object v7, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const-string v8, "Response"

    const-string v9, "Response <Error>: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-static {v7, v8, v9, v10}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    new-instance v7, Lcom/facebook/FacebookException;

    invoke-direct {v7, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1, p0, v7}, Lcom/facebook/Response;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v7

    .line 332
    invoke-static {v6}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    .line 325
    .end local v3    # "exception":Lorg/json/JSONException;
    :catch_5
    move-exception v3

    .line 326
    .local v3, "exception":Ljava/io/IOException;
    :try_start_5
    sget-object v7, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const-string v8, "Response"

    const-string v9, "Response <Error>: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-static {v7, v8, v9, v10}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    new-instance v7, Lcom/facebook/FacebookException;

    invoke-direct {v7, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1, p0, v7}, Lcom/facebook/Response;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v7

    .line 332
    invoke-static {v6}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_1

    .line 328
    .end local v3    # "exception":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 329
    .local v3, "exception":Ljava/lang/SecurityException;
    :try_start_6
    sget-object v7, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const-string v8, "Response"

    const-string v9, "Response <Error>: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-static {v7, v8, v9, v10}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    new-instance v7, Lcom/facebook/FacebookException;

    invoke-direct {v7, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1, p0, v7}, Lcom/facebook/Response;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v7

    .line 332
    invoke-static {v6}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_1

    .line 331
    .end local v3    # "exception":Ljava/lang/SecurityException;
    :catchall_1
    move-exception v7

    .line 332
    invoke-static {v6}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 333
    throw v7
.end method

.method static getResponseCache()Lcom/facebook/internal/FileLruCache;
    .locals 4

    .prologue
    .line 258
    sget-object v1, Lcom/facebook/Response;->responseCache:Lcom/facebook/internal/FileLruCache;

    if-nez v1, :cond_0

    .line 259
    invoke-static {}, Lcom/facebook/Session;->getStaticContext()Landroid/content/Context;

    move-result-object v0

    .line 260
    .local v0, "applicationContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 261
    new-instance v1, Lcom/facebook/internal/FileLruCache;

    const-string v2, "ResponseCache"

    new-instance v3, Lcom/facebook/internal/FileLruCache$Limits;

    invoke-direct {v3}, Lcom/facebook/internal/FileLruCache$Limits;-><init>()V

    invoke-direct {v1, v0, v2, v3}, Lcom/facebook/internal/FileLruCache;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/internal/FileLruCache$Limits;)V

    sput-object v1, Lcom/facebook/Response;->responseCache:Lcom/facebook/internal/FileLruCache;

    .line 265
    :cond_0
    sget-object v1, Lcom/facebook/Response;->responseCache:Lcom/facebook/internal/FileLruCache;

    return-object v1
.end method


# virtual methods
.method public final getConnection()Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/facebook/Response;->connection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public final getError()Lcom/facebook/FacebookRequestError;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/facebook/Response;->error:Lcom/facebook/FacebookRequestError;

    return-object v0
.end method

.method public final getGraphObject()Lcom/facebook/model/GraphObject;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/model/GraphObject;

    return-object v0
.end method

.method public final getGraphObjectAs(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/GraphObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/model/GraphObject;

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 120
    :goto_0
    return-object v0

    .line 117
    :cond_0
    if-nez p1, :cond_1

    .line 118
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Must pass in a valid interface that extends GraphObject"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/model/GraphObject;

    invoke-interface {v0, p1}, Lcom/facebook/model/GraphObject;->cast(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object v0

    goto :goto_0
.end method

.method public final getGraphObjectList()Lcom/facebook/model/GraphObjectList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/model/GraphObjectList",
            "<",
            "Lcom/facebook/model/GraphObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/facebook/Response;->graphObjectList:Lcom/facebook/model/GraphObjectList;

    return-object v0
.end method

.method public final getGraphObjectListAs(Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/GraphObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/facebook/model/GraphObjectList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/facebook/Response;->graphObjectList:Lcom/facebook/model/GraphObjectList;

    if-nez v0, :cond_0

    .line 141
    const/4 v0, 0x0

    .line 143
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/Response;->graphObjectList:Lcom/facebook/model/GraphObjectList;

    invoke-interface {v0, p1}, Lcom/facebook/model/GraphObjectList;->castToListOf(Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;

    move-result-object v0

    goto :goto_0
.end method

.method public final getIsFromCache()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/facebook/Response;->isFromCache:Z

    return v0
.end method

.method public getRawResponse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/facebook/Response;->rawResponse:Ljava/lang/String;

    return-object v0
.end method

.method public getRequest()Lcom/facebook/Request;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/facebook/Response;->request:Lcom/facebook/Request;

    return-object v0
.end method

.method public getRequestForPagedResults(Lcom/facebook/Response$PagingDirection;)Lcom/facebook/Request;
    .locals 6
    .param p1, "direction"    # Lcom/facebook/Response$PagingDirection;

    .prologue
    const/4 v4, 0x0

    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "link":Ljava/lang/String;
    iget-object v3, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/model/GraphObject;

    if-eqz v3, :cond_0

    .line 200
    iget-object v3, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/model/GraphObject;

    const-class v5, Lcom/facebook/Response$PagedResults;

    invoke-interface {v3, v5}, Lcom/facebook/model/GraphObject;->cast(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object v3

    check-cast v3, Lcom/facebook/Response$PagedResults;

    .line 201
    invoke-interface {v3}, Lcom/facebook/Response$PagedResults;->getPaging()Lcom/facebook/Response$PagingInfo;

    move-result-object v1

    .line 202
    .local v1, "pagingInfo":Lcom/facebook/Response$PagingInfo;
    if-eqz v1, :cond_0

    .line 203
    sget-object v3, Lcom/facebook/Response$PagingDirection;->NEXT:Lcom/facebook/Response$PagingDirection;

    if-ne p1, v3, :cond_1

    .line 204
    invoke-interface {v1}, Lcom/facebook/Response$PagingInfo;->getNext()Ljava/lang/String;

    move-result-object v0

    .line 210
    .end local v1    # "pagingInfo":Lcom/facebook/Response$PagingInfo;
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v2, v4

    .line 227
    :goto_1
    return-object v2

    .line 206
    .restart local v1    # "pagingInfo":Lcom/facebook/Response$PagingInfo;
    :cond_1
    invoke-interface {v1}, Lcom/facebook/Response$PagingInfo;->getPrevious()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 214
    .end local v1    # "pagingInfo":Lcom/facebook/Response$PagingInfo;
    :cond_2
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/facebook/Response;->request:Lcom/facebook/Request;

    invoke-virtual {v3}, Lcom/facebook/Request;->getUrlForSingleRequest()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v2, v4

    .line 217
    goto :goto_1

    .line 222
    :cond_3
    :try_start_0
    new-instance v2, Lcom/facebook/Request;

    iget-object v3, p0, Lcom/facebook/Response;->request:Lcom/facebook/Request;

    invoke-virtual {v3}, Lcom/facebook/Request;->getSession()Lcom/facebook/Session;

    move-result-object v3

    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .local v2, "pagingRequest":Lcom/facebook/Request;
    goto :goto_1

    .line 224
    .end local v2    # "pagingRequest":Lcom/facebook/Request;
    :catch_0
    move-exception v3

    move-object v2, v4

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 237
    :try_start_0
    const-string v2, "%d"

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/facebook/Response;->connection:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/Response;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 242
    .local v0, "responseCode":Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{Response:  responseCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 243
    const-string v2, ", graphObject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/model/GraphObject;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/Response;->error:Lcom/facebook/FacebookRequestError;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 244
    const-string v2, ", isFromCache:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/facebook/Response;->isFromCache:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 245
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 242
    return-object v1

    .line 237
    .end local v0    # "responseCode":Ljava/lang/String;
    :cond_0
    const/16 v1, 0xc8

    goto :goto_0

    .line 239
    :catch_0
    move-exception v1

    const-string v0, "unknown"

    .restart local v0    # "responseCode":Ljava/lang/String;
    goto :goto_1
.end method
