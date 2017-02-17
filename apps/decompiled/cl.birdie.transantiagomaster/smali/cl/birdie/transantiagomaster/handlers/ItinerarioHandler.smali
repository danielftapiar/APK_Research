.class public final Lcl/birdie/transantiagomaster/handlers/ItinerarioHandler;
.super Ljava/lang/Object;
.source "ItinerarioHandler.java"


# instance fields
.field public paraderosIda:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

.field public paraderosRegreso:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

.field public rutaIda:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/birdie/toolkit/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field public rutaRegreso:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/birdie/toolkit/LatLng;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/handlers/ItinerarioHandler;->rutaIda:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/handlers/ItinerarioHandler;->rutaRegreso:Ljava/util/ArrayList;

    .line 24
    return-void
.end method


# virtual methods
.method public final procesar([B)I
    .locals 30
    .param p1, "b"    # [B

    .prologue
    .line 27
    if-nez p1, :cond_0

    .line 28
    const/16 v20, 0x0

    .line 132
    :goto_0
    return v20

    .line 32
    :cond_0
    :try_start_0
    new-instance v17, Ljava/util/zip/GZIPInputStream;

    new-instance v10, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v17

    invoke-direct {v0, v10}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .local v17, "bis":Ljava/util/zip/GZIPInputStream;
    new-instance v18, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 37
    .local v18, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v10, 0x400

    new-array v0, v10, [B

    move-object/from16 v19, v0

    .line 40
    .local v19, "buf":[B
    :goto_1
    const/4 v10, 0x0

    const/16 v11, 0x400

    :try_start_1
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v10, v11}, Ljava/util/zip/GZIPInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v29

    .local v29, "len":I
    if-gtz v29, :cond_1

    .line 47
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v27

    .line 48
    .local v27, "jstxt":Ljava/lang/String;
    const/16 v20, 0x0

    .line 50
    .local v20, "cnt":I
    :try_start_2
    new-instance v24, Lorg/json/me/JSONArray;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/json/me/JSONArray;-><init>(Ljava/lang/String;)V

    .line 60
    .local v24, "js":Lorg/json/me/JSONArray;
    const/4 v10, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Lorg/json/me/JSONArray;->getJSONArray(I)Lorg/json/me/JSONArray;

    move-result-object v23

    .line 64
    .local v23, "jida":Lorg/json/me/JSONArray;
    invoke-virtual/range {v23 .. v23}, Lorg/json/me/JSONArray;->length()I

    move-result v26

    .line 65
    .local v26, "jslength":I
    move/from16 v0, v26

    new-array v10, v0, [Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcl/birdie/transantiagomaster/handlers/ItinerarioHandler;->paraderosIda:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .line 67
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_2
    move/from16 v0, v22

    move/from16 v1, v26

    if-lt v0, v1, :cond_2

    .line 86
    const/4 v10, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Lorg/json/me/JSONArray;->getJSONArray(I)Lorg/json/me/JSONArray;

    move-result-object v28

    .line 87
    .local v28, "jvuelta":Lorg/json/me/JSONArray;
    invoke-virtual/range {v28 .. v28}, Lorg/json/me/JSONArray;->length()I

    move-result v26

    .line 88
    move/from16 v0, v26

    new-array v10, v0, [Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcl/birdie/transantiagomaster/handlers/ItinerarioHandler;->paraderosRegreso:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .line 90
    const/16 v22, 0x0

    :goto_3
    move/from16 v0, v22

    move/from16 v1, v26

    if-lt v0, v1, :cond_4

    .line 109
    const/4 v10, 0x2

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Lorg/json/me/JSONArray;->getJSONArray(I)Lorg/json/me/JSONArray;

    move-result-object v23

    .line 110
    invoke-virtual/range {v23 .. v23}, Lorg/json/me/JSONArray;->length()I

    move-result v26

    .line 111
    const/16 v22, 0x0

    :goto_4
    move/from16 v0, v22

    move/from16 v1, v26

    if-lt v0, v1, :cond_6

    .line 117
    const/4 v10, 0x3

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Lorg/json/me/JSONArray;->getJSONArray(I)Lorg/json/me/JSONArray;

    move-result-object v28

    .line 118
    invoke-virtual/range {v28 .. v28}, Lorg/json/me/JSONArray;->length()I
    :try_end_2
    .catch Lorg/json/me/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v26

    .line 119
    const/16 v22, 0x0

    :goto_5
    move/from16 v0, v22

    move/from16 v1, v26

    if-lt v0, v1, :cond_7

    .line 125
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 34
    .end local v17    # "bis":Ljava/util/zip/GZIPInputStream;
    .end local v18    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v19    # "buf":[B
    .end local v20    # "cnt":I
    .end local v22    # "i":I
    .end local v23    # "jida":Lorg/json/me/JSONArray;
    .end local v24    # "js":Lorg/json/me/JSONArray;
    .end local v26    # "jslength":I
    .end local v27    # "jstxt":Ljava/lang/String;
    .end local v28    # "jvuelta":Lorg/json/me/JSONArray;
    .end local v29    # "len":I
    :catch_0
    move-exception v10

    const/16 v20, 0x0

    goto/16 :goto_0

    .line 41
    .restart local v17    # "bis":Ljava/util/zip/GZIPInputStream;
    .restart local v18    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v19    # "buf":[B
    .restart local v29    # "len":I
    :cond_1
    const/4 v10, 0x0

    :try_start_3
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v29

    invoke-virtual {v0, v1, v10, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 44
    .end local v29    # "len":I
    :catch_1
    move-exception v10

    const/16 v20, 0x0

    goto/16 :goto_0

    .line 69
    .restart local v20    # "cnt":I
    .restart local v22    # "i":I
    .restart local v23    # "jida":Lorg/json/me/JSONArray;
    .restart local v24    # "js":Lorg/json/me/JSONArray;
    .restart local v26    # "jslength":I
    .restart local v27    # "jstxt":Ljava/lang/String;
    .restart local v29    # "len":I
    :cond_2
    :try_start_4
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/me/JSONArray;->getJSONArray(I)Lorg/json/me/JSONArray;

    move-result-object v25

    .line 71
    .local v25, "jsa":Lorg/json/me/JSONArray;
    const/4 v10, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 72
    .local v8, "codigo":Ljava/lang/String;
    const/4 v10, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 74
    .local v9, "texto":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Lorg/json/me/JSONArray;->length()I

    move-result v10

    const/4 v11, 0x2

    if-le v10, v11, :cond_3

    .line 75
    const/4 v10, 0x3

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 76
    .local v4, "lat":D
    const/4 v10, 0x2

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 78
    .local v6, "lng":D
    new-instance v3, Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    invoke-direct/range {v3 .. v9}, Lcl/birdie/transantiagomaster/newobjetos/Paradero;-><init>(DDLjava/lang/String;Ljava/lang/String;)V

    .line 83
    .end local v4    # "lat":D
    .end local v6    # "lng":D
    .local v3, "p":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    :goto_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcl/birdie/transantiagomaster/handlers/ItinerarioHandler;->paraderosIda:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    aput-object v3, v10, v22

    .line 67
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_2

    .line 81
    .end local v3    # "p":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    :cond_3
    new-instance v3, Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move-object v10, v3

    move-object v15, v8

    move-object/from16 v16, v9

    invoke-direct/range {v10 .. v16}, Lcl/birdie/transantiagomaster/newobjetos/Paradero;-><init>(DDLjava/lang/String;Ljava/lang/String;)V

    .restart local v3    # "p":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    goto :goto_6

    .line 92
    .end local v3    # "p":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    .end local v8    # "codigo":Ljava/lang/String;
    .end local v9    # "texto":Ljava/lang/String;
    .end local v25    # "jsa":Lorg/json/me/JSONArray;
    .restart local v28    # "jvuelta":Lorg/json/me/JSONArray;
    :cond_4
    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/me/JSONArray;->getJSONArray(I)Lorg/json/me/JSONArray;

    move-result-object v25

    .line 94
    .restart local v25    # "jsa":Lorg/json/me/JSONArray;
    const/4 v10, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 95
    .restart local v8    # "codigo":Ljava/lang/String;
    const/4 v10, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 97
    .restart local v9    # "texto":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Lorg/json/me/JSONArray;->length()I

    move-result v10

    const/4 v11, 0x2

    if-le v10, v11, :cond_5

    .line 98
    const/4 v10, 0x3

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 99
    .restart local v4    # "lat":D
    const/4 v10, 0x2

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 101
    .restart local v6    # "lng":D
    new-instance v3, Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    invoke-direct/range {v3 .. v9}, Lcl/birdie/transantiagomaster/newobjetos/Paradero;-><init>(DDLjava/lang/String;Ljava/lang/String;)V

    .line 106
    .end local v4    # "lat":D
    .end local v6    # "lng":D
    .restart local v3    # "p":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    :goto_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcl/birdie/transantiagomaster/handlers/ItinerarioHandler;->paraderosRegreso:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    aput-object v3, v10, v22

    .line 90
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_3

    .line 104
    .end local v3    # "p":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    :cond_5
    new-instance v3, Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move-object v10, v3

    move-object v15, v8

    move-object/from16 v16, v9

    invoke-direct/range {v10 .. v16}, Lcl/birdie/transantiagomaster/newobjetos/Paradero;-><init>(DDLjava/lang/String;Ljava/lang/String;)V

    .restart local v3    # "p":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    goto :goto_7

    .line 112
    .end local v3    # "p":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    .end local v8    # "codigo":Ljava/lang/String;
    .end local v9    # "texto":Ljava/lang/String;
    .end local v25    # "jsa":Lorg/json/me/JSONArray;
    :cond_6
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/me/JSONArray;->getJSONArray(I)Lorg/json/me/JSONArray;

    move-result-object v25

    .line 114
    .restart local v25    # "jsa":Lorg/json/me/JSONArray;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcl/birdie/transantiagomaster/handlers/ItinerarioHandler;->rutaIda:Ljava/util/ArrayList;

    new-instance v11, Lcl/birdie/toolkit/LatLng;

    const/4 v12, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    const/4 v14, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    invoke-direct {v11, v12, v13, v14, v15}, Lcl/birdie/toolkit/LatLng;-><init>(DD)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_4

    .line 120
    .end local v25    # "jsa":Lorg/json/me/JSONArray;
    :cond_7
    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/me/JSONArray;->getJSONArray(I)Lorg/json/me/JSONArray;

    move-result-object v25

    .line 122
    .restart local v25    # "jsa":Lorg/json/me/JSONArray;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcl/birdie/transantiagomaster/handlers/ItinerarioHandler;->rutaRegreso:Ljava/util/ArrayList;

    new-instance v11, Lcl/birdie/toolkit/LatLng;

    const/4 v12, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    const/4 v14, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    invoke-direct {v11, v12, v13, v14, v15}, Lcl/birdie/toolkit/LatLng;-><init>(DD)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/me/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    .line 119
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_5

    .line 126
    .end local v22    # "i":I
    .end local v23    # "jida":Lorg/json/me/JSONArray;
    .end local v24    # "js":Lorg/json/me/JSONArray;
    .end local v25    # "jsa":Lorg/json/me/JSONArray;
    .end local v26    # "jslength":I
    .end local v28    # "jvuelta":Lorg/json/me/JSONArray;
    :catch_2
    move-exception v21

    .line 128
    .local v21, "e":Lorg/json/me/JSONException;
    const-string v10, "ItinerarioHandler"

    const-string v11, "excepci\u00f3n json"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual/range {v21 .. v21}, Lorg/json/me/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method
