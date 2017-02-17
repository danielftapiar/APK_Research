.class public Lcom/prey/actions/location/PreyLocation;
.super Ljava/lang/Object;
.source "PreyLocation.java"


# instance fields
.field private accuracy:F

.field private altitude:D

.field private lat:D

.field private lng:D

.field private location:Landroid/location/Location;

.field private method:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 2
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/prey/actions/location/PreyLocation;->lat:D

    .line 28
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/prey/actions/location/PreyLocation;->lng:D

    .line 29
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iput v0, p0, Lcom/prey/actions/location/PreyLocation;->accuracy:F

    .line 30
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/prey/actions/location/PreyLocation;->altitude:D

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/prey/actions/location/PreyLocation;->timestamp:J

    .line 32
    iput-object p1, p0, Lcom/prey/actions/location/PreyLocation;->location:Landroid/location/Location;

    .line 34
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/location/Location;Ljava/lang/String;)V
    .locals 0
    .param p1, "loc"    # Landroid/location/Location;
    .param p2, "method"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/prey/actions/location/PreyLocation;-><init>(Landroid/location/Location;)V

    .line 38
    if-eqz p1, :cond_0

    .line 39
    iput-object p2, p0, Lcom/prey/actions/location/PreyLocation;->method:Ljava/lang/String;

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public getAccuracy()F
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/prey/actions/location/PreyLocation;->accuracy:F

    return v0
.end method

.method public getAltitude()D
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/prey/actions/location/PreyLocation;->altitude:D

    return-wide v0
.end method

.method public getLat()D
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/prey/actions/location/PreyLocation;->lat:D

    return-wide v0
.end method

.method public getLng()D
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/prey/actions/location/PreyLocation;->lng:D

    return-wide v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/prey/actions/location/PreyLocation;->location:Landroid/location/Location;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/prey/actions/location/PreyLocation;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/prey/actions/location/PreyLocation;->timestamp:J

    return-wide v0
.end method

.method public isValid()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 78
    iget-wide v0, p0, Lcom/prey/actions/location/PreyLocation;->lat:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/prey/actions/location/PreyLocation;->lng:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAccuracy(F)V
    .locals 0
    .param p1, "accuracy"    # F

    .prologue
    .line 86
    iput p1, p0, Lcom/prey/actions/location/PreyLocation;->accuracy:F

    .line 87
    return-void
.end method

.method public setAltitude(D)V
    .locals 1
    .param p1, "altitude"    # D

    .prologue
    .line 94
    iput-wide p1, p0, Lcom/prey/actions/location/PreyLocation;->altitude:D

    .line 95
    return-void
.end method

.method public setLat(D)V
    .locals 1
    .param p1, "lat"    # D

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/prey/actions/location/PreyLocation;->lat:D

    .line 58
    return-void
.end method

.method public setLng(D)V
    .locals 1
    .param p1, "lng"    # D

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/prey/actions/location/PreyLocation;->lng:D

    .line 66
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/prey/actions/location/PreyLocation;->location:Landroid/location/Location;

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/prey/actions/location/PreyLocation;->method:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 99
    iput-wide p1, p0, Lcom/prey/actions/location/PreyLocation;->timestamp:J

    return-void
.end method

.method public timestamp()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/prey/actions/location/PreyLocation;->timestamp:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/prey/actions/location/PreyLocation;->lat:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - lng: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/prey/actions/location/PreyLocation;->lng:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - acc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/prey/actions/location/PreyLocation;->accuracy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/prey/actions/location/PreyLocation;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
