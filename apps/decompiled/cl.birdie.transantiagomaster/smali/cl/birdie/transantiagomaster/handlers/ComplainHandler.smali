.class public final Lcl/birdie/transantiagomaster/handlers/ComplainHandler;
.super Ljava/lang/Object;
.source "ComplainHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/birdie/transantiagomaster/handlers/ComplainHandler$DescargadorListaReclamos;,
        Lcl/birdie/transantiagomaster/handlers/ComplainHandler$DescargadorSocialFeed;,
        Lcl/birdie/transantiagomaster/handlers/ComplainHandler$EnviaReclamo;
    }
.end annotation


# direct methods
.method public static procesarListaReclamos(Ljava/lang/String;)I
    .locals 9
    .param p0, "jstxt"    # Ljava/lang/String;

    .prologue
    .line 97
    :try_start_0
    new-instance v3, Lorg/json/me/JSONArray;

    invoke-direct {v3, p0}, Lorg/json/me/JSONArray;-><init>(Ljava/lang/String;)V

    .line 99
    .local v3, "js":Lorg/json/me/JSONArray;
    invoke-virtual {v3}, Lorg/json/me/JSONArray;->length()I

    move-result v4

    .line 100
    .local v4, "l":I
    sget-object v7, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :try_start_1
    sget-object v6, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v6, v6, Lcl/birdie/transantiagomaster/PantallaDatos;->tiposReclamo:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 100
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    const/4 v0, 0x0

    .line 106
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v4, :cond_0

    .line 120
    :try_start_2
    sget-object v6, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iput-object p0, v6, Lcl/birdie/params/Preferencias;->ComplainsJson:Ljava/lang/String;

    .line 121
    const-string v6, "ComplainHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "procesarListaReclamos: cantidad de registros: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v6, 0x1

    .line 127
    .end local v0    # "cnt":I
    .end local v2    # "i":I
    .end local v3    # "js":Lorg/json/me/JSONArray;
    .end local v4    # "l":I
    :goto_1
    return v6

    .line 100
    .restart local v3    # "js":Lorg/json/me/JSONArray;
    .restart local v4    # "l":I
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 123
    .end local v3    # "js":Lorg/json/me/JSONArray;
    .end local v4    # "l":I
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "TransantiagoMaster"

    const-string v7, "procesar: excepcion general"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    const/4 v6, 0x0

    goto :goto_1

    .line 107
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cnt":I
    .restart local v2    # "i":I
    .restart local v3    # "js":Lorg/json/me/JSONArray;
    .restart local v4    # "l":I
    :cond_0
    :try_start_3
    invoke-virtual {v3, v2}, Lorg/json/me/JSONArray;->getJSONObject(I)Lorg/json/me/JSONObject;

    move-result-object v6

    .line 109
    invoke-static {v6}, Lcl/birdie/transantiagomaster/handlers/ComplainHandler;->procesarTipoReclamo(Lorg/json/me/JSONObject;)Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;

    move-result-object v5

    .line 110
    .local v5, "tr":Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;
    if-eqz v5, :cond_1

    .line 111
    sget-object v7, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 112
    :try_start_4
    sget-object v6, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v6, v6, Lcl/birdie/transantiagomaster/PantallaDatos;->tiposReclamo:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    add-int/lit8 v0, v0, 0x1

    .line 111
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 106
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    :catchall_1
    move-exception v6

    :try_start_5
    monitor-exit v7

    throw v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public static procesarListaReclamos([B)I
    .locals 7
    .param p0, "b"    # [B

    .prologue
    const/16 v6, 0x400

    const/4 v4, 0x0

    .line 59
    if-nez p0, :cond_0

    .line 60
    const-string v5, "ComplainHandler"

    const-string v6, "procesarListaReclamos: null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_0
    return v4

    .line 66
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .local v0, "bis":Ljava/util/zip/GZIPInputStream;
    new-array v2, v6, [B

    .line 73
    .local v2, "buf":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 76
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    :goto_1
    const/4 v5, 0x0

    const/16 v6, 0x400

    :try_start_1
    invoke-virtual {v0, v2, v5, v6}, Ljava/util/zip/GZIPInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .local v3, "len":I
    if-gtz v3, :cond_1

    .line 84
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 86
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 88
    invoke-static {v4}, Lcl/birdie/transantiagomaster/handlers/ComplainHandler;->procesarListaReclamos(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 68
    .end local v0    # "bis":Ljava/util/zip/GZIPInputStream;
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buf":[B
    .end local v3    # "len":I
    :catch_0
    move-exception v5

    const-string v5, "ComplainHandler"

    const-string v6, "procesarListaReclamos: procesar: IOException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    .restart local v0    # "bis":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buf":[B
    .restart local v3    # "len":I
    :cond_1
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v1, v2, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 80
    .end local v3    # "len":I
    :catch_1
    move-exception v5

    const-string v5, "ComplainHandler"

    const-string v6, "procesar: read"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static procesarSocialFeed(Ljava/lang/String;)I
    .locals 9
    .param p0, "jstxt"    # Ljava/lang/String;

    .prologue
    .line 383
    :try_start_0
    new-instance v3, Lorg/json/me/JSONArray;

    invoke-direct {v3, p0}, Lorg/json/me/JSONArray;-><init>(Ljava/lang/String;)V

    .line 385
    .local v3, "js":Lorg/json/me/JSONArray;
    invoke-virtual {v3}, Lorg/json/me/JSONArray;->length()I

    move-result v4

    .line 386
    .local v4, "l":I
    sget-object v7, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :try_start_1
    sget-object v6, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v6, v6, Lcl/birdie/transantiagomaster/PantallaDatos;->socialFeed:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 386
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 390
    const/4 v0, 0x0

    .line 392
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v4, :cond_0

    .line 404
    :try_start_2
    const-string v6, "ComplainHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "procesarSocialFeed: cantidad de registros: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/4 v6, 0x1

    .line 410
    .end local v0    # "cnt":I
    .end local v2    # "i":I
    .end local v3    # "js":Lorg/json/me/JSONArray;
    .end local v4    # "l":I
    :goto_1
    return v6

    .line 386
    .restart local v3    # "js":Lorg/json/me/JSONArray;
    .restart local v4    # "l":I
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 406
    .end local v3    # "js":Lorg/json/me/JSONArray;
    .end local v4    # "l":I
    :catch_0
    move-exception v1

    .line 407
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "ComplainHandler"

    const-string v7, "procesar: excepcion general"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 410
    const/4 v6, 0x0

    goto :goto_1

    .line 393
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cnt":I
    .restart local v2    # "i":I
    .restart local v3    # "js":Lorg/json/me/JSONArray;
    .restart local v4    # "l":I
    :cond_0
    :try_start_3
    invoke-virtual {v3, v2}, Lorg/json/me/JSONArray;->getJSONObject(I)Lorg/json/me/JSONObject;

    move-result-object v6

    .line 395
    invoke-static {v6}, Lcl/birdie/transantiagomaster/newobjetos/SocialPost;->procesarSocialPost(Lorg/json/me/JSONObject;)Lcl/birdie/transantiagomaster/newobjetos/SocialPost;

    move-result-object v5

    .line 396
    .local v5, "tr":Lcl/birdie/transantiagomaster/newobjetos/SocialPost;
    if-eqz v5, :cond_1

    .line 397
    sget-object v7, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 398
    :try_start_4
    sget-object v6, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v6, v6, Lcl/birdie/transantiagomaster/PantallaDatos;->socialFeed:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 400
    add-int/lit8 v0, v0, 0x1

    .line 392
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 397
    :catchall_1
    move-exception v6

    :try_start_5
    monitor-exit v7

    throw v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public static procesarSocialFeed([B)I
    .locals 9
    .param p0, "b"    # [B

    .prologue
    const/16 v6, 0x400

    const/4 v5, 0x0

    .line 344
    if-nez p0, :cond_0

    .line 345
    const-string v6, "ComplainHandler"

    const-string v7, "procesarSocialFeed: null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :goto_0
    return v5

    .line 349
    :cond_0
    new-array v2, v6, [B

    .line 353
    .local v2, "buf":[B
    :try_start_0
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    .local v0, "bis":Ljava/util/zip/GZIPInputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 362
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    :goto_1
    const/4 v6, 0x0

    const/16 v7, 0x400

    :try_start_1
    invoke-virtual {v0, v2, v6, v7}, Ljava/util/zip/GZIPInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .local v4, "len":I
    if-gtz v4, :cond_1

    .line 370
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 372
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    .line 374
    invoke-static {v5}, Lcl/birdie/transantiagomaster/handlers/ComplainHandler;->procesarSocialFeed(Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    .line 355
    .end local v0    # "bis":Ljava/util/zip/GZIPInputStream;
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "len":I
    :catch_0
    move-exception v6

    const-string v6, "ComplainHandler"

    const-string v7, "procesarSocialFeed: procesar: IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 363
    .restart local v0    # "bis":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "len":I
    :cond_1
    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {v1, v2, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 365
    .end local v4    # "len":I
    :catch_1
    move-exception v3

    .line 366
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "ComplainHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "procesar: read: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static procesarTipoReclamo(Lorg/json/me/JSONObject;)Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;
    .locals 5
    .param p0, "jso"    # Lorg/json/me/JSONObject;

    .prologue
    .line 131
    new-instance v1, Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;

    invoke-direct {v1}, Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;-><init>()V

    .line 133
    .local v1, "tr":Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;
    :try_start_0
    const-string v2, "tiporec_id"

    invoke-virtual {p0, v2}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;->id:I

    .line 134
    const-string v2, "tiporec_lang"

    invoke-virtual {p0, v2}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;->lang:Ljava/lang/String;

    .line 135
    const-string v2, "tiporec_texto"

    invoke-virtual {p0, v2}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;->texto:Ljava/lang/String;

    .line 136
    const-string v2, "tiporec_desc"

    invoke-virtual {p0, v2}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;->desc:Ljava/lang/String;

    .line 137
    const-string v2, "tiporec_objeto"

    invoke-virtual {p0, v2}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;->objeto:Ljava/lang/String;

    .line 138
    const-string v2, "tiporec_facebook"

    invoke-virtual {p0, v2}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;->facebook:Ljava/lang/String;

    .line 139
    const-string v2, "tiporec_icon"

    invoke-virtual {p0, v2}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;->icon:Ljava/lang/String;

    .line 140
    const-string v2, "tiporec_smallicon"

    invoke-virtual {p0, v2}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;->smallIcon:Ljava/lang/String;

    .line 141
    const-string v2, "tiporec_duracion"

    invoke-virtual {p0, v2}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;->duracion:I
    :try_end_0
    .catch Lorg/json/me/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v1    # "tr":Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;
    :goto_0
    return-object v1

    .line 142
    .restart local v1    # "tr":Lcl/birdie/transantiagomaster/newobjetos/TipoReclamo;
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Lorg/json/me/JSONException;
    const-string v2, "ComplainHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error en procesarTipoReclamo: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/me/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v1, 0x0

    goto :goto_0
.end method
