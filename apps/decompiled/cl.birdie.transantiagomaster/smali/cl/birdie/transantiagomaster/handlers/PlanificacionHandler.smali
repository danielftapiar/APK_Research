.class public final Lcl/birdie/transantiagomaster/handlers/PlanificacionHandler;
.super Ljava/lang/Object;
.source "PlanificacionHandler.java"


# instance fields
.field public plan:Lcl/birdie/transantiagomaster/newobjetos/Plan;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/handlers/PlanificacionHandler;->plan:Lcl/birdie/transantiagomaster/newobjetos/Plan;

    .line 14
    return-void
.end method

.method private static procesarItinerario(Lorg/json/me/JSONObject;)Lcl/birdie/transantiagomaster/newobjetos/Itinerario;
    .locals 10
    .param p0, "jsitinerario"    # Lorg/json/me/JSONObject;

    .prologue
    .line 174
    new-instance v1, Lcl/birdie/transantiagomaster/newobjetos/Itinerario;

    invoke-direct {v1}, Lcl/birdie/transantiagomaster/newobjetos/Itinerario;-><init>()V

    .line 177
    .local v1, "it":Lcl/birdie/transantiagomaster/newobjetos/Itinerario;
    :try_start_0
    const-string v6, "walkDistance"

    invoke-virtual {p0, v6}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, v1, Lcl/birdie/transantiagomaster/newobjetos/Itinerario;->walkDistance:D

    .line 178
    const-string v6, "transfers"

    invoke-virtual {p0, v6}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lcl/birdie/transantiagomaster/newobjetos/Itinerario;->transfers:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 181
    :try_start_1
    const-string v6, "legs"

    invoke-virtual {p0, v6}, Lorg/json/me/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/me/JSONObject;

    move-result-object v6

    const-string v7, "leg"

    invoke-virtual {v6, v7}, Lorg/json/me/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/me/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 185
    .local v4, "jslegs":Lorg/json/me/JSONArray;
    :goto_0
    if-nez v4, :cond_0

    .line 187
    :try_start_2
    const-string v6, "legs"

    invoke-virtual {p0, v6}, Lorg/json/me/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/me/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    .line 193
    :cond_0
    :goto_1
    if-eqz v4, :cond_6

    .line 194
    :try_start_3
    invoke-virtual {v4}, Lorg/json/me/JSONArray;->length()I

    move-result v5

    .line 196
    .local v5, "lenlegs":I
    if-lez v5, :cond_1

    .line 197
    new-array v6, v5, [Lcl/birdie/transantiagomaster/newobjetos/Leg;

    iput-object v6, v1, Lcl/birdie/transantiagomaster/newobjetos/Itinerario;->legs:[Lcl/birdie/transantiagomaster/newobjetos/Leg;

    .line 200
    :cond_1
    const/4 v6, 0x0

    iput v6, v1, Lcl/birdie/transantiagomaster/newobjetos/Itinerario;->transfers:I

    .line 202
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-lt v2, v5, :cond_3

    .line 237
    .end local v2    # "j":I
    .end local v4    # "jslegs":Lorg/json/me/JSONArray;
    .end local v5    # "lenlegs":I
    :cond_2
    :goto_3
    return-object v1

    .line 183
    :catch_0
    move-exception v6

    const/4 v4, 0x0

    .restart local v4    # "jslegs":Lorg/json/me/JSONArray;
    goto :goto_0

    .line 189
    :catch_1
    move-exception v6

    const/4 v4, 0x0

    goto :goto_1

    .line 203
    .restart local v2    # "j":I
    .restart local v5    # "lenlegs":I
    :cond_3
    invoke-virtual {v4, v2}, Lorg/json/me/JSONArray;->getJSONObject(I)Lorg/json/me/JSONObject;

    move-result-object v3

    .line 204
    .local v3, "jsleg":Lorg/json/me/JSONObject;
    iget-object v6, v1, Lcl/birdie/transantiagomaster/newobjetos/Itinerario;->legs:[Lcl/birdie/transantiagomaster/newobjetos/Leg;

    invoke-static {v3}, Lcl/birdie/transantiagomaster/handlers/PlanificacionHandler;->procesarLeg(Lorg/json/me/JSONObject;)Lcl/birdie/transantiagomaster/newobjetos/Leg;

    move-result-object v7

    aput-object v7, v6, v2

    .line 207
    iget-object v6, v1, Lcl/birdie/transantiagomaster/newobjetos/Itinerario;->legs:[Lcl/birdie/transantiagomaster/newobjetos/Leg;

    aget-object v6, v6, v2

    if-eqz v6, :cond_4

    .line 208
    iget-object v6, v1, Lcl/birdie/transantiagomaster/newobjetos/Itinerario;->legs:[Lcl/birdie/transantiagomaster/newobjetos/Leg;

    aget-object v6, v6, v2

    iget v6, v6, Lcl/birdie/transantiagomaster/newobjetos/Leg;->mode:I

    if-nez v6, :cond_5

    .line 209
    iget-wide v6, v1, Lcl/birdie/transantiagomaster/newobjetos/Itinerario;->walkDistance:D

    iget-object v8, v1, Lcl/birdie/transantiagomaster/newobjetos/Itinerario;->legs:[Lcl/birdie/transantiagomaster/newobjetos/Leg;

    aget-object v8, v8, v2

    iget-wide v8, v8, Lcl/birdie/transantiagomaster/newobjetos/Leg;->distance:D

    add-double/2addr v6, v8

    iput-wide v6, v1, Lcl/birdie/transantiagomaster/newobjetos/Itinerario;->walkDistance:D

    .line 202
    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 211
    :cond_5
    iget v6, v1, Lcl/birdie/transantiagomaster/newobjetos/Itinerario;->transfers:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v1, Lcl/birdie/transantiagomaster/newobjetos/Itinerario;->transfers:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 231
    .end local v2    # "j":I
    .end local v3    # "jsleg":Lorg/json/me/JSONObject;
    .end local v4    # "jslegs":Lorg/json/me/JSONArray;
    .end local v5    # "lenlegs":I
    :catch_2
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "excepci\u00f3n en procesarItinerario: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 234
    const/4 v1, 0x0

    goto :goto_3

    .line 220
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "jslegs":Lorg/json/me/JSONArray;
    :cond_6
    :try_start_4
    const-string v6, "legs"

    invoke-virtual {p0, v6}, Lorg/json/me/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/me/JSONObject;

    move-result-object v6

    const-string v7, "leg"

    invoke-virtual {v6, v7}, Lorg/json/me/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/me/JSONObject;

    move-result-object v3

    .line 222
    .restart local v3    # "jsleg":Lorg/json/me/JSONObject;
    const/4 v6, 0x1

    new-array v6, v6, [Lcl/birdie/transantiagomaster/newobjetos/Leg;

    iput-object v6, v1, Lcl/birdie/transantiagomaster/newobjetos/Itinerario;->legs:[Lcl/birdie/transantiagomaster/newobjetos/Leg;

    .line 223
    iget-object v6, v1, Lcl/birdie/transantiagomaster/newobjetos/Itinerario;->legs:[Lcl/birdie/transantiagomaster/newobjetos/Leg;

    const/4 v7, 0x0

    invoke-static {v3}, Lcl/birdie/transantiagomaster/handlers/PlanificacionHandler;->procesarLeg(Lorg/json/me/JSONObject;)Lcl/birdie/transantiagomaster/newobjetos/Leg;

    move-result-object v8

    aput-object v8, v6, v7

    .line 225
    iget-wide v6, v1, Lcl/birdie/transantiagomaster/newobjetos/Itinerario;->walkDistance:D

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_7

    .line 226
    const/4 v6, 0x0

    iput v6, v1, Lcl/birdie/transantiagomaster/newobjetos/Itinerario;->transfers:I

    .line 228
    :cond_7
    iget-object v6, v1, Lcl/birdie/transantiagomaster/newobjetos/Itinerario;->legs:[Lcl/birdie/transantiagomaster/newobjetos/Leg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    if-eqz v6, :cond_2

    iget-object v6, v1, Lcl/birdie/transantiagomaster/newobjetos/Itinerario;->legs:[Lcl/birdie/transantiagomaster/newobjetos/Leg;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget v6, v6, Lcl/birdie/transantiagomaster/newobjetos/Leg;->mode:I

    if-nez v6, :cond_2

    .line 229
    iget-wide v6, v1, Lcl/birdie/transantiagomaster/newobjetos/Itinerario;->walkDistance:D

    iget-object v8, v1, Lcl/birdie/transantiagomaster/newobjetos/Itinerario;->legs:[Lcl/birdie/transantiagomaster/newobjetos/Leg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget-wide v8, v8, Lcl/birdie/transantiagomaster/newobjetos/Leg;->distance:D

    add-double/2addr v6, v8

    iput-wide v6, v1, Lcl/birdie/transantiagomaster/newobjetos/Itinerario;->walkDistance:D
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3
.end method

.method private static procesarLeg(Lorg/json/me/JSONObject;)Lcl/birdie/transantiagomaster/newobjetos/Leg;
    .locals 27
    .param p0, "jsleg"    # Lorg/json/me/JSONObject;

    .prologue
    .line 38
    new-instance v10, Lcl/birdie/transantiagomaster/newobjetos/Leg;

    invoke-direct {v10}, Lcl/birdie/transantiagomaster/newobjetos/Leg;-><init>()V

    .line 48
    .local v10, "leg":Lcl/birdie/transantiagomaster/newobjetos/Leg;
    :try_start_0
    const-string v16, "@mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 52
    .local v15, "tmps":Ljava/lang/String;
    :goto_0
    if-nez v15, :cond_0

    .line 54
    :try_start_1
    const-string v16, "mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v15

    .line 58
    :cond_0
    :try_start_2
    const-string v16, "@route"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v10, Lcl/birdie/transantiagomaster/newobjetos/Leg;->route:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 62
    :goto_1
    :try_start_3
    iget-object v0, v10, Lcl/birdie/transantiagomaster/newobjetos/Leg;->route:Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    .line 64
    const-string v16, "route"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v10, Lcl/birdie/transantiagomaster/newobjetos/Leg;->route:Ljava/lang/String;

    .line 67
    :cond_1
    const-string v16, "BUS"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_5

    .line 68
    const/16 v16, 0x1

    move/from16 v0, v16

    iput v0, v10, Lcl/birdie/transantiagomaster/newobjetos/Leg;->mode:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 70
    :try_start_4
    const-string v16, "@routeShortName"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v10, Lcl/birdie/transantiagomaster/newobjetos/Leg;->routeShortName:Ljava/lang/String;

    .line 71
    const-string v16, "@routeLongName"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v10, Lcl/birdie/transantiagomaster/newobjetos/Leg;->routeLongName:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 76
    :goto_2
    :try_start_5
    iget-object v0, v10, Lcl/birdie/transantiagomaster/newobjetos/Leg;->routeShortName:Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    .line 77
    const-string v16, "routeShortName"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v10, Lcl/birdie/transantiagomaster/newobjetos/Leg;->routeShortName:Ljava/lang/String;

    .line 78
    const-string v16, "routeLongName"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v10, Lcl/birdie/transantiagomaster/newobjetos/Leg;->routeLongName:Ljava/lang/String;

    .line 79
    iget-object v0, v10, Lcl/birdie/transantiagomaster/newobjetos/Leg;->routeLongName:Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    .line 80
    iget-object v0, v10, Lcl/birdie/transantiagomaster/newobjetos/Leg;->routeShortName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v10, Lcl/birdie/transantiagomaster/newobjetos/Leg;->routeLongName:Ljava/lang/String;

    .line 101
    :cond_2
    :goto_3
    const-string v16, "distance"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v10, Lcl/birdie/transantiagomaster/newobjetos/Leg;->distance:D
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 104
    :try_start_6
    const-string v16, "from"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/me/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/me/JSONObject;

    move-result-object v14

    .line 105
    .local v14, "tmp":Lorg/json/me/JSONObject;
    const-string v16, "name"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v10, Lcl/birdie/transantiagomaster/newobjetos/Leg;->fromName:Ljava/lang/String;

    .line 106
    const-string v16, "lat"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 107
    .local v8, "lat":D
    const-string v16, "lon"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    .line 108
    .local v12, "lng":D
    new-instance v16, Lcl/birdie/toolkit/CacheableLatLng;

    move-object/from16 v0, v16

    invoke-direct {v0, v8, v9, v12, v13}, Lcl/birdie/toolkit/CacheableLatLng;-><init>(DD)V

    move-object/from16 v0, v16

    iput-object v0, v10, Lcl/birdie/transantiagomaster/newobjetos/Leg;->fromPos:Lcl/birdie/toolkit/CacheableLatLng;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a

    .line 113
    .end local v8    # "lat":D
    .end local v12    # "lng":D
    .end local v14    # "tmp":Lorg/json/me/JSONObject;
    :goto_4
    :try_start_7
    const-string v16, "to"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/me/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/me/JSONObject;

    move-result-object v14

    .line 114
    .restart local v14    # "tmp":Lorg/json/me/JSONObject;
    const-string v16, "name"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v10, Lcl/birdie/transantiagomaster/newobjetos/Leg;->toName:Ljava/lang/String;

    .line 115
    const-string v16, "lat"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 116
    .restart local v8    # "lat":D
    const-string v16, "lon"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    .line 117
    .restart local v12    # "lng":D
    new-instance v16, Lcl/birdie/toolkit/CacheableLatLng;

    move-object/from16 v0, v16

    invoke-direct {v0, v8, v9, v12, v13}, Lcl/birdie/toolkit/CacheableLatLng;-><init>(DD)V

    move-object/from16 v0, v16

    iput-object v0, v10, Lcl/birdie/transantiagomaster/newobjetos/Leg;->toPos:Lcl/birdie/toolkit/CacheableLatLng;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    .line 122
    .end local v8    # "lat":D
    .end local v12    # "lng":D
    .end local v14    # "tmp":Lorg/json/me/JSONObject;
    :goto_5
    :try_start_8
    const-string v16, "legGeometry"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/me/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/me/JSONObject;

    move-result-object v14

    .line 123
    .restart local v14    # "tmp":Lorg/json/me/JSONObject;
    const-string v16, "points"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-wide/16 v19, 0x0

    const-wide/16 v17, 0x0

    const/16 v16, 0x0

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    :goto_6
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v23

    move/from16 v0, v16

    move/from16 v1, v23

    if-lt v0, v1, :cond_8

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Lcl/birdie/toolkit/CacheableLatLng;

    move-object/from16 v19, v0

    const/16 v16, 0x0

    move/from16 v17, v16

    :goto_7
    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_9

    move-object/from16 v0, v19

    iput-object v0, v10, Lcl/birdie/transantiagomaster/newobjetos/Leg;->points:[Lcl/birdie/toolkit/CacheableLatLng;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 129
    .end local v14    # "tmp":Lorg/json/me/JSONObject;
    :goto_8
    :try_start_9
    const-string v16, "steps"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/me/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/me/JSONObject;

    move-result-object v16

    const-string v17, "walkSteps"

    invoke-virtual/range {v16 .. v17}, Lorg/json/me/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/me/JSONArray;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    move-result-object v6

    .line 133
    .local v6, "jssteps":Lorg/json/me/JSONArray;
    :goto_9
    if-nez v6, :cond_3

    .line 135
    :try_start_a
    const-string v16, "steps"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/me/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/me/JSONArray;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    move-result-object v6

    .line 142
    :cond_3
    :goto_a
    if-eqz v6, :cond_b

    .line 143
    :try_start_b
    invoke-virtual {v6}, Lorg/json/me/JSONArray;->length()I

    move-result v11

    .line 145
    .local v11, "lensteps":I
    new-array v0, v11, [Lcl/birdie/transantiagomaster/newobjetos/Step;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v10, Lcl/birdie/transantiagomaster/newobjetos/Leg;->steps:[Lcl/birdie/transantiagomaster/newobjetos/Step;

    .line 147
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_b
    if-lt v7, v11, :cond_a

    .line 166
    .end local v6    # "jssteps":Lorg/json/me/JSONArray;
    .end local v7    # "k":I
    .end local v11    # "lensteps":I
    :cond_4
    :goto_c
    return-object v10

    .line 50
    .end local v15    # "tmps":Ljava/lang/String;
    :catch_0
    move-exception v16

    const/4 v15, 0x0

    .restart local v15    # "tmps":Ljava/lang/String;
    goto/16 :goto_0

    .line 60
    :catch_1
    move-exception v16

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v10, Lcl/birdie/transantiagomaster/newobjetos/Leg;->route:Ljava/lang/String;

    goto/16 :goto_1

    .line 163
    :catch_2
    move-exception v16

    const/4 v10, 0x0

    goto :goto_c

    .line 73
    :catch_3
    move-exception v16

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v10, Lcl/birdie/transantiagomaster/newobjetos/Leg;->routeShortName:Ljava/lang/String;

    .line 74
    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v10, Lcl/birdie/transantiagomaster/newobjetos/Leg;->routeLongName:Ljava/lang/String;

    goto/16 :goto_2

    .line 84
    :cond_5
    const-string v16, "WALK"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_6

    .line 85
    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v10, Lcl/birdie/transantiagomaster/newobjetos/Leg;->mode:I

    goto/16 :goto_3

    .line 88
    :cond_6
    const-string v16, "SUBWAY"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-nez v16, :cond_2

    .line 89
    const/16 v16, 0x2

    move/from16 v0, v16

    iput v0, v10, Lcl/birdie/transantiagomaster/newobjetos/Leg;->mode:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 91
    :try_start_c
    const-string v16, "@routeShortName"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v10, Lcl/birdie/transantiagomaster/newobjetos/Leg;->routeShortName:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    .line 95
    :goto_d
    :try_start_d
    iget-object v0, v10, Lcl/birdie/transantiagomaster/newobjetos/Leg;->routeShortName:Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_7

    .line 96
    const-string v16, "routeShortName"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v10, Lcl/birdie/transantiagomaster/newobjetos/Leg;->routeShortName:Ljava/lang/String;

    .line 98
    :cond_7
    iget-object v0, v10, Lcl/birdie/transantiagomaster/newobjetos/Leg;->routeShortName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v10, Lcl/birdie/transantiagomaster/newobjetos/Leg;->routeLongName:Ljava/lang/String;

    goto/16 :goto_3

    .line 93
    :catch_4
    move-exception v16

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v10, Lcl/birdie/transantiagomaster/newobjetos/Leg;->routeShortName:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_d

    .line 123
    .restart local v14    # "tmp":Lorg/json/me/JSONObject;
    :cond_8
    :try_start_e
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcl/birdie/toolkit/PolylineDecoder;->decodeSignedNumberWithIndex(Ljava/lang/String;I)[I

    move-result-object v16

    const/16 v23, 0x0

    aget v23, v16, v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide v25, 0x3ee4f8b588e368f1L    # 1.0E-5

    mul-double v23, v23, v25

    add-double v19, v19, v23

    const/16 v23, 0x1

    aget v16, v16, v23

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcl/birdie/toolkit/PolylineDecoder;->decodeSignedNumberWithIndex(Ljava/lang/String;I)[I

    move-result-object v16

    const/16 v23, 0x0

    aget v23, v16, v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide v25, 0x3ee4f8b588e368f1L    # 1.0E-5

    mul-double v23, v23, v25

    add-double v17, v17, v23

    const/16 v23, 0x1

    aget v16, v16, v23

    new-instance v23, Lcl/birdie/toolkit/CacheableLatLng;

    move-object/from16 v0, v23

    move-wide/from16 v1, v19

    move-wide/from16 v3, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcl/birdie/toolkit/CacheableLatLng;-><init>(DD)V

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .end local v14    # "tmp":Lorg/json/me/JSONObject;
    :catch_5
    move-exception v16

    goto/16 :goto_8

    .restart local v14    # "tmp":Lorg/json/me/JSONObject;
    :cond_9
    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcl/birdie/toolkit/CacheableLatLng;

    aput-object v16, v19, v17
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    add-int/lit8 v16, v17, 0x1

    move/from16 v17, v16

    goto/16 :goto_7

    .line 131
    .end local v14    # "tmp":Lorg/json/me/JSONObject;
    :catch_6
    move-exception v16

    const/4 v6, 0x0

    .restart local v6    # "jssteps":Lorg/json/me/JSONArray;
    goto/16 :goto_9

    .line 137
    :catch_7
    move-exception v16

    const/4 v6, 0x0

    goto/16 :goto_a

    .line 148
    .restart local v7    # "k":I
    .restart local v11    # "lensteps":I
    :cond_a
    :try_start_f
    invoke-virtual {v6, v7}, Lorg/json/me/JSONArray;->getJSONObject(I)Lorg/json/me/JSONObject;

    move-result-object v5

    .line 150
    .local v5, "jsstep":Lorg/json/me/JSONObject;
    iget-object v0, v10, Lcl/birdie/transantiagomaster/newobjetos/Leg;->steps:[Lcl/birdie/transantiagomaster/newobjetos/Step;

    move-object/from16 v16, v0

    invoke-static {v5}, Lcl/birdie/transantiagomaster/handlers/PlanificacionHandler;->procesarStep(Lorg/json/me/JSONObject;)Lcl/birdie/transantiagomaster/newobjetos/Step;

    move-result-object v17

    aput-object v17, v16, v7
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    .line 147
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_b

    .line 155
    .end local v5    # "jsstep":Lorg/json/me/JSONObject;
    .end local v7    # "k":I
    .end local v11    # "lensteps":I
    :cond_b
    :try_start_10
    const-string v16, "steps"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/me/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/me/JSONObject;

    move-result-object v16

    const-string v17, "walkSteps"

    invoke-virtual/range {v16 .. v17}, Lorg/json/me/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/me/JSONObject;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    move-result-object v5

    .line 157
    .restart local v5    # "jsstep":Lorg/json/me/JSONObject;
    :goto_e
    if-eqz v5, :cond_4

    .line 158
    const/16 v16, 0x1

    :try_start_11
    move/from16 v0, v16

    new-array v0, v0, [Lcl/birdie/transantiagomaster/newobjetos/Step;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v10, Lcl/birdie/transantiagomaster/newobjetos/Leg;->steps:[Lcl/birdie/transantiagomaster/newobjetos/Step;

    .line 159
    iget-object v0, v10, Lcl/birdie/transantiagomaster/newobjetos/Leg;->steps:[Lcl/birdie/transantiagomaster/newobjetos/Step;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v5}, Lcl/birdie/transantiagomaster/handlers/PlanificacionHandler;->procesarStep(Lorg/json/me/JSONObject;)Lcl/birdie/transantiagomaster/newobjetos/Step;

    move-result-object v18

    aput-object v18, v16, v17
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    goto/16 :goto_c

    .line 155
    .end local v5    # "jsstep":Lorg/json/me/JSONObject;
    :catch_8
    move-exception v16

    const/4 v5, 0x0

    .restart local v5    # "jsstep":Lorg/json/me/JSONObject;
    goto :goto_e

    .end local v5    # "jsstep":Lorg/json/me/JSONObject;
    .end local v6    # "jssteps":Lorg/json/me/JSONArray;
    :catch_9
    move-exception v16

    goto/16 :goto_5

    :catch_a
    move-exception v16

    goto/16 :goto_4
.end method

.method private static procesarStep(Lorg/json/me/JSONObject;)Lcl/birdie/transantiagomaster/newobjetos/Step;
    .locals 9
    .param p0, "jsstep"    # Lorg/json/me/JSONObject;

    .prologue
    .line 18
    new-instance v5, Lcl/birdie/transantiagomaster/newobjetos/Step;

    invoke-direct {v5}, Lcl/birdie/transantiagomaster/newobjetos/Step;-><init>()V

    .line 22
    .local v5, "st":Lcl/birdie/transantiagomaster/newobjetos/Step;
    :try_start_0
    const-string v6, "distance"

    invoke-virtual {p0, v6}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, v5, Lcl/birdie/transantiagomaster/newobjetos/Step;->distance:D

    .line 23
    const-string v6, "streetName"

    invoke-virtual {p0, v6}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcl/birdie/transantiagomaster/newobjetos/Step;->streetName:Ljava/lang/String;

    .line 24
    const-string v6, "absoluteDirection"

    invoke-virtual {p0, v6}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcl/birdie/transantiagomaster/newobjetos/Step;->absoluteDirection:Ljava/lang/String;

    .line 25
    const-string v6, "lat"

    invoke-virtual {p0, v6}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 26
    .local v1, "lat":D
    const-string v6, "lon"

    invoke-virtual {p0, v6}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 27
    .local v3, "lng":D
    new-instance v6, Lcl/birdie/toolkit/CacheableLatLng;

    invoke-direct {v6, v1, v2, v3, v4}, Lcl/birdie/toolkit/CacheableLatLng;-><init>(DD)V

    iput-object v6, v5, Lcl/birdie/transantiagomaster/newobjetos/Step;->pos:Lcl/birdie/toolkit/CacheableLatLng;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v1    # "lat":D
    .end local v3    # "lng":D
    :goto_0
    return-object v5

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "procesarStep: excepcion "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final procesar([B)I
    .locals 18
    .param p1, "b"    # [B

    .prologue
    .line 244
    const/4 v1, 0x0

    .line 246
    .local v1, "cnt":I
    if-nez p1, :cond_0

    .line 247
    const/4 v15, -0x1

    .line 332
    :goto_0
    return v15

    .line 249
    :cond_0
    new-instance v8, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V

    .line 254
    .local v8, "jstxt":Ljava/lang/String;
    const/4 v6, 0x0

    .line 259
    .local v6, "jsitinerarios":Lorg/json/me/JSONArray;
    :try_start_0
    new-instance v15, Lorg/json/me/JSONObject;

    invoke-direct {v15, v8}, Lorg/json/me/JSONObject;-><init>(Ljava/lang/String;)V

    .line 263
    const/4 v4, 0x0

    .local v4, "js":Lorg/json/me/JSONObject;
    const-string v16, "plan"

    invoke-virtual/range {v15 .. v16}, Lorg/json/me/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/me/JSONObject;

    move-result-object v7

    .line 265
    .local v7, "jsplan":Lorg/json/me/JSONObject;
    new-instance v15, Lcl/birdie/transantiagomaster/newobjetos/Plan;

    invoke-direct {v15}, Lcl/birdie/transantiagomaster/newobjetos/Plan;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcl/birdie/transantiagomaster/handlers/PlanificacionHandler;->plan:Lcl/birdie/transantiagomaster/newobjetos/Plan;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 272
    :try_start_1
    const-string v15, "from"

    invoke-virtual {v7, v15}, Lorg/json/me/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/me/JSONObject;

    move-result-object v14

    .line 273
    .local v14, "tmp":Lorg/json/me/JSONObject;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcl/birdie/transantiagomaster/handlers/PlanificacionHandler;->plan:Lcl/birdie/transantiagomaster/newobjetos/Plan;

    const-string v16, "name"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcl/birdie/transantiagomaster/newobjetos/Plan;->fromName:Ljava/lang/String;

    .line 274
    const-string v15, "lat"

    invoke-virtual {v14, v15}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 275
    .local v9, "lat":D
    const-string v15, "lon"

    invoke-virtual {v14, v15}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    .line 276
    .local v12, "lng":D
    move-object/from16 v0, p0

    iget-object v15, v0, Lcl/birdie/transantiagomaster/handlers/PlanificacionHandler;->plan:Lcl/birdie/transantiagomaster/newobjetos/Plan;

    new-instance v16, Lcl/birdie/toolkit/CacheableLatLng;

    move-object/from16 v0, v16

    invoke-direct {v0, v9, v10, v12, v13}, Lcl/birdie/toolkit/CacheableLatLng;-><init>(DD)V

    move-object/from16 v0, v16

    iput-object v0, v15, Lcl/birdie/transantiagomaster/newobjetos/Plan;->fromPos:Lcl/birdie/toolkit/CacheableLatLng;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 282
    .end local v9    # "lat":D
    .end local v12    # "lng":D
    .end local v14    # "tmp":Lorg/json/me/JSONObject;
    :goto_1
    :try_start_2
    const-string v15, "to"

    invoke-virtual {v7, v15}, Lorg/json/me/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/me/JSONObject;

    move-result-object v14

    .line 283
    .restart local v14    # "tmp":Lorg/json/me/JSONObject;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcl/birdie/transantiagomaster/handlers/PlanificacionHandler;->plan:Lcl/birdie/transantiagomaster/newobjetos/Plan;

    const-string v16, "name"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcl/birdie/transantiagomaster/newobjetos/Plan;->toName:Ljava/lang/String;

    .line 284
    const-string v15, "lat"

    invoke-virtual {v14, v15}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 285
    .restart local v9    # "lat":D
    const-string v15, "lon"

    invoke-virtual {v14, v15}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    .line 286
    .restart local v12    # "lng":D
    move-object/from16 v0, p0

    iget-object v15, v0, Lcl/birdie/transantiagomaster/handlers/PlanificacionHandler;->plan:Lcl/birdie/transantiagomaster/newobjetos/Plan;

    new-instance v16, Lcl/birdie/toolkit/CacheableLatLng;

    move-object/from16 v0, v16

    invoke-direct {v0, v9, v10, v12, v13}, Lcl/birdie/toolkit/CacheableLatLng;-><init>(DD)V

    move-object/from16 v0, v16

    iput-object v0, v15, Lcl/birdie/transantiagomaster/newobjetos/Plan;->toPos:Lcl/birdie/toolkit/CacheableLatLng;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 291
    .end local v9    # "lat":D
    .end local v12    # "lng":D
    .end local v14    # "tmp":Lorg/json/me/JSONObject;
    :goto_2
    :try_start_3
    const-string v15, "itineraries"

    invoke-virtual {v7, v15}, Lorg/json/me/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/me/JSONObject;

    move-result-object v14

    .line 292
    .restart local v14    # "tmp":Lorg/json/me/JSONObject;
    const-string v15, "itinerary"

    invoke-virtual {v14, v15}, Lorg/json/me/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/me/JSONArray;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v6

    .line 297
    :goto_3
    if-nez v14, :cond_1

    .line 299
    :try_start_4
    const-string v15, "itineraries"

    invoke-virtual {v7, v15}, Lorg/json/me/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/me/JSONArray;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v6

    .line 305
    :cond_1
    :goto_4
    if-eqz v6, :cond_4

    .line 306
    :try_start_5
    invoke-virtual {v6}, Lorg/json/me/JSONArray;->length()I

    move-result v11

    .line 308
    .local v11, "len":I
    if-lez v11, :cond_2

    .line 309
    move-object/from16 v0, p0

    iget-object v15, v0, Lcl/birdie/transantiagomaster/handlers/PlanificacionHandler;->plan:Lcl/birdie/transantiagomaster/newobjetos/Plan;

    new-array v0, v11, [Lcl/birdie/transantiagomaster/newobjetos/Itinerario;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Lcl/birdie/transantiagomaster/newobjetos/Plan;->itinerarios:[Lcl/birdie/transantiagomaster/newobjetos/Itinerario;

    .line 312
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    if-lt v3, v11, :cond_3

    .line 325
    .end local v3    # "i":I
    .end local v11    # "len":I
    :goto_6
    add-int/lit8 v1, v1, 0x1

    .end local v4    # "js":Lorg/json/me/JSONObject;
    .end local v7    # "jsplan":Lorg/json/me/JSONObject;
    .end local v14    # "tmp":Lorg/json/me/JSONObject;
    :goto_7
    move v15, v1

    .line 332
    goto/16 :goto_0

    .line 294
    .restart local v4    # "js":Lorg/json/me/JSONObject;
    .restart local v7    # "jsplan":Lorg/json/me/JSONObject;
    :catch_0
    move-exception v15

    const/4 v14, 0x0

    .restart local v14    # "tmp":Lorg/json/me/JSONObject;
    goto :goto_3

    .line 301
    :catch_1
    move-exception v15

    const/4 v6, 0x0

    goto :goto_4

    .line 313
    .restart local v3    # "i":I
    .restart local v11    # "len":I
    :cond_3
    invoke-virtual {v6, v3}, Lorg/json/me/JSONArray;->getJSONObject(I)Lorg/json/me/JSONObject;

    move-result-object v5

    .line 315
    .local v5, "jsitinerario":Lorg/json/me/JSONObject;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcl/birdie/transantiagomaster/handlers/PlanificacionHandler;->plan:Lcl/birdie/transantiagomaster/newobjetos/Plan;

    iget-object v15, v15, Lcl/birdie/transantiagomaster/newobjetos/Plan;->itinerarios:[Lcl/birdie/transantiagomaster/newobjetos/Itinerario;

    invoke-static {v5}, Lcl/birdie/transantiagomaster/handlers/PlanificacionHandler;->procesarItinerario(Lorg/json/me/JSONObject;)Lcl/birdie/transantiagomaster/newobjetos/Itinerario;

    move-result-object v16

    aput-object v16, v15, v3

    .line 312
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 319
    .end local v3    # "i":I
    .end local v5    # "jsitinerario":Lorg/json/me/JSONObject;
    .end local v11    # "len":I
    :cond_4
    const-string v15, "itinerary"

    invoke-virtual {v14, v15}, Lorg/json/me/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/me/JSONObject;

    move-result-object v5

    .line 321
    .restart local v5    # "jsitinerario":Lorg/json/me/JSONObject;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcl/birdie/transantiagomaster/handlers/PlanificacionHandler;->plan:Lcl/birdie/transantiagomaster/newobjetos/Plan;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Lcl/birdie/transantiagomaster/newobjetos/Itinerario;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v15, Lcl/birdie/transantiagomaster/newobjetos/Plan;->itinerarios:[Lcl/birdie/transantiagomaster/newobjetos/Itinerario;

    .line 322
    move-object/from16 v0, p0

    iget-object v15, v0, Lcl/birdie/transantiagomaster/handlers/PlanificacionHandler;->plan:Lcl/birdie/transantiagomaster/newobjetos/Plan;

    iget-object v15, v15, Lcl/birdie/transantiagomaster/newobjetos/Plan;->itinerarios:[Lcl/birdie/transantiagomaster/newobjetos/Itinerario;

    const/16 v16, 0x0

    invoke-static {v5}, Lcl/birdie/transantiagomaster/handlers/PlanificacionHandler;->procesarItinerario(Lorg/json/me/JSONObject;)Lcl/birdie/transantiagomaster/newobjetos/Itinerario;

    move-result-object v17

    aput-object v17, v15, v16
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_6

    .line 326
    .end local v4    # "js":Lorg/json/me/JSONObject;
    .end local v5    # "jsitinerario":Lorg/json/me/JSONObject;
    .end local v7    # "jsplan":Lorg/json/me/JSONObject;
    .end local v14    # "tmp":Lorg/json/me/JSONObject;
    :catch_2
    move-exception v2

    .line 328
    .local v2, "e":Ljava/lang/Exception;
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "RevGeocodingHandler: excepcion "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "js":Lorg/json/me/JSONObject;
    .restart local v7    # "jsplan":Lorg/json/me/JSONObject;
    :catch_3
    move-exception v15

    goto/16 :goto_2

    :catch_4
    move-exception v15

    goto/16 :goto_1
.end method
