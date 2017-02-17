.class public Lcom/prey/services/UtilityService;
.super Landroid/app/IntentService;
.source "UtilityService.java"


# static fields
.field private static final ACTION_LOCATION_UPDATED:Ljava/lang/String; = "location_updated"

.field private static final ACTION_REQUEST_LOCATION:Ljava/lang/String; = "request_location"

.field public static final FAST_CEILING_IN_SECONDS:I = 0x1

.field public static final FAST_INTERVAL_CEILING_IN_MILLISECONDS:J = 0x3e8L

.field public static final GOOGLE_API_CLIENT_ERROR_MSG:Ljava/lang/String; = "Failed to connect to GoogleApiClient (error code = %d)"

.field public static final GOOGLE_API_CLIENT_TIMEOUT_S:I = 0xa

.field public static final MILLISECONDS_PER_SECOND:I = 0x3e8

.field public static final UPDATE_INTERVAL_IN_MILLISECONDS:J = 0x2710L

.field public static final UPDATE_INTERVAL_IN_SECONDS:I = 0xa


# instance fields
.field private mLocationRequest:Lcom/google/android/gms/location/LocationRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    const-string v0, "PREY"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static getLocationUpdatedIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "location_updated"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private locationUpdated(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 133
    const-string v1, "location_updated"

    invoke-static {v1}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 136
    const-string v1, "com.google.android.location.LOCATION"

    .line 137
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 140
    .local v0, "location":Landroid/location/Location;
    return-void
.end method

.method public static requestLocation(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/prey/services/UtilityService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "request_location"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 65
    return-void
.end method

.method private requestLocationInternal()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 90
    const-string v6, "request_location"

    invoke-static {v6}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 91
    new-instance v6, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v6, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v7, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 92
    invoke-virtual {v6, v7}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v6

    .line 93
    invoke-virtual {v6}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    .line 97
    .local v1, "googleApiClient":Lcom/google/android/gms/common/api/GoogleApiClient;
    const-wide/16 v6, 0xa

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v6, v7, v8}, Lcom/google/android/gms/common/api/GoogleApiClient;->blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    .line 100
    .local v0, "connectionResult":Lcom/google/android/gms/common/ConnectionResult;
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 102
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/prey/services/UtilityService;

    invoke-direct {v4, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .local v4, "locationUpdatedIntent":Landroid/content/Intent;
    const-string v6, "location_updated"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    sget-object v6, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    invoke-interface {v6, v1}, Lcom/google/android/gms/location/FusedLocationProviderApi;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v3

    .line 107
    .local v3, "location":Landroid/location/Location;
    if-eqz v3, :cond_0

    .line 108
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 109
    .local v2, "lastLocationIntent":Landroid/content/Intent;
    const-string v6, "com.google.android.location.LOCATION"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0, v2}, Lcom/prey/services/UtilityService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 115
    .end local v2    # "lastLocationIntent":Landroid/content/Intent;
    :cond_0
    new-instance v6, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v6}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    const/16 v7, 0x66

    .line 116
    invoke-virtual {v6, v7}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v5

    .line 117
    .local v5, "mLocationRequest":Lcom/google/android/gms/location/LocationRequest;
    sget-object v6, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    .line 119
    invoke-static {p0, v9, v4, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 117
    invoke-interface {v6, v1, v5, v7}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;

    .line 122
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 127
    .end local v3    # "location":Landroid/location/Location;
    .end local v4    # "locationUpdatedIntent":Landroid/content/Intent;
    .end local v5    # "mLocationRequest":Lcom/google/android/gms/location/LocationRequest;
    :goto_0
    return-void

    .line 124
    :cond_1
    const-string v6, "Failed to connect to GoogleApiClient (error code = %d)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 125
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    .line 124
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getLastLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 73
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "action":Ljava/lang/String;
    :goto_0
    const-string v1, "request_location"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    invoke-direct {p0}, Lcom/prey/services/UtilityService;->requestLocationInternal()V

    .line 79
    :cond_0
    :goto_1
    return-void

    .line 73
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 76
    .restart local v0    # "action":Ljava/lang/String;
    :cond_2
    const-string v1, "location_updated"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-direct {p0, p1}, Lcom/prey/services/UtilityService;->locationUpdated(Landroid/content/Intent;)V

    goto :goto_1
.end method
