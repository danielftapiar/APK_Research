.class public Lcom/prey/net/UtilConnection;
.super Ljava/lang/Object;
.source "UtilConnection.java"


# static fields
.field private static ARRAY_RETRY_DELAY_MS:[I = null

.field private static final CONNECT_TIMEOUT:I = 0x7530

.field private static final READ_TIMEOUT:I = 0x7530

.field private static final REQUEST_METHOD_DELETE:Ljava/lang/String; = "DELETE"

.field private static final REQUEST_METHOD_GET:Ljava/lang/String; = "GET"

.field private static final REQUEST_METHOD_POST:Ljava/lang/String; = "POST"

.field private static final REQUEST_METHOD_PUT:Ljava/lang/String; = "PUT"

.field private static RETRIES:I

.field private static final USE_CACHES:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x4

    .line 39
    sput v0, Lcom/prey/net/UtilConnection;->RETRIES:I

    .line 41
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/prey/net/UtilConnection;->ARRAY_RETRY_DELAY_MS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final connection(Lcom/prey/PreyConfig;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/prey/net/PreyHttpResponse;
    .locals 26
    .param p0, "preyConfig"    # Lcom/prey/PreyConfig;
    .param p1, "uri"    # Ljava/lang/String;
    .param p3, "requestMethod"    # Ljava/lang/String;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "authorization"    # Ljava/lang/String;
    .param p6, "status"    # Ljava/lang/String;
    .param p8, "correlationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prey/PreyConfig;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/prey/net/http/EntityFile;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/prey/net/PreyHttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 104
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p7, "entityFiles":Ljava/util/List;, "Ljava/util/List<Lcom/prey/net/http/EntityFile;>;"
    const/16 v18, 0x0

    .line 105
    .local v18, "response":Lcom/prey/net/PreyHttpResponse;
    new-instance v22, Ljava/net/URL;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 106
    .local v22, "url":Ljava/net/URL;
    const/4 v8, 0x0

    .line 107
    .local v8, "connection":Ljava/net/HttpURLConnection;
    const/16 v21, 0x0

    .line 108
    .local v21, "retry":I
    const/4 v9, 0x0

    .line 109
    .local v9, "delay":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 110
    new-instance v2, Lcom/prey/net/http/SimpleMultipartEntity;

    invoke-direct {v2}, Lcom/prey/net/http/SimpleMultipartEntity;-><init>()V

    .line 112
    .local v2, "multiple":Lcom/prey/net/http/SimpleMultipartEntity;
    :cond_0
    if-eqz v9, :cond_1

    .line 113
    sget-object v3, Lcom/prey/net/UtilConnection;->ARRAY_RETRY_DELAY_MS:[I

    aget v3, v3, v21

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 115
    :cond_1
    const-string v3, "https:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_8

    .line 116
    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    .end local v8    # "connection":Ljava/net/HttpURLConnection;
    check-cast v8, Ljavax/net/ssl/HttpsURLConnection;

    .line 120
    .restart local v8    # "connection":Ljava/net/HttpURLConnection;
    :goto_0
    new-instance v17, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 121
    .local v17, "out":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 122
    const-string v3, "Accept"

    const-string v4, "*/*"

    invoke-virtual {v8, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    if-eqz p4, :cond_2

    .line 124
    const-string v3, "Content-Type"

    move-object/from16 v0, p4

    invoke-virtual {v8, v3, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_2
    if-eqz p5, :cond_3

    .line 127
    const-string v3, "Authorization"

    move-object/from16 v0, p5

    invoke-virtual {v8, v3, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_3
    if-eqz p6, :cond_4

    .line 130
    const-string v3, "X-Prey-Status"

    move-object/from16 v0, p6

    invoke-virtual {v8, v3, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "X-Prey-Status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 134
    :cond_4
    if-eqz p8, :cond_5

    .line 135
    const-string v3, "X-Prey-Correlation-ID"

    move-object/from16 v0, p8

    invoke-virtual {v8, v3, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "X-Prey-Correlation-ID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/prey/PreyConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v10

    .line 138
    .local v10, "deviceId":Ljava/lang/String;
    const-string v3, "X-Prey-Device-ID"

    invoke-virtual {v8, v3, v10}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "X-Prey-Device-ID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 140
    const-string v3, "X-Prey-State"

    move-object/from16 v0, p6

    invoke-virtual {v8, v3, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "X-Prey-State:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 146
    .end local v10    # "deviceId":Ljava/lang/String;
    :cond_5
    const-string v3, "User-Agent"

    invoke-static/range {p0 .. p0}, Lcom/prey/net/UtilConnection;->getUserAgent(Lcom/prey/PreyConfig;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    if-nez p7, :cond_6

    if-eqz p2, :cond_6

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 148
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v16

    .line 149
    .local v16, "os":Ljava/io/OutputStream;
    new-instance v11, Ljava/io/DataOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 150
    .local v11, "dos":Ljava/io/DataOutputStream;
    invoke-static/range {p2 .. p2}, Lcom/prey/net/UtilConnection;->getPostDataString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 152
    .end local v11    # "dos":Ljava/io/DataOutputStream;
    .end local v16    # "os":Ljava/io/OutputStream;
    :cond_6
    if-eqz p7, :cond_c

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_c

    .line 153
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 154
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 155
    .local v15, "key":Ljava/lang/String;
    const/16 v23, 0x0

    .line 157
    .local v23, "value":Ljava/lang/String;
    :try_start_0
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object/from16 v23, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_2
    if-nez v23, :cond_7

    .line 161
    const-string v23, ""

    .line 163
    :cond_7
    move-object/from16 v0, v23

    invoke-virtual {v2, v15, v0}, Lcom/prey/net/http/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 118
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "key":Ljava/lang/String;
    .end local v17    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v23    # "value":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    .end local v8    # "connection":Ljava/net/HttpURLConnection;
    check-cast v8, Ljava/net/HttpURLConnection;

    .restart local v8    # "connection":Ljava/net/HttpURLConnection;
    goto/16 :goto_0

    .line 165
    .restart local v17    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_9
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    if-eqz p7, :cond_b

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v3

    if-ge v14, v3, :cond_b

    .line 166
    move-object/from16 v0, p7

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/prey/net/http/EntityFile;

    .line 167
    .local v12, "entityFile":Lcom/prey/net/http/EntityFile;
    add-int/lit8 v3, v14, 0x1

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_a

    const/4 v7, 0x1

    .line 168
    .local v7, "isLast":Z
    :goto_4
    invoke-virtual {v12}, Lcom/prey/net/http/EntityFile;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Lcom/prey/net/http/EntityFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Lcom/prey/net/http/EntityFile;->getFile()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v12}, Lcom/prey/net/http/EntityFile;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v2 .. v7}, Lcom/prey/net/http/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Z)V

    .line 165
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 167
    .end local v7    # "isLast":Z
    :cond_a
    const/4 v7, 0x0

    goto :goto_4

    .line 170
    .end local v12    # "entityFile":Lcom/prey/net/http/EntityFile;
    :cond_b
    const-string v3, "Content-Length"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/prey/net/http/SimpleMultipartEntity;->getContentLength()J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v3, "Content-Type"

    invoke-virtual {v2}, Lcom/prey/net/http/SimpleMultipartEntity;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v16

    .line 173
    .restart local v16    # "os":Ljava/io/OutputStream;
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/prey/net/http/SimpleMultipartEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 175
    .end local v14    # "i":I
    .end local v16    # "os":Ljava/io/OutputStream;
    :cond_c
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v19

    .line 176
    .local v19, "responseCode":I
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v20

    .line 177
    .local v20, "responseMessage":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "responseCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " responseMessage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 178
    sparse-switch v19, :sswitch_data_0

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " **unknown response code**."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 216
    :goto_5
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 217
    add-int/lit8 v21, v21, 0x1

    .line 218
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed retry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/prey/net/UtilConnection;->RETRIES:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 219
    const/4 v9, 0x1

    .line 220
    sget v3, Lcom/prey/net/UtilConnection;->RETRIES:I

    move/from16 v0, v21

    if-lt v0, v3, :cond_0

    .line 221
    .end local v18    # "response":Lcom/prey/net/PreyHttpResponse;
    :goto_6
    return-object v18

    .line 180
    .restart local v18    # "response":Lcom/prey/net/PreyHttpResponse;
    :sswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " **CREATED**"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 181
    move/from16 v0, v19

    invoke-static {v0, v8}, Lcom/prey/net/UtilConnection;->convertPreyHttpResponse(ILjava/net/HttpURLConnection;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v18

    goto :goto_6

    .line 183
    :sswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " **OK**"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 184
    move/from16 v0, v19

    invoke-static {v0, v8}, Lcom/prey/net/UtilConnection;->convertPreyHttpResponse(ILjava/net/HttpURLConnection;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v18

    goto :goto_6

    .line 186
    :sswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " **CONFLICT**"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 187
    move/from16 v0, v19

    invoke-static {v0, v8}, Lcom/prey/net/UtilConnection;->convertPreyHttpResponse(ILjava/net/HttpURLConnection;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v18

    goto :goto_6

    .line 189
    :sswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " **FORBIDDEN**"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 190
    move/from16 v0, v19

    invoke-static {v0, v8}, Lcom/prey/net/UtilConnection;->convertPreyHttpResponse(ILjava/net/HttpURLConnection;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v18

    goto :goto_6

    .line 192
    :sswitch_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " **MOVED_TEMP**"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 193
    move/from16 v0, v19

    invoke-static {v0, v8}, Lcom/prey/net/UtilConnection;->convertPreyHttpResponse(ILjava/net/HttpURLConnection;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v18

    goto/16 :goto_6

    .line 195
    :sswitch_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " **422**"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 196
    move/from16 v0, v19

    invoke-static {v0, v8}, Lcom/prey/net/UtilConnection;->convertPreyHttpResponse(ILjava/net/HttpURLConnection;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v18

    goto/16 :goto_6

    .line 198
    :sswitch_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " **BAD_GATEWAY**"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 199
    move/from16 v0, v19

    invoke-static {v0, v8}, Lcom/prey/net/UtilConnection;->convertPreyHttpResponse(ILjava/net/HttpURLConnection;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v18

    goto/16 :goto_6

    .line 201
    :sswitch_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " **INTERNAL_ERROR**"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 202
    move/from16 v0, v19

    invoke-static {v0, v8}, Lcom/prey/net/UtilConnection;->convertPreyHttpResponse(ILjava/net/HttpURLConnection;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v18

    goto/16 :goto_6

    .line 204
    :sswitch_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " **NOT_FOUND**"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 205
    move/from16 v0, v19

    invoke-static {v0, v8}, Lcom/prey/net/UtilConnection;->convertPreyHttpResponse(ILjava/net/HttpURLConnection;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v18

    goto/16 :goto_6

    .line 207
    :sswitch_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " **gateway timeout**"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 210
    :sswitch_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "**unavailable**"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 158
    .end local v19    # "responseCode":I
    .end local v20    # "responseMessage":Ljava/lang/String;
    .restart local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v15    # "key":Ljava/lang/String;
    .restart local v23    # "value":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto/16 :goto_2

    .line 178
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0xc9 -> :sswitch_0
        0x12e -> :sswitch_4
        0x193 -> :sswitch_3
        0x194 -> :sswitch_8
        0x199 -> :sswitch_2
        0x1a6 -> :sswitch_5
        0x1f4 -> :sswitch_7
        0x1f6 -> :sswitch_6
        0x1f7 -> :sswitch_a
        0x1f8 -> :sswitch_9
    .end sparse-switch
.end method

.method public static final connectionDelete(Lcom/prey/PreyConfig;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/prey/net/PreyHttpResponse;
    .locals 9
    .param p0, "preyConfig"    # Lcom/prey/PreyConfig;
    .param p1, "uri"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prey/PreyConfig;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/prey/net/PreyHttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 82
    const-string v3, "DELETE"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-static/range {v0 .. v8}, Lcom/prey/net/UtilConnection;->connection(Lcom/prey/PreyConfig;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public static final connectionDeleteAuthorization(Lcom/prey/PreyConfig;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/prey/net/PreyHttpResponse;
    .locals 9
    .param p0, "preyConfig"    # Lcom/prey/PreyConfig;
    .param p1, "uri"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prey/PreyConfig;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/prey/net/PreyHttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 85
    const-string v3, "DELETE"

    invoke-static {p0}, Lcom/prey/net/UtilConnection;->getAuthorization(Lcom/prey/PreyConfig;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v7, v6

    move-object v8, v6

    invoke-static/range {v0 .. v8}, Lcom/prey/net/UtilConnection;->connection(Lcom/prey/PreyConfig;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public static final connectionGet(Lcom/prey/PreyConfig;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/prey/net/PreyHttpResponse;
    .locals 9
    .param p0, "preyConfig"    # Lcom/prey/PreyConfig;
    .param p1, "uri"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prey/PreyConfig;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/prey/net/PreyHttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 73
    const-string v3, "GET"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-static/range {v0 .. v8}, Lcom/prey/net/UtilConnection;->connection(Lcom/prey/PreyConfig;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public static final connectionGetAuthorization(Lcom/prey/PreyConfig;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/prey/net/PreyHttpResponse;
    .locals 9
    .param p0, "preyConfig"    # Lcom/prey/PreyConfig;
    .param p1, "uri"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prey/PreyConfig;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/prey/net/PreyHttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 76
    const-string v3, "GET"

    invoke-static {p0}, Lcom/prey/net/UtilConnection;->getAuthorization(Lcom/prey/PreyConfig;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v7, v6

    move-object v8, v6

    invoke-static/range {v0 .. v8}, Lcom/prey/net/UtilConnection;->connection(Lcom/prey/PreyConfig;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public static final connectionGetAuthorization(Lcom/prey/PreyConfig;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/prey/net/PreyHttpResponse;
    .locals 9
    .param p0, "preyConfig"    # Lcom/prey/PreyConfig;
    .param p1, "uri"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "user"    # Ljava/lang/String;
    .param p5, "pass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prey/PreyConfig;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/prey/net/PreyHttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 79
    const-string v3, "GET"

    invoke-static {p4, p5}, Lcom/prey/net/UtilConnection;->getAuthorization(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    invoke-static/range {v0 .. v8}, Lcom/prey/net/UtilConnection;->connection(Lcom/prey/PreyConfig;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public static final connectionPost(Lcom/prey/PreyConfig;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/prey/net/PreyHttpResponse;
    .locals 9
    .param p0, "preyConfig"    # Lcom/prey/PreyConfig;
    .param p1, "uri"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prey/PreyConfig;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/prey/net/PreyHttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 88
    const-string v3, "POST"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-static/range {v0 .. v8}, Lcom/prey/net/UtilConnection;->connection(Lcom/prey/PreyConfig;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public static final connectionPostAuthorization(Lcom/prey/PreyConfig;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/prey/net/PreyHttpResponse;
    .locals 9
    .param p0, "preyConfig"    # Lcom/prey/PreyConfig;
    .param p1, "uri"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prey/PreyConfig;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/prey/net/PreyHttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 91
    const-string v3, "POST"

    invoke-static {p0}, Lcom/prey/net/UtilConnection;->getAuthorization(Lcom/prey/PreyConfig;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v7, v6

    move-object v8, v6

    invoke-static/range {v0 .. v8}, Lcom/prey/net/UtilConnection;->connection(Lcom/prey/PreyConfig;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public static final connectionPostAuthorization(Lcom/prey/PreyConfig;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)Lcom/prey/net/PreyHttpResponse;
    .locals 9
    .param p0, "preyConfig"    # Lcom/prey/PreyConfig;
    .param p1, "uri"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prey/PreyConfig;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/prey/net/http/EntityFile;",
            ">;)",
            "Lcom/prey/net/PreyHttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "entityFiles":Ljava/util/List;, "Ljava/util/List<Lcom/prey/net/http/EntityFile;>;"
    const/4 v6, 0x0

    .line 94
    const-string v3, "POST"

    invoke-static {p0}, Lcom/prey/net/UtilConnection;->getAuthorization(Lcom/prey/PreyConfig;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v7, p4

    move-object v8, v6

    invoke-static/range {v0 .. v8}, Lcom/prey/net/UtilConnection;->connection(Lcom/prey/PreyConfig;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public static final connectionPostAuthorizationCorrelationId(Lcom/prey/PreyConfig;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/prey/net/PreyHttpResponse;
    .locals 9
    .param p0, "preyConfig"    # Lcom/prey/PreyConfig;
    .param p1, "uri"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "status"    # Ljava/lang/String;
    .param p5, "correlationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prey/PreyConfig;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/prey/net/PreyHttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 100
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "POST"

    invoke-static {p0}, Lcom/prey/net/UtilConnection;->getAuthorization(Lcom/prey/PreyConfig;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p4

    move-object v8, p5

    invoke-static/range {v0 .. v8}, Lcom/prey/net/UtilConnection;->connection(Lcom/prey/PreyConfig;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public static final connectionPostAuthorizationStatus(Lcom/prey/PreyConfig;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/prey/net/PreyHttpResponse;
    .locals 9
    .param p0, "preyConfig"    # Lcom/prey/PreyConfig;
    .param p1, "uri"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prey/PreyConfig;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/prey/net/PreyHttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 97
    const-string v3, "POST"

    invoke-static {p0}, Lcom/prey/net/UtilConnection;->getAuthorization(Lcom/prey/PreyConfig;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p4

    move-object v8, v7

    invoke-static/range {v0 .. v8}, Lcom/prey/net/UtilConnection;->connection(Lcom/prey/PreyConfig;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public static connectionPostJson(Lcom/prey/PreyConfig;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p0, "preyConfig"    # Lcom/prey/PreyConfig;
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "jsonParam"    # Lorg/json/JSONObject;

    .prologue
    .line 247
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/prey/net/UtilConnection;->connectionPostJson(Lcom/prey/PreyConfig;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public static connectionPostJson(Lcom/prey/PreyConfig;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 8
    .param p0, "preyConfig"    # Lcom/prey/PreyConfig;
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "jsonParam"    # Lorg/json/JSONObject;
    .param p3, "authorization"    # Ljava/lang/String;

    .prologue
    .line 255
    const/4 v1, 0x0

    .line 256
    .local v1, "connection":Ljava/net/HttpURLConnection;
    const/4 v3, -0x1

    .line 258
    .local v3, "httpResult":I
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 259
    .local v5, "url":Ljava/net/URL;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "postJson page:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 261
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 262
    const-string v6, "POST"

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 263
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 264
    const/16 v6, 0x7530

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 265
    const/16 v6, 0x7530

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 266
    const-string v6, "Content-Type"

    const-string v7, "application/json"

    invoke-virtual {v1, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    if-eqz p3, :cond_0

    .line 268
    const-string v6, "Authorization"

    invoke-virtual {v1, v6, p3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_0
    const-string v6, "User-Agent"

    invoke-static {p0}, Lcom/prey/net/UtilConnection;->getUserAgent(Lcom/prey/PreyConfig;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v6, "Origin"

    const-string v7, "android:com.prey"

    invoke-virtual {v1, v6, v7}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 272
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "jsonParam.toString():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 273
    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 274
    .local v4, "out":Ljava/io/OutputStreamWriter;
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    .line 276
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 277
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "postJson responseCode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v4    # "out":Ljava/io/OutputStreamWriter;
    .end local v5    # "url":Ljava/net/URL;
    :goto_0
    return-object v1

    .line 278
    :catch_0
    move-exception v2

    .line 279
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "postJson error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static connectionPostJsonAuthorization(Lcom/prey/PreyConfig;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/net/HttpURLConnection;
    .locals 3
    .param p0, "preyConfig"    # Lcom/prey/PreyConfig;
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "jsonParam"    # Lorg/json/JSONObject;

    .prologue
    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Basic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/prey/PreyConfig;->getApiKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X"

    invoke-static {v1, v2}, Lcom/prey/net/UtilConnection;->getCredentials(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/prey/net/UtilConnection;->connectionPostJson(Lcom/prey/PreyConfig;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public static final connectionPut(Lcom/prey/PreyConfig;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/prey/net/PreyHttpResponse;
    .locals 9
    .param p0, "preyConfig"    # Lcom/prey/PreyConfig;
    .param p1, "uri"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prey/PreyConfig;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/prey/net/PreyHttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 70
    const-string v3, "PUT"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-static/range {v0 .. v8}, Lcom/prey/net/UtilConnection;->connection(Lcom/prey/PreyConfig;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/prey/net/PreyHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method private static convertPreyHttpResponse(ILjava/net/HttpURLConnection;)Lcom/prey/net/PreyHttpResponse;
    .locals 7
    .param p0, "responseCode"    # I
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 225
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 226
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/16 v5, 0xc8

    if-eq p0, v5, :cond_0

    const/16 v5, 0xc9

    if-ne p0, v5, :cond_3

    .line 227
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 228
    .local v2, "input":Ljava/io/InputStream;
    if-eqz v2, :cond_2

    .line 229
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 232
    .local v1, "in":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "decodedString":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 236
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 238
    .end local v0    # "decodedString":Ljava/lang/String;
    .end local v1    # "in":Ljava/io/BufferedReader;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 240
    .end local v2    # "input":Ljava/io/InputStream;
    :cond_3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    .line 242
    .local v3, "mapHeaderFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 243
    new-instance v5, Lcom/prey/net/PreyHttpResponse;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6, v3}, Lcom/prey/net/PreyHttpResponse;-><init>(ILjava/lang/String;Ljava/util/Map;)V

    return-object v5
.end method

.method private static getAuthorization(Lcom/prey/PreyConfig;)Ljava/lang/String;
    .locals 3
    .param p0, "preyConfig"    # Lcom/prey/PreyConfig;

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAuthorization:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/prey/PreyConfig;->getApiKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",X)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Basic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/prey/PreyConfig;->getApiKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X"

    invoke-static {v1, v2}, Lcom/prey/net/UtilConnection;->getCredentials(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAuthorization(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "user"    # Ljava/lang/String;
    .param p1, "pass"    # Ljava/lang/String;

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAuthorization:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Basic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/prey/net/UtilConnection;->getCredentials(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCredentials(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "user"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/prey/net/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPostDataString(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 285
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .local v3, "result":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 287
    .local v2, "first":Z
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 289
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 290
    const/4 v2, 0x0

    .line 293
    :goto_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v4, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v4, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, ""

    const-string v6, "UTF-8"

    invoke-static {v4, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 292
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 301
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getUserAgent(Lcom/prey/PreyConfig;)Ljava/lang/String;
    .locals 3
    .param p0, "preyConfig"    # Lcom/prey/PreyConfig;

    .prologue
    .line 56
    const-string v0, "Prey/"

    invoke-virtual {p0}, Lcom/prey/PreyConfig;->getPreyVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (Android "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/prey/PreyUtils;->getBuildVersionRelease()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static uploadFile(Lcom/prey/PreyConfig;Ljava/lang/String;Ljava/io/File;J)I
    .locals 29
    .param p0, "preyConfig"    # Lcom/prey/PreyConfig;
    .param p1, "page"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "total"    # J

    .prologue
    .line 305
    const/16 v20, 0x0

    .line 306
    .local v20, "responseCode":I
    const/4 v6, 0x0

    .line 307
    .local v6, "connection":Ljava/net/HttpURLConnection;
    const/16 v17, 0x0

    .line 308
    .local v17, "output":Ljava/io/OutputStream;
    const/4 v12, 0x0

    .line 309
    .local v12, "input":Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 310
    .local v10, "fileInput":Ljava/io/FileInputStream;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "page:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " upload:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " length:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " total:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 312
    :try_start_0
    new-instance v22, Ljava/net/URL;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 313
    .local v22, "url":Ljava/net/URL;
    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v23

    move-object/from16 v0, v23

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v6, v0

    .line 314
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 315
    const-string v23, "POST"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 317
    const-string v23, "Origin"

    const-string v24, "android:com.prey"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v23, "Content-Type"

    const-string v24, "application/octet-stream"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v23, "User-Agent"

    invoke-static/range {p0 .. p0}, Lcom/prey/net/UtilConnection;->getUserAgent(Lcom/prey/PreyConfig;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-wide/16 v24, 0x0

    cmp-long v23, p3, v24

    if-lez v23, :cond_7

    .line 322
    const-string v23, "X-Prey-Upload-Resumable"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v23, "Content-Length"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v26

    sub-long v26, v26, p3

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Content-Length:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v24

    sub-long v24, v24, p3

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 328
    :goto_0
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v17

    .line 329
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    .end local v10    # "fileInput":Ljava/io/FileInputStream;
    .local v11, "fileInput":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v13, Ljava/io/BufferedInputStream;

    invoke-direct {v13, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 331
    .end local v12    # "input":Ljava/io/InputStream;
    .local v13, "input":Ljava/io/InputStream;
    const/16 v15, 0x1000

    .line 332
    .local v15, "maxByte":I
    :try_start_2
    new-array v4, v15, [B

    .line 337
    .local v4, "buffer":[B
    int-to-long v0, v15

    move-wide/from16 v24, v0

    sub-long v8, p3, v24

    .line 339
    .local v8, "dif":J
    const-wide/16 v18, 0x0

    .line 340
    .local v18, "read":J
    const-wide/16 v24, 0x0

    cmp-long v23, p3, v24

    if-lez v23, :cond_2

    .line 341
    const/16 v16, 0x1000

    .line 342
    .local v16, "maxByte2":I
    move/from16 v0, v16

    new-array v5, v0, [B

    .line 345
    .local v5, "buffer2":[B
    :cond_0
    const/4 v14, 0x0

    .line 347
    .local v14, "length":I
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v24, v0

    cmp-long v23, p3, v24

    if-gez v23, :cond_1

    .line 348
    move-wide/from16 v0, p3

    long-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v5, v0, [B

    .line 351
    :cond_1
    invoke-virtual {v13, v5}, Ljava/io/InputStream;->read([B)I

    move-result v14

    .line 352
    int-to-long v0, v14

    move-wide/from16 v24, v0

    add-long v18, v18, v24

    .line 353
    int-to-long v0, v14

    move-wide/from16 v24, v0

    sub-long p3, p3, v24

    .line 355
    const-wide/16 v24, 0x0

    cmp-long v23, p3, v24

    if-gtz v23, :cond_8

    .line 361
    .end local v5    # "buffer2":[B
    .end local v14    # "length":I
    .end local v16    # "maxByte2":I
    :cond_2
    :goto_1
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "uploadFile read:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 364
    :goto_2
    invoke-virtual {v13, v4}, Ljava/io/InputStream;->read([B)I

    move-result v14

    .restart local v14    # "length":I
    if-lez v14, :cond_9

    .line 366
    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v4, v1, v14}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    .line 377
    .end local v4    # "buffer":[B
    .end local v8    # "dif":J
    .end local v14    # "length":I
    .end local v18    # "read":J
    :catch_0
    move-exception v7

    move-object v10, v11

    .end local v11    # "fileInput":Ljava/io/FileInputStream;
    .restart local v10    # "fileInput":Ljava/io/FileInputStream;
    move-object v12, v13

    .line 378
    .end local v13    # "input":Ljava/io/InputStream;
    .end local v15    # "maxByte":I
    .end local v22    # "url":Ljava/net/URL;
    .local v7, "e":Ljava/lang/Exception;
    .restart local v12    # "input":Ljava/io/InputStream;
    :goto_3
    :try_start_3
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "error upload:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v0, v7}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 379
    const/16 v20, 0x0

    .line 382
    if-eqz v12, :cond_3

    .line 383
    :try_start_4
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 388
    :cond_3
    :goto_4
    if-eqz v10, :cond_4

    .line 389
    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 394
    :cond_4
    :goto_5
    if-eqz v17, :cond_5

    .line 395
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 399
    :cond_5
    :goto_6
    if-eqz v6, :cond_6

    .line 400
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 403
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_7
    return v20

    .line 326
    .restart local v22    # "url":Ljava/net/URL;
    :cond_7
    :try_start_7
    const-string v23, "Content-Length"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 377
    .end local v22    # "url":Ljava/net/URL;
    :catch_1
    move-exception v7

    goto :goto_3

    .line 357
    .end local v10    # "fileInput":Ljava/io/FileInputStream;
    .end local v12    # "input":Ljava/io/InputStream;
    .restart local v4    # "buffer":[B
    .restart local v5    # "buffer2":[B
    .restart local v8    # "dif":J
    .restart local v11    # "fileInput":Ljava/io/FileInputStream;
    .restart local v13    # "input":Ljava/io/InputStream;
    .restart local v14    # "length":I
    .restart local v15    # "maxByte":I
    .restart local v16    # "maxByte2":I
    .restart local v18    # "read":J
    .restart local v22    # "url":Ljava/net/URL;
    :cond_8
    :try_start_8
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "uploadFile total:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " length:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " read:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 358
    const-wide/16 v24, 0x0

    cmp-long v23, p3, v24

    if-gtz v23, :cond_0

    goto/16 :goto_1

    .line 372
    .end local v5    # "buffer2":[B
    .end local v16    # "maxByte2":I
    :cond_9
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->flush()V

    .line 373
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v21

    .line 374
    .local v21, "responseMessage":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v20

    .line 375
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "uploadFile responseCode:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " responseMessage:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 382
    if-eqz v13, :cond_a

    .line 383
    :try_start_9
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 388
    :cond_a
    :goto_8
    if-eqz v11, :cond_b

    .line 389
    :try_start_a
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 394
    :cond_b
    :goto_9
    if-eqz v17, :cond_c

    .line 395
    :try_start_b
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 399
    :cond_c
    :goto_a
    if-eqz v6, :cond_11

    .line 400
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v10, v11

    .end local v11    # "fileInput":Ljava/io/FileInputStream;
    .restart local v10    # "fileInput":Ljava/io/FileInputStream;
    move-object v12, v13

    .end local v13    # "input":Ljava/io/InputStream;
    .restart local v12    # "input":Ljava/io/InputStream;
    goto/16 :goto_7

    .line 381
    .end local v4    # "buffer":[B
    .end local v8    # "dif":J
    .end local v14    # "length":I
    .end local v15    # "maxByte":I
    .end local v18    # "read":J
    .end local v21    # "responseMessage":Ljava/lang/String;
    .end local v22    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v23

    .line 382
    :goto_b
    if-eqz v12, :cond_d

    .line 383
    :try_start_c
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 388
    :cond_d
    :goto_c
    if-eqz v10, :cond_e

    .line 389
    :try_start_d
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 394
    :cond_e
    :goto_d
    if-eqz v17, :cond_f

    .line 395
    :try_start_e
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    .line 399
    :cond_f
    :goto_e
    if-eqz v6, :cond_10

    .line 400
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_10
    throw v23

    .line 385
    .end local v10    # "fileInput":Ljava/io/FileInputStream;
    .end local v12    # "input":Ljava/io/InputStream;
    .restart local v4    # "buffer":[B
    .restart local v8    # "dif":J
    .restart local v11    # "fileInput":Ljava/io/FileInputStream;
    .restart local v13    # "input":Ljava/io/InputStream;
    .restart local v14    # "length":I
    .restart local v15    # "maxByte":I
    .restart local v18    # "read":J
    .restart local v21    # "responseMessage":Ljava/lang/String;
    .restart local v22    # "url":Ljava/net/URL;
    :catch_2
    move-exception v23

    goto :goto_8

    .line 391
    :catch_3
    move-exception v23

    goto :goto_9

    .line 397
    :catch_4
    move-exception v23

    goto :goto_a

    .line 385
    .end local v4    # "buffer":[B
    .end local v8    # "dif":J
    .end local v11    # "fileInput":Ljava/io/FileInputStream;
    .end local v13    # "input":Ljava/io/InputStream;
    .end local v14    # "length":I
    .end local v15    # "maxByte":I
    .end local v18    # "read":J
    .end local v21    # "responseMessage":Ljava/lang/String;
    .end local v22    # "url":Ljava/net/URL;
    .restart local v7    # "e":Ljava/lang/Exception;
    .restart local v10    # "fileInput":Ljava/io/FileInputStream;
    .restart local v12    # "input":Ljava/io/InputStream;
    :catch_5
    move-exception v23

    goto/16 :goto_4

    .line 391
    :catch_6
    move-exception v23

    goto/16 :goto_5

    .line 397
    :catch_7
    move-exception v23

    goto/16 :goto_6

    .line 385
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v24

    goto :goto_c

    .line 391
    :catch_9
    move-exception v24

    goto :goto_d

    .line 397
    :catch_a
    move-exception v24

    goto :goto_e

    .line 381
    .end local v10    # "fileInput":Ljava/io/FileInputStream;
    .restart local v11    # "fileInput":Ljava/io/FileInputStream;
    .restart local v22    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v23

    move-object v10, v11

    .end local v11    # "fileInput":Ljava/io/FileInputStream;
    .restart local v10    # "fileInput":Ljava/io/FileInputStream;
    goto :goto_b

    .end local v10    # "fileInput":Ljava/io/FileInputStream;
    .end local v12    # "input":Ljava/io/InputStream;
    .restart local v11    # "fileInput":Ljava/io/FileInputStream;
    .restart local v13    # "input":Ljava/io/InputStream;
    .restart local v15    # "maxByte":I
    :catchall_2
    move-exception v23

    move-object v10, v11

    .end local v11    # "fileInput":Ljava/io/FileInputStream;
    .restart local v10    # "fileInput":Ljava/io/FileInputStream;
    move-object v12, v13

    .end local v13    # "input":Ljava/io/InputStream;
    .restart local v12    # "input":Ljava/io/InputStream;
    goto :goto_b

    .line 377
    .end local v10    # "fileInput":Ljava/io/FileInputStream;
    .end local v15    # "maxByte":I
    .restart local v11    # "fileInput":Ljava/io/FileInputStream;
    :catch_b
    move-exception v7

    move-object v10, v11

    .end local v11    # "fileInput":Ljava/io/FileInputStream;
    .restart local v10    # "fileInput":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .end local v10    # "fileInput":Ljava/io/FileInputStream;
    .end local v12    # "input":Ljava/io/InputStream;
    .restart local v4    # "buffer":[B
    .restart local v8    # "dif":J
    .restart local v11    # "fileInput":Ljava/io/FileInputStream;
    .restart local v13    # "input":Ljava/io/InputStream;
    .restart local v14    # "length":I
    .restart local v15    # "maxByte":I
    .restart local v18    # "read":J
    .restart local v21    # "responseMessage":Ljava/lang/String;
    :cond_11
    move-object v10, v11

    .end local v11    # "fileInput":Ljava/io/FileInputStream;
    .restart local v10    # "fileInput":Ljava/io/FileInputStream;
    move-object v12, v13

    .end local v13    # "input":Ljava/io/InputStream;
    .restart local v12    # "input":Ljava/io/InputStream;
    goto/16 :goto_7
.end method
