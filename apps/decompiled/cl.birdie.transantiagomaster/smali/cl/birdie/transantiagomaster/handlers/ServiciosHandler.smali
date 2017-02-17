.class public final Lcl/birdie/transantiagomaster/handlers/ServiciosHandler;
.super Ljava/lang/Object;
.source "ServiciosHandler.java"


# instance fields
.field public resultados:[Lcl/birdie/transantiagomaster/newobjetos/Servicio;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosHandler;->resultados:[Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    .line 17
    return-void
.end method


# virtual methods
.method public final procesar([B)I
    .locals 14
    .param p1, "b"    # [B

    .prologue
    .line 21
    if-nez p1, :cond_0

    .line 22
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "procesar servicios null"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 23
    const/4 v3, 0x0

    .line 104
    :goto_0
    return v3

    .line 26
    :cond_0
    const/4 v3, 0x0

    .line 28
    .local v3, "cnt":I
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "descomprimiendo "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v13, p1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " bytes"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 31
    :try_start_0
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-direct {v11, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v11}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .local v0, "bis":Ljava/util/zip/GZIPInputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 36
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v11, 0x400

    new-array v2, v11, [B

    .line 39
    .local v2, "buf":[B
    :goto_1
    const/4 v11, 0x0

    const/16 v12, 0x400

    :try_start_1
    invoke-virtual {v0, v2, v11, v12}, Ljava/util/zip/GZIPInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    .local v9, "len":I
    if-gtz v9, :cond_1

    .line 47
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "procesando servicios, leidos "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " bytes"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 49
    if-gtz v3, :cond_2

    .line 50
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "saliendo, len <= 0"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 51
    const/4 v3, -0x1

    goto :goto_0

    .line 33
    .end local v0    # "bis":Ljava/util/zip/GZIPInputStream;
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buf":[B
    .end local v9    # "len":I
    :catch_0
    move-exception v11

    const/4 v3, 0x0

    goto :goto_0

    .line 40
    .restart local v0    # "bis":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buf":[B
    .restart local v9    # "len":I
    :cond_1
    const/4 v11, 0x0

    :try_start_2
    invoke-virtual {v1, v2, v11, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 41
    add-int/2addr v3, v9

    goto :goto_1

    .line 44
    .end local v9    # "len":I
    :catch_1
    move-exception v11

    const/4 v3, 0x0

    goto :goto_0

    .line 54
    .restart local v9    # "len":I
    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v7

    .line 55
    .local v7, "jstxt":Ljava/lang/String;
    const/4 v3, 0x0

    .line 58
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "parseando string"

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 65
    :try_start_3
    new-instance v5, Lorg/json/me/JSONArray;

    invoke-direct {v5, v7}, Lorg/json/me/JSONArray;-><init>(Ljava/lang/String;)V

    .line 68
    .local v5, "js":Lorg/json/me/JSONArray;
    invoke-virtual {v5}, Lorg/json/me/JSONArray;->length()I

    move-result v8

    .line 73
    .local v8, "largo":I
    if-gtz v8, :cond_3

    .line 74
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 76
    :cond_3
    new-array v11, v8, [Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    iput-object v11, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosHandler;->resultados:[Lcl/birdie/transantiagomaster/newobjetos/Servicio;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 78
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-lt v4, v8, :cond_4

    .line 102
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "retornando "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " registros"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 81
    :cond_4
    :try_start_4
    invoke-virtual {v5, v4}, Lorg/json/me/JSONArray;->getJSONArray(I)Lorg/json/me/JSONArray;

    move-result-object v6

    .line 83
    .local v6, "jsa":Lorg/json/me/JSONArray;
    new-instance v10, Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    invoke-direct {v10}, Lcl/birdie/transantiagomaster/newobjetos/Servicio;-><init>()V

    .line 85
    .local v10, "s":Lcl/birdie/transantiagomaster/newobjetos/Servicio;
    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "UTF-8"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    .line 86
    const-string v13, "UTF-8"

    invoke-direct {v11, v12, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    .line 85
    iput-object v11, v10, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->nombre:Ljava/lang/String;

    .line 87
    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "UTF-8"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    .line 88
    const-string v13, "UTF-8"

    invoke-direct {v11, v12, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 87
    iput-object v11, v10, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->textoIda:Ljava/lang/String;

    .line 89
    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x2

    invoke-virtual {v6, v12}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "UTF-8"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    .line 90
    const-string v13, "UTF-8"

    invoke-direct {v11, v12, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 89
    iput-object v11, v10, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->textoRegreso:Ljava/lang/String;

    .line 92
    iget-object v11, p0, Lcl/birdie/transantiagomaster/handlers/ServiciosHandler;->resultados:[Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    aput-object v10, v11, v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 94
    add-int/lit8 v3, v3, 0x1

    .line 78
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 98
    .end local v4    # "i":I
    .end local v5    # "js":Lorg/json/me/JSONArray;
    .end local v6    # "jsa":Lorg/json/me/JSONArray;
    .end local v8    # "largo":I
    .end local v10    # "s":Lcl/birdie/transantiagomaster/newobjetos/Servicio;
    :catch_2
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    const/4 v3, 0x0

    goto/16 :goto_0
.end method
