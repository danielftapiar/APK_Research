.class public Lnet/veritran/vtuserapplication/api/map/DirectionsJSONParser;
.super Ljava/lang/Object;
.source "DirectionsJSONParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decodePoly(Ljava/lang/String;)Ljava/util/List;
    .locals 20
    .param p0, "encoded"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v11, "poly":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    const/4 v5, 0x0

    .local v5, "index":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v8

    .line 120
    .local v8, "len":I
    const/4 v7, 0x0

    .local v7, "lat":I
    const/4 v9, 0x0

    .line 122
    .local v9, "lng":I
    :goto_0
    if-ge v5, v8, :cond_2

    .line 123
    const/4 v13, 0x0

    .local v13, "shift":I
    const/4 v12, 0x0

    .line 125
    .local v12, "result":I
    :goto_1
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .local v6, "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    add-int/lit8 v2, v14, -0x3f

    .line 126
    .local v2, "b":I
    and-int/lit8 v14, v2, 0x1f

    shl-int/2addr v14, v13

    or-int/2addr v12, v14

    .line 127
    add-int/lit8 v13, v13, 0x5

    .line 128
    const/16 v14, 0x20

    if-ge v2, v14, :cond_4

    .line 129
    and-int/lit8 v14, v12, 0x1

    if-eqz v14, :cond_0

    shr-int/lit8 v14, v12, 0x1

    xor-int/lit8 v3, v14, -0x1

    .line 130
    .local v3, "dlat":I
    :goto_2
    add-int/2addr v7, v3

    .line 132
    const/4 v13, 0x0

    .line 133
    const/4 v12, 0x0

    move v5, v6

    .line 135
    .end local v6    # "index":I
    .restart local v5    # "index":I
    :goto_3
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .restart local v6    # "index":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    add-int/lit8 v2, v14, -0x3f

    .line 136
    and-int/lit8 v14, v2, 0x1f

    shl-int/2addr v14, v13

    or-int/2addr v12, v14

    .line 137
    add-int/lit8 v13, v13, 0x5

    .line 138
    const/16 v14, 0x20

    if-ge v2, v14, :cond_3

    .line 139
    and-int/lit8 v14, v12, 0x1

    if-eqz v14, :cond_1

    shr-int/lit8 v14, v12, 0x1

    xor-int/lit8 v4, v14, -0x1

    .line 140
    .local v4, "dlng":I
    :goto_4
    add-int/2addr v9, v4

    .line 142
    new-instance v10, Lcom/google/android/gms/maps/model/LatLng;

    int-to-double v14, v7

    const-wide v16, 0x40f86a0000000000L    # 100000.0

    div-double v14, v14, v16

    int-to-double v0, v9

    move-wide/from16 v16, v0

    const-wide v18, 0x40f86a0000000000L    # 100000.0

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    invoke-direct {v10, v14, v15, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 144
    .local v10, "p":Lcom/google/android/gms/maps/model/LatLng;
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v6

    .line 145
    .end local v6    # "index":I
    .restart local v5    # "index":I
    goto :goto_0

    .line 129
    .end local v3    # "dlat":I
    .end local v4    # "dlng":I
    .end local v5    # "index":I
    .end local v10    # "p":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v6    # "index":I
    :cond_0
    shr-int/lit8 v3, v12, 0x1

    goto :goto_2

    .line 139
    .restart local v3    # "dlat":I
    :cond_1
    shr-int/lit8 v4, v12, 0x1

    goto :goto_4

    .line 146
    .end local v2    # "b":I
    .end local v3    # "dlat":I
    .end local v6    # "index":I
    .end local v12    # "result":I
    .end local v13    # "shift":I
    .restart local v5    # "index":I
    :cond_2
    return-object v11

    .end local v5    # "index":I
    .restart local v2    # "b":I
    .restart local v3    # "dlat":I
    .restart local v6    # "index":I
    .restart local v12    # "result":I
    .restart local v13    # "shift":I
    :cond_3
    move v5, v6

    .end local v6    # "index":I
    .restart local v5    # "index":I
    goto :goto_3

    .end local v3    # "dlat":I
    .end local v5    # "index":I
    .restart local v6    # "index":I
    :cond_4
    move v5, v6

    .end local v6    # "index":I
    .restart local v5    # "index":I
    goto :goto_1
.end method

.method public static parse(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 36
    .param p0, "jObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/api/map/GoogleRoute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .local v24, "routes":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/api/map/GoogleRoute;>;"
    const/4 v10, 0x0

    .line 25
    .local v10, "jRoutes":Lorg/json/JSONArray;
    const/4 v9, 0x0

    .line 26
    .local v9, "jLegs":Lorg/json/JSONArray;
    const/4 v11, 0x0

    .line 29
    .local v11, "jSteps":Lorg/json/JSONArray;
    :try_start_0
    const-string v32, "routes"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 32
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v32

    move/from16 v0, v32

    if-ge v7, v0, :cond_3

    .line 33
    invoke-virtual {v10, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/json/JSONObject;

    const-string v33, "legs"

    invoke-virtual/range {v32 .. v33}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 34
    new-instance v23, Lnet/veritran/vtuserapplication/api/map/GoogleRoute;

    invoke-direct/range {v23 .. v23}, Lnet/veritran/vtuserapplication/api/map/GoogleRoute;-><init>()V

    .line 36
    .local v23, "route":Lnet/veritran/vtuserapplication/api/map/GoogleRoute;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v19, "legs":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/api/map/Leg;>;"
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v32

    move/from16 v0, v32

    if-ge v8, v0, :cond_2

    .line 39
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/json/JSONObject;

    const-string v33, "steps"

    invoke-virtual/range {v32 .. v33}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 41
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 42
    .local v4, "arrayLeg":Lorg/json/JSONObject;
    const-string v32, "distance"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 43
    .local v15, "legDistance":Lorg/json/JSONObject;
    const-string v32, "duration"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 44
    .local v16, "legDuration":Lorg/json/JSONObject;
    const-string v32, "start_location"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 45
    .local v18, "legStartLocation":Lorg/json/JSONObject;
    const-string v32, "end_location"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 47
    .local v17, "legEndLocation":Lorg/json/JSONObject;
    new-instance v14, Lnet/veritran/vtuserapplication/api/map/Leg;

    invoke-direct {v14}, Lnet/veritran/vtuserapplication/api/map/Leg;-><init>()V

    .line 48
    .local v14, "leg":Lnet/veritran/vtuserapplication/api/map/Leg;
    const-string v32, "text"

    move-object/from16 v0, v32

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Lnet/veritran/vtuserapplication/api/map/Leg;->setDistanceText(Ljava/lang/String;)V

    .line 49
    const-string v32, "value"

    move-object/from16 v0, v32

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v32

    move/from16 v0, v32

    invoke-virtual {v14, v0}, Lnet/veritran/vtuserapplication/api/map/Leg;->setDistanceValue(I)V

    .line 50
    const-string v32, "text"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Lnet/veritran/vtuserapplication/api/map/Leg;->setDurationText(Ljava/lang/String;)V

    .line 51
    const-string v32, "value"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v32

    move/from16 v0, v32

    invoke-virtual {v14, v0}, Lnet/veritran/vtuserapplication/api/map/Leg;->setDurationValue(I)V

    .line 53
    const-string v32, "start_address"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Lnet/veritran/vtuserapplication/api/map/Leg;->setStartAddress(Ljava/lang/String;)V

    .line 54
    const-string v32, "lat"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v32

    move-wide/from16 v0, v32

    invoke-virtual {v14, v0, v1}, Lnet/veritran/vtuserapplication/api/map/Leg;->setStartLocationLat(D)V

    .line 55
    const-string v32, "lng"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v32

    move-wide/from16 v0, v32

    invoke-virtual {v14, v0, v1}, Lnet/veritran/vtuserapplication/api/map/Leg;->setStartLocationLng(D)V

    .line 57
    const-string v32, "end_address"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Lnet/veritran/vtuserapplication/api/map/Leg;->setEndAddress(Ljava/lang/String;)V

    .line 58
    const-string v32, "lat"

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v32

    move-wide/from16 v0, v32

    invoke-virtual {v14, v0, v1}, Lnet/veritran/vtuserapplication/api/map/Leg;->setEndLocationLat(D)V

    .line 59
    const-string v32, "lng"

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v32

    move-wide/from16 v0, v32

    invoke-virtual {v14, v0, v1}, Lnet/veritran/vtuserapplication/api/map/Leg;->setEndLocationLng(D)V

    .line 61
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v30, "steps":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/api/map/Step;>;"
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_2
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v32

    move/from16 v0, v32

    if-ge v12, v0, :cond_1

    .line 64
    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 65
    .local v5, "arrayStep":Lorg/json/JSONObject;
    const-string v32, "distance"

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    .line 66
    .local v26, "stepDistance":Lorg/json/JSONObject;
    const-string v32, "duration"

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v27

    .line 67
    .local v27, "stepDuration":Lorg/json/JSONObject;
    const-string v32, "start_location"

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v29

    .line 68
    .local v29, "stepStartLocation":Lorg/json/JSONObject;
    const-string v32, "end_location"

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v28

    .line 70
    .local v28, "stepEndLocation":Lorg/json/JSONObject;
    new-instance v25, Lnet/veritran/vtuserapplication/api/map/Step;

    invoke-direct/range {v25 .. v25}, Lnet/veritran/vtuserapplication/api/map/Step;-><init>()V

    .line 71
    .local v25, "step":Lnet/veritran/vtuserapplication/api/map/Step;
    const-string v32, "text"

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/api/map/Step;->setDistanceText(Ljava/lang/String;)V

    .line 72
    const-string v32, "value"

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v32

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/api/map/Step;->setDistanceValue(I)V

    .line 73
    const-string v32, "text"

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/api/map/Step;->setDurationText(Ljava/lang/String;)V

    .line 74
    const-string v32, "value"

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v32

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/api/map/Step;->setDurationValue(I)V

    .line 75
    const-string v32, "lat"

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v32

    move-object/from16 v0, v25

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/api/map/Step;->setEndLocationLat(D)V

    .line 76
    const-string v32, "lat"

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v32

    move-object/from16 v0, v25

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/api/map/Step;->setEndLocationLng(D)V

    .line 77
    const-string v32, "html_instructions"

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/api/map/Step;->setHtmlInstructions(Ljava/lang/String;)V

    .line 78
    const-string v32, "lat"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v32

    move-object/from16 v0, v25

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/api/map/Step;->setStartLocationLat(D)V

    .line 79
    const-string v32, "lng"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v32

    move-object/from16 v0, v25

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/api/map/Step;->setStartLocationLng(D)V

    .line 80
    const-string v32, "travel_mode"

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/api/map/Step;->setTravelMode(Ljava/lang/String;)V

    .line 82
    const-string v31, ""

    .line 83
    .local v31, "strPolyline":Ljava/lang/String;
    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/json/JSONObject;

    const-string v33, "polyline"

    invoke-virtual/range {v32 .. v33}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lorg/json/JSONObject;

    const-string v33, "points"

    invoke-virtual/range {v32 .. v33}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    .end local v31    # "strPolyline":Ljava/lang/String;
    check-cast v31, Ljava/lang/String;

    .line 84
    .restart local v31    # "strPolyline":Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Lnet/veritran/vtuserapplication/api/map/DirectionsJSONParser;->decodePoly(Ljava/lang/String;)Ljava/util/List;

    move-result-object v20

    .line 85
    .local v20, "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v22, "polylines":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v13, 0x0

    .local v13, "l":I
    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v32

    move/from16 v0, v32

    if-ge v13, v0, :cond_0

    .line 89
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v21, "polyline":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v33, "lat"

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v33, "lng"

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 94
    .end local v21    # "polyline":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/api/map/Step;->setPolyline(Ljava/util/List;)V

    .line 95
    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 97
    .end local v5    # "arrayStep":Lorg/json/JSONObject;
    .end local v13    # "l":I
    .end local v20    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    .end local v22    # "polylines":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v25    # "step":Lnet/veritran/vtuserapplication/api/map/Step;
    .end local v26    # "stepDistance":Lorg/json/JSONObject;
    .end local v27    # "stepDuration":Lorg/json/JSONObject;
    .end local v28    # "stepEndLocation":Lorg/json/JSONObject;
    .end local v29    # "stepStartLocation":Lorg/json/JSONObject;
    .end local v31    # "strPolyline":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Lnet/veritran/vtuserapplication/api/map/Leg;->setSteps(Ljava/util/List;)V

    .line 98
    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 100
    .end local v4    # "arrayLeg":Lorg/json/JSONObject;
    .end local v12    # "k":I
    .end local v14    # "leg":Lnet/veritran/vtuserapplication/api/map/Leg;
    .end local v15    # "legDistance":Lorg/json/JSONObject;
    .end local v16    # "legDuration":Lorg/json/JSONObject;
    .end local v17    # "legEndLocation":Lorg/json/JSONObject;
    .end local v18    # "legStartLocation":Lorg/json/JSONObject;
    .end local v30    # "steps":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/api/map/Step;>;"
    :cond_2
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/api/map/GoogleRoute;->setLegs(Ljava/util/List;)V

    .line 101
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 32
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 103
    .end local v7    # "i":I
    .end local v8    # "j":I
    .end local v19    # "legs":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/api/map/Leg;>;"
    .end local v23    # "route":Lnet/veritran/vtuserapplication/api/map/GoogleRoute;
    :catch_0
    move-exception v6

    .line 110
    :cond_3
    :goto_4
    return-object v24

    .line 106
    :catch_1
    move-exception v6

    .line 107
    .local v6, "e":Ljava/lang/Exception;
    goto :goto_4
.end method
