.class public final Lcl/birdie/transantiagomaster/handlers/ParaderosJsonNewHandler;
.super Ljava/lang/Object;
.source "ParaderosJsonNewHandler.java"


# static fields
.field static buf:[B

.field static buflen:I


# instance fields
.field public bips:[Lcl/birdie/transantiagomaster/newobjetos/Bip;

.field public metros:[Lcl/birdie/transantiagomaster/newobjetos/Metro;

.field public paraderos:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const v0, 0x8000

    .line 28
    sput v0, Lcl/birdie/transantiagomaster/handlers/ParaderosJsonNewHandler;->buflen:I

    new-array v0, v0, [B

    sput-object v0, Lcl/birdie/transantiagomaster/handlers/ParaderosJsonNewHandler;->buf:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcl/birdie/transantiagomaster/handlers/ParaderosJsonNewHandler;->paraderos:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .line 24
    iput-object v0, p0, Lcl/birdie/transantiagomaster/handlers/ParaderosJsonNewHandler;->bips:[Lcl/birdie/transantiagomaster/newobjetos/Bip;

    .line 25
    iput-object v0, p0, Lcl/birdie/transantiagomaster/handlers/ParaderosJsonNewHandler;->metros:[Lcl/birdie/transantiagomaster/newobjetos/Metro;

    .line 21
    return-void
.end method


# virtual methods
.method public final procesar([B)I
    .locals 54
    .param p1, "b"    # [B

    .prologue
    .line 34
    if-nez p1, :cond_1

    .line 35
    const/16 v46, -0x1

    .line 242
    :cond_0
    :goto_0
    return v46

    .line 39
    :cond_1
    :try_start_0
    new-instance v25, Ljava/util/zip/GZIPInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v25

    invoke-direct {v0, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .local v25, "bis":Ljava/util/zip/GZIPInputStream;
    const/16 v26, 0x0

    .line 48
    .local v26, "cnt":I
    :cond_2
    :goto_1
    :try_start_1
    sget-object v3, Lcl/birdie/transantiagomaster/handlers/ParaderosJsonNewHandler;->buf:[B

    sget v4, Lcl/birdie/transantiagomaster/handlers/ParaderosJsonNewHandler;->buflen:I

    sub-int v4, v4, v26

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v3, v1, v4}, Ljava/util/zip/GZIPInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v35

    .local v35, "len":I
    if-gtz v35, :cond_6

    .line 67
    new-instance v31, Ljava/lang/String;

    sget-object v3, Lcl/birdie/transantiagomaster/handlers/ParaderosJsonNewHandler;->buf:[B

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 69
    .local v31, "jstxt":Ljava/lang/String;
    const/16 v46, 0x0

    .line 74
    .local v46, "parsz":I
    :try_start_2
    new-instance v30, Lorg/json/me/JSONObject;

    invoke-direct/range {v30 .. v31}, Lorg/json/me/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 76
    .local v30, "js":Lorg/json/me/JSONObject;
    :try_start_3
    const-string v3, "par"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lorg/json/me/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/me/JSONArray;

    move-result-object v45

    .line 82
    .local v45, "pars":Lorg/json/me/JSONArray;
    invoke-virtual/range {v45 .. v45}, Lorg/json/me/JSONArray;->length()I

    move-result v46

    .line 85
    if-lez v46, :cond_3

    .line 86
    move/from16 v0, v46

    new-array v3, v0, [Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcl/birdie/transantiagomaster/handlers/ParaderosJsonNewHandler;->paraderos:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    :try_end_3
    .catch Lorg/json/me/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 88
    :cond_3
    const/16 v29, 0x0

    .local v29, "j":I
    :goto_2
    move/from16 v0, v29

    move/from16 v1, v46

    if-lt v0, v1, :cond_8

    .line 137
    .end local v29    # "j":I
    .end local v45    # "pars":Lorg/json/me/JSONArray;
    :goto_3
    :try_start_4
    const-string v3, "bip"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lorg/json/me/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/me/JSONArray;

    move-result-object v22

    .line 140
    .local v22, "bip":Lorg/json/me/JSONArray;
    invoke-virtual/range {v22 .. v22}, Lorg/json/me/JSONArray;->length()I

    move-result v24

    .line 143
    .local v24, "bipsz":I
    if-lez v24, :cond_4

    .line 144
    move/from16 v0, v24

    new-array v3, v0, [Lcl/birdie/transantiagomaster/newobjetos/Bip;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcl/birdie/transantiagomaster/handlers/ParaderosJsonNewHandler;->bips:[Lcl/birdie/transantiagomaster/newobjetos/Bip;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 146
    :cond_4
    const/16 v29, 0x0

    .restart local v29    # "j":I
    :goto_4
    move/from16 v0, v29

    move/from16 v1, v24

    if-lt v0, v1, :cond_e

    .line 172
    .end local v22    # "bip":Lorg/json/me/JSONArray;
    .end local v24    # "bipsz":I
    .end local v29    # "j":I
    :goto_5
    :try_start_5
    const-string v3, "metro"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lorg/json/me/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/me/JSONArray;

    move-result-object v39

    .line 175
    .local v39, "metro":Lorg/json/me/JSONArray;
    invoke-virtual/range {v39 .. v39}, Lorg/json/me/JSONArray;->length()I

    move-result v41

    .line 178
    .local v41, "metrosz":I
    if-lez v41, :cond_5

    .line 179
    move/from16 v0, v41

    new-array v3, v0, [Lcl/birdie/transantiagomaster/newobjetos/Metro;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcl/birdie/transantiagomaster/handlers/ParaderosJsonNewHandler;->metros:[Lcl/birdie/transantiagomaster/newobjetos/Metro;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 181
    :cond_5
    const/16 v29, 0x0

    .restart local v29    # "j":I
    :goto_6
    move/from16 v0, v29

    move/from16 v1, v41

    if-lt v0, v1, :cond_10

    .line 221
    .end local v29    # "j":I
    .end local v39    # "metro":Lorg/json/me/JSONArray;
    .end local v41    # "metrosz":I
    :goto_7
    :try_start_6
    invoke-static {}, Lcl/birdie/transantiagomaster/maps/layers/LayerController;->borrarLayers()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 224
    :try_start_7
    const-string v3, "layers"

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lorg/json/me/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/me/JSONArray;

    move-result-object v34

    .line 226
    .local v34, "layers":Lorg/json/me/JSONArray;
    invoke-virtual/range {v34 .. v34}, Lorg/json/me/JSONArray;->length()I

    move-result v33

    .line 227
    .local v33, "l":I
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_8
    move/from16 v0, v28

    move/from16 v1, v33

    if-ge v0, v1, :cond_0

    .line 228
    move-object/from16 v0, v34

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/me/JSONArray;->getJSONObject(I)Lorg/json/me/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcl/birdie/transantiagomaster/maps/layers/LayerController;->procesarLayer(Lorg/json/me/JSONObject;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 229
    add-int/lit8 v46, v46, 0x1

    .line 227
    add-int/lit8 v28, v28, 0x1

    goto :goto_8

    .line 41
    .end local v25    # "bis":Ljava/util/zip/GZIPInputStream;
    .end local v26    # "cnt":I
    .end local v28    # "i":I
    .end local v30    # "js":Lorg/json/me/JSONObject;
    .end local v31    # "jstxt":Ljava/lang/String;
    .end local v33    # "l":I
    .end local v34    # "layers":Lorg/json/me/JSONArray;
    .end local v35    # "len":I
    .end local v46    # "parsz":I
    :catch_0
    move-exception v3

    const-string v3, "TransantiagoMaster"

    const-string v4, "procesar: IOException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/16 v46, 0x0

    goto/16 :goto_0

    .line 50
    .restart local v25    # "bis":Ljava/util/zip/GZIPInputStream;
    .restart local v26    # "cnt":I
    .restart local v35    # "len":I
    :cond_6
    add-int v26, v26, v35

    .line 51
    :try_start_8
    sget v3, Lcl/birdie/transantiagomaster/handlers/ParaderosJsonNewHandler;->buflen:I

    move/from16 v0, v26

    if-ne v0, v3, :cond_2

    .line 53
    sget v3, Lcl/birdie/transantiagomaster/handlers/ParaderosJsonNewHandler;->buflen:I

    add-int/lit16 v0, v3, 0x4000

    move/from16 v43, v0

    .line 54
    .local v43, "newbuflen":I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "agrandando buffer a "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move/from16 v0, v43

    new-array v0, v0, [B

    move-object/from16 v42, v0

    .line 56
    .local v42, "newbuf":[B
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_9
    move/from16 v0, v28

    move/from16 v1, v26

    if-lt v0, v1, :cond_7

    .line 58
    sput-object v42, Lcl/birdie/transantiagomaster/handlers/ParaderosJsonNewHandler;->buf:[B

    .line 59
    sput v43, Lcl/birdie/transantiagomaster/handlers/ParaderosJsonNewHandler;->buflen:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_1

    .line 63
    .end local v28    # "i":I
    .end local v35    # "len":I
    .end local v42    # "newbuf":[B
    .end local v43    # "newbuflen":I
    :catch_1
    move-exception v3

    const-string v3, "TransantiagoMaster"

    const-string v4, "procesar: read"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/16 v46, 0x0

    goto/16 :goto_0

    .line 57
    .restart local v28    # "i":I
    .restart local v35    # "len":I
    .restart local v42    # "newbuf":[B
    .restart local v43    # "newbuflen":I
    :cond_7
    :try_start_9
    sget-object v3, Lcl/birdie/transantiagomaster/handlers/ParaderosJsonNewHandler;->buf:[B

    aget-byte v3, v3, v28

    aput-byte v3, v42, v28
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 56
    add-int/lit8 v28, v28, 0x1

    goto :goto_9

    .line 89
    .end local v28    # "i":I
    .end local v42    # "newbuf":[B
    .end local v43    # "newbuflen":I
    .restart local v29    # "j":I
    .restart local v30    # "js":Lorg/json/me/JSONObject;
    .restart local v31    # "jstxt":Ljava/lang/String;
    .restart local v45    # "pars":Lorg/json/me/JSONArray;
    .restart local v46    # "parsz":I
    :cond_8
    :try_start_a
    move-object/from16 v0, v45

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/me/JSONArray;->getJSONArray(I)Lorg/json/me/JSONArray;

    move-result-object v44

    .line 91
    .local v44, "par":Lorg/json/me/JSONArray;
    new-instance v7, Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 92
    .local v7, "codigo":Ljava/lang/String;
    new-instance v8, Ljava/lang/String;

    const/4 v3, 0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 96
    .local v8, "texto":Ljava/lang/String;
    const/4 v3, 0x3

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v48

    .line 97
    .local v48, "slat":Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 98
    .local v49, "slng":Ljava/lang/String;
    if-eqz v48, :cond_a

    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a

    .line 99
    new-instance v2, Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    invoke-static/range {v48 .. v48}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static/range {v49 .. v49}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-direct/range {v2 .. v8}, Lcl/birdie/transantiagomaster/newobjetos/Paradero;-><init>(DDLjava/lang/String;Ljava/lang/String;)V

    .line 104
    .local v2, "p":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/birdie/transantiagomaster/handlers/ParaderosJsonNewHandler;->paraderos:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    aput-object v2, v3, v29

    .line 106
    const/4 v3, 0x5

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Lorg/json/me/JSONArray;->getJSONArray(I)Lorg/json/me/JSONArray;

    move-result-object v51

    .line 108
    .local v51, "svs":Lorg/json/me/JSONArray;
    invoke-virtual/range {v51 .. v51}, Lorg/json/me/JSONArray;->length()I

    move-result v52

    .line 110
    .local v52, "sz":I
    if-lez v52, :cond_9

    .line 111
    move/from16 v0, v52

    new-array v3, v0, [Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    iput-object v3, v2, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->servicios:[Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    .line 112
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_b
    move/from16 v0, v28

    move/from16 v1, v52

    if-lt v0, v1, :cond_b

    .line 88
    .end local v28    # "i":I
    :cond_9
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_2

    .line 102
    .end local v2    # "p":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    .end local v51    # "svs":Lorg/json/me/JSONArray;
    .end local v52    # "sz":I
    :cond_a
    new-instance v2, Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    invoke-direct/range {v2 .. v8}, Lcl/birdie/transantiagomaster/newobjetos/Paradero;-><init>(DDLjava/lang/String;Ljava/lang/String;)V

    .restart local v2    # "p":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    goto :goto_a

    .line 113
    .restart local v28    # "i":I
    .restart local v51    # "svs":Lorg/json/me/JSONArray;
    .restart local v52    # "sz":I
    :cond_b
    new-instance v47, Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    invoke-direct/range {v47 .. v47}, Lcl/birdie/transantiagomaster/newobjetos/Servicio;-><init>()V

    .line 114
    .local v47, "s":Lcl/birdie/transantiagomaster/newobjetos/Servicio;
    move-object/from16 v0, v51

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/me/JSONArray;->getJSONArray(I)Lorg/json/me/JSONArray;

    move-result-object v50

    .line 115
    .local v50, "sv":Lorg/json/me/JSONArray;
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v47

    iput-object v3, v0, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->nombre:Ljava/lang/String;

    .line 116
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x1

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, v47

    iput-object v3, v0, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->textoIda:Ljava/lang/String;

    .line 117
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x2

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, v47

    iput-object v3, v0, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->textoRegreso:Ljava/lang/String;

    .line 118
    new-instance v53, Ljava/lang/String;

    const/4 v3, 0x3

    move-object/from16 v0, v50

    invoke-virtual {v0, v3}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "UTF-8"

    move-object/from16 v0, v53

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 119
    .local v53, "tmp":Ljava/lang/String;
    const-string v3, "I"

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_d

    .line 121
    const/4 v3, 0x0

    move-object/from16 v0, v47

    iput v3, v0, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->sentido:I

    .line 125
    :cond_c
    :goto_c
    iget-object v3, v2, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->servicios:[Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    aput-object v47, v3, v28

    .line 112
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_b

    .line 122
    :cond_d
    const-string v3, "R"

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_c

    .line 123
    const/4 v3, 0x1

    move-object/from16 v0, v47

    iput v3, v0, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->sentido:I
    :try_end_a
    .catch Lorg/json/me/JSONException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_c

    .line 132
    .end local v2    # "p":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    .end local v7    # "codigo":Ljava/lang/String;
    .end local v8    # "texto":Ljava/lang/String;
    .end local v28    # "i":I
    .end local v29    # "j":I
    .end local v44    # "par":Lorg/json/me/JSONArray;
    .end local v45    # "pars":Lorg/json/me/JSONArray;
    .end local v47    # "s":Lcl/birdie/transantiagomaster/newobjetos/Servicio;
    .end local v48    # "slat":Ljava/lang/String;
    .end local v49    # "slng":Ljava/lang/String;
    .end local v50    # "sv":Lorg/json/me/JSONArray;
    .end local v51    # "svs":Lorg/json/me/JSONArray;
    .end local v52    # "sz":I
    .end local v53    # "tmp":Ljava/lang/String;
    :catch_2
    move-exception v27

    .line 133
    .local v27, "e":Lorg/json/me/JSONException;
    :try_start_b
    const-string v3, "ParaderosJsonNewHandler"

    const-string v4, "procesar: excepcion paraderos"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_3

    .line 237
    .end local v27    # "e":Lorg/json/me/JSONException;
    .end local v30    # "js":Lorg/json/me/JSONObject;
    :catch_3
    move-exception v27

    .line 238
    .local v27, "e":Ljava/lang/Exception;
    const-string v3, "TransantiagoMaster"

    const-string v4, "procesar: excepcion general"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->printStackTrace()V

    .line 242
    const/16 v46, 0x0

    goto/16 :goto_0

    .line 147
    .end local v27    # "e":Ljava/lang/Exception;
    .restart local v22    # "bip":Lorg/json/me/JSONArray;
    .restart local v24    # "bipsz":I
    .restart local v29    # "j":I
    .restart local v30    # "js":Lorg/json/me/JSONObject;
    :cond_e
    :try_start_c
    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/me/JSONArray;->getJSONArray(I)Lorg/json/me/JSONArray;

    move-result-object v23

    .line 149
    .local v23, "bipp":Lorg/json/me/JSONArray;
    const/4 v3, 0x2

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 150
    .local v14, "cliente":Ljava/lang/String;
    const/4 v3, 0x3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 154
    .local v15, "direccion":Ljava/lang/String;
    const/4 v3, 0x4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v48

    .line 155
    .restart local v48    # "slat":Ljava/lang/String;
    const/4 v3, 0x5

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 156
    .restart local v49    # "slng":Ljava/lang/String;
    if-eqz v48, :cond_f

    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_f

    .line 157
    new-instance v2, Lcl/birdie/transantiagomaster/newobjetos/Bip;

    invoke-static/range {v48 .. v48}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-static/range {v49 .. v49}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcl/birdie/transantiagomaster/newobjetos/Bip;-><init>(DDLjava/lang/String;Ljava/lang/String;)V

    .line 161
    .local v2, "p":Lcl/birdie/transantiagomaster/newobjetos/Bip;
    :goto_d
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcl/birdie/transantiagomaster/newobjetos/Bip;->tipo:I

    .line 162
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcl/birdie/transantiagomaster/newobjetos/Bip;->id:I

    .line 164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/birdie/transantiagomaster/handlers/ParaderosJsonNewHandler;->bips:[Lcl/birdie/transantiagomaster/newobjetos/Bip;

    aput-object v2, v3, v29

    .line 146
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_4

    .line 160
    .end local v2    # "p":Lcl/birdie/transantiagomaster/newobjetos/Bip;
    :cond_f
    new-instance v2, Lcl/birdie/transantiagomaster/newobjetos/Bip;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcl/birdie/transantiagomaster/newobjetos/Bip;-><init>(DDLjava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    .restart local v2    # "p":Lcl/birdie/transantiagomaster/newobjetos/Bip;
    goto :goto_d

    .line 167
    .end local v2    # "p":Lcl/birdie/transantiagomaster/newobjetos/Bip;
    .end local v14    # "cliente":Ljava/lang/String;
    .end local v15    # "direccion":Ljava/lang/String;
    .end local v22    # "bip":Lorg/json/me/JSONArray;
    .end local v23    # "bipp":Lorg/json/me/JSONArray;
    .end local v24    # "bipsz":I
    .end local v29    # "j":I
    .end local v48    # "slat":Ljava/lang/String;
    .end local v49    # "slng":Ljava/lang/String;
    :catch_4
    move-exception v3

    :try_start_d
    const-string v3, "ParaderosJsonNewHandler"

    const-string v4, "procesar: excepcion bip"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_5

    .line 182
    .restart local v29    # "j":I
    .restart local v39    # "metro":Lorg/json/me/JSONArray;
    .restart local v41    # "metrosz":I
    :cond_10
    :try_start_e
    move-object/from16 v0, v39

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/me/JSONArray;->getJSONArray(I)Lorg/json/me/JSONArray;

    move-result-object v40

    .line 187
    .local v40, "metrop":Lorg/json/me/JSONArray;
    const/4 v3, 0x3

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v48

    .line 188
    .restart local v48    # "slat":Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 189
    .restart local v49    # "slng":Ljava/lang/String;
    if-eqz v48, :cond_12

    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_12

    .line 190
    new-instance v2, Lcl/birdie/transantiagomaster/newobjetos/Metro;

    invoke-static/range {v48 .. v48}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v17

    invoke-static/range {v49 .. v49}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v19

    const/4 v3, 0x1

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/4 v3, 0x1

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcl/birdie/transantiagomaster/newobjetos/Metro;-><init>(DDLjava/lang/String;)V

    .line 195
    .local v2, "p":Lcl/birdie/transantiagomaster/newobjetos/Metro;
    :goto_e
    const/4 v3, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcl/birdie/transantiagomaster/newobjetos/Metro;->id:I

    .line 197
    const/4 v3, 0x4

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Lorg/json/me/JSONArray;->getJSONArray(I)Lorg/json/me/JSONArray;

    move-result-object v37

    .line 199
    .local v37, "lineas":Lorg/json/me/JSONArray;
    if-eqz v37, :cond_13

    invoke-virtual/range {v37 .. v37}, Lorg/json/me/JSONArray;->length()I

    move-result v38

    .line 201
    .local v38, "lsz":I
    :goto_f
    if-lez v38, :cond_11

    .line 202
    move/from16 v0, v38

    new-array v3, v0, [Lcl/birdie/transantiagomaster/newobjetos/MetroLinea;

    iput-object v3, v2, Lcl/birdie/transantiagomaster/newobjetos/Metro;->lineas:[Lcl/birdie/transantiagomaster/newobjetos/MetroLinea;

    .line 204
    :cond_11
    const/16 v32, 0x0

    .local v32, "k":I
    :goto_10
    move/from16 v0, v32

    move/from16 v1, v38

    if-lt v0, v1, :cond_14

    .line 213
    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/birdie/transantiagomaster/handlers/ParaderosJsonNewHandler;->metros:[Lcl/birdie/transantiagomaster/newobjetos/Metro;

    aput-object v2, v3, v29

    .line 181
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_6

    .line 193
    .end local v2    # "p":Lcl/birdie/transantiagomaster/newobjetos/Metro;
    .end local v32    # "k":I
    .end local v37    # "lineas":Lorg/json/me/JSONArray;
    .end local v38    # "lsz":I
    :cond_12
    new-instance v2, Lcl/birdie/transantiagomaster/newobjetos/Metro;

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/4 v3, 0x1

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Lcl/birdie/transantiagomaster/newobjetos/Metro;-><init>(DDLjava/lang/String;)V

    .restart local v2    # "p":Lcl/birdie/transantiagomaster/newobjetos/Metro;
    goto :goto_e

    .line 199
    .restart local v37    # "lineas":Lorg/json/me/JSONArray;
    :cond_13
    const/16 v38, 0x0

    goto :goto_f

    .line 205
    .restart local v32    # "k":I
    .restart local v38    # "lsz":I
    :cond_14
    move-object/from16 v0, v37

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/me/JSONArray;->getJSONArray(I)Lorg/json/me/JSONArray;

    move-result-object v36

    .line 207
    .local v36, "linea":Lorg/json/me/JSONArray;
    new-instance v33, Lcl/birdie/transantiagomaster/newobjetos/MetroLinea;

    invoke-direct/range {v33 .. v33}, Lcl/birdie/transantiagomaster/newobjetos/MetroLinea;-><init>()V

    .line 208
    .local v33, "l":Lcl/birdie/transantiagomaster/newobjetos/MetroLinea;
    const/4 v3, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v33

    iput v3, v0, Lcl/birdie/transantiagomaster/newobjetos/MetroLinea;->linea_id:I

    .line 209
    const/4 v3, 0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v33

    iput-object v3, v0, Lcl/birdie/transantiagomaster/newobjetos/MetroLinea;->linea_nombre:Ljava/lang/String;

    .line 210
    iget-object v3, v2, Lcl/birdie/transantiagomaster/newobjetos/Metro;->lineas:[Lcl/birdie/transantiagomaster/newobjetos/MetroLinea;

    aput-object v33, v3, v32
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    .line 204
    add-int/lit8 v32, v32, 0x1

    goto :goto_10

    .line 216
    .end local v2    # "p":Lcl/birdie/transantiagomaster/newobjetos/Metro;
    .end local v29    # "j":I
    .end local v32    # "k":I
    .end local v33    # "l":Lcl/birdie/transantiagomaster/newobjetos/MetroLinea;
    .end local v36    # "linea":Lorg/json/me/JSONArray;
    .end local v37    # "lineas":Lorg/json/me/JSONArray;
    .end local v38    # "lsz":I
    .end local v39    # "metro":Lorg/json/me/JSONArray;
    .end local v40    # "metrop":Lorg/json/me/JSONArray;
    .end local v41    # "metrosz":I
    .end local v48    # "slat":Ljava/lang/String;
    .end local v49    # "slng":Ljava/lang/String;
    :catch_5
    move-exception v3

    :try_start_f
    const-string v3, "ParaderosJsonNewHandler"

    const-string v4, "procesar: excepcion metro"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 231
    :catch_6
    move-exception v27

    .line 232
    .restart local v27    # "e":Ljava/lang/Exception;
    const-string v3, "ParaderosJsonNewHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "procesar layers: excepcion "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    goto/16 :goto_0
.end method
