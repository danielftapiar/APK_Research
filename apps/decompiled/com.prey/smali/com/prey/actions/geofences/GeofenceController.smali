.class public Lcom/prey/actions/geofences/GeofenceController;
.super Ljava/lang/Object;
.source "GeofenceController.java"


# static fields
.field private static INSTANCE:Lcom/prey/actions/geofences/GeofenceController;


# instance fields
.field private dataSource:Lcom/prey/actions/geofences/GeofenceDataSource;

.field private listBD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/prey/actions/geofences/GeofenceDto;",
            ">;"
        }
    .end annotation
.end field

.field private listWeb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/prey/actions/geofences/GeofenceDto;",
            ">;"
        }
    .end annotation
.end field

.field private mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private mapBD:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/prey/actions/geofences/GeofenceDto;",
            ">;"
        }
    .end annotation
.end field

.field private mapWeb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/prey/actions/geofences/GeofenceDto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/prey/actions/geofences/GeofenceController;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 41
    iput-object v0, p0, Lcom/prey/actions/geofences/GeofenceController;->listBD:Ljava/util/List;

    .line 42
    iput-object v0, p0, Lcom/prey/actions/geofences/GeofenceController;->listWeb:Ljava/util/List;

    .line 43
    iput-object v0, p0, Lcom/prey/actions/geofences/GeofenceController;->mapBD:Ljava/util/Map;

    .line 44
    iput-object v0, p0, Lcom/prey/actions/geofences/GeofenceController;->mapWeb:Ljava/util/Map;

    .line 45
    iput-object v0, p0, Lcom/prey/actions/geofences/GeofenceController;->dataSource:Lcom/prey/actions/geofences/GeofenceDataSource;

    return-void
.end method

.method private addZones(Landroid/content/Context;)V
    .locals 23
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 132
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v19, "mGeofenceList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/Geofence;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v18, "listToBdAdd":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/geofences/GeofenceDto;>;"
    const-string v15, "["

    .line 135
    .local v15, "infoAdd":Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/prey/actions/geofences/GeofenceController;->listWeb:Ljava/util/List;

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/prey/actions/geofences/GeofenceController;->listWeb:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v14, v5, :cond_1

    .line 136
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/prey/actions/geofences/GeofenceController;->listWeb:Ljava/util/List;

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/prey/actions/geofences/GeofenceDto;

    .line 137
    .local v12, "geo":Lcom/prey/actions/geofences/GeofenceDto;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/prey/actions/geofences/GeofenceController;->mapBD:Ljava/util/Map;

    invoke-virtual {v12}, Lcom/prey/actions/geofences/GeofenceDto;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 138
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "__[START]___________id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Lcom/prey/actions/geofences/GeofenceDto;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " lat:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v12, Lcom/prey/actions/geofences/GeofenceDto;->latitude:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " long:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v12, Lcom/prey/actions/geofences/GeofenceDto;->longitude:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ra:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v12, Lcom/prey/actions/geofences/GeofenceDto;->radius:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " expires:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v12, Lcom/prey/actions/geofences/GeofenceDto;->expires:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 140
    const/16 v22, 0x7

    .line 144
    .local v22, "transitionTypes":I
    new-instance v5, Lcom/google/android/gms/location/Geofence$Builder;

    invoke-direct {v5}, Lcom/google/android/gms/location/Geofence$Builder;-><init>()V

    iget-object v6, v12, Lcom/prey/actions/geofences/GeofenceDto;->id:Ljava/lang/String;

    .line 145
    invoke-virtual {v5, v6}, Lcom/google/android/gms/location/Geofence$Builder;->setRequestId(Ljava/lang/String;)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v5

    iget-wide v6, v12, Lcom/prey/actions/geofences/GeofenceDto;->latitude:D

    iget-wide v8, v12, Lcom/prey/actions/geofences/GeofenceDto;->longitude:D

    iget v10, v12, Lcom/prey/actions/geofences/GeofenceDto;->radius:F

    .line 146
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/location/Geofence$Builder;->setCircularRegion(DDF)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v5

    const-wide/16 v6, -0x1

    .line 147
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/location/Geofence$Builder;->setExpirationDuration(J)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v5

    .line 148
    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/google/android/gms/location/Geofence$Builder;->setTransitionTypes(I)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v5

    .line 149
    invoke-static/range {p1 .. p1}, Lcom/prey/FileConfigReader;->getInstance(Landroid/content/Context;)Lcom/prey/FileConfigReader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prey/FileConfigReader;->getGeofenceLoiteringDelay()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/location/Geofence$Builder;->setLoiteringDelay(I)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v5

    .line 150
    invoke-virtual {v5}, Lcom/google/android/gms/location/Geofence$Builder;->build()Lcom/google/android/gms/location/Geofence;

    move-result-object v5

    .line 144
    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v12, Lcom/prey/actions/geofences/GeofenceDto;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 153
    add-int/lit8 v5, v14, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/prey/actions/geofences/GeofenceController;->listWeb:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 154
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 135
    .end local v22    # "transitionTypes":I
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 159
    .end local v12    # "geo":Lcom/prey/actions/geofences/GeofenceDto;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 160
    move-object/from16 v16, v15

    .line 161
    .local v16, "infoExtra":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "infoAdd:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 163
    new-instance v4, Lcom/google/android/gms/location/GeofencingRequest$Builder;

    invoke-direct {v4}, Lcom/google/android/gms/location/GeofencingRequest$Builder;-><init>()V

    .line 164
    .local v4, "builder":Lcom/google/android/gms/location/GeofencingRequest$Builder;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/android/gms/location/GeofencingRequest$Builder;->setInitialTrigger(I)Lcom/google/android/gms/location/GeofencingRequest$Builder;

    .line 165
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/google/android/gms/location/GeofencingRequest$Builder;->addGeofences(Ljava/util/List;)Lcom/google/android/gms/location/GeofencingRequest$Builder;

    .line 166
    invoke-virtual {v4}, Lcom/google/android/gms/location/GeofencingRequest$Builder;->build()Lcom/google/android/gms/location/GeofencingRequest;

    move-result-object v13

    .line 167
    .local v13, "geofencingRequest":Lcom/google/android/gms/location/GeofencingRequest;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/prey/actions/geofences/GeofenceController;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 168
    const-string v5, "---->isConnected"

    invoke-static {v5}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 170
    :try_start_0
    new-instance v17, Landroid/content/Intent;

    const-class v5, Lcom/prey/actions/geofences/GeofenceIntentService;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    .local v17, "intent":Landroid/content/Intent;
    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v5, v1, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    .line 172
    .local v20, "pendingIntent":Landroid/app/PendingIntent;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_2

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    .line 173
    :cond_2
    sget-object v5, Lcom/google/android/gms/location/LocationServices;->GeofencingApi:Lcom/google/android/gms/location/GeofencingApi;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/prey/actions/geofences/GeofenceController;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    move-object/from16 v0, v20

    invoke-interface {v5, v6, v13, v0}, Lcom/google/android/gms/location/GeofencingApi;->addGeofences(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v21

    .line 178
    .local v21, "result":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/common/api/Status;>;"
    new-instance v5, Lcom/prey/actions/geofences/GeofenceController$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, v18

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/prey/actions/geofences/GeofenceController$2;-><init>(Lcom/prey/actions/geofences/GeofenceController;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v20    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v21    # "result":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/common/api/Status;>;"
    :cond_3
    :goto_1
    return-void

    .line 198
    :catch_0
    move-exception v11

    .line 199
    .local v11, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error ---->isConnected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v11}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    const-string v5, "start"

    const-string v6, "geofencing"

    const-string v7, "failed"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/prey/json/UtilJson;->makeMapParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/prey/actions/geofences/GeofenceController;->sendNotify(Landroid/content/Context;Ljava/util/Map;)V

    goto :goto_1

    .line 203
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v5, "not connect mGoogleApiClient 3"

    invoke-static {v5}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 204
    const-string v5, "start"

    const-string v6, "geofencing"

    const-string v7, "failed"

    const-string v8, "not connect mGoogleApiClient"

    invoke-static {v5, v6, v7, v8}, Lcom/prey/json/UtilJson;->makeMapParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/prey/actions/geofences/GeofenceController;->sendNotify(Landroid/content/Context;Ljava/util/Map;)V

    goto :goto_1
.end method

.method private declared-synchronized buildGoogleApiClient(Landroid/content/Context;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 314
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/prey/actions/geofences/GeofenceController$5;

    invoke-direct {v2, p0}, Lcom/prey/actions/geofences/GeofenceController$5;-><init>(Lcom/prey/actions/geofences/GeofenceController;)V

    .line 315
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    new-instance v2, Lcom/prey/actions/geofences/GeofenceController$4;

    invoke-direct {v2, p0}, Lcom/prey/actions/geofences/GeofenceController$4;-><init>(Lcom/prey/actions/geofences/GeofenceController;)V

    .line 325
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 331
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    .line 332
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 333
    .local v0, "mGoogleApiClient":Lcom/google/android/gms/common/api/GoogleApiClient;
    monitor-exit p0

    return-object v0

    .line 314
    .end local v0    # "mGoogleApiClient":Lcom/google/android/gms/common/api/GoogleApiClient;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private connectGoogleApiClient(Landroid/content/Context;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 284
    const/4 v2, 0x0

    .line 286
    .local v2, "mGoogleApiClient":Lcom/google/android/gms/common/api/GoogleApiClient;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/prey/actions/geofences/GeofenceController;->buildGoogleApiClient(Landroid/content/Context;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    .line 287
    const/4 v1, 0x0

    .line 288
    .local v1, "i":I
    :goto_0
    const/16 v3, 0x32

    if-ge v1, v3, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 289
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 290
    add-int/lit8 v1, v1, 0x1

    .line 291
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 292
    rem-int/lit8 v3, v1, 0xa

    if-nez v3, :cond_0

    .line 293
    invoke-direct {p0, p1}, Lcom/prey/actions/geofences/GeofenceController;->buildGoogleApiClient(Landroid/content/Context;)Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 295
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "___["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] sleep"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 297
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 300
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v2
.end method

.method private convertMap(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/prey/actions/geofences/GeofenceDto;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/prey/actions/geofences/GeofenceDto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/geofences/GeofenceDto;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 70
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/prey/actions/geofences/GeofenceDto;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 71
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prey/actions/geofences/GeofenceDto;

    .line 72
    .local v0, "geo":Lcom/prey/actions/geofences/GeofenceDto;
    invoke-virtual {v0}, Lcom/prey/actions/geofences/GeofenceDto;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "geo":Lcom/prey/actions/geofences/GeofenceDto;
    :cond_0
    return-object v2
.end method

.method private deleteZones(Landroid/content/Context;)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 78
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v4, "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/prey/actions/geofences/GeofenceController;->listBD:Ljava/util/List;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/prey/actions/geofences/GeofenceController;->listBD:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 80
    iget-object v5, p0, Lcom/prey/actions/geofences/GeofenceController;->listBD:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prey/actions/geofences/GeofenceDto;

    .line 81
    .local v0, "geo":Lcom/prey/actions/geofences/GeofenceDto;
    iget-object v5, p0, Lcom/prey/actions/geofences/GeofenceController;->mapWeb:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/prey/actions/geofences/GeofenceDto;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/prey/actions/geofences/GeofenceDto;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 83
    iget-object v5, p0, Lcom/prey/actions/geofences/GeofenceController;->dataSource:Lcom/prey/actions/geofences/GeofenceDataSource;

    invoke-virtual {v0}, Lcom/prey/actions/geofences/GeofenceDto;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/prey/actions/geofences/GeofenceDataSource;->deleteGeofence(Ljava/lang/String;)V

    .line 84
    invoke-static {p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/prey/PreyConfig;->getLastEvent()Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "lastEvent":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/prey/actions/geofences/GeofenceDto;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 86
    invoke-static {p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/prey/PreyConfig;->setLastEventGeo(Ljava/lang/String;)V

    .line 88
    :cond_0
    invoke-virtual {v0}, Lcom/prey/actions/geofences/GeofenceDto;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .end local v3    # "lastEvent":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "geo":Lcom/prey/actions/geofences/GeofenceDto;
    :cond_2
    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 92
    sget-object v5, Lcom/google/android/gms/location/LocationServices;->GeofencingApi:Lcom/google/android/gms/location/GeofencingApi;

    iget-object v6, p0, Lcom/prey/actions/geofences/GeofenceController;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v5, v6, v4}, Lcom/google/android/gms/location/GeofencingApi;->removeGeofences(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;

    .line 93
    const-string v2, "["

    .line 94
    .local v2, "infoDelete":Ljava/lang/String;
    const/4 v1, 0x0

    :goto_1
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 95
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 96
    add-int/lit8 v5, v1, 0x1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 97
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 100
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "infoDelete:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 102
    const-string v5, "start"

    const-string v6, "geofencing"

    const-string v7, "stopped"

    invoke-static {v5, v6, v7, v2}, Lcom/prey/json/UtilJson;->makeMapParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lcom/prey/actions/geofences/GeofenceController;->sendNotify(Landroid/content/Context;Ljava/util/Map;)V

    .line 104
    .end local v2    # "infoDelete":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private disconnectGoogleApiClient(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 3
    .param p1, "mGoogleApiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;

    .prologue
    .line 305
    if-eqz p1, :cond_0

    .line 306
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/prey/actions/geofences/GeofenceController;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/prey/actions/geofences/GeofenceController;->INSTANCE:Lcom/prey/actions/geofences/GeofenceController;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/prey/actions/geofences/GeofenceController;

    invoke-direct {v0}, Lcom/prey/actions/geofences/GeofenceController;-><init>()V

    sput-object v0, Lcom/prey/actions/geofences/GeofenceController;->INSTANCE:Lcom/prey/actions/geofences/GeofenceController;

    .line 51
    :cond_0
    sget-object v0, Lcom/prey/actions/geofences/GeofenceController;->INSTANCE:Lcom/prey/actions/geofences/GeofenceController;

    return-object v0
.end method


# virtual methods
.method public deleteAllZones(Landroid/content/Context;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 107
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v3, "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/prey/actions/geofences/GeofenceController;->listBD:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/prey/actions/geofences/GeofenceController;->listBD:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 109
    iget-object v4, p0, Lcom/prey/actions/geofences/GeofenceController;->listBD:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prey/actions/geofences/GeofenceDto;

    .line 110
    .local v0, "geo":Lcom/prey/actions/geofences/GeofenceDto;
    iget-object v4, p0, Lcom/prey/actions/geofences/GeofenceController;->dataSource:Lcom/prey/actions/geofences/GeofenceDataSource;

    invoke-virtual {v0}, Lcom/prey/actions/geofences/GeofenceDto;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/prey/actions/geofences/GeofenceDataSource;->deleteGeofence(Ljava/lang/String;)V

    .line 111
    invoke-static {p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prey/PreyConfig;->getLastEvent()Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "lastEvent":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/prey/actions/geofences/GeofenceDto;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_0

    .line 113
    invoke-static {p1}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/prey/PreyConfig;->setLastEventGeo(Ljava/lang/String;)V

    .line 115
    :cond_0
    invoke-virtual {v0}, Lcom/prey/actions/geofences/GeofenceDto;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "geo":Lcom/prey/actions/geofences/GeofenceDto;
    .end local v2    # "lastEvent":Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 118
    sget-object v4, Lcom/google/android/gms/location/LocationServices;->GeofencingApi:Lcom/google/android/gms/location/GeofencingApi;

    iget-object v5, p0, Lcom/prey/actions/geofences/GeofenceController;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v4, v5, v3}, Lcom/google/android/gms/location/GeofencingApi;->removeGeofences(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;

    .line 120
    :cond_2
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 24
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 212
    const-string v3, "_GeofenceController__init"

    invoke-static {v3}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 213
    const/16 v20, 0x0

    .line 215
    .local v20, "mGoogleApiClient":Lcom/google/android/gms/common/api/GoogleApiClient;
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/prey/actions/geofences/GeofenceController;->connectGoogleApiClient(Landroid/content/Context;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v20

    .line 216
    new-instance v9, Lcom/prey/actions/geofences/GeofenceDataSource;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/prey/actions/geofences/GeofenceDataSource;-><init>(Landroid/content/Context;)V

    .line 217
    .local v9, "dataSource":Lcom/prey/actions/geofences/GeofenceDataSource;
    invoke-virtual {v9}, Lcom/prey/actions/geofences/GeofenceDataSource;->getAllGeofences()Ljava/util/List;

    move-result-object v17

    .line 218
    .local v17, "listBD":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/geofences/GeofenceDto;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v19, "mGeofenceList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/Geofence;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v18, "listToBdAdd":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/geofences/GeofenceDto;>;"
    const-string v15, "["

    .line 221
    .local v15, "info":Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-eqz v17, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v3

    if-ge v14, v3, :cond_1

    .line 222
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/prey/actions/geofences/GeofenceDto;

    .line 223
    .local v12, "geo":Lcom/prey/actions/geofences/GeofenceDto;
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "__[START]___________id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Lcom/prey/actions/geofences/GeofenceDto;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " lat:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v12, Lcom/prey/actions/geofences/GeofenceDto;->latitude:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " long:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v12, Lcom/prey/actions/geofences/GeofenceDto;->longitude:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ra:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v12, Lcom/prey/actions/geofences/GeofenceDto;->radius:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " expires:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v12, Lcom/prey/actions/geofences/GeofenceDto;->expires:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 225
    const/16 v23, 0x7

    .line 228
    .local v23, "transitionTypes":I
    new-instance v3, Lcom/google/android/gms/location/Geofence$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/location/Geofence$Builder;-><init>()V

    iget-object v4, v12, Lcom/prey/actions/geofences/GeofenceDto;->id:Ljava/lang/String;

    .line 229
    invoke-virtual {v3, v4}, Lcom/google/android/gms/location/Geofence$Builder;->setRequestId(Ljava/lang/String;)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v3

    iget-wide v4, v12, Lcom/prey/actions/geofences/GeofenceDto;->latitude:D

    iget-wide v6, v12, Lcom/prey/actions/geofences/GeofenceDto;->longitude:D

    iget v8, v12, Lcom/prey/actions/geofences/GeofenceDto;->radius:F

    .line 230
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/location/Geofence$Builder;->setCircularRegion(DDF)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v3

    const-wide/16 v4, -0x1

    .line 231
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/location/Geofence$Builder;->setExpirationDuration(J)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v3

    .line 232
    move/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/google/android/gms/location/Geofence$Builder;->setTransitionTypes(I)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v3

    .line 233
    invoke-static/range {p1 .. p1}, Lcom/prey/FileConfigReader;->getInstance(Landroid/content/Context;)Lcom/prey/FileConfigReader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prey/FileConfigReader;->getGeofenceLoiteringDelay()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/location/Geofence$Builder;->setLoiteringDelay(I)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v3

    .line 234
    invoke-virtual {v3}, Lcom/google/android/gms/location/Geofence$Builder;->build()Lcom/google/android/gms/location/Geofence;

    move-result-object v3

    .line 228
    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Lcom/prey/actions/geofences/GeofenceDto;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 236
    add-int/lit8 v3, v14, 0x1

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 221
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 240
    .end local v12    # "geo":Lcom/prey/actions/geofences/GeofenceDto;
    .end local v23    # "transitionTypes":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 241
    move-object v11, v15

    .line 242
    .local v11, "extraInfo":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "info:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 243
    new-instance v2, Lcom/google/android/gms/location/GeofencingRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/location/GeofencingRequest$Builder;-><init>()V

    .line 244
    .local v2, "builder":Lcom/google/android/gms/location/GeofencingRequest$Builder;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/location/GeofencingRequest$Builder;->setInitialTrigger(I)Lcom/google/android/gms/location/GeofencingRequest$Builder;

    .line 245
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/google/android/gms/location/GeofencingRequest$Builder;->addGeofences(Ljava/util/List;)Lcom/google/android/gms/location/GeofencingRequest$Builder;

    .line 246
    invoke-virtual {v2}, Lcom/google/android/gms/location/GeofencingRequest$Builder;->build()Lcom/google/android/gms/location/GeofencingRequest;

    move-result-object v13

    .line 247
    .local v13, "geofencingRequest":Lcom/google/android/gms/location/GeofencingRequest;
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 248
    const-string v3, "---->isConnected"

    invoke-static {v3}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 250
    :try_start_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_2

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 251
    :cond_2
    new-instance v16, Landroid/content/Intent;

    const-class v3, Lcom/prey/actions/geofences/GeofenceIntentService;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    .local v16, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v3, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v21

    .line 253
    .local v21, "pendingIntent":Landroid/app/PendingIntent;
    sget-object v3, Lcom/google/android/gms/location/LocationServices;->GeofencingApi:Lcom/google/android/gms/location/GeofencingApi;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v3, v0, v13, v1}, Lcom/google/android/gms/location/GeofencingApi;->addGeofences(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/GeofencingRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v22

    .line 258
    .local v22, "result":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/common/api/Status;>;"
    new-instance v3, Lcom/prey/actions/geofences/GeofenceController$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/prey/actions/geofences/GeofenceController$3;-><init>(Lcom/prey/actions/geofences/GeofenceController;Landroid/content/Context;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 281
    .end local v2    # "builder":Lcom/google/android/gms/location/GeofencingRequest$Builder;
    .end local v9    # "dataSource":Lcom/prey/actions/geofences/GeofenceDataSource;
    .end local v11    # "extraInfo":Ljava/lang/String;
    .end local v13    # "geofencingRequest":Lcom/google/android/gms/location/GeofencingRequest;
    .end local v14    # "i":I
    .end local v15    # "info":Ljava/lang/String;
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v17    # "listBD":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/geofences/GeofenceDto;>;"
    .end local v18    # "listToBdAdd":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/geofences/GeofenceDto;>;"
    .end local v19    # "mGeofenceList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/Geofence;>;"
    .end local v21    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v22    # "result":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/common/api/Status;>;"
    :cond_3
    :goto_1
    return-void

    .line 271
    .restart local v2    # "builder":Lcom/google/android/gms/location/GeofencingRequest$Builder;
    .restart local v9    # "dataSource":Lcom/prey/actions/geofences/GeofenceDataSource;
    .restart local v11    # "extraInfo":Ljava/lang/String;
    .restart local v13    # "geofencingRequest":Lcom/google/android/gms/location/GeofencingRequest;
    .restart local v14    # "i":I
    .restart local v15    # "info":Ljava/lang/String;
    .restart local v17    # "listBD":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/geofences/GeofenceDto;>;"
    .restart local v18    # "listToBdAdd":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/geofences/GeofenceDto;>;"
    .restart local v19    # "mGeofenceList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/Geofence;>;"
    :catch_0
    move-exception v10

    .line 272
    .local v10, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error ---->isConnected:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v10}, Lcom/prey/PreyLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 273
    const-string v3, "start"

    const-string v4, "geofencing"

    const-string v5, "failed"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/prey/json/UtilJson;->makeMapParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/prey/actions/geofences/GeofenceController;->sendNotify(Landroid/content/Context;Ljava/util/Map;)V

    goto :goto_1

    .line 279
    .end local v2    # "builder":Lcom/google/android/gms/location/GeofencingRequest$Builder;
    .end local v9    # "dataSource":Lcom/prey/actions/geofences/GeofenceDataSource;
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "extraInfo":Ljava/lang/String;
    .end local v13    # "geofencingRequest":Lcom/google/android/gms/location/GeofencingRequest;
    .end local v14    # "i":I
    .end local v15    # "info":Ljava/lang/String;
    .end local v17    # "listBD":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/geofences/GeofenceDto;>;"
    .end local v18    # "listToBdAdd":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/geofences/GeofenceDto;>;"
    .end local v19    # "mGeofenceList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/Geofence;>;"
    :catch_1
    move-exception v3

    goto :goto_1

    .line 276
    .restart local v2    # "builder":Lcom/google/android/gms/location/GeofencingRequest$Builder;
    .restart local v9    # "dataSource":Lcom/prey/actions/geofences/GeofenceDataSource;
    .restart local v11    # "extraInfo":Ljava/lang/String;
    .restart local v13    # "geofencingRequest":Lcom/google/android/gms/location/GeofencingRequest;
    .restart local v14    # "i":I
    .restart local v15    # "info":Ljava/lang/String;
    .restart local v17    # "listBD":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/geofences/GeofenceDto;>;"
    .restart local v18    # "listToBdAdd":Ljava/util/List;, "Ljava/util/List<Lcom/prey/actions/geofences/GeofenceDto;>;"
    .restart local v19    # "mGeofenceList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/Geofence;>;"
    :cond_4
    const-string v3, "not connect mGoogleApiClient 3"

    invoke-static {v3}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 277
    const-string v3, "start"

    const-string v4, "geofencing"

    const-string v5, "failed"

    const-string v6, "not connect mGoogleApiClient"

    invoke-static {v3, v4, v5, v6}, Lcom/prey/json/UtilJson;->makeMapParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/prey/actions/geofences/GeofenceController;->sendNotify(Landroid/content/Context;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method public run(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 56
    :try_start_0
    invoke-direct {p0, p1}, Lcom/prey/actions/geofences/GeofenceController;->connectGoogleApiClient(Landroid/content/Context;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/prey/actions/geofences/GeofenceController;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 57
    new-instance v0, Lcom/prey/actions/geofences/GeofenceDataSource;

    invoke-direct {v0, p1}, Lcom/prey/actions/geofences/GeofenceDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/prey/actions/geofences/GeofenceController;->dataSource:Lcom/prey/actions/geofences/GeofenceDataSource;

    .line 58
    iget-object v0, p0, Lcom/prey/actions/geofences/GeofenceController;->dataSource:Lcom/prey/actions/geofences/GeofenceDataSource;

    invoke-virtual {v0}, Lcom/prey/actions/geofences/GeofenceDataSource;->getAllGeofences()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/prey/actions/geofences/GeofenceController;->listBD:Ljava/util/List;

    .line 59
    iget-object v0, p0, Lcom/prey/actions/geofences/GeofenceController;->listBD:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/prey/actions/geofences/GeofenceController;->convertMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/prey/actions/geofences/GeofenceController;->mapBD:Ljava/util/Map;

    .line 60
    invoke-static {p1}, Lcom/prey/actions/geofences/GeofecenceParse;->getJSONFromUrl(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/prey/actions/geofences/GeofenceController;->listWeb:Ljava/util/List;

    .line 61
    iget-object v0, p0, Lcom/prey/actions/geofences/GeofenceController;->listWeb:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/prey/actions/geofences/GeofenceController;->convertMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/prey/actions/geofences/GeofenceController;->mapWeb:Ljava/util/Map;

    .line 62
    invoke-direct {p0, p1}, Lcom/prey/actions/geofences/GeofenceController;->deleteZones(Landroid/content/Context;)V

    .line 63
    invoke-direct {p0, p1}, Lcom/prey/actions/geofences/GeofenceController;->addZones(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendNotify(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/prey/actions/geofences/GeofenceController$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/prey/actions/geofences/GeofenceController$1;-><init>(Lcom/prey/actions/geofences/GeofenceController;Landroid/content/Context;Ljava/util/Map;)V

    .line 127
    invoke-virtual {v0}, Lcom/prey/actions/geofences/GeofenceController$1;->start()V

    .line 128
    return-void
.end method
