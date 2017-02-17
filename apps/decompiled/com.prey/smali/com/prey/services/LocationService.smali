.class public Lcom/prey/services/LocationService;
.super Landroid/app/Service;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prey/services/LocationService$LocalBinder;
    }
.end annotation


# instance fields
.field private androidLocationManager:Landroid/location/LocationManager;

.field private gpsLocationListener:Landroid/location/LocationListener;

.field private lastRegisteredLocation:Landroid/location/Location;

.field private final mBinder:Landroid/os/IBinder;

.field private networkLocationListener:Landroid/location/LocationListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 42
    new-instance v0, Lcom/prey/services/LocationService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/prey/services/LocationService$LocalBinder;-><init>(Lcom/prey/services/LocationService;)V

    iput-object v0, p0, Lcom/prey/services/LocationService;->mBinder:Landroid/os/IBinder;

    .line 127
    new-instance v0, Lcom/prey/services/LocationService$1;

    invoke-direct {v0, p0}, Lcom/prey/services/LocationService$1;-><init>(Lcom/prey/services/LocationService;)V

    iput-object v0, p0, Lcom/prey/services/LocationService;->gpsLocationListener:Landroid/location/LocationListener;

    .line 154
    new-instance v0, Lcom/prey/services/LocationService$2;

    invoke-direct {v0, p0}, Lcom/prey/services/LocationService$2;-><init>(Lcom/prey/services/LocationService;)V

    iput-object v0, p0, Lcom/prey/services/LocationService;->networkLocationListener:Landroid/location/LocationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/prey/services/LocationService;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/prey/services/LocationService;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/prey/services/LocationService;->setNewLocation(Landroid/location/Location;)V

    return-void
.end method

.method private setNewLocation(Landroid/location/Location;)V
    .locals 4
    .param p1, "newLocation"    # Landroid/location/Location;

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] Fix found!. Accuracy: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/prey/services/LocationService;->lastRegisteredLocation:Landroid/location/Location;

    if-nez v0, :cond_1

    .line 112
    iput-object p1, p0, Lcom/prey/services/LocationService;->lastRegisteredLocation:Landroid/location/Location;

    .line 124
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/prey/services/LocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/prey/actions/location/PreyLocationManager;->getInstance(Landroid/content/Context;)Lcom/prey/actions/location/PreyLocationManager;

    move-result-object v0

    new-instance v1, Lcom/prey/actions/location/PreyLocation;

    iget-object v2, p0, Lcom/prey/services/LocationService;->lastRegisteredLocation:Landroid/location/Location;

    invoke-direct {v1, v2}, Lcom/prey/actions/location/PreyLocation;-><init>(Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Lcom/prey/actions/location/PreyLocationManager;->setLastLocation(Lcom/prey/actions/location/PreyLocation;)V

    .line 125
    return-void

    .line 114
    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/prey/services/LocationService;->lastRegisteredLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 117
    iput-object p1, p0, Lcom/prey/services/LocationService;->lastRegisteredLocation:Landroid/location/Location;

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Lcom/prey/services/LocationService;->lastRegisteredLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 121
    iput-object p1, p0, Lcom/prey/services/LocationService;->lastRegisteredLocation:Landroid/location/Location;

    goto :goto_0
.end method


# virtual methods
.method public getLastRegisteredLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/prey/services/LocationService;->lastRegisteredLocation:Landroid/location/Location;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/prey/services/LocationService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/high16 v4, 0x41a00000    # 20.0f

    .line 56
    const-string v0, "LocationService is going to be started..."

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 58
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/prey/services/LocationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/prey/services/LocationService;->androidLocationManager:Landroid/location/LocationManager;

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 60
    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 61
    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/prey/services/LocationService;->androidLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v6

    .line 64
    .local v6, "gpsLocationProvider":Landroid/location/LocationProvider;
    iget-object v0, p0, Lcom/prey/services/LocationService;->androidLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v7

    .line 65
    .local v7, "networkProvider":Landroid/location/LocationProvider;
    if-eqz v6, :cond_1

    iget-object v0, p0, Lcom/prey/services/LocationService;->androidLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v6}, Landroid/location/LocationProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/prey/services/LocationService;->androidLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v6}, Landroid/location/LocationProvider;->getName()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0xea60

    iget-object v5, p0, Lcom/prey/services/LocationService;->gpsLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 68
    const-string v0, "GPS Location provider has been started."

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 70
    :cond_1
    if-eqz v7, :cond_2

    iget-object v0, p0, Lcom/prey/services/LocationService;->androidLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v7}, Landroid/location/LocationProvider;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/prey/services/LocationService;->androidLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v7}, Landroid/location/LocationProvider;->getName()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x3a98

    iget-object v5, p0, Lcom/prey/services/LocationService;->networkLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 73
    const-string v0, "NETWORK Location provider has been started."

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 79
    .end local v6    # "gpsLocationProvider":Landroid/location/LocationProvider;
    .end local v7    # "networkProvider":Landroid/location/LocationProvider;
    :cond_2
    :goto_0
    const-string v0, "LocationService has been started..."

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 80
    return-void

    .line 76
    :cond_3
    const-string v0, "___________ask for permission LocationService ACCESS_FINE_LOCATION"

    invoke-static {v0}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/prey/services/LocationService;->androidLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 87
    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 88
    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/prey/services/LocationService;->androidLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/prey/services/LocationService;->gpsLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 90
    iget-object v0, p0, Lcom/prey/services/LocationService;->androidLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/prey/services/LocationService;->networkLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 96
    :cond_1
    return-void
.end method
