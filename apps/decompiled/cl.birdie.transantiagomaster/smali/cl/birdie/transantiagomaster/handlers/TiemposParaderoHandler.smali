.class public final Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;
.super Ljava/lang/Object;
.source "TiemposParaderoHandler.java"


# instance fields
.field public origen:Ljava/lang/String;

.field public paradero:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

.field public tiempos:[Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;

.field public urlbanner:Ljava/lang/String;

.field public urlclick:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;->urlbanner:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;->urlclick:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;->tiempos:[Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;

    .line 32
    iput-object v0, p0, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;->paradero:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .line 33
    iput-object v0, p0, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;->origen:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Lcl/birdie/transantiagomaster/newobjetos/Paradero;)V
    .locals 0
    .param p1, "p"    # Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;->paradero:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .line 38
    return-void
.end method


# virtual methods
.method public final procesar([B)I
    .locals 16
    .param p1, "b"    # [B

    .prologue
    .line 41
    if-nez p1, :cond_0

    .line 44
    const/4 v4, 0x0

    .line 120
    :goto_0
    return v4

    .line 48
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    new-instance v14, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v14}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .local v1, "bis":Ljava/util/zip/GZIPInputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 54
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v14, 0x400

    new-array v3, v14, [B

    .line 57
    .local v3, "buf":[B
    :goto_1
    const/4 v14, 0x0

    const/16 v15, 0x400

    :try_start_1
    invoke-virtual {v1, v3, v14, v15}, Ljava/util/zip/GZIPInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v12

    .local v12, "len":I
    if-gtz v12, :cond_1

    .line 65
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v11

    .line 66
    .local v11, "jstxt":Ljava/lang/String;
    const/4 v4, 0x0

    .line 68
    .local v4, "cnt":I
    :try_start_2
    new-instance v7, Lorg/json/me/JSONArray;

    invoke-direct {v7, v11}, Lorg/json/me/JSONArray;-><init>(Ljava/lang/String;)V

    .line 78
    .local v7, "js":Lorg/json/me/JSONArray;
    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Lorg/json/me/JSONArray;->getJSONArray(I)Lorg/json/me/JSONArray;

    move-result-object v10

    .line 82
    .local v10, "jss":Lorg/json/me/JSONArray;
    invoke-virtual {v10}, Lorg/json/me/JSONArray;->length()I

    move-result v8

    .line 83
    .local v8, "jslength":I
    new-array v14, v8, [Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;->tiempos:[Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;

    .line 85
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-lt v6, v8, :cond_2

    .line 109
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;->urlbanner:Ljava/lang/String;

    .line 110
    const/4 v14, 0x2

    invoke-virtual {v7, v14}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;->urlclick:Ljava/lang/String;

    .line 111
    const/4 v14, 0x3

    invoke-virtual {v7, v14}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;->origen:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/me/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    .line 118
    .end local v6    # "i":I
    .end local v7    # "js":Lorg/json/me/JSONArray;
    .end local v8    # "jslength":I
    .end local v10    # "jss":Lorg/json/me/JSONArray;
    :goto_3
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "procesar: cnt "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 50
    .end local v1    # "bis":Ljava/util/zip/GZIPInputStream;
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "buf":[B
    .end local v4    # "cnt":I
    .end local v11    # "jstxt":Ljava/lang/String;
    .end local v12    # "len":I
    :catch_0
    move-exception v14

    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    .line 51
    const/4 v4, 0x0

    goto :goto_0

    .line 58
    .restart local v1    # "bis":Ljava/util/zip/GZIPInputStream;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "buf":[B
    .restart local v12    # "len":I
    :cond_1
    const/4 v14, 0x0

    :try_start_3
    invoke-virtual {v2, v3, v14, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 61
    .end local v12    # "len":I
    :catch_1
    move-exception v14

    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    const/4 v4, 0x0

    goto :goto_0

    .line 87
    .restart local v4    # "cnt":I
    .restart local v6    # "i":I
    .restart local v7    # "js":Lorg/json/me/JSONArray;
    .restart local v8    # "jslength":I
    .restart local v10    # "jss":Lorg/json/me/JSONArray;
    .restart local v11    # "jstxt":Ljava/lang/String;
    .restart local v12    # "len":I
    :cond_2
    :try_start_4
    invoke-virtual {v10, v6}, Lorg/json/me/JSONArray;->getJSONArray(I)Lorg/json/me/JSONArray;

    move-result-object v9

    .line 89
    .local v9, "jso":Lorg/json/me/JSONArray;
    new-instance v13, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;

    invoke-direct {v13}, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;-><init>()V

    .line 90
    .local v13, "t":Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->servicio:Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/me/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    .line 91
    const/4 v14, 0x1

    :try_start_5
    invoke-virtual {v9, v14}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->distancia1:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/json/me/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    .line 92
    :goto_4
    const/4 v14, 0x2

    :try_start_6
    invoke-virtual {v9, v14}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->tiempo1:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/json/me/JSONException; {:try_start_6 .. :try_end_6} :catch_3

    .line 96
    :goto_5
    const/4 v14, 0x3

    :try_start_7
    invoke-virtual {v9, v14}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v13, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->codigoRespuesta:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lorg/json/me/JSONException; {:try_start_7 .. :try_end_7} :catch_3

    .line 98
    :goto_6
    const/4 v14, 0x4

    :try_start_8
    invoke-virtual {v9, v14}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->distancia2:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catch Lorg/json/me/JSONException; {:try_start_8 .. :try_end_8} :catch_3

    .line 99
    :goto_7
    const/4 v14, 0x5

    :try_start_9
    invoke-virtual {v9, v14}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->tiempo2:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catch Lorg/json/me/JSONException; {:try_start_9 .. :try_end_9} :catch_3

    .line 100
    :goto_8
    const/4 v14, 0x6

    :try_start_a
    invoke-virtual {v9, v14}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->ppu1:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8
    .catch Lorg/json/me/JSONException; {:try_start_a .. :try_end_a} :catch_3

    .line 101
    :goto_9
    const/4 v14, 0x7

    :try_start_b
    invoke-virtual {v9, v14}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->ppu2:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9
    .catch Lorg/json/me/JSONException; {:try_start_b .. :try_end_b} :catch_3

    .line 102
    :goto_a
    const/16 v14, 0x8

    :try_start_c
    invoke-virtual {v9, v14}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->trip_headsign:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a
    .catch Lorg/json/me/JSONException; {:try_start_c .. :try_end_c} :catch_3

    .line 104
    :goto_b
    :try_start_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;->tiempos:[Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;

    aput-object v13, v14, v6

    .line 105
    add-int/lit8 v4, v4, 0x1

    .line 85
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 91
    :catch_2
    move-exception v14

    const-string v14, ""

    iput-object v14, v13, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->distancia1:Ljava/lang/String;
    :try_end_d
    .catch Lorg/json/me/JSONException; {:try_start_d .. :try_end_d} :catch_3

    goto :goto_4

    .line 115
    .end local v6    # "i":I
    .end local v7    # "js":Lorg/json/me/JSONArray;
    .end local v8    # "jslength":I
    .end local v9    # "jso":Lorg/json/me/JSONArray;
    .end local v10    # "jss":Lorg/json/me/JSONArray;
    .end local v13    # "t":Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;
    :catch_3
    move-exception v14

    const/4 v5, 0x0

    .local v5, "e":Lorg/json/me/JSONException;
    invoke-virtual {v14}, Lorg/json/me/JSONException;->printStackTrace()V

    goto/16 :goto_3

    .line 92
    .end local v5    # "e":Lorg/json/me/JSONException;
    .restart local v6    # "i":I
    .restart local v7    # "js":Lorg/json/me/JSONArray;
    .restart local v8    # "jslength":I
    .restart local v9    # "jso":Lorg/json/me/JSONArray;
    .restart local v10    # "jss":Lorg/json/me/JSONArray;
    .restart local v13    # "t":Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;
    :catch_4
    move-exception v14

    :try_start_e
    const-string v14, ""

    iput-object v14, v13, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->tiempo1:Ljava/lang/String;

    goto :goto_5

    .line 96
    :catch_5
    move-exception v14

    const/4 v14, 0x0

    iput v14, v13, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->codigoRespuesta:I

    goto :goto_6

    .line 98
    :catch_6
    move-exception v14

    const-string v14, ""

    iput-object v14, v13, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->distancia2:Ljava/lang/String;

    goto :goto_7

    .line 99
    :catch_7
    move-exception v14

    const-string v14, ""

    iput-object v14, v13, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->tiempo2:Ljava/lang/String;

    goto :goto_8

    .line 100
    :catch_8
    move-exception v14

    const-string v14, ""

    iput-object v14, v13, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->ppu1:Ljava/lang/String;

    goto :goto_9

    .line 101
    :catch_9
    move-exception v14

    const-string v14, ""

    iput-object v14, v13, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->ppu2:Ljava/lang/String;

    goto :goto_a

    .line 102
    :catch_a
    move-exception v14

    const-string v14, ""

    iput-object v14, v13, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->trip_headsign:Ljava/lang/String;
    :try_end_e
    .catch Lorg/json/me/JSONException; {:try_start_e .. :try_end_e} :catch_3

    goto :goto_b
.end method
