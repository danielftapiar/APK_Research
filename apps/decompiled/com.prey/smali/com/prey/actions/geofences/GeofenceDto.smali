.class public Lcom/prey/actions/geofences/GeofenceDto;
.super Ljava/lang/Object;
.source "GeofenceDto.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public expires:I

.field public id:Ljava/lang/String;

.field public latitude:D

.field public longitude:D

.field public name:Ljava/lang/String;

.field public radius:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 3
    .param p1, "another"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 48
    move-object v0, p1

    check-cast v0, Lcom/prey/actions/geofences/GeofenceDto;

    .line 49
    .local v0, "other":Lcom/prey/actions/geofences/GeofenceDto;
    iget-object v1, p0, Lcom/prey/actions/geofences/GeofenceDto;->name:Ljava/lang/String;

    iget-object v2, v0, Lcom/prey/actions/geofences/GeofenceDto;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public geofence()Lcom/google/android/gms/location/Geofence;
    .locals 7

    .prologue
    .line 37
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/prey/actions/geofences/GeofenceDto;->id:Ljava/lang/String;

    .line 38
    new-instance v0, Lcom/google/android/gms/location/Geofence$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/location/Geofence$Builder;-><init>()V

    iget-object v1, p0, Lcom/prey/actions/geofences/GeofenceDto;->id:Ljava/lang/String;

    .line 39
    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/Geofence$Builder;->setRequestId(Ljava/lang/String;)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 40
    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/Geofence$Builder;->setTransitionTypes(I)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v1

    iget-wide v2, p0, Lcom/prey/actions/geofences/GeofenceDto;->latitude:D

    iget-wide v4, p0, Lcom/prey/actions/geofences/GeofenceDto;->longitude:D

    iget v6, p0, Lcom/prey/actions/geofences/GeofenceDto;->radius:F

    .line 41
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/location/Geofence$Builder;->setCircularRegion(DDF)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v0

    const-wide/16 v2, -0x1

    .line 42
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/Geofence$Builder;->setExpirationDuration(J)Lcom/google/android/gms/location/Geofence$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/location/Geofence$Builder;->build()Lcom/google/android/gms/location/Geofence;

    move-result-object v0

    return-object v0
.end method

.method public getExpires()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/prey/actions/geofences/GeofenceDto;->expires:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/prey/actions/geofences/GeofenceDto;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/prey/actions/geofences/GeofenceDto;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/prey/actions/geofences/GeofenceDto;->longitude:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/prey/actions/geofences/GeofenceDto;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/prey/actions/geofences/GeofenceDto;->radius:F

    return v0
.end method

.method public setExpires(I)V
    .locals 0
    .param p1, "expires"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/prey/actions/geofences/GeofenceDto;->expires:I

    .line 98
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/prey/actions/geofences/GeofenceDto;->id:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setLatitude(D)V
    .locals 1
    .param p1, "latitude"    # D

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/prey/actions/geofences/GeofenceDto;->latitude:D

    .line 74
    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .param p1, "longitude"    # D

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/prey/actions/geofences/GeofenceDto;->longitude:D

    .line 82
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/prey/actions/geofences/GeofenceDto;->name:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 89
    iput p1, p0, Lcom/prey/actions/geofences/GeofenceDto;->radius:F

    .line 90
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 27
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/prey/actions/geofences/GeofenceDto;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    const-string v1, " name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/prey/actions/geofences/GeofenceDto;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    const-string v1, " latitude:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/prey/actions/geofences/GeofenceDto;->latitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 30
    const-string v1, " longitude:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/prey/actions/geofences/GeofenceDto;->longitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 31
    const-string v1, " radius:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/prey/actions/geofences/GeofenceDto;->radius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 32
    const-string v1, " expires:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/prey/actions/geofences/GeofenceDto;->expires:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
