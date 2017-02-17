.class public final Lcl/birdie/transantiagomaster/GPSController;
.super Ljava/lang/Object;
.source "GPSController.java"


# static fields
.field static inicializado:Z

.field static locationManager:Landroid/location/LocationManager;

.field static myListener:Lcl/birdie/toolkit/MyLocationListener;

.field private static posPedida:I

.field public static posicion:Lcl/birdie/toolkit/Posicion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    new-instance v0, Lcl/birdie/toolkit/Posicion;

    invoke-direct {v0}, Lcl/birdie/toolkit/Posicion;-><init>()V

    sput-object v0, Lcl/birdie/transantiagomaster/GPSController;->posicion:Lcl/birdie/toolkit/Posicion;

    .line 25
    sput v1, Lcl/birdie/transantiagomaster/GPSController;->posPedida:I

    .line 26
    sput-boolean v1, Lcl/birdie/transantiagomaster/GPSController;->inicializado:Z

    .line 27
    return-void
.end method

.method public static estaInicializado()Z
    .locals 1

    .prologue
    .line 151
    sget-boolean v0, Lcl/birdie/transantiagomaster/GPSController;->inicializado:Z

    return v0
.end method

.method public static inicializar(Landroid/content/Context;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 47
    .line 50
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 49
    check-cast v0, Landroid/location/LocationManager;

    .line 52
    sput-object v0, Lcl/birdie/transantiagomaster/GPSController;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 53
    const-string v0, "GPSController"

    .line 54
    const-string v1, "inicializar: locationManager NULL"

    .line 53
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    sget-object v0, Lcl/birdie/transantiagomaster/GPSController;->myListener:Lcl/birdie/toolkit/MyLocationListener;

    if-nez v0, :cond_1

    .line 57
    new-instance v0, Lcl/birdie/toolkit/MyLocationListener;

    invoke-direct {v0}, Lcl/birdie/toolkit/MyLocationListener;-><init>()V

    sput-object v0, Lcl/birdie/transantiagomaster/GPSController;->myListener:Lcl/birdie/toolkit/MyLocationListener;

    .line 59
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcl/birdie/transantiagomaster/GPSController;->inicializado:Z

    .line 60
    return-void
.end method

.method public static declared-synchronized pedirPosicion(I)V
    .locals 2
    .param p0, "x"    # I

    .prologue
    .line 39
    const-class v0, Lcl/birdie/transantiagomaster/GPSController;

    monitor-enter v0

    :try_start_0
    sput p0, Lcl/birdie/transantiagomaster/GPSController;->posPedida:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit v0

    return-void

    .line 39
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized posicionPedida()I
    .locals 2

    .prologue
    .line 43
    const-class v0, Lcl/birdie/transantiagomaster/GPSController;

    monitor-enter v0

    :try_start_0
    sget v1, Lcl/birdie/transantiagomaster/GPSController;->posPedida:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setPosicion(Lcl/birdie/toolkit/Posicion;)V
    .locals 4
    .param p0, "p"    # Lcl/birdie/toolkit/Posicion;

    .prologue
    .line 30
    sget-object v1, Lcl/birdie/transantiagomaster/GPSController;->posicion:Lcl/birdie/toolkit/Posicion;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lcl/birdie/transantiagomaster/GPSController;->posicion:Lcl/birdie/toolkit/Posicion;

    iget-object v2, v0, Lcl/birdie/toolkit/Posicion;->latlng:Lcl/birdie/toolkit/LatLng;

    iget-object v3, p0, Lcl/birdie/toolkit/Posicion;->latlng:Lcl/birdie/toolkit/LatLng;

    invoke-virtual {v2, v3}, Lcl/birdie/toolkit/LatLng;->copy(Lcl/birdie/toolkit/LatLng;)V

    iget v2, p0, Lcl/birdie/toolkit/Posicion;->horizontalAccuracy:F

    iput v2, v0, Lcl/birdie/toolkit/Posicion;->horizontalAccuracy:F

    iget v2, p0, Lcl/birdie/toolkit/Posicion;->verticalAccuracy:F

    iput v2, v0, Lcl/birdie/toolkit/Posicion;->verticalAccuracy:F

    iget-boolean v2, p0, Lcl/birdie/toolkit/Posicion;->valid:Z

    iput-boolean v2, v0, Lcl/birdie/toolkit/Posicion;->valid:Z

    .line 32
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-static {p0}, Lcl/birdie/transantiagomaster/TileHandler;->recalcularRango(Lcl/birdie/toolkit/Posicion;)V

    .line 36
    return-void

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static startLocationUpdate(Landroid/content/Context;)V
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-static {p0}, Lcl/birdie/transantiagomaster/GPSController;->inicializar(Landroid/content/Context;)V

    .line 71
    sget-object v0, Lcl/birdie/transantiagomaster/GPSController;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_4

    .line 90
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-boolean v0, v0, Lcl/birdie/params/Preferencias;->UsarRed:Z

    if-eqz v0, :cond_1

    .line 92
    :try_start_0
    sget-object v0, Lcl/birdie/transantiagomaster/GPSController;->locationManager:Landroid/location/LocationManager;

    .line 93
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_0

    .line 94
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 103
    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lcl/birdie/transantiagomaster/GPSController;->locationManager:Landroid/location/LocationManager;

    .line 105
    const-string v1, "network"

    const-wide/16 v2, 0xa

    const/4 v4, 0x0

    .line 106
    sget-object v5, Lcl/birdie/transantiagomaster/GPSController;->myListener:Lcl/birdie/toolkit/MyLocationListener;

    .line 104
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 110
    :cond_1
    :goto_1
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-boolean v0, v0, Lcl/birdie/params/Preferencias;->UsarGPS:Z

    if-eqz v0, :cond_3

    .line 112
    :try_start_3
    sget-object v0, Lcl/birdie/transantiagomaster/GPSController;->locationManager:Landroid/location/LocationManager;

    .line 113
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v0

    if-nez v0, :cond_2

    .line 114
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 123
    :cond_2
    :goto_2
    :try_start_5
    sget-object v0, Lcl/birdie/transantiagomaster/GPSController;->locationManager:Landroid/location/LocationManager;

    .line 125
    const-string v1, "gps"

    const-wide/16 v2, 0xa

    const/4 v4, 0x0

    .line 126
    sget-object v5, Lcl/birdie/transantiagomaster/GPSController;->myListener:Lcl/birdie/toolkit/MyLocationListener;

    .line 124
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 137
    :cond_3
    :goto_3
    return-void

    .line 99
    :catch_0
    move-exception v6

    .line 100
    .local v6, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v0, "GPSController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "excepcion: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 107
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 108
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v0, "GPSController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "excepcion: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 119
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v6

    .line 120
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_7
    const-string v0, "GPSController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "excepcion: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 127
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v6

    .line 128
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v0, "GPSController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "excepcion: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 132
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v0, "GPSController"

    .line 133
    const-string v1, "LocationManager es NULL!"

    .line 132
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static stop()V
    .locals 2

    .prologue
    .line 140
    sget-object v0, Lcl/birdie/transantiagomaster/GPSController;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 142
    sget-object v0, Lcl/birdie/transantiagomaster/GPSController;->locationManager:Landroid/location/LocationManager;

    sget-object v1, Lcl/birdie/transantiagomaster/GPSController;->myListener:Lcl/birdie/toolkit/MyLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 148
    :cond_0
    return-void
.end method
