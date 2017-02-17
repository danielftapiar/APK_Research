.class final Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$RequestTask;
.super Landroid/os/AsyncTask;
.source "FacebookConectActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcl/birdie/transantiagomaster/facebook/IFBCallback;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1320
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 1320
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$RequestTask;-><init>()V

    return-void
.end method

.method private static varargs doInBackground([Lcl/birdie/transantiagomaster/facebook/IFBCallback;)Ljava/lang/String;
    .locals 17
    .param p0, "origen"    # [Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    .line 1324
    sget-object v14, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    .line 1325
    const/4 v14, 0x0

    aget-object v0, p0, v14

    .line 1327
    .local v0, "callback":Lcl/birdie/transantiagomaster/facebook/IFBCallback;
    const-string v13, "http://api.transantiagomaster.cl/wall.php"

    .line 1328
    .local v13, "url":Ljava/lang/String;
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 1330
    .local v3, "httpclient":Lorg/apache/http/client/HttpClient;
    const/4 v10, 0x0

    .line 1332
    .local v10, "responseString":Ljava/lang/String;
    :try_start_0
    new-instance v14, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v14, v13}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v14}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 1333
    .local v9, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    .line 1334
    .local v11, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    const/16 v15, 0xc8

    if-ne v14, v15, :cond_0

    .line 1335
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1336
    .local v5, "out":Ljava/io/ByteArrayOutputStream;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v14

    invoke-interface {v14, v5}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 1337
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1338
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 1353
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1354
    .local v8, "posts":Ljava/util/List;, "Ljava/util/List<Lcl/birdie/transantiagomaster/facebook/models/PostModel;>;"
    sget-object v14, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    const-string v15, "GetPostsFromTM Callback"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1360
    .local v2, "graphResponse":Lorg/json/JSONObject;
    :try_start_2
    const-string v14, "wall.txt"

    invoke-static {v14, v10}, Lcl/birdie/transantiagomaster/utils/ArchivoTXT;->crear(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1372
    if-nez v10, :cond_1

    .line 1374
    sget-object v14, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    const-string v15, "RequestTask: Respuesta nula"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    new-instance v14, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v14}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    .line 1376
    const/4 v14, 0x0

    .line 1407
    .end local v2    # "graphResponse":Lorg/json/JSONObject;
    .end local v5    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "posts":Ljava/util/List;, "Ljava/util/List<Lcl/birdie/transantiagomaster/facebook/models/PostModel;>;"
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    .end local v11    # "statusLine":Lorg/apache/http/StatusLine;
    :goto_0
    return-object v14

    .line 1341
    .restart local v9    # "response":Lorg/apache/http/HttpResponse;
    .restart local v11    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_0
    :try_start_3
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 1342
    new-instance v14, Ljava/io/IOException;

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1345
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    .end local v11    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_0
    move-exception v14

    sget-object v14, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    const-string v15, "RequestTask: ClientProtocolException"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    new-instance v14, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;

    const/4 v15, 0x2

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v14}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    .line 1347
    const/4 v14, 0x0

    goto :goto_0

    .line 1349
    :catch_1
    move-exception v14

    sget-object v14, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    const-string v15, "RequestTask: IOException"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    new-instance v14, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;

    const/4 v15, 0x2

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v14}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    .line 1351
    const/4 v14, 0x0

    goto :goto_0

    .line 1361
    .restart local v2    # "graphResponse":Lorg/json/JSONObject;
    .restart local v5    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "posts":Ljava/util/List;, "Ljava/util/List<Lcl/birdie/transantiagomaster/facebook/models/PostModel;>;"
    .restart local v9    # "response":Lorg/apache/http/HttpResponse;
    .restart local v11    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_2
    move-exception v1

    .line 1362
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v14, "MURO"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "ERROR: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    new-instance v14, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;

    const/4 v15, 0x2

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v14}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1364
    const/4 v14, 0x0

    goto :goto_0

    .line 1368
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "graphResponse":Lorg/json/JSONObject;
    :catch_3
    move-exception v14

    sget-object v14, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    const-string v15, "RequestTask: Exception en graphResponse"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    new-instance v14, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;

    const/4 v15, 0x2

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v14}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    .line 1370
    const/4 v14, 0x0

    goto :goto_0

    .line 1378
    .restart local v2    # "graphResponse":Lorg/json/JSONObject;
    :cond_1
    :try_start_5
    const-string v14, "data"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v7

    .line 1390
    .local v7, "postArray":Lorg/json/JSONArray;
    :try_start_6
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v12

    .line 1391
    .local v12, "sz":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-lt v4, v12, :cond_2

    .line 1398
    sget-object v14, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    const-string v15, "RequestTask: finalizando OK"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    invoke-interface {v0, v8}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 1400
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1382
    .end local v4    # "i":I
    .end local v7    # "postArray":Lorg/json/JSONArray;
    .end local v12    # "sz":I
    :catch_4
    move-exception v1

    .line 1384
    .local v1, "e":Lorg/json/JSONException;
    sget-object v14, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "RequestTask: JSON error "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    new-instance v14, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;

    const/4 v15, 0x2

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v14}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    .line 1386
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1393
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v4    # "i":I
    .restart local v7    # "postArray":Lorg/json/JSONArray;
    .restart local v12    # "sz":I
    :cond_2
    :try_start_7
    new-instance v6, Lcl/birdie/transantiagomaster/facebook/models/PostModel;

    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    invoke-direct {v6, v14}, Lcl/birdie/transantiagomaster/facebook/models/PostModel;-><init>(Lorg/json/JSONObject;)V

    .line 1394
    .local v6, "p":Lcl/birdie/transantiagomaster/facebook/models/PostModel;
    iget-object v14, v6, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Message:Ljava/lang/String;

    if-eqz v14, :cond_3

    iget-object v14, v6, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Message:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_4

    :cond_3
    iget-object v14, v6, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Picture:Ljava/lang/String;

    if-eqz v14, :cond_5

    iget-object v14, v6, Lcl/birdie/transantiagomaster/facebook/models/PostModel;->Picture:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_5

    .line 1395
    :cond_4
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 1391
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1402
    .end local v4    # "i":I
    .end local v6    # "p":Lcl/birdie/transantiagomaster/facebook/models/PostModel;
    .end local v12    # "sz":I
    :catch_5
    move-exception v1

    .line 1404
    .local v1, "e":Ljava/lang/Exception;
    sget-object v14, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "RequestTask: excepci\u00f3n gen\u00e9rica "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1406
    new-instance v14, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;

    const/4 v15, 0x2

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$ErrorMessage;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v14}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    .line 1407
    const/4 v14, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method protected final bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    invoke-static {p1}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions$RequestTask;->doInBackground([Lcl/birdie/transantiagomaster/facebook/IFBCallback;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
