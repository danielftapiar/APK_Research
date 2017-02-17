.class public final Lcl/birdie/toolkit/MyLocationListener;
.super Ljava/lang/Object;
.source "MyLocationListener.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field static currentBestLocation:Landroid/location/Location;

.field static listener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 16
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 22
    const/4 v10, 0x0

    .line 25
    .local v10, "useLoc":Landroid/location/Location;
    sget-object v11, Lcl/birdie/toolkit/MyLocationListener;->currentBestLocation:Landroid/location/Location;

    if-nez v11, :cond_5

    .line 27
    sput-object p1, Lcl/birdie/toolkit/MyLocationListener;->currentBestLocation:Landroid/location/Location;

    move-object/from16 v10, p1

    .line 74
    :cond_0
    :goto_0
    if-eqz v10, :cond_4

    .line 77
    new-instance v7, Lcl/birdie/toolkit/Posicion;

    invoke-direct {v7}, Lcl/birdie/toolkit/Posicion;-><init>()V

    .line 78
    .local v7, "p":Lcl/birdie/toolkit/Posicion;
    new-instance v11, Lcl/birdie/toolkit/LatLng;

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    .line 79
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    invoke-direct {v11, v12, v13, v14, v15}, Lcl/birdie/toolkit/LatLng;-><init>(DD)V

    .line 78
    iput-object v11, v7, Lcl/birdie/toolkit/Posicion;->latlng:Lcl/birdie/toolkit/LatLng;

    .line 80
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v11

    iput v11, v7, Lcl/birdie/toolkit/Posicion;->verticalAccuracy:F

    .line 81
    const/4 v11, 0x1

    iput-boolean v11, v7, Lcl/birdie/toolkit/Posicion;->valid:Z

    .line 82
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v11

    iput v11, v7, Lcl/birdie/toolkit/Posicion;->horizontalAccuracy:F

    .line 83
    invoke-static {v7}, Lcl/birdie/transantiagomaster/GPSController;->setPosicion(Lcl/birdie/toolkit/Posicion;)V

    .line 84
    invoke-static {}, Lcl/birdie/transantiagomaster/GPSController;->posicionPedida()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 85
    const/4 v11, 0x2

    invoke-static {v11}, Lcl/birdie/transantiagomaster/GPSController;->pedirPosicion(I)V

    .line 87
    :cond_1
    sget-object v11, Lcl/birdie/toolkit/MyLocationListener;->listener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v11, :cond_2

    .line 88
    sget-object v11, Lcl/birdie/toolkit/MyLocationListener;->listener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v11, v10}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->requestAdLocation(Landroid/location/Location;)V

    .line 89
    :cond_2
    sget-object v11, Lcl/birdie/transantiagomaster/Pantalla;->threadBusqueda:Lcl/birdie/transantiagomaster/ThreadBusqueda;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcl/birdie/transantiagomaster/ThreadBusqueda;->refrescar(I)V

    .line 90
    sget-object v11, Lcl/birdie/toolkit/MyLocationListener;->listener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v11, :cond_3

    .line 91
    sget-object v11, Lcl/birdie/toolkit/MyLocationListener;->listener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v11}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onMapaDibujarUbicacion()V

    .line 93
    :cond_3
    sput-object v10, Lcl/birdie/toolkit/MyLocationListener;->currentBestLocation:Landroid/location/Location;

    .line 95
    .end local v7    # "p":Lcl/birdie/toolkit/Posicion;
    :cond_4
    return-void

    .line 30
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v11

    sget-object v13, Lcl/birdie/toolkit/MyLocationListener;->currentBestLocation:Landroid/location/Location;

    invoke-virtual {v13}, Landroid/location/Location;->getTime()J

    move-result-wide v13

    sub-long v8, v11, v13

    .line 31
    .local v8, "timeDelta":J
    const-wide/16 v11, 0x2710

    cmp-long v11, v8, v11

    if-lez v11, :cond_8

    const/4 v5, 0x1

    .line 32
    .local v5, "isSignificantlyNewer":Z
    :goto_1
    const-wide/16 v11, 0x4e20

    cmp-long v11, v8, v11

    if-lez v11, :cond_9

    const/4 v1, 0x1

    .line 33
    .local v1, "descartable":Z
    :goto_2
    const-wide/16 v11, -0x2710

    cmp-long v11, v8, v11

    if-gez v11, :cond_a

    const/4 v6, 0x1

    .line 34
    .local v6, "isSignificantlyOlder":Z
    :goto_3
    const-wide/16 v11, 0x0

    cmp-long v11, v8, v11

    if-lez v11, :cond_b

    const/4 v4, 0x1

    .line 36
    .local v4, "isNewer":Z
    :goto_4
    if-eqz v5, :cond_c

    .line 37
    move-object/from16 v10, p1

    .line 41
    :cond_6
    :goto_5
    if-nez v10, :cond_0

    .line 43
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v11

    sget-object v12, Lcl/birdie/toolkit/MyLocationListener;->currentBestLocation:Landroid/location/Location;

    .line 44
    invoke-virtual {v12}, Landroid/location/Location;->getAccuracy()F

    move-result v12

    .line 43
    sub-float/2addr v11, v12

    float-to-int v0, v11

    .line 45
    .local v0, "accuracyDelta":I
    const/16 v11, 0x14

    if-ge v0, v11, :cond_d

    const/4 v2, 0x1

    .line 46
    .local v2, "isEnoughAccurate":Z
    :goto_6
    if-gez v0, :cond_e

    const/4 v3, 0x1

    .line 48
    .local v3, "isMoreAccurate":Z
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v11

    .line 51
    sget-object v12, Lcl/birdie/toolkit/MyLocationListener;->currentBestLocation:Landroid/location/Location;

    invoke-virtual {v12}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v12

    .line 49
    if-nez v11, :cond_f

    if-eqz v12, :cond_7

    .line 54
    :cond_7
    :goto_8
    if-eqz v3, :cond_10

    .line 55
    move-object/from16 v10, p1

    .line 56
    goto/16 :goto_0

    .line 31
    .end local v0    # "accuracyDelta":I
    .end local v1    # "descartable":Z
    .end local v2    # "isEnoughAccurate":Z
    .end local v3    # "isMoreAccurate":Z
    .end local v4    # "isNewer":Z
    .end local v5    # "isSignificantlyNewer":Z
    .end local v6    # "isSignificantlyOlder":Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_1

    .line 32
    .restart local v5    # "isSignificantlyNewer":Z
    :cond_9
    const/4 v1, 0x0

    goto :goto_2

    .line 33
    .restart local v1    # "descartable":Z
    :cond_a
    const/4 v6, 0x0

    goto :goto_3

    .line 34
    .restart local v6    # "isSignificantlyOlder":Z
    :cond_b
    const/4 v4, 0x0

    goto :goto_4

    .line 38
    .restart local v4    # "isNewer":Z
    :cond_c
    if-eqz v6, :cond_6

    .line 39
    sget-object v10, Lcl/birdie/toolkit/MyLocationListener;->currentBestLocation:Landroid/location/Location;

    goto :goto_5

    .line 45
    .restart local v0    # "accuracyDelta":I
    :cond_d
    const/4 v2, 0x0

    goto :goto_6

    .line 46
    .restart local v2    # "isEnoughAccurate":Z
    :cond_e
    const/4 v3, 0x0

    goto :goto_7

    .line 49
    .restart local v3    # "isMoreAccurate":Z
    :cond_f
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_8

    .line 56
    :cond_10
    if-eqz v4, :cond_11

    if-eqz v2, :cond_11

    .line 57
    move-object/from16 v10, p1

    .line 58
    goto/16 :goto_0

    :cond_11
    if-eqz v5, :cond_12

    if-eqz v2, :cond_12

    .line 59
    move-object/from16 v10, p1

    .line 60
    goto/16 :goto_0

    :cond_12
    if-eqz v1, :cond_0

    .line 61
    move-object/from16 v10, p1

    goto/16 :goto_0
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 102
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 98
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/os/Bundle;

    .prologue
    .line 106
    return-void
.end method
