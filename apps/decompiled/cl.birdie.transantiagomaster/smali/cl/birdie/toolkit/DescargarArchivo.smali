.class public final Lcl/birdie/toolkit/DescargarArchivo;
.super Ljava/lang/Object;
.source "DescargarArchivo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/birdie/toolkit/DescargarArchivo$DescargadorCallback;
    }
.end annotation


# direct methods
.method public static descargar(Ljava/lang/String;)[B
    .locals 10
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 25
    const-string v7, "DescargarArchivo"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "descargar: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const/4 v5, 0x0

    .line 28
    .local v5, "istrm":Ljava/io/InputStream;
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 29
    .local v1, "client":Lorg/apache/http/client/HttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 31
    .local v4, "get":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    const-string v7, "User-Agent"

    sget-object v8, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->userAgent:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-interface {v1, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 35
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 37
    const/16 v7, 0x400

    new-array v2, v7, [B

    .line 39
    .local v2, "data":[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 41
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    .line 43
    .local v6, "largo":I
    :goto_0
    const/4 v7, 0x0

    const/16 v8, 0x400

    invoke-virtual {v5, v2, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 46
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "descargar: tama\u00f1o final "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " para url "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 53
    if-eqz v5, :cond_0

    .line 55
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "data":[B
    .end local v6    # "largo":I
    :cond_0
    :goto_1
    return-object v7

    .line 44
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "data":[B
    .restart local v6    # "largo":I
    :cond_1
    const/4 v7, 0x0

    :try_start_2
    invoke-virtual {v0, v2, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 49
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "data":[B
    .end local v6    # "largo":I
    :catch_0
    move-exception v3

    .line 50
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v7, "DescargarArchivo"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "descargar: excepci\u00f3n: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    if-eqz v5, :cond_2

    .line 55
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 51
    :cond_2
    :goto_2
    const/4 v7, 0x0

    goto :goto_1

    .line 52
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 53
    if-eqz v5, :cond_3

    .line 55
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 60
    :cond_3
    :goto_3
    throw v7

    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "data":[B
    .restart local v6    # "largo":I
    :catch_1
    move-exception v8

    goto :goto_1

    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "data":[B
    .end local v6    # "largo":I
    .restart local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v7

    goto :goto_2

    .end local v3    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v8

    goto :goto_3
.end method

.method public static descargarArchivo(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 259
    const-string v9, "DescargarArchivo"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "descargar: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v6, 0x0

    .line 262
    .local v6, "istrm":Ljava/io/InputStream;
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 263
    .local v1, "client":Lorg/apache/http/client/HttpClient;
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 265
    .local v5, "get":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    const-string v9, "User-Agent"

    sget-object v10, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->userAgent:Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-interface {v1, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 269
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    .line 271
    const/16 v9, 0x400

    new-array v3, v9, [B

    .line 273
    .local v3, "data":[B
    const-string v9, "tmp"

    const-string v10, ".tmp"

    new-instance v11, Ljava/io/File;

    sget-object v12, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->TMCacheDir:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v10, v11}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v8

    .line 274
    .local v8, "tempf":Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "descargarArchivo: tempfile "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 278
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    const/4 v7, 0x0

    .local v7, "largo":I
    const/4 v2, 0x0

    .line 280
    .local v2, "cnt":I
    :goto_0
    const/4 v9, 0x0

    const/16 v10, 0x400

    invoke-virtual {v6, v3, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    const/4 v9, -0x1

    if-ne v7, v9, :cond_1

    .line 285
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 287
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "descargarArchivo: tama\u00f1o final "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " para url "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 294
    if-eqz v6, :cond_0

    .line 296
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 292
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "cnt":I
    .end local v3    # "data":[B
    .end local v7    # "largo":I
    .end local v8    # "tempf":Ljava/io/File;
    :cond_0
    :goto_1
    return-object v9

    .line 281
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "cnt":I
    .restart local v3    # "data":[B
    .restart local v7    # "largo":I
    .restart local v8    # "tempf":Ljava/io/File;
    :cond_1
    add-int/2addr v2, v7

    .line 282
    const/4 v9, 0x0

    :try_start_2
    invoke-virtual {v0, v3, v9, v7}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 290
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "cnt":I
    .end local v3    # "data":[B
    .end local v7    # "largo":I
    .end local v8    # "tempf":Ljava/io/File;
    :catch_0
    move-exception v4

    .line 291
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v9, "DescargarArchivo"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "descargarArchivo: excepci\u00f3n: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 294
    if-eqz v6, :cond_2

    .line 296
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 292
    :cond_2
    :goto_2
    const/4 v9, 0x0

    goto :goto_1

    .line 293
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 294
    if-eqz v6, :cond_3

    .line 296
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 301
    :cond_3
    :goto_3
    throw v9

    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "cnt":I
    .restart local v3    # "data":[B
    .restart local v7    # "largo":I
    .restart local v8    # "tempf":Ljava/io/File;
    :catch_1
    move-exception v10

    goto :goto_1

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "cnt":I
    .end local v3    # "data":[B
    .end local v7    # "largo":I
    .end local v8    # "tempf":Ljava/io/File;
    .restart local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v9

    goto :goto_2

    .end local v4    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v10

    goto :goto_3
.end method

.method public static descargarPlanificacion(Ljava/lang/String;)[B
    .locals 15
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 201
    const/4 v11, 0x0

    .line 202
    .local v11, "serverData":[B
    const/4 v9, 0x0

    .line 203
    .local v9, "istrm":Ljava/io/InputStream;
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 204
    .local v1, "client":Lorg/apache/http/client/HttpClient;
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v6, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 207
    .local v6, "get":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    const-string v12, "User-Agent"

    sget-object v13, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->userAgent:Ljava/lang/String;

    invoke-virtual {v6, v12, v13}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v12, "Accept"

    const-string v13, "application/json"

    invoke-virtual {v6, v12, v13}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-interface {v1, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 213
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    .line 215
    const/16 v12, 0x400

    new-array v4, v12, [B

    .line 216
    .local v4, "data":[B
    const/high16 v12, 0x40000

    new-array v0, v12, [B

    .line 218
    .local v0, "buf":[B
    const/4 v2, 0x0

    .local v2, "cnt":I
    const/4 v10, 0x0

    .line 219
    .local v10, "largo":I
    const/4 v7, 0x0

    .line 221
    .local v7, "hecho":Z
    :goto_0
    if-eqz v7, :cond_1

    .line 235
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "descargarPlanificacion: tama\u00f1o final "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " para url "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    if-eqz v9, :cond_0

    .line 245
    :try_start_1
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    move-object v12, v11

    .line 241
    .end local v0    # "buf":[B
    .end local v2    # "cnt":I
    .end local v4    # "data":[B
    .end local v7    # "hecho":Z
    .end local v10    # "largo":I
    :goto_2
    return-object v12

    .line 222
    .restart local v0    # "buf":[B
    .restart local v2    # "cnt":I
    .restart local v4    # "data":[B
    .restart local v7    # "hecho":Z
    .restart local v10    # "largo":I
    :cond_1
    const/4 v12, 0x0

    const/16 v13, 0x400

    :try_start_2
    invoke-virtual {v9, v4, v12, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    const/4 v12, -0x1

    if-eq v10, v12, :cond_3

    .line 223
    const/4 v8, 0x0

    .local v8, "i":I
    move v3, v2

    .end local v2    # "cnt":I
    .local v3, "cnt":I
    :goto_3
    if-lt v8, v10, :cond_2

    move v2, v3

    .line 225
    .end local v3    # "cnt":I
    .restart local v2    # "cnt":I
    goto :goto_0

    .line 224
    .end local v2    # "cnt":I
    .restart local v3    # "cnt":I
    :cond_2
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "cnt":I
    .restart local v2    # "cnt":I
    aget-byte v12, v4, v8

    aput-byte v12, v0, v3

    .line 223
    add-int/lit8 v8, v8, 0x1

    move v3, v2

    .end local v2    # "cnt":I
    .restart local v3    # "cnt":I
    goto :goto_3

    .line 226
    .end local v3    # "cnt":I
    .end local v8    # "i":I
    .restart local v2    # "cnt":I
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "descargarPlanificacion: fin lectura, largo total "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    new-array v11, v2, [B

    .line 228
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_4
    if-lt v8, v2, :cond_4

    .line 230
    const/4 v0, 0x0

    .line 231
    const/4 v7, 0x1

    goto :goto_0

    .line 229
    :cond_4
    aget-byte v12, v0, v8

    aput-byte v12, v11, v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 238
    .end local v0    # "buf":[B
    .end local v2    # "cnt":I
    .end local v4    # "data":[B
    .end local v7    # "hecho":Z
    .end local v8    # "i":I
    .end local v10    # "largo":I
    :catch_0
    move-exception v5

    .line 239
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v12, "DescargarArchivo"

    .line 240
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "descargarPlanificacion: excepci\u00f3n: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 239
    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 243
    if-eqz v9, :cond_5

    .line 245
    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 241
    :cond_5
    :goto_5
    const/4 v12, 0x0

    goto :goto_2

    .line 242
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    .line 243
    if-eqz v9, :cond_6

    .line 245
    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 250
    :cond_6
    :goto_6
    throw v12

    .restart local v0    # "buf":[B
    .restart local v2    # "cnt":I
    .restart local v4    # "data":[B
    .restart local v7    # "hecho":Z
    .restart local v10    # "largo":I
    :catch_1
    move-exception v12

    goto :goto_1

    .end local v0    # "buf":[B
    .end local v2    # "cnt":I
    .end local v4    # "data":[B
    .end local v7    # "hecho":Z
    .end local v10    # "largo":I
    .restart local v5    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v12

    goto :goto_5

    .end local v5    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v13

    goto :goto_6
.end method
