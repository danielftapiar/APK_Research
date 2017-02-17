.class public Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;
.super Ljava/lang/Object;
.source "GeoLocalizationLibrary.java"

# interfaces
.implements Lnet/veritran/vtuserapplication/api/geolocalization/GeoLocalizationLibraryInterface;


# static fields
.field public static CODE_GEO:I = 0x0

.field public static final CODE_GEO_SINGLE:I = 0x46b

.field private static final MINIMUM_DISTANCE_CHANGE_FOR_UPDATES:J

.field private static final MINIMUM_TIME_BETWEEN_UPDATES:J


# instance fields
.field private context:Landroid/content/Context;

.field private geoLocalizationListener:Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;

.field private handler:Landroid/os/Handler;

.field private isGpsEnabled:Z

.field private isNetworkEnabled:Z

.field private lastGpsLocation:Landroid/location/Location;

.field private lastNetWorkLocation:Landroid/location/Location;

.field private locationManager:Landroid/location/LocationManager;

.field private vtLocationListener:Lnet/veritran/android/implementation/geolocalization/VTLocationListener;

.field private workerThread:Lnet/veritran/android/implementation/geolocalization/TimeOutThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0x71

    sput v0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->CODE_GEO:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->context:Landroid/content/Context;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;)Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;

    .prologue
    .line 17
    iget-object v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->geoLocalizationListener:Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;

    return-object v0
.end method

.method static synthetic access$100(Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;

    .prologue
    .line 17
    iget-object v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->context:Landroid/content/Context;

    return-object v0
.end method

.method private initGeolocalization()Z
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 44
    const-string v0, "GeoLocalizationLibrary"

    const-string v1, "Inizializando GeoLocalization Phone Services - Android LocationManager..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->context:Landroid/content/Context;

    const-string v1, "location"

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->locationManager:Landroid/location/LocationManager;

    .line 50
    iget-object v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_2

    .line 51
    iget-object v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    .line 52
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->isGpsEnabled:Z

    .line 54
    iget-object v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    .line 55
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->isNetworkEnabled:Z

    .line 57
    new-instance v0, Lnet/veritran/android/implementation/geolocalization/VTLocationListener;

    invoke-direct {v0}, Lnet/veritran/android/implementation/geolocalization/VTLocationListener;-><init>()V

    iput-object v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->vtLocationListener:Lnet/veritran/android/implementation/geolocalization/VTLocationListener;

    .line 59
    iget-boolean v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->isGpsEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->isNetworkEnabled:Z

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->geoLocalizationListener:Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;

    const-string v1, "001"

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;->notifyJobCancelled(Ljava/lang/String;)V

    .line 65
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 96
    :goto_0
    return v0

    .line 68
    :cond_0
    iget-boolean v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->isGpsEnabled:Z

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    .line 70
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->lastGpsLocation:Landroid/location/Location;

    .line 72
    iget-object v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v5, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->vtLocationListener:Lnet/veritran/android/implementation/geolocalization/VTLocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 77
    const-string v0, "GeoLocalizationLibrary"

    const-string v1, "Requesting updates de GPS..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_1
    iget-boolean v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->isNetworkEnabled:Z

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    .line 82
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->lastNetWorkLocation:Landroid/location/Location;

    .line 84
    iget-object v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v5, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->vtLocationListener:Lnet/veritran/android/implementation/geolocalization/VTLocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 89
    const-string v0, "GeoLocalizationLibrary"

    const-string v1, "Requesting updates de NetWork..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showSettingsAlert()V
    .locals 4

    .prologue
    .line 219
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 222
    .local v0, "alertDialog":Landroid/app/AlertDialog$Builder;
    const-string v2, "GPS is settings"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 225
    const-string v2, "GPS is not enabled. Do you want to go to settings menu?"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 231
    const-string v2, "Settings"

    new-instance v3, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary$2;

    invoke-direct {v3, p0}, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary$2;-><init>(Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 239
    const-string v2, "Cancel"

    new-instance v3, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary$3;

    invoke-direct {v3, p0}, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary$3;-><init>(Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 247
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 253
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 254
    return-void
.end method


# virtual methods
.method public addListener(Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;)V
    .locals 0
    .param p1, "listener"    # Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;

    .prologue
    .line 197
    iput-object p1, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->geoLocalizationListener:Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;

    .line 198
    return-void
.end method

.method public clean()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->vtLocationListener:Lnet/veritran/android/implementation/geolocalization/VTLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 190
    :cond_0
    iget-object v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->workerThread:Lnet/veritran/android/implementation/geolocalization/TimeOutThread;

    if-eqz v0, :cond_1

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->workerThread:Lnet/veritran/android/implementation/geolocalization/TimeOutThread;

    .line 193
    :cond_1
    return-void
.end method

.method public multipleQuery(III)V
    .locals 5
    .param p1, "timeout"    # I
    .param p2, "repetitions"    # I
    .param p3, "accuracy"    # I

    .prologue
    .line 156
    const-string v0, "GeoLocalizationLibrary"

    const-string v1, "MultipleQuery start..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-direct {p0}, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->initGeolocalization()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->geoLocalizationListener:Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;->notifyViewUpdate(I)V

    .line 163
    iget-object v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->geoLocalizationListener:Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;->notifyRequestingData()V

    .line 165
    const-string v0, "GeoLocalizationLibrary"

    const-string v1, "Inizializando timeout worker Thread..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;

    iget-object v1, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->geoLocalizationListener:Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;

    iget-object v2, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->locationManager:Landroid/location/LocationManager;

    iget-object v3, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->vtLocationListener:Lnet/veritran/android/implementation/geolocalization/VTLocationListener;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;-><init>(Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;Landroid/location/LocationManager;Lnet/veritran/android/implementation/geolocalization/VTLocationListener;Z)V

    iput-object v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->workerThread:Lnet/veritran/android/implementation/geolocalization/TimeOutThread;

    .line 171
    iget-object v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->workerThread:Lnet/veritran/android/implementation/geolocalization/TimeOutThread;

    iget-object v1, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->setHandler(Landroid/os/Handler;)V

    .line 173
    iget-object v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->workerThread:Lnet/veritran/android/implementation/geolocalization/TimeOutThread;

    invoke-virtual {v0, p1}, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->setTimeOut(I)V

    .line 175
    iget-object v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->workerThread:Lnet/veritran/android/implementation/geolocalization/TimeOutThread;

    invoke-virtual {v0, p2}, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->setRepetitions(I)V

    .line 177
    iget-object v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->workerThread:Lnet/veritran/android/implementation/geolocalization/TimeOutThread;

    invoke-virtual {v0, p3}, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->setAccuracy(I)V

    .line 179
    iget-object v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->workerThread:Lnet/veritran/android/implementation/geolocalization/TimeOutThread;

    invoke-virtual {v0}, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->start()V

    .line 181
    const-string v0, "GeoLocalizationLibrary"

    const-string v1, "WorkerThread started..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeListener(Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;)V
    .locals 1
    .param p1, "listener"    # Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;

    .prologue
    .line 202
    iget-object v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->geoLocalizationListener:Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;

    if-eqz v0, :cond_0

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->geoLocalizationListener:Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;

    .line 204
    :cond_0
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 208
    iput-object p1, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->handler:Landroid/os/Handler;

    .line 209
    return-void
.end method

.method public singleQuery(II)V
    .locals 10
    .param p1, "timeout"    # I
    .param p2, "accuracy"    # I

    .prologue
    .line 101
    move v3, p1

    .line 102
    .local v3, "timeoutFinal":I
    move v0, p2

    .line 103
    .local v0, "accuracyFinal":I
    const/16 v2, 0x46b

    .line 104
    .local v2, "requestCodeFinal":I
    new-instance v1, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary$1;

    invoke-direct {v1, p0, v3, v0}, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary$1;-><init>(Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;II)V

    .line 117
    .local v1, "permissionListener":Lnet/veritran/vtuserapplication/model/PermissionListener;
    invoke-static {}, Lnet/veritran/VTUserApplicationSmart;->getInstance()Lnet/veritran/VTUserApplicationSmart;

    move-result-object v4

    const-string v5, ""

    const/16 v6, 0x46b

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v1, v6, v7}, Lnet/veritran/VTUserApplicationSmart;->checkPermission(Ljava/lang/String;Lnet/veritran/vtuserapplication/model/PermissionListener;I[Ljava/lang/String;)Z

    .line 120
    return-void
.end method

.method public singleQueryImplement(II)V
    .locals 5
    .param p1, "timeout"    # I
    .param p2, "accuracy"    # I

    .prologue
    const/4 v4, 0x0

    .line 123
    const-string v0, "GeoLocalizationLibrary"

    const-string v1, "SingleQuery start..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-direct {p0}, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->initGeolocalization()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->geoLocalizationListener:Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;

    invoke-interface {v0, v4}, Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;->notifyViewUpdate(I)V

    .line 132
    iget-object v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->geoLocalizationListener:Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;->notifyRequestingData()V

    .line 134
    const-string v0, "GeoLocalizationLibrary"

    const-string v1, "Inizializando timeout worker Thread..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v0, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;

    iget-object v1, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->geoLocalizationListener:Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;

    iget-object v2, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->locationManager:Landroid/location/LocationManager;

    iget-object v3, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->vtLocationListener:Lnet/veritran/android/implementation/geolocalization/VTLocationListener;

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;-><init>(Lnet/veritran/vtuserapplication/api/geolocalization/GeolocalizationListener;Landroid/location/LocationManager;Lnet/veritran/android/implementation/geolocalization/VTLocationListener;Z)V

    iput-object v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->workerThread:Lnet/veritran/android/implementation/geolocalization/TimeOutThread;

    .line 140
    iget-object v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->workerThread:Lnet/veritran/android/implementation/geolocalization/TimeOutThread;

    iget-object v1, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->setHandler(Landroid/os/Handler;)V

    .line 142
    iget-object v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->workerThread:Lnet/veritran/android/implementation/geolocalization/TimeOutThread;

    invoke-virtual {v0, p1}, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->setTimeOut(I)V

    .line 144
    iget-object v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->workerThread:Lnet/veritran/android/implementation/geolocalization/TimeOutThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->setRepetitions(I)V

    .line 146
    iget-object v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->workerThread:Lnet/veritran/android/implementation/geolocalization/TimeOutThread;

    invoke-virtual {v0, p2}, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->setAccuracy(I)V

    .line 148
    iget-object v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->workerThread:Lnet/veritran/android/implementation/geolocalization/TimeOutThread;

    invoke-virtual {v0}, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->start()V

    .line 150
    const-string v0, "GeoLocalizationLibrary"

    const-string v1, "WorkerThread started..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopWorker()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->workerThread:Lnet/veritran/android/implementation/geolocalization/TimeOutThread;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/veritran/android/implementation/geolocalization/TimeOutThread;->setState(I)V

    .line 214
    iget-object v0, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lnet/veritran/android/implementation/geolocalization/GeoLocalizationLibrary;->vtLocationListener:Lnet/veritran/android/implementation/geolocalization/VTLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 215
    return-void
.end method
