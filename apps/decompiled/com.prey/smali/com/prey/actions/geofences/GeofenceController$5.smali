.class Lcom/prey/actions/geofences/GeofenceController$5;
.super Ljava/lang/Object;
.source "GeofenceController.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prey/actions/geofences/GeofenceController;->buildGoogleApiClient(Landroid/content/Context;)Lcom/google/android/gms/common/api/GoogleApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/actions/geofences/GeofenceController;


# direct methods
.method constructor <init>(Lcom/prey/actions/geofences/GeofenceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/actions/geofences/GeofenceController;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/prey/actions/geofences/GeofenceController$5;->this$0:Lcom/prey/actions/geofences/GeofenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 318
    const-string v0, "________________Connected to GoogleApiClient"

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 322
    const-string v0, "________________Connection suspended"

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 323
    return-void
.end method
