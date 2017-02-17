.class public Lnet/veritran/vtuserapplication/api/map/VTRoute;
.super Ljava/lang/Object;
.source "VTRoute.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static BICYCLING:Ljava/lang/String; = null

.field public static DRIVING:Ljava/lang/String; = null

.field public static WALKING:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x4bb3bed88bf2b8c4L


# instance fields
.field private destination:Lcom/google/android/gms/maps/model/LatLng;

.field private imageDestination:Landroid/graphics/Bitmap;

.field private imageOrigin:Landroid/graphics/Bitmap;

.field private mode:Ljava/lang/String;

.field private origin:Lcom/google/android/gms/maps/model/LatLng;

.field private routeColor:Ljava/lang/Integer;

.field private sensor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "driving"

    sput-object v0, Lnet/veritran/vtuserapplication/api/map/VTRoute;->DRIVING:Ljava/lang/String;

    .line 21
    const-string v0, "walking"

    sput-object v0, Lnet/veritran/vtuserapplication/api/map/VTRoute;->WALKING:Ljava/lang/String;

    .line 22
    const-string v0, "bicycling"

    sput-object v0, Lnet/veritran/vtuserapplication/api/map/VTRoute;->BICYCLING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/veritran/vtuserapplication/api/map/VTRoute;->sensor:Z

    return-void
.end method


# virtual methods
.method public getDestination()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/VTRoute;->destination:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getImageDestination()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/VTRoute;->imageDestination:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageOrigin()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/VTRoute;->imageOrigin:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/VTRoute;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/VTRoute;->origin:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getRouteColor()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/VTRoute;->routeColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public isSensorEnabled()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lnet/veritran/vtuserapplication/api/map/VTRoute;->sensor:Z

    return v0
.end method

.method public setDestination(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .param p1, "destination"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 57
    iput-object p1, p0, Lnet/veritran/vtuserapplication/api/map/VTRoute;->destination:Lcom/google/android/gms/maps/model/LatLng;

    .line 58
    return-void
.end method

.method public setImageDestination(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 44
    iput-object p1, p0, Lnet/veritran/vtuserapplication/api/map/VTRoute;->imageDestination:Landroid/graphics/Bitmap;

    .line 45
    return-void
.end method

.method public setImageOrigin(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 37
    iput-object p1, p0, Lnet/veritran/vtuserapplication/api/map/VTRoute;->imageOrigin:Landroid/graphics/Bitmap;

    .line 38
    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 2
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 75
    sget-object v0, Lnet/veritran/vtuserapplication/api/map/VTRoute;->DRIVING:Ljava/lang/String;

    .line 77
    .local v0, "defaultMode":Ljava/lang/String;
    sget-object v1, Lnet/veritran/vtuserapplication/api/map/VTRoute;->WALKING:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    sget-object v0, Lnet/veritran/vtuserapplication/api/map/VTRoute;->WALKING:Ljava/lang/String;

    .line 83
    :cond_0
    :goto_0
    iput-object v0, p0, Lnet/veritran/vtuserapplication/api/map/VTRoute;->mode:Ljava/lang/String;

    .line 84
    return-void

    .line 79
    :cond_1
    sget-object v1, Lnet/veritran/vtuserapplication/api/map/VTRoute;->BICYCLING:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    sget-object v0, Lnet/veritran/vtuserapplication/api/map/VTRoute;->BICYCLING:Ljava/lang/String;

    goto :goto_0
.end method

.method public setOrigin(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .param p1, "origin"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 51
    iput-object p1, p0, Lnet/veritran/vtuserapplication/api/map/VTRoute;->origin:Lcom/google/android/gms/maps/model/LatLng;

    .line 52
    return-void
.end method

.method public setRouteColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "routeColor"    # Ljava/lang/Integer;

    .prologue
    .line 69
    iput-object p1, p0, Lnet/veritran/vtuserapplication/api/map/VTRoute;->routeColor:Ljava/lang/Integer;

    .line 70
    return-void
.end method

.method public setSensor(Z)V
    .locals 0
    .param p1, "sensor"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lnet/veritran/vtuserapplication/api/map/VTRoute;->sensor:Z

    .line 64
    return-void
.end method
