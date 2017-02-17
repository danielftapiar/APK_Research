.class public final Lnet/veritran/android/implementation/HttpsConnection;
.super Ljava/lang/Object;
.source "HttpsConnection.java"

# interfaces
.implements Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;


# static fields
.field private static final HTTP_200:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "net.veritran.android.connection"


# instance fields
.field private CONNECTION_TIMEOUT:I

.field private SO_TIMEOUT:I

.field private URL:Ljava/lang/String;

.field private commandMessage:Ljava/lang/String;

.field private connListener:Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionListener;

.field private httpClient:Lorg/apache/http/client/HttpClient;

.field private httpResponse:Lorg/apache/http/HttpResponse;

.field private sb:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "gateway"    # Ljava/lang/String;
    .param p3, "connectionTimeout"    # I

    .prologue
    const v0, 0xea60

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v0, p0, Lnet/veritran/android/implementation/HttpsConnection;->CONNECTION_TIMEOUT:I

    .line 44
    iput v0, p0, Lnet/veritran/android/implementation/HttpsConnection;->SO_TIMEOUT:I

    .line 59
    iput-object p1, p0, Lnet/veritran/android/implementation/HttpsConnection;->commandMessage:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lnet/veritran/android/implementation/HttpsConnection;->URL:Ljava/lang/String;

    .line 62
    if-lez p3, :cond_0

    .line 64
    invoke-virtual {p0, p3}, Lnet/veritran/android/implementation/HttpsConnection;->setTimeout(I)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/Model;->getConnectionTimeout()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/veritran/android/implementation/HttpsConnection;->setTimeout(I)V

    goto :goto_0
.end method

.method private handleErrorResponse(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "errorText"    # Ljava/lang/String;

    .prologue
    .line 339
    iget-object v0, p0, Lnet/veritran/android/implementation/HttpsConnection;->connListener:Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionListener;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lnet/veritran/android/implementation/HttpsConnection;->connListener:Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionListener;

    invoke-interface {v0, p0, p1, p2}, Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionListener;->handleError(Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;ILjava/lang/String;)V

    .line 343
    :cond_0
    return-void
.end method

.method private handleResponse(Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "response"    # Ljava/lang/StringBuffer;

    .prologue
    .line 350
    iget-object v0, p0, Lnet/veritran/android/implementation/HttpsConnection;->connListener:Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionListener;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lnet/veritran/android/implementation/HttpsConnection;->connListener:Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionListener;

    invoke-interface {v0, p0, p1}, Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionListener;->handleResponse(Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionInterface;Ljava/lang/StringBuffer;)V

    .line 354
    :cond_0
    return-void
.end method


# virtual methods
.method public closeCommand()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 311
    iput-object v0, p0, Lnet/veritran/android/implementation/HttpsConnection;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 312
    iput-object v0, p0, Lnet/veritran/android/implementation/HttpsConnection;->httpResponse:Lorg/apache/http/HttpResponse;

    .line 313
    return-void
.end method

.method public connectCommand()V
    .locals 21

    .prologue
    .line 86
    :try_start_0
    new-instance v10, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v10}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 87
    .local v10, "httpParameters":Lorg/apache/http/params/HttpParams;
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/android/implementation/HttpsConnection;->CONNECTION_TIMEOUT:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v10, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 89
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/android/implementation/HttpsConnection;->SO_TIMEOUT:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v10, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 90
    new-instance v18, Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v0, v18

    invoke-direct {v0, v10}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/android/implementation/HttpsConnection;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 92
    const-string v18, "net.veritran.android.connection"

    const-string v19, "Default Http Client created"

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v18, "net.veritran.android.connection"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Default Http Client - Connection Timeout: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/android/implementation/HttpsConnection;->CONNECTION_TIMEOUT:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v18, "net.veritran.android.connection"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Default Http Client - Socket Timeout: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/android/implementation/HttpsConnection;->SO_TIMEOUT:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/veritran/android/implementation/HttpsConnection;->commandMessage:Ljava/lang/String;

    .line 101
    .local v7, "encodedMessage":Ljava/lang/String;
    const-string v18, "net.veritran.android.connection"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Message: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v14, "paramValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v18, Lorg/apache/http/message/BasicNameValuePair;

    const-string v19, "MSG"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v15, Lorg/apache/http/client/methods/HttpPost;

    new-instance v18, Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/HttpsConnection;->URL:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 108
    .local v15, "postRequest":Lorg/apache/http/client/methods/HttpPost;
    const-string v18, "net.veritran.android.connection"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "URL Gateway: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/HttpsConnection;->URL:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v6, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v6, v14}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    .line 113
    .local v6, "encodedEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Lorg/apache/http/Header;)V

    .line 119
    invoke-virtual {v15, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 123
    new-instance v13, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v13}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 124
    .local v13, "p":Lorg/apache/http/params/HttpParams;
    const-string v18, "MSG"

    move-object/from16 v0, v18

    invoke-interface {v13, v0, v7}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 125
    invoke-virtual {v15, v13}, Lorg/apache/http/client/methods/HttpPost;->setParams(Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 127
    const/4 v4, 0x0

    .line 130
    .local v4, "bufferReader":Ljava/io/BufferedReader;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/HttpsConnection;->httpClient:Lorg/apache/http/client/HttpClient;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/android/implementation/HttpsConnection;->httpResponse:Lorg/apache/http/HttpResponse;

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/HttpsConnection;->httpResponse:Lorg/apache/http/HttpResponse;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/HttpsConnection;->httpResponse:Lorg/apache/http/HttpResponse;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    .line 134
    .local v11, "httpStatusCode":I
    const-string v18, "net.veritran.android.connection"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "HttpResponse Status Code:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/16 v18, 0xc8

    move/from16 v0, v18

    if-eq v11, v0, :cond_2

    .line 137
    const/16 v18, 0xd3

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lnet/veritran/android/implementation/HttpsConnection;->handleErrorResponse(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    .end local v11    # "httpStatusCode":I
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 180
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 187
    .end local v4    # "bufferReader":Ljava/io/BufferedReader;
    .end local v6    # "encodedEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v7    # "encodedMessage":Ljava/lang/String;
    .end local v10    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .end local v13    # "p":Lorg/apache/http/params/HttpParams;
    .end local v14    # "paramValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v15    # "postRequest":Lorg/apache/http/client/methods/HttpPost;
    :cond_1
    :goto_1
    return-void

    .line 142
    .restart local v4    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v6    # "encodedEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v7    # "encodedMessage":Ljava/lang/String;
    .restart local v10    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .restart local v11    # "httpStatusCode":I
    .restart local v13    # "p":Lorg/apache/http/params/HttpParams;
    .restart local v14    # "paramValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v15    # "postRequest":Lorg/apache/http/client/methods/HttpPost;
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/HttpsConnection;->httpResponse:Lorg/apache/http/HttpResponse;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 143
    .local v8, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v8, :cond_0

    .line 144
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/InputStreamReader;

    .line 145
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v19

    const-string v20, "ISO-8859-1"

    invoke-direct/range {v18 .. v20}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 148
    .end local v4    # "bufferReader":Ljava/io/BufferedReader;
    .local v5, "bufferReader":Ljava/io/BufferedReader;
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v17

    .line 150
    .local v17, "size":I
    new-instance v18, Ljava/lang/StringBuffer;

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/android/implementation/HttpsConnection;->sb:Ljava/lang/StringBuffer;

    .line 152
    const/16 v18, 0x400

    move/from16 v0, v18

    new-array v3, v0, [C

    .line 155
    .local v3, "buffer":[C
    :goto_2
    invoke-virtual {v5, v3}, Ljava/io/BufferedReader;->read([C)I

    move-result v16

    .local v16, "read":I
    const/16 v18, -0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/HttpsConnection;->sb:Ljava/lang/StringBuffer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v16

    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 174
    .end local v3    # "buffer":[C
    .end local v16    # "read":I
    .end local v17    # "size":I
    :catch_0
    move-exception v12

    move-object v4, v5

    .line 177
    .end local v5    # "bufferReader":Ljava/io/BufferedReader;
    .end local v8    # "entity":Lorg/apache/http/HttpEntity;
    .end local v11    # "httpStatusCode":I
    .restart local v4    # "bufferReader":Ljava/io/BufferedReader;
    .local v12, "ioEx":Ljava/io/IOException;
    :goto_3
    const/16 v18, 0x64

    :try_start_5
    const-string v19, ""

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lnet/veritran/android/implementation/HttpsConnection;->handleErrorResponse(ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 179
    if-eqz v4, :cond_1

    .line 180
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 184
    .end local v4    # "bufferReader":Ljava/io/BufferedReader;
    .end local v6    # "encodedEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v7    # "encodedMessage":Ljava/lang/String;
    .end local v10    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .end local v12    # "ioEx":Ljava/io/IOException;
    .end local v13    # "p":Lorg/apache/http/params/HttpParams;
    .end local v14    # "paramValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v15    # "postRequest":Lorg/apache/http/client/methods/HttpPost;
    :catch_1
    move-exception v9

    .line 185
    .local v9, "ex":Ljava/lang/Exception;
    goto :goto_1

    .line 165
    .end local v9    # "ex":Ljava/lang/Exception;
    .restart local v3    # "buffer":[C
    .restart local v5    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v6    # "encodedEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v7    # "encodedMessage":Ljava/lang/String;
    .restart local v8    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v10    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .restart local v11    # "httpStatusCode":I
    .restart local v13    # "p":Lorg/apache/http/params/HttpParams;
    .restart local v14    # "paramValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v15    # "postRequest":Lorg/apache/http/client/methods/HttpPost;
    .restart local v16    # "read":I
    .restart local v17    # "size":I
    :cond_3
    :try_start_7
    const-string v18, "net.veritran.android.connection"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Encoded Response lenght:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/HttpsConnection;->sb:Ljava/lang/StringBuffer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->length()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v18, "net.veritran.android.connection"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Encoded Response:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/HttpsConnection;->sb:Ljava/lang/StringBuffer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/HttpsConnection;->sb:Ljava/lang/StringBuffer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lnet/veritran/android/implementation/HttpsConnection;->handleResponse(Ljava/lang/StringBuffer;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v4, v5

    .end local v5    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferReader":Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 179
    .end local v3    # "buffer":[C
    .end local v8    # "entity":Lorg/apache/http/HttpEntity;
    .end local v11    # "httpStatusCode":I
    .end local v16    # "read":I
    .end local v17    # "size":I
    :catchall_0
    move-exception v18

    :goto_4
    if-eqz v4, :cond_4

    .line 180
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    :cond_4
    throw v18
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 179
    .end local v4    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v5    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v8    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v11    # "httpStatusCode":I
    :catchall_1
    move-exception v18

    move-object v4, v5

    .end local v5    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferReader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 174
    .end local v8    # "entity":Lorg/apache/http/HttpEntity;
    .end local v11    # "httpStatusCode":I
    :catch_2
    move-exception v12

    goto :goto_3
.end method

.method public connectCommandBlocked()V
    .locals 22

    .prologue
    .line 195
    :try_start_0
    new-instance v10, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v10}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 196
    .local v10, "httpParameters":Lorg/apache/http/params/HttpParams;
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/android/implementation/HttpsConnection;->CONNECTION_TIMEOUT:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v10, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 198
    move-object/from16 v0, p0

    iget v0, v0, Lnet/veritran/android/implementation/HttpsConnection;->SO_TIMEOUT:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v10, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 199
    new-instance v19, Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v0, v19

    invoke-direct {v0, v10}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/android/implementation/HttpsConnection;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 204
    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/veritran/android/implementation/HttpsConnection;->commandMessage:Ljava/lang/String;

    .line 206
    .local v7, "encodedMessage":Ljava/lang/String;
    const-string v19, "net.veritran.android.connection"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Message: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v14, "paramValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v19, Lorg/apache/http/message/BasicNameValuePair;

    const-string v20, "MSG"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    new-instance v15, Lorg/apache/http/client/methods/HttpPost;

    new-instance v19, Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/HttpsConnection;->URL:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 212
    .local v15, "postRequest":Lorg/apache/http/client/methods/HttpPost;
    const-string v19, "net.veritran.android.connection"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "URL Gateway: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/HttpsConnection;->URL:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    new-instance v6, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v6, v14}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    .line 217
    .local v6, "encodedEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Lorg/apache/http/Header;)V

    .line 223
    invoke-virtual {v15, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 227
    new-instance v13, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v13}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 228
    .local v13, "p":Lorg/apache/http/params/HttpParams;
    const-string v19, "MSG"

    move-object/from16 v0, v19

    invoke-interface {v13, v0, v7}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 229
    invoke-virtual {v15, v13}, Lorg/apache/http/client/methods/HttpPost;->setParams(Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 231
    const/4 v4, 0x0

    .line 234
    .local v4, "bufferReader":Ljava/io/BufferedReader;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/HttpsConnection;->httpClient:Lorg/apache/http/client/HttpClient;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/android/implementation/HttpsConnection;->httpResponse:Lorg/apache/http/HttpResponse;

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/HttpsConnection;->httpResponse:Lorg/apache/http/HttpResponse;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/HttpsConnection;->httpResponse:Lorg/apache/http/HttpResponse;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    .line 238
    .local v11, "httpStatusCode":I
    const-string v19, "net.veritran.android.connection"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "HttpResponse Status Code:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const/16 v19, 0xc8

    move/from16 v0, v19

    if-eq v11, v0, :cond_2

    .line 241
    const/16 v19, 0xd3

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lnet/veritran/android/implementation/HttpsConnection;->handleErrorResponse(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    .end local v11    # "httpStatusCode":I
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 297
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 304
    .end local v4    # "bufferReader":Ljava/io/BufferedReader;
    .end local v6    # "encodedEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v7    # "encodedMessage":Ljava/lang/String;
    .end local v10    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .end local v13    # "p":Lorg/apache/http/params/HttpParams;
    .end local v14    # "paramValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v15    # "postRequest":Lorg/apache/http/client/methods/HttpPost;
    :cond_1
    :goto_1
    return-void

    .line 246
    .restart local v4    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v6    # "encodedEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v7    # "encodedMessage":Ljava/lang/String;
    .restart local v10    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .restart local v11    # "httpStatusCode":I
    .restart local v13    # "p":Lorg/apache/http/params/HttpParams;
    .restart local v14    # "paramValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v15    # "postRequest":Lorg/apache/http/client/methods/HttpPost;
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/HttpsConnection;->httpResponse:Lorg/apache/http/HttpResponse;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 247
    .local v8, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v8, :cond_0

    .line 248
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/InputStreamReader;

    .line 249
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v20

    const-string v21, "ISO-8859-1"

    invoke-direct/range {v19 .. v21}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 252
    .end local v4    # "bufferReader":Ljava/io/BufferedReader;
    .local v5, "bufferReader":Ljava/io/BufferedReader;
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v17

    .line 254
    .local v17, "size":I
    new-instance v19, Ljava/lang/StringBuffer;

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/veritran/android/implementation/HttpsConnection;->sb:Ljava/lang/StringBuffer;

    .line 256
    const/16 v19, 0x400

    move/from16 v0, v19

    new-array v3, v0, [C

    .line 259
    .local v3, "buffer":[C
    :goto_2
    invoke-virtual {v5, v3}, Ljava/io/BufferedReader;->read([C)I

    move-result v16

    .local v16, "read":I
    const/16 v19, -0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/HttpsConnection;->sb:Ljava/lang/StringBuffer;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v16

    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 282
    .end local v3    # "buffer":[C
    .end local v16    # "read":I
    .end local v17    # "size":I
    :catch_0
    move-exception v18

    move-object v4, v5

    .line 283
    .end local v5    # "bufferReader":Ljava/io/BufferedReader;
    .end local v8    # "entity":Lorg/apache/http/HttpEntity;
    .end local v11    # "httpStatusCode":I
    .restart local v4    # "bufferReader":Ljava/io/BufferedReader;
    .local v18, "ste":Ljava/net/SocketTimeoutException;
    :goto_3
    const/16 v19, 0x10d

    :try_start_5
    const-string v20, ""

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lnet/veritran/android/implementation/HttpsConnection;->handleErrorResponse(ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 296
    if-eqz v4, :cond_1

    .line 297
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 301
    .end local v4    # "bufferReader":Ljava/io/BufferedReader;
    .end local v6    # "encodedEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v7    # "encodedMessage":Ljava/lang/String;
    .end local v10    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .end local v13    # "p":Lorg/apache/http/params/HttpParams;
    .end local v14    # "paramValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v15    # "postRequest":Lorg/apache/http/client/methods/HttpPost;
    .end local v18    # "ste":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v9

    .line 302
    .local v9, "ex":Ljava/lang/Exception;
    goto :goto_1

    .line 268
    .end local v9    # "ex":Ljava/lang/Exception;
    .restart local v3    # "buffer":[C
    .restart local v5    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v6    # "encodedEntity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v7    # "encodedMessage":Ljava/lang/String;
    .restart local v8    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v10    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .restart local v11    # "httpStatusCode":I
    .restart local v13    # "p":Lorg/apache/http/params/HttpParams;
    .restart local v14    # "paramValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v15    # "postRequest":Lorg/apache/http/client/methods/HttpPost;
    .restart local v16    # "read":I
    .restart local v17    # "size":I
    :cond_3
    :try_start_7
    const-string v19, "net.veritran.android.connection"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Encoded Response lenght:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/HttpsConnection;->sb:Ljava/lang/StringBuffer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v19, "net.veritran.android.connection"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Encoded Response:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/HttpsConnection;->sb:Ljava/lang/StringBuffer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/veritran/android/implementation/HttpsConnection;->sb:Ljava/lang/StringBuffer;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lnet/veritran/android/implementation/HttpsConnection;->handleResponse(Ljava/lang/StringBuffer;)V
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v4, v5

    .end local v5    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferReader":Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 279
    .end local v3    # "buffer":[C
    .end local v8    # "entity":Lorg/apache/http/HttpEntity;
    .end local v11    # "httpStatusCode":I
    .end local v16    # "read":I
    .end local v17    # "size":I
    :cond_4
    const/16 v19, 0xdf

    :try_start_8
    const-string v20, ""

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lnet/veritran/android/implementation/HttpsConnection;->handleErrorResponse(ILjava/lang/String;)V
    :try_end_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 282
    :catch_2
    move-exception v18

    goto :goto_3

    .line 285
    :catch_3
    move-exception v12

    .line 288
    .local v12, "ioEx":Ljava/io/IOException;
    :goto_4
    const/16 v19, 0xe9

    :try_start_9
    const-string v20, ""

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lnet/veritran/android/implementation/HttpsConnection;->handleErrorResponse(ILjava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 296
    if-eqz v4, :cond_1

    .line 297
    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_1

    .line 289
    .end local v12    # "ioEx":Ljava/io/IOException;
    :catch_4
    move-exception v9

    .line 292
    .restart local v9    # "ex":Ljava/lang/Exception;
    :goto_5
    const/16 v19, 0xe3

    :try_start_b
    const-string v20, ""

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lnet/veritran/android/implementation/HttpsConnection;->handleErrorResponse(ILjava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 296
    if-eqz v4, :cond_1

    .line 297
    :try_start_c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    goto/16 :goto_1

    .line 296
    .end local v9    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v19

    :goto_6
    if-eqz v4, :cond_5

    .line 297
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    :cond_5
    throw v19
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .line 296
    .end local v4    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v5    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v8    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v11    # "httpStatusCode":I
    :catchall_1
    move-exception v19

    move-object v4, v5

    .end local v5    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferReader":Ljava/io/BufferedReader;
    goto :goto_6

    .line 289
    .end local v4    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v5    # "bufferReader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v9

    move-object v4, v5

    .end local v5    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferReader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 285
    .end local v4    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v5    # "bufferReader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v12

    move-object v4, v5

    .end local v5    # "bufferReader":Ljava/io/BufferedReader;
    .restart local v4    # "bufferReader":Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method public getSringBufferResponse()Ljava/lang/StringBuffer;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lnet/veritran/android/implementation/HttpsConnection;->sb:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lnet/veritran/android/implementation/HttpsConnection;->sb:Ljava/lang/StringBuffer;

    .line 330
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setListener(Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionListener;)V
    .locals 0
    .param p1, "listener"    # Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionListener;

    .prologue
    .line 77
    iput-object p1, p0, Lnet/veritran/android/implementation/HttpsConnection;->connListener:Lnet/veritran/vtuserapplication/comm/connections/https/HTTPSConnectionListener;

    .line 78
    return-void
.end method

.method public setTimeout(I)V
    .locals 1
    .param p1, "seconds"    # I

    .prologue
    .line 319
    mul-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lnet/veritran/android/implementation/HttpsConnection;->CONNECTION_TIMEOUT:I

    .line 320
    mul-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lnet/veritran/android/implementation/HttpsConnection;->SO_TIMEOUT:I

    .line 321
    return-void
.end method
