.class public Lcom/prey/actions/location/PreyLocationManager;
.super Ljava/lang/Object;
.source "PreyLocationManager.java"


# static fields
.field private static _instance:Lcom/prey/actions/location/PreyLocationManager;


# instance fields
.field private androidLocationManager:Landroid/location/LocationManager;

.field private ctx:Landroid/content/Context;

.field private lastLocation:Lcom/prey/actions/location/PreyLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/prey/actions/location/PreyLocationManager;->_instance:Lcom/prey/actions/location/PreyLocationManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prey/actions/location/PreyLocationManager;->androidLocationManager:Landroid/location/LocationManager;

    .line 20
    iput-object p1, p0, Lcom/prey/actions/location/PreyLocationManager;->ctx:Landroid/content/Context;

    .line 21
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/prey/actions/location/PreyLocationManager;->androidLocationManager:Landroid/location/LocationManager;

    .line 22
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/prey/actions/location/PreyLocationManager;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 25
    sget-object v0, Lcom/prey/actions/location/PreyLocationManager;->_instance:Lcom/prey/actions/location/PreyLocationManager;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/prey/actions/location/PreyLocationManager;

    invoke-direct {v0, p0}, Lcom/prey/actions/location/PreyLocationManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/prey/actions/location/PreyLocationManager;->_instance:Lcom/prey/actions/location/PreyLocationManager;

    .line 27
    :cond_0
    sget-object v0, Lcom/prey/actions/location/PreyLocationManager;->_instance:Lcom/prey/actions/location/PreyLocationManager;

    return-object v0
.end method


# virtual methods
.method public getLastLocation()Lcom/prey/actions/location/PreyLocation;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/prey/actions/location/PreyLocationManager;->lastLocation:Lcom/prey/actions/location/PreyLocation;

    if-nez v0, :cond_0

    new-instance v0, Lcom/prey/actions/location/PreyLocation;

    invoke-direct {v0}, Lcom/prey/actions/location/PreyLocation;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/prey/actions/location/PreyLocationManager;->lastLocation:Lcom/prey/actions/location/PreyLocation;

    goto :goto_0
.end method

.method public isGpsLocationServiceActive()Z
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 41
    .local v0, "gps_enabled":Z
    :try_start_0
    iget-object v1, p0, Lcom/prey/actions/location/PreyLocationManager;->androidLocationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 44
    :goto_0
    return v0

    .line 42
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isNetworkLocationServiceActive()Z
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 50
    .local v0, "network_enabled":Z
    :try_start_0
    iget-object v1, p0, Lcom/prey/actions/location/PreyLocationManager;->androidLocationManager:Landroid/location/LocationManager;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 53
    :goto_0
    return v0

    .line 51
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public locationServicesEnabled()Z
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/prey/actions/location/PreyLocationManager;->isGpsLocationServiceActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/prey/actions/location/PreyLocationManager;->isNetworkLocationServiceActive()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLastLocation(Lcom/prey/actions/location/PreyLocation;)V
    .locals 0
    .param p1, "loc"    # Lcom/prey/actions/location/PreyLocation;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/prey/actions/location/PreyLocationManager;->lastLocation:Lcom/prey/actions/location/PreyLocation;

    .line 32
    return-void
.end method
