.class public final Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;
.super Landroid/os/AsyncTask;
.source "ComplainHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/handlers/ComplainHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnviaReclamo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "[B>;"
    }
.end annotation


# instance fields
.field caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

.field fileImagenes:[Ljava/lang/String;

.field idImagenes:[Ljava/lang/String;

.field imagenes:[Ljava/lang/String;

.field lat:D

.field lng:D

.field message:Ljava/lang/String;

.field network:Ljava/lang/String;

.field object:Ljava/lang/String;

.field problemId:I

.field type:Ljava/lang/String;

.field userId:Ljava/lang/String;

.field userSecret:Ljava/lang/String;

.field userToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;DD[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/String;
    .param p3, "problemId"    # I
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "lat"    # D
    .param p7, "lng"    # D
    .param p9, "imagenes"    # [Ljava/lang/String;
    .param p10, "idImagenes"    # [Ljava/lang/String;
    .param p11, "fileImagenes"    # [Ljava/lang/String;
    .param p12, "userId"    # Ljava/lang/String;
    .param p13, "userToken"    # Ljava/lang/String;
    .param p14, "network"    # Ljava/lang/String;
    .param p15, "userSecret"    # Ljava/lang/String;
    .param p16, "caller"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    .line 178
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 183
    iput-object p1, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;->type:Ljava/lang/String;

    .line 184
    iput-object p2, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;->object:Ljava/lang/String;

    .line 185
    iput p3, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;->problemId:I

    .line 186
    iput-object p4, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;->message:Ljava/lang/String;

    .line 187
    iput-wide p5, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;->lat:D

    .line 188
    iput-wide p7, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;->lng:D

    .line 189
    iput-object p12, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;->userId:Ljava/lang/String;

    .line 190
    iput-object p13, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;->userToken:Ljava/lang/String;

    .line 191
    iput-object p14, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;->network:Ljava/lang/String;

    .line 192
    move-object/from16 v0, p15

    iput-object v0, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;->userSecret:Ljava/lang/String;

    .line 193
    move-object/from16 v0, p16

    iput-object v0, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;->caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .line 194
    iput-object p9, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;->imagenes:[Ljava/lang/String;

    .line 195
    iput-object p10, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;->idImagenes:[Ljava/lang/String;

    .line 196
    iput-object p11, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;->fileImagenes:[Ljava/lang/String;

    .line 197
    return-void
.end method

.method private varargs doInBackground([Ljava/lang/String;)[B
    .locals 14
    .param p1, "arg0"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 201
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 224
    .local v2, "httpclient":Lorg/apache/http/client/HttpClient;
    const/4 v9, 0x0

    :try_start_0
    aget-object v7, p1, v9

    .line 225
    .local v7, "url":Ljava/lang/String;
    const-string v9, "ComplainHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "EnviaReclamo: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, v7}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 228
    .local v4, "post":Lorg/apache/http/client/methods/HttpPost;
    const-string v9, "User-Agent"

    sget-object v10, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->userAgent:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    new-instance v1, Lorg/apache/http/entity/mime/MultipartEntity;

    sget-object v9, Lorg/apache/http/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lorg/apache/http/entity/mime/HttpMultipartMode;

    const/4 v10, 0x0

    invoke-direct {v1, v9, v10}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>(Lorg/apache/http/entity/mime/HttpMultipartMode;B)V

    .line 249
    .local v1, "entity":Lorg/apache/http/entity/mime/MultipartEntity;
    const-string v9, "type"

    new-instance v10, Lorg/apache/http/entity/mime/content/StringBody;

    iget-object v11, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;->type:Ljava/lang/String;

    invoke-direct {v10, v11}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9, v10}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 250
    const-string v9, "code"

    new-instance v10, Lorg/apache/http/entity/mime/content/StringBody;

    iget-object v11, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;->object:Ljava/lang/String;

    invoke-direct {v10, v11}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9, v10}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 251
    iget-object v9, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;->message:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 252
    const-string v9, "message"

    new-instance v10, Lorg/apache/http/entity/mime/content/StringBody;

    iget-object v11, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;->message:Ljava/lang/String;

    const-string v12, "UTF-8"

    invoke-static {v12}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v1, v9, v10}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 253
    :cond_0
    const-string v9, "lat"

    new-instance v10, Lorg/apache/http/entity/mime/content/StringBody;

    iget-wide v11, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;->lat:D

    invoke-static {v11, v12}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9, v10}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 254
    const-string v9, "lng"

    new-instance v10, Lorg/apache/http/entity/mime/content/StringBody;

    iget-wide v11, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;->lng:D

    invoke-static {v11, v12}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9, v10}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 255
    const-string v9, "problemId"

    new-instance v10, Lorg/apache/http/entity/mime/content/StringBody;

    iget v11, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;->problemId:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9, v10}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 256
    iget-object v9, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;->userId:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 257
    const-string v9, "userId"

    new-instance v10, Lorg/apache/http/entity/mime/content/StringBody;

    iget-object v11, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;->userId:Ljava/lang/String;

    invoke-direct {v10, v11}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9, v10}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 258
    :cond_1
    iget-object v9, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;->userToken:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 259
    const-string v9, "userToken"

    new-instance v10, Lorg/apache/http/entity/mime/content/StringBody;

    iget-object v11, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;->userToken:Ljava/lang/String;

    invoke-direct {v10, v11}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9, v10}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 260
    :cond_2
    iget-object v9, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;->network:Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 261
    const-string v9, "network"

    new-instance v10, Lorg/apache/http/entity/mime/content/StringBody;

    iget-object v11, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;->network:Ljava/lang/String;

    invoke-direct {v10, v11}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9, v10}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 262
    :cond_3
    iget-object v9, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;->userSecret:Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 263
    const-string v9, "userSecret"

    new-instance v10, Lorg/apache/http/entity/mime/content/StringBody;

    iget-object v11, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;->userSecret:Ljava/lang/String;

    invoke-direct {v10, v11}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9, v10}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 264
    :cond_4
    iget-object v9, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;->imagenes:[Ljava/lang/String;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;->imagenes:[Ljava/lang/String;

    array-length v9, v9

    if-lez v9, :cond_5

    .line 265
    const-string v9, "imageUrl"

    new-instance v10, Lorg/apache/http/entity/mime/content/StringBody;

    iget-object v11, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;->imagenes:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-direct {v10, v11}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9, v10}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 266
    const-string v9, "imageId"

    new-instance v10, Lorg/apache/http/entity/mime/content/StringBody;

    iget-object v11, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;->idImagenes:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-direct {v10, v11}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9, v10}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 268
    :cond_5
    iget-object v9, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;->fileImagenes:[Ljava/lang/String;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;->fileImagenes:[Ljava/lang/String;

    array-length v9, v9

    if-lez v9, :cond_6

    .line 269
    const-string v9, "imageFile"

    new-instance v10, Lorg/apache/http/entity/mime/content/FileBody;

    new-instance v11, Ljava/io/File;

    iget-object v12, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;->fileImagenes:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v11}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v9, v10}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 271
    :cond_6
    invoke-virtual {v4, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 274
    invoke-interface {v2, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 275
    .local v5, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    .line 276
    .local v6, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_7

    .line 277
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 278
    .local v3, "out":Ljava/io/ByteArrayOutputStream;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-interface {v9, v3}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 279
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 280
    const-string v9, "ComplainHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "EnviaReclamo: OK: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 294
    .end local v1    # "entity":Lorg/apache/http/entity/mime/MultipartEntity;
    .end local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    .end local v6    # "statusLine":Lorg/apache/http/StatusLine;
    .end local v7    # "url":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 285
    .restart local v1    # "entity":Lorg/apache/http/entity/mime/MultipartEntity;
    .restart local v4    # "post":Lorg/apache/http/client/methods/HttpPost;
    .restart local v5    # "response":Lorg/apache/http/HttpResponse;
    .restart local v6    # "statusLine":Lorg/apache/http/StatusLine;
    .restart local v7    # "url":Ljava/lang/String;
    :cond_7
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 286
    new-instance v9, Ljava/io/IOException;

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 289
    .end local v1    # "entity":Lorg/apache/http/entity/mime/MultipartEntity;
    .end local v4    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    .end local v6    # "statusLine":Lorg/apache/http/StatusLine;
    .end local v7    # "url":Ljava/lang/String;
    :catch_0
    move-exception v9

    const-string v9, "ComplainHandler"

    const-string v10, "RequestTask: ClientProtocolException"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 291
    :catch_1
    move-exception v0

    .line 292
    .local v0, "e":Ljava/io/IOException;
    const-string v9, "ComplainHandler"

    const-string v10, "RequestTask: IOException"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected final bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;->doInBackground([Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1
    check-cast p1, [B

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPostExecute: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;->caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    iget-object v0, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;->caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    invoke-interface {v0, v2}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;->caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    invoke-interface {v0, v2}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method
