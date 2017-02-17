.class final Lorg/osmdroid/contributor/GpxToPHPUploader$1;
.super Ljava/lang/Object;
.source "GpxToPHPUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/osmdroid/contributor/GpxToPHPUploader;->uploadAsync(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$recordedGeoPoints:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lorg/osmdroid/contributor/GpxToPHPUploader$1;->val$recordedGeoPoints:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 40
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/osmdroid/contributor/GpxToPHPUploader$1;->val$recordedGeoPoints:Ljava/util/ArrayList;

    invoke-static {v12}, Lorg/osmdroid/contributor/util/Util;->isSufficienDataForUpload(Ljava/util/ArrayList;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 79
    :goto_0
    return-void

    .line 43
    :cond_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/osmdroid/contributor/GpxToPHPUploader$1;->val$recordedGeoPoints:Ljava/util/ArrayList;

    invoke-static {v12}, Lorg/osmdroid/contributor/util/RecordedRouteGPXFormatter;->create(Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 45
    .local v3, "gpxInputStream":Ljava/io/InputStream;
    invoke-static {}, Lorg/osmdroid/http/HttpClientFactory;->createHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v4

    .line 47
    .local v4, "httpClient":Lorg/apache/http/client/HttpClient;
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    const-string v12, "http://www.PLACEYOURDOMAINHERE.com/anyfolder/gpxuploader/upload.php"

    invoke-direct {v7, v12}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 50
    .local v7, "request":Lorg/apache/http/client/methods/HttpPost;
    new-instance v8, Lorg/apache/http/entity/mime/MultipartEntity;

    invoke-direct {v8}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 51
    .local v8, "requestEntity":Lorg/apache/http/entity/mime/MultipartEntity;
    const-string v12, "gpxfile"

    new-instance v13, Lorg/apache/http/entity/mime/content/InputStreamBody;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".gpx"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v3, v14}, Lorg/apache/http/entity/mime/content/InputStreamBody;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v8, v12, v13}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 54
    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v12

    const-string v13, "http.protocol.expect-continue"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 57
    invoke-virtual {v7, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 59
    invoke-interface {v4, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 60
    .local v9, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    .line 62
    .local v11, "status":I
    const/16 v12, 0xc8

    if-eq v11, v12, :cond_1

    .line 63
    # getter for: Lorg/osmdroid/contributor/GpxToPHPUploader;->logger:Lorg/slf4j/Logger;
    invoke-static {}, Lorg/osmdroid/contributor/GpxToPHPUploader;->access$000()Lorg/slf4j/Logger;

    move-result-object v12

    const-string v13, "GPXUploader"

    const-string v14, "status != HttpStatus.SC_OK"

    invoke-interface {v12, v13, v14}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 76
    .end local v3    # "gpxInputStream":Ljava/io/InputStream;
    .end local v4    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v7    # "request":Lorg/apache/http/client/methods/HttpPost;
    .end local v8    # "requestEntity":Lorg/apache/http/entity/mime/MultipartEntity;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    .end local v11    # "status":I
    :catch_0
    move-exception v12

    goto :goto_0

    .line 65
    .restart local v3    # "gpxInputStream":Ljava/io/InputStream;
    .restart local v4    # "httpClient":Lorg/apache/http/client/HttpClient;
    .restart local v7    # "request":Lorg/apache/http/client/methods/HttpPost;
    .restart local v8    # "requestEntity":Lorg/apache/http/entity/mime/MultipartEntity;
    .restart local v9    # "response":Lorg/apache/http/HttpResponse;
    .restart local v11    # "status":I
    :cond_1
    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v12, Ljava/io/BufferedInputStream;

    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 68
    .local v5, "r":Ljava/io/Reader;
    const/16 v12, 0x2000

    new-array v2, v12, [C

    .line 70
    .local v2, "buf":[C
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v10, "sb":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v5, v2}, Ljava/io/Reader;->read([C)I

    move-result v6

    .local v6, "read":I
    const/4 v12, -0x1

    if-eq v6, v12, :cond_2

    .line 72
    const/4 v12, 0x0

    invoke-virtual {v10, v2, v12, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 74
    :cond_2
    # getter for: Lorg/osmdroid/contributor/GpxToPHPUploader;->logger:Lorg/slf4j/Logger;
    invoke-static {}, Lorg/osmdroid/contributor/GpxToPHPUploader;->access$000()Lorg/slf4j/Logger;

    move-result-object v12

    const-string v13, "GPXUploader"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Response: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method
