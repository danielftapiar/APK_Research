.class public Lcom/prey/actions/geofences/GeofenceIntentService;
.super Landroid/app/IntentService;
.source "GeofenceIntentService.java"


# static fields
.field private static final GEOFENCING_IN:Ljava/lang/String; = "geofencing_in"

.field private static final GEOFENCING_OUT:Ljava/lang/String; = "geofencing_out"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "PREY"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method private distance(Lcom/prey/actions/geofences/GeofenceDto;Lcom/prey/actions/location/PreyLocation;)D
    .locals 4
    .param p1, "start"    # Lcom/prey/actions/geofences/GeofenceDto;
    .param p2, "end"    # Lcom/prey/actions/location/PreyLocation;

    .prologue
    .line 151
    new-instance v1, Landroid/location/Location;

    const-string v2, ""

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 152
    .local v1, "locStart":Landroid/location/Location;
    invoke-virtual {p1}, Lcom/prey/actions/geofences/GeofenceDto;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 153
    invoke-virtual {p1}, Lcom/prey/actions/geofences/GeofenceDto;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 155
    new-instance v0, Landroid/location/Location;

    const-string v2, ""

    invoke-direct {v0, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, "locEnd":Landroid/location/Location;
    invoke-virtual {p2}, Lcom/prey/actions/location/PreyLocation;->getLat()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 157
    invoke-virtual {p2}, Lcom/prey/actions/location/PreyLocation;->getLng()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 159
    invoke-virtual {v1, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-double v2, v2

    return-wide v2
.end method

.method private notifyGeofenceTransition(Landroid/content/Context;ILjava/util/List;Landroid/location/Location;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "geofenceTransition"    # I
    .param p4, "location"    # Landroid/location/Location;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/Geofence;",
            ">;",
            "Landroid/location/Location;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    .local p3, "triggeringGeofences":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/Geofence;>;"
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "notifyGeofenceTransition  lat:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p4 .. p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " lng:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p4 .. p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " acc:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p4 .. p4}, Landroid/location/Location;->getAccuracy()F

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 72
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_0
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/location/Geofence;

    .line 73
    .local v11, "geofence":Lcom/google/android/gms/location/Geofence;
    invoke-interface {v11}, Lcom/google/android/gms/location/Geofence;->getRequestId()Ljava/lang/String;

    move-result-object v19

    .line 74
    .local v19, "requestId":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "geofence.getRequestId():"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 76
    :try_start_0
    new-instance v8, Lcom/prey/events/Event;

    invoke-direct {v8}, Lcom/prey/events/Event;-><init>()V

    .line 77
    .local v8, "event":Lcom/prey/events/Event;
    const-string v9, ""

    .line 78
    .local v9, "eventGeofenceTransition":Ljava/lang/String;
    const/16 v21, 0x1

    move/from16 v0, p2

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 79
    const-string v9, "geofencing_in"

    .line 83
    :goto_1
    invoke-virtual {v8, v9}, Lcom/prey/events/Event;->setName(Ljava/lang/String;)V

    .line 84
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "event:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 85
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 86
    .local v15, "jsonObjectStatus":Lorg/json/JSONObject;
    invoke-static/range {p1 .. p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/prey/PreyConfig;->getGeofenceMaximumAccuracy()I

    move-result v12

    .line 87
    .local v12, "geofenceMaximumAccuracy":I
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "geofenceMaximumAccuracy:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 88
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 89
    .local v18, "newEventGeo":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/prey/PreyConfig;->getLastEventGeo()Ljava/lang/String;

    move-result-object v16

    .line 91
    .local v16, "lastEventGeo":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "newEventGeo:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " lastEventGeo:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 92
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 93
    const/4 v13, 0x0

    .line 94
    .local v13, "i":I
    const/16 v17, 0x0

    .line 96
    .local v17, "locationNow":Lcom/prey/actions/location/PreyLocation;
    :cond_1
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/prey/actions/location/LocationUtil;->getLocation(Landroid/content/Context;Ljava/lang/String;Z)Lcom/prey/actions/location/PreyLocation;

    move-result-object v17

    .line 97
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "locationNow lat:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v17 .. v17}, Lcom/prey/actions/location/PreyLocation;->getLat()D

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " lng:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v17 .. v17}, Lcom/prey/actions/location/PreyLocation;->getLng()D

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " acc:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v17 .. v17}, Lcom/prey/actions/location/PreyLocation;->getAccuracy()F

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 98
    const-wide/16 v22, 0x3e8

    invoke-static/range {v22 .. v23}, Ljava/lang/Thread;->sleep(J)V

    .line 99
    add-int/lit8 v13, v13, 0x1

    .line 100
    const/16 v21, 0xa

    move/from16 v0, v21

    if-ge v13, v0, :cond_2

    invoke-virtual/range {v17 .. v17}, Lcom/prey/actions/location/PreyLocation;->getAccuracy()F

    move-result v21

    int-to-float v0, v12

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-gtz v21, :cond_1

    .line 101
    :cond_2
    invoke-virtual/range {v17 .. v17}, Lcom/prey/actions/location/PreyLocation;->getAccuracy()F

    move-result v21

    int-to-float v0, v12

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_3

    .line 102
    const/16 v17, 0x0

    .line 104
    :cond_3
    if-eqz v17, :cond_0

    .line 105
    new-instance v4, Lcom/prey/actions/geofences/GeofenceDataSource;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/prey/actions/geofences/GeofenceDataSource;-><init>(Landroid/content/Context;)V

    .line 106
    .local v4, "dataSource":Lcom/prey/actions/geofences/GeofenceDataSource;
    invoke-interface {v11}, Lcom/google/android/gms/location/Geofence;->getRequestId()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/prey/actions/geofences/GeofenceDataSource;->getGeofences(Ljava/lang/String;)Lcom/prey/actions/geofences/GeofenceDto;

    move-result-object v10

    .line 107
    .local v10, "geo":Lcom/prey/actions/geofences/GeofenceDto;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v10, v1}, Lcom/prey/actions/geofences/GeofenceIntentService;->distance(Lcom/prey/actions/geofences/GeofenceDto;Lcom/prey/actions/location/PreyLocation;)D

    move-result-wide v6

    .line 108
    .local v6, "distance":D
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "geofenceMaximumAccuracy distance:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " geo.getRadius()"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v10}, Lcom/prey/actions/geofences/GeofenceDto;->getRadius()F

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 109
    const-string v21, "geofencing_in"

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 110
    invoke-virtual {v10}, Lcom/prey/actions/geofences/GeofenceDto;->getRadius()F

    move-result v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    cmpl-double v21, v6, v22

    if-ltz v21, :cond_5

    .line 111
    const-string v21, "geofenceMaximumAccuracy distance is greater "

    invoke-static/range {v21 .. v21}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 140
    .end local v4    # "dataSource":Lcom/prey/actions/geofences/GeofenceDataSource;
    .end local v6    # "distance":D
    .end local v8    # "event":Lcom/prey/events/Event;
    .end local v9    # "eventGeofenceTransition":Ljava/lang/String;
    .end local v10    # "geo":Lcom/prey/actions/geofences/GeofenceDto;
    .end local v12    # "geofenceMaximumAccuracy":I
    .end local v13    # "i":I
    .end local v15    # "jsonObjectStatus":Lorg/json/JSONObject;
    .end local v16    # "lastEventGeo":Ljava/lang/String;
    .end local v17    # "locationNow":Lcom/prey/actions/location/PreyLocation;
    .end local v18    # "newEventGeo":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 141
    .local v5, "e":Ljava/lang/Exception;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "notifyGeofenceTransition error:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v0, v5}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 81
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v8    # "event":Lcom/prey/events/Event;
    .restart local v9    # "eventGeofenceTransition":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v9, "geofencing_out"

    goto/16 :goto_1

    .line 113
    .restart local v4    # "dataSource":Lcom/prey/actions/geofences/GeofenceDataSource;
    .restart local v6    # "distance":D
    .restart local v10    # "geo":Lcom/prey/actions/geofences/GeofenceDto;
    .restart local v12    # "geofenceMaximumAccuracy":I
    .restart local v13    # "i":I
    .restart local v15    # "jsonObjectStatus":Lorg/json/JSONObject;
    .restart local v16    # "lastEventGeo":Ljava/lang/String;
    .restart local v17    # "locationNow":Lcom/prey/actions/location/PreyLocation;
    .restart local v18    # "newEventGeo":Ljava/lang/String;
    :cond_5
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 114
    .local v14, "info":Lorg/json/JSONObject;
    const-string v21, "id"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 115
    const-string v21, "lat"

    invoke-virtual/range {v17 .. v17}, Lcom/prey/actions/location/PreyLocation;->getLat()D

    move-result-wide v22

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v14, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 116
    const-string v21, "lng"

    invoke-virtual/range {v17 .. v17}, Lcom/prey/actions/location/PreyLocation;->getLng()D

    move-result-wide v22

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v14, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 117
    const-string v21, "accuracy"

    invoke-virtual/range {v17 .. v17}, Lcom/prey/actions/location/PreyLocation;->getAccuracy()F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v14, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 118
    const-string v21, "method"

    invoke-virtual/range {v17 .. v17}, Lcom/prey/actions/location/PreyLocation;->getMethod()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/prey/events/Event;->setInfo(Ljava/lang/String;)V

    .line 120
    new-instance v21, Lcom/prey/events/manager/EventThread;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8, v15}, Lcom/prey/events/manager/EventThread;-><init>(Landroid/content/Context;Lcom/prey/events/Event;Lorg/json/JSONObject;)V

    invoke-virtual/range {v21 .. v21}, Lcom/prey/events/manager/EventThread;->start()V

    .line 121
    invoke-static/range {p1 .. p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/prey/PreyConfig;->setLastEventGeo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 124
    .end local v14    # "info":Lorg/json/JSONObject;
    :cond_6
    invoke-virtual {v10}, Lcom/prey/actions/geofences/GeofenceDto;->getRadius()F

    move-result v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    cmpg-double v21, v6, v22

    if-gtz v21, :cond_7

    .line 125
    const-string v21, "geofenceMaximumAccuracy distance is less "

    invoke-static/range {v21 .. v21}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 127
    :cond_7
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 128
    .restart local v14    # "info":Lorg/json/JSONObject;
    const-string v21, "id"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 129
    const-string v21, "lat"

    invoke-virtual/range {v17 .. v17}, Lcom/prey/actions/location/PreyLocation;->getLat()D

    move-result-wide v22

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v14, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 130
    const-string v21, "lng"

    invoke-virtual/range {v17 .. v17}, Lcom/prey/actions/location/PreyLocation;->getLng()D

    move-result-wide v22

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v14, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 131
    const-string v21, "accuracy"

    invoke-virtual/range {v17 .. v17}, Lcom/prey/actions/location/PreyLocation;->getAccuracy()F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v14, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 132
    const-string v21, "method"

    invoke-virtual/range {v17 .. v17}, Lcom/prey/actions/location/PreyLocation;->getMethod()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/prey/events/Event;->setInfo(Ljava/lang/String;)V

    .line 134
    new-instance v21, Lcom/prey/events/manager/EventThread;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8, v15}, Lcom/prey/events/manager/EventThread;-><init>(Landroid/content/Context;Lcom/prey/events/Event;Lorg/json/JSONObject;)V

    invoke-virtual/range {v21 .. v21}, Lcom/prey/events/manager/EventThread;->start()V

    .line 135
    invoke-static/range {p1 .. p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/prey/PreyConfig;->setLastEventGeo(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 144
    .end local v4    # "dataSource":Lcom/prey/actions/geofences/GeofenceDataSource;
    .end local v6    # "distance":D
    .end local v8    # "event":Lcom/prey/events/Event;
    .end local v9    # "eventGeofenceTransition":Ljava/lang/String;
    .end local v10    # "geo":Lcom/prey/actions/geofences/GeofenceDto;
    .end local v11    # "geofence":Lcom/google/android/gms/location/Geofence;
    .end local v12    # "geofenceMaximumAccuracy":I
    .end local v13    # "i":I
    .end local v14    # "info":Lorg/json/JSONObject;
    .end local v15    # "jsonObjectStatus":Lorg/json/JSONObject;
    .end local v16    # "lastEventGeo":Ljava/lang/String;
    .end local v17    # "locationNow":Lcom/prey/actions/location/PreyLocation;
    .end local v18    # "newEventGeo":Ljava/lang/String;
    .end local v19    # "requestId":Ljava/lang/String;
    :cond_8
    return-void
.end method

.method private onError(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "***************Geofencing Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 148
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    invoke-static {p1}, Lcom/google/android/gms/location/GeofencingEvent;->fromIntent(Landroid/content/Intent;)Lcom/google/android/gms/location/GeofencingEvent;

    move-result-object v0

    .line 43
    .local v0, "event":Lcom/google/android/gms/location/GeofencingEvent;
    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/location/GeofencingEvent;->hasError()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 45
    invoke-virtual {v0}, Lcom/google/android/gms/location/GeofencingEvent;->getErrorCode()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/prey/actions/geofences/GeofenceIntentService;->onError(I)V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/location/GeofencingEvent;->getGeofenceTransition()I

    move-result v2

    .line 48
    .local v2, "transition":I
    invoke-virtual {v0}, Lcom/google/android/gms/location/GeofencingEvent;->getTriggeringLocation()Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/location/GeofencingEvent;->getTriggeringLocation()Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/location/GeofencingEvent;->getTriggeringLocation()Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/Location;->getAccuracy()F

    .line 54
    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 55
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v1, "geofenceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/google/android/gms/location/GeofencingEvent;->getTriggeringGeofences()Ljava/util/List;

    move-result-object v3

    .line 57
    .local v3, "triggeringGeofences":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/Geofence;>;"
    invoke-virtual {p0}, Lcom/prey/actions/geofences/GeofenceIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/location/GeofencingEvent;->getTriggeringLocation()Landroid/location/Location;

    move-result-object v5

    invoke-direct {p0, v4, v2, v3, v5}, Lcom/prey/actions/geofences/GeofenceIntentService;->notifyGeofenceTransition(Landroid/content/Context;ILjava/util/List;Landroid/location/Location;)V

    goto :goto_0
.end method
