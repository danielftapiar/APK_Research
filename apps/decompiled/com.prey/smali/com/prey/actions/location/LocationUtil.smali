.class public Lcom/prey/actions/location/LocationUtil;
.super Ljava/lang/Object;
.source "LocationUtil.java"


# static fields
.field public static final ACC:Ljava/lang/String; = "accuracy"

.field public static final LAT:Ljava/lang/String; = "lat"

.field public static final LNG:Ljava/lang/String; = "lng"

.field private static final MAXIMUM_OF_ATTEMPTS:I = 0x9

.field public static final METHOD:Ljava/lang/String; = "method"

.field private static final SLEEP_OF_ATTEMPTS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/prey/actions/location/LocationUtil;->SLEEP_OF_ATTEMPTS:[I

    return-void

    :array_0
    .array-data 4
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x4
        0x4
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertData(Lcom/prey/actions/location/PreyLocation;)Lcom/prey/actions/HttpDataService;
    .locals 6
    .param p0, "lastLocation"    # Lcom/prey/actions/location/PreyLocation;

    .prologue
    .line 243
    if-nez p0, :cond_0

    .line 244
    const/4 v0, 0x0

    .line 254
    :goto_0
    return-object v0

    .line 245
    :cond_0
    new-instance v0, Lcom/prey/actions/HttpDataService;

    const-string v2, "location"

    invoke-direct {v0, v2}, Lcom/prey/actions/HttpDataService;-><init>(Ljava/lang/String;)V

    .line 246
    .local v0, "data":Lcom/prey/actions/HttpDataService;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/prey/actions/HttpDataService;->setList(Z)V

    .line 247
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 248
    .local v1, "parametersMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "lat"

    invoke-virtual {p0}, Lcom/prey/actions/location/PreyLocation;->getLat()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v2, "lng"

    invoke-virtual {p0}, Lcom/prey/actions/location/PreyLocation;->getLng()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v2, "accuracy"

    invoke-virtual {p0}, Lcom/prey/actions/location/PreyLocation;->getAccuracy()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v2, "method"

    invoke-virtual {p0}, Lcom/prey/actions/location/PreyLocation;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-virtual {v0, v1}, Lcom/prey/actions/HttpDataService;->addDataListAll(Ljava/util/HashMap;)V

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lat:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/prey/actions/location/PreyLocation;->getLat()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lng:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/prey/actions/location/PreyLocation;->getLng()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " acc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/prey/actions/location/PreyLocation;->getAccuracy()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " met:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/prey/actions/location/PreyLocation;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static dataLocation(Landroid/content/Context;Ljava/lang/String;Z)Lcom/prey/actions/HttpDataService;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "asynchronous"    # Z

    .prologue
    .line 42
    const/4 v0, 0x0

    .line 44
    .local v0, "data":Lcom/prey/actions/HttpDataService;
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/prey/actions/location/LocationUtil;->getLocation(Landroid/content/Context;Ljava/lang/String;Z)Lcom/prey/actions/location/PreyLocation;

    move-result-object v2

    .line 45
    .local v2, "preyLocation":Lcom/prey/actions/location/PreyLocation;
    if-nez p2, :cond_1

    .line 46
    if-eqz v2, :cond_0

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "locationData:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/prey/actions/location/PreyLocation;->getLat()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/prey/actions/location/PreyLocation;->getLng()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/prey/actions/location/PreyLocation;->getAccuracy()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 48
    invoke-static {v2}, Lcom/prey/actions/location/LocationUtil;->convertData(Lcom/prey/actions/location/PreyLocation;)Lcom/prey/actions/HttpDataService;

    move-result-object v0

    .end local v2    # "preyLocation":Lcom/prey/actions/location/PreyLocation;
    :goto_0
    move-object v3, v0

    .line 58
    :goto_1
    return-object v3

    .line 50
    .restart local v2    # "preyLocation":Lcom/prey/actions/location/PreyLocation;
    :cond_0
    const-string v3, "Error"

    const-string v4, "failed"

    invoke-static {p0, v3, v4}, Lcom/prey/actions/location/LocationUtil;->sendNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    .end local v2    # "preyLocation":Lcom/prey/actions/location/PreyLocation;
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Error"

    invoke-static {p0, v3, p1}, Lcom/prey/actions/location/LocationUtil;->sendNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "preyLocation":Lcom/prey/actions/location/PreyLocation;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static dataPreyLocation(Landroid/content/Context;Ljava/lang/String;)Lcom/prey/actions/location/PreyLocation;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 258
    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Lcom/prey/actions/location/LocationUtil;->dataLocation(Landroid/content/Context;Ljava/lang/String;Z)Lcom/prey/actions/HttpDataService;

    move-result-object v0

    .line 259
    .local v0, "data":Lcom/prey/actions/HttpDataService;
    new-instance v1, Lcom/prey/actions/location/PreyLocation;

    invoke-direct {v1}, Lcom/prey/actions/location/PreyLocation;-><init>()V

    .line 260
    .local v1, "location":Lcom/prey/actions/location/PreyLocation;
    invoke-virtual {v0}, Lcom/prey/actions/HttpDataService;->getDataList()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "lat"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/prey/actions/location/PreyLocation;->setLat(D)V

    .line 261
    invoke-virtual {v0}, Lcom/prey/actions/HttpDataService;->getDataList()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "lng"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/prey/actions/location/PreyLocation;->setLng(D)V

    .line 262
    invoke-virtual {v0}, Lcom/prey/actions/HttpDataService;->getDataList()Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "accuracy"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/prey/actions/location/PreyLocation;->setAccuracy(F)V

    .line 263
    return-object v1
.end method

.method private static distance(Lcom/prey/actions/location/PreyLocation;Lcom/prey/actions/location/PreyLocation;)D
    .locals 4
    .param p0, "locationOld"    # Lcom/prey/actions/location/PreyLocation;
    .param p1, "locationNew"    # Lcom/prey/actions/location/PreyLocation;

    .prologue
    .line 229
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 230
    new-instance v1, Landroid/location/Location;

    const-string v2, ""

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 231
    .local v1, "locStart":Landroid/location/Location;
    invoke-virtual {p1}, Lcom/prey/actions/location/PreyLocation;->getLat()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 232
    invoke-virtual {p1}, Lcom/prey/actions/location/PreyLocation;->getLng()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 233
    new-instance v0, Landroid/location/Location;

    const-string v2, ""

    invoke-direct {v0, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 234
    .local v0, "locEnd":Landroid/location/Location;
    invoke-virtual {p0}, Lcom/prey/actions/location/PreyLocation;->getLat()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 235
    invoke-virtual {p0}, Lcom/prey/actions/location/PreyLocation;->getLng()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 236
    invoke-virtual {v1, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-double v2, v2

    .line 238
    .end local v0    # "locEnd":Landroid/location/Location;
    .end local v1    # "locStart":Landroid/location/Location;
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private static getDataLocationWifi(Landroid/content/Context;Ljava/lang/String;ZLcom/prey/actions/location/PreyLocation;)Lcom/prey/actions/location/PreyLocation;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "asynchronous"    # Z
    .param p3, "preyLocationOld"    # Lcom/prey/actions/location/PreyLocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v1, 0x0

    .line 125
    .local v1, "preyLocation":Lcom/prey/actions/location/PreyLocation;
    const/4 v0, 0x0

    .line 126
    .local v0, "listWifi":Ljava/util/List;, "Ljava/util/List<Lcom/prey/PreyPhone$Wifi;>;"
    new-instance v2, Lcom/prey/PreyPhone;

    invoke-direct {v2, p0}, Lcom/prey/PreyPhone;-><init>(Landroid/content/Context;)V

    .line 127
    .local v2, "preyPhone":Lcom/prey/PreyPhone;
    invoke-static {p0}, Lcom/prey/managers/PreyWifiManager;->getInstance(Landroid/content/Context;)Lcom/prey/managers/PreyWifiManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prey/managers/PreyWifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    invoke-virtual {v2}, Lcom/prey/PreyPhone;->getListWifi()Ljava/util/List;

    move-result-object v0

    .line 130
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 131
    :cond_1
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    throw v3

    .line 133
    :cond_2
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v3

    invoke-virtual {v3, p0, v0}, Lcom/prey/net/PreyWebServices;->getLocation(Landroid/content/Context;Ljava/util/List;)Lcom/prey/actions/location/PreyLocation;

    move-result-object v1

    .line 134
    const-string v3, "wifi"

    invoke-virtual {v1, v3}, Lcom/prey/actions/location/PreyLocation;->setMethod(Ljava/lang/String;)V

    .line 135
    const/4 v3, 0x0

    invoke-static {p0, p2, v3, v1}, Lcom/prey/actions/location/LocationUtil;->sendLocation(Landroid/content/Context;ZLcom/prey/actions/location/PreyLocation;Lcom/prey/actions/location/PreyLocation;)Lcom/prey/actions/location/PreyLocation;

    .line 136
    return-object v1
.end method

.method public static getLocation(Landroid/content/Context;Ljava/lang/String;Z)Lcom/prey/actions/location/PreyLocation;
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "asynchronous"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    const/4 v6, 0x0

    .line 63
    .local v6, "preyLocation":Lcom/prey/actions/location/PreyLocation;
    invoke-static {p0}, Lcom/prey/actions/location/PreyLocationManager;->getInstance(Landroid/content/Context;)Lcom/prey/actions/location/PreyLocationManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/prey/actions/location/PreyLocationManager;->isGpsLocationServiceActive()Z

    move-result v2

    .line 64
    .local v2, "isGpsEnabled":Z
    invoke-static {p0}, Lcom/prey/actions/location/PreyLocationManager;->getInstance(Landroid/content/Context;)Lcom/prey/actions/location/PreyLocationManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/prey/actions/location/PreyLocationManager;->isNetworkLocationServiceActive()Z

    move-result v3

    .line 65
    .local v3, "isNetworkEnabled":Z
    invoke-static {p0}, Lcom/prey/managers/PreyWifiManager;->getInstance(Landroid/content/Context;)Lcom/prey/managers/PreyWifiManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/prey/managers/PreyWifiManager;->isWifiEnabled()Z

    move-result v4

    .line 66
    .local v4, "isWifiEnabled":Z
    invoke-static {p0}, Lcom/prey/actions/location/LocationUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)Z

    move-result v1

    .line 67
    .local v1, "isGooglePlayServicesAvailable":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "status gps:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " net:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " wifi:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " play:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 68
    invoke-static {v2, v3}, Lcom/prey/actions/location/LocationUtil;->getMethod(ZZ)Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, "method":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 71
    :try_start_0
    invoke-static {p0, v5, p2, v6}, Lcom/prey/actions/location/LocationUtil;->getDataLocationWifi(Landroid/content/Context;Ljava/lang/String;ZLcom/prey/actions/location/PreyLocation;)Lcom/prey/actions/location/PreyLocation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 76
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_2

    if-nez v3, :cond_2

    .line 77
    :cond_1
    :try_start_1
    invoke-static {p0, v5, p2, v6}, Lcom/prey/actions/location/LocationUtil;->getPreyLocationAppService(Landroid/content/Context;Ljava/lang/String;ZLcom/prey/actions/location/PreyLocation;)Lcom/prey/actions/location/PreyLocation;

    move-result-object v6

    .line 84
    :goto_1
    return-object v6

    .line 79
    :cond_2
    invoke-static {p0, v5, p2, v6}, Lcom/prey/actions/location/LocationUtil;->getPreyLocationPlayService(Landroid/content/Context;Ljava/lang/String;ZLcom/prey/actions/location/PreyLocation;)Lcom/prey/actions/location/PreyLocation;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    throw v0

    .line 73
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    goto :goto_0
.end method

.method private static getMethod(ZZ)Ljava/lang/String;
    .locals 1
    .param p0, "isGpsEnabled"    # Z
    .param p1, "isNetworkEnabled"    # Z

    .prologue
    .line 101
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 102
    const-string v0, "native"

    .line 110
    :goto_0
    return-object v0

    .line 104
    :cond_0
    if-eqz p0, :cond_1

    .line 105
    const-string v0, "gps"

    goto :goto_0

    .line 107
    :cond_1
    if-eqz p1, :cond_2

    .line 108
    const-string v0, "network"

    goto :goto_0

    .line 110
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method private static getPreyLocationAppService(Landroid/content/Context;Ljava/lang/String;ZLcom/prey/actions/location/PreyLocation;)Lcom/prey/actions/location/PreyLocation;
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "asynchronous"    # Z
    .param p3, "preyLocationOld"    # Lcom/prey/actions/location/PreyLocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 180
    const/4 v4, 0x0

    .line 181
    .local v4, "preyLocation":Lcom/prey/actions/location/PreyLocation;
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/prey/services/LocationService;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    .local v2, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    const/4 v1, 0x0

    .line 185
    .local v1, "i":I
    :goto_0
    const/16 v5, 0x9

    if-ge v1, v5, :cond_1

    .line 187
    :try_start_1
    sget-object v5, Lcom/prey/actions/location/LocationUtil;->SLEEP_OF_ATTEMPTS:[I

    aget v5, v5, v1

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v6, v5

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    :goto_1
    :try_start_2
    invoke-static {p0}, Lcom/prey/actions/location/PreyLocationManager;->getInstance(Landroid/content/Context;)Lcom/prey/actions/location/PreyLocationManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/prey/actions/location/PreyLocationManager;->getLastLocation()Lcom/prey/actions/location/PreyLocation;

    move-result-object v3

    .line 191
    .local v3, "location":Lcom/prey/actions/location/PreyLocation;
    invoke-virtual {v3}, Lcom/prey/actions/location/PreyLocation;->isValid()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 192
    move-object v4, v3

    .line 193
    invoke-virtual {v4, p1}, Lcom/prey/actions/location/PreyLocation;->setMethod(Ljava/lang/String;)V

    .line 194
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPreyLocationAppService["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/prey/actions/location/PreyLocation;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 195
    invoke-static {p0, p2, p3, v4}, Lcom/prey/actions/location/LocationUtil;->sendLocation(Landroid/content/Context;ZLcom/prey/actions/location/PreyLocation;Lcom/prey/actions/location/PreyLocation;)Lcom/prey/actions/location/PreyLocation;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object p3

    .line 196
    if-nez p2, :cond_0

    .line 197
    const/16 v1, 0x9

    .line 199
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 200
    goto :goto_0

    .line 205
    .end local v3    # "location":Lcom/prey/actions/location/PreyLocation;
    :cond_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 207
    return-object v4

    .line 201
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error getPreyLocationAppService:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 203
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 205
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {p0, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    throw v5

    .line 188
    .restart local v1    # "i":I
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method private static getPreyLocationPlayService(Landroid/content/Context;Ljava/lang/String;ZLcom/prey/actions/location/PreyLocation;)Lcom/prey/actions/location/PreyLocation;
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "asynchronous"    # Z
    .param p3, "preyLocationOld"    # Lcom/prey/actions/location/PreyLocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 143
    const/4 v5, 0x0

    .line 144
    .local v5, "preyLocation":Lcom/prey/actions/location/PreyLocation;
    new-instance v4, Lcom/prey/actions/location/PreyGooglePlayServiceLocation;

    invoke-direct {v4}, Lcom/prey/actions/location/PreyGooglePlayServiceLocation;-><init>()V

    .line 146
    .local v4, "play":Lcom/prey/actions/location/PreyGooglePlayServiceLocation;
    :try_start_0
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/prey/actions/location/LocationUtil$1;

    invoke-direct {v8, v4, p0}, Lcom/prey/actions/location/LocationUtil$1;-><init>(Lcom/prey/actions/location/PreyGooglePlayServiceLocation;Landroid/content/Context;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 151
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "currentLocation":Landroid/location/Location;
    invoke-static {p0}, Lcom/prey/actions/location/PreyLocationManager;->getInstance(Landroid/content/Context;)Lcom/prey/actions/location/PreyLocationManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 154
    .local v3, "manager":Lcom/prey/actions/location/PreyLocationManager;
    const/4 v2, 0x0

    .local v2, "i":I
    move-object v6, v5

    .line 155
    .end local v5    # "preyLocation":Lcom/prey/actions/location/PreyLocation;
    .local v6, "preyLocation":Lcom/prey/actions/location/PreyLocation;
    :goto_0
    const/16 v7, 0x9

    if-ge v2, v7, :cond_1

    .line 157
    :try_start_1
    sget-object v7, Lcom/prey/actions/location/LocationUtil;->SLEEP_OF_ATTEMPTS:[I

    aget v7, v7, v2

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v8, v7

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 160
    :goto_1
    :try_start_2
    invoke-virtual {v4, p0}, Lcom/prey/actions/location/PreyGooglePlayServiceLocation;->getLastLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_2

    .line 162
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPreyLocationPlayService["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 163
    new-instance v5, Lcom/prey/actions/location/PreyLocation;

    invoke-direct {v5, v0, p1}, Lcom/prey/actions/location/PreyLocation;-><init>(Landroid/location/Location;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 164
    .end local v6    # "preyLocation":Lcom/prey/actions/location/PreyLocation;
    .restart local v5    # "preyLocation":Lcom/prey/actions/location/PreyLocation;
    :try_start_3
    invoke-static {p0, p2, p3, v5}, Lcom/prey/actions/location/LocationUtil;->sendLocation(Landroid/content/Context;ZLcom/prey/actions/location/PreyLocation;Lcom/prey/actions/location/PreyLocation;)Lcom/prey/actions/location/PreyLocation;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object p3

    .line 165
    if-nez p2, :cond_0

    .line 166
    const/16 v2, 0x9

    .line 168
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move-object v6, v5

    .end local v5    # "preyLocation":Lcom/prey/actions/location/PreyLocation;
    .restart local v6    # "preyLocation":Lcom/prey/actions/location/PreyLocation;
    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {v4}, Lcom/prey/actions/location/PreyGooglePlayServiceLocation;->stopLocationUpdates()V

    .line 176
    return-object v6

    .line 170
    .end local v0    # "currentLocation":Landroid/location/Location;
    .end local v2    # "i":I
    .end local v3    # "manager":Lcom/prey/actions/location/PreyLocationManager;
    .end local v6    # "preyLocation":Lcom/prey/actions/location/PreyLocation;
    .restart local v5    # "preyLocation":Lcom/prey/actions/location/PreyLocation;
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error getPreyLocationPlayService:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 172
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 174
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_4
    invoke-virtual {v4}, Lcom/prey/actions/location/PreyGooglePlayServiceLocation;->stopLocationUpdates()V

    throw v7

    .end local v5    # "preyLocation":Lcom/prey/actions/location/PreyLocation;
    .restart local v0    # "currentLocation":Landroid/location/Location;
    .restart local v2    # "i":I
    .restart local v3    # "manager":Lcom/prey/actions/location/PreyLocationManager;
    .restart local v6    # "preyLocation":Lcom/prey/actions/location/PreyLocation;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "preyLocation":Lcom/prey/actions/location/PreyLocation;
    .restart local v5    # "preyLocation":Lcom/prey/actions/location/PreyLocation;
    goto :goto_4

    .line 170
    .end local v5    # "preyLocation":Lcom/prey/actions/location/PreyLocation;
    .restart local v6    # "preyLocation":Lcom/prey/actions/location/PreyLocation;
    :catch_1
    move-exception v1

    move-object v5, v6

    .end local v6    # "preyLocation":Lcom/prey/actions/location/PreyLocation;
    .restart local v5    # "preyLocation":Lcom/prey/actions/location/PreyLocation;
    goto :goto_3

    .line 158
    .end local v5    # "preyLocation":Lcom/prey/actions/location/PreyLocation;
    .restart local v6    # "preyLocation":Lcom/prey/actions/location/PreyLocation;
    :catch_2
    move-exception v7

    goto :goto_1

    :cond_2
    move-object v5, v6

    .end local v6    # "preyLocation":Lcom/prey/actions/location/PreyLocation;
    .restart local v5    # "preyLocation":Lcom/prey/actions/location/PreyLocation;
    goto :goto_2
.end method

.method private static isGooglePlayServicesAvailable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "isGooglePlayServicesAvailable":Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 90
    invoke-static {p0, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 91
    invoke-static {p0, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 92
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    .line 93
    .local v1, "resultCode":I
    if-nez v1, :cond_1

    .line 94
    const/4 v0, 0x1

    .line 97
    .end local v1    # "resultCode":I
    :cond_1
    return v0
.end method

.method private static sendLocation(Landroid/content/Context;ZLcom/prey/actions/location/PreyLocation;Lcom/prey/actions/location/PreyLocation;)Lcom/prey/actions/location/PreyLocation;
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "asynchronous"    # Z
    .param p2, "locationOld"    # Lcom/prey/actions/location/PreyLocation;
    .param p3, "locationNew"    # Lcom/prey/actions/location/PreyLocation;

    .prologue
    .line 211
    invoke-static {p2, p3}, Lcom/prey/actions/location/LocationUtil;->distance(Lcom/prey/actions/location/PreyLocation;Lcom/prey/actions/location/PreyLocation;)D

    move-result-wide v2

    .line 212
    .local v2, "distance":D
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prey/PreyConfig;->getDistanceLocation()I

    move-result v6

    int-to-double v4, v6

    .line 213
    .local v4, "distanceLocation":D
    if-eqz p3, :cond_2

    .line 214
    if-eqz p2, :cond_0

    cmpl-double v6, v2, v4

    if-gtz v6, :cond_0

    invoke-virtual {p2}, Lcom/prey/actions/location/PreyLocation;->getAccuracy()F

    move-result v6

    invoke-virtual {p3}, Lcom/prey/actions/location/PreyLocation;->getAccuracy()F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 215
    :cond_0
    if-eqz p1, :cond_1

    .line 216
    invoke-static {p3}, Lcom/prey/actions/location/LocationUtil;->convertData(Lcom/prey/actions/location/PreyLocation;)Lcom/prey/actions/HttpDataService;

    move-result-object v0

    .line 217
    .local v0, "data":Lcom/prey/actions/HttpDataService;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v1, "dataToBeSent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/prey/actions/HttpDataService;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v6

    invoke-virtual {v6, p0, v1}, Lcom/prey/net/PreyWebServices;->sendPreyHttpData(Landroid/content/Context;Ljava/util/ArrayList;)Lcom/prey/net/PreyHttpResponse;

    .line 224
    .end local v0    # "data":Lcom/prey/actions/HttpDataService;
    .end local v1    # "dataToBeSent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/prey/actions/HttpDataService;>;"
    .end local p3    # "locationNew":Lcom/prey/actions/location/PreyLocation;
    :cond_1
    :goto_0
    return-object p3

    .restart local p3    # "locationNew":Lcom/prey/actions/location/PreyLocation;
    :cond_2
    move-object p3, p2

    goto :goto_0
.end method

.method private static sendNotify(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 114
    const-string v1, "get"

    const-string v2, "location"

    const-string v3, "failed"

    invoke-static {v1, v2, v3, p1}, Lcom/prey/json/UtilJson;->makeMapParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 115
    .local v0, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/prey/net/PreyWebServices;->sendNotifyActionResultPreyHttp(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    .line 116
    return-void
.end method

.method private static sendNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;

    .prologue
    .line 119
    const-string v1, "get"

    const-string v2, "location"

    invoke-static {v1, v2, p2, p1}, Lcom/prey/json/UtilJson;->makeMapParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 120
    .local v0, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/prey/net/PreyWebServices;->getInstance()Lcom/prey/net/PreyWebServices;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/prey/net/PreyWebServices;->sendNotifyActionResultPreyHttp(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    .line 121
    return-void
.end method
