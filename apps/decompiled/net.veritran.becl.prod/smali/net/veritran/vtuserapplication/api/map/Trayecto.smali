.class public Lnet/veritran/vtuserapplication/api/map/Trayecto;
.super Ljava/lang/Object;
.source "Trayecto.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x88ada7aa00dff60L


# instance fields
.field private distanceText:Ljava/lang/String;

.field private distanceValue:I

.field private durationText:Ljava/lang/String;

.field private durationValue:I

.field private endLocationLat:D

.field private endLocationLng:D

.field private startLocationLat:D

.field private startLocationLng:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDistanceText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/Trayecto;->distanceText:Ljava/lang/String;

    return-object v0
.end method

.method public getDistanceValue()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lnet/veritran/vtuserapplication/api/map/Trayecto;->distanceValue:I

    return v0
.end method

.method public getDurationText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lnet/veritran/vtuserapplication/api/map/Trayecto;->durationText:Ljava/lang/String;

    return-object v0
.end method

.method public getDurationValue()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lnet/veritran/vtuserapplication/api/map/Trayecto;->durationValue:I

    return v0
.end method

.method public getEndLocationLat()D
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lnet/veritran/vtuserapplication/api/map/Trayecto;->endLocationLat:D

    return-wide v0
.end method

.method public getEndLocationLng()D
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lnet/veritran/vtuserapplication/api/map/Trayecto;->endLocationLng:D

    return-wide v0
.end method

.method public getStartLocationLat()D
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lnet/veritran/vtuserapplication/api/map/Trayecto;->startLocationLat:D

    return-wide v0
.end method

.method public getStartLocationLng()D
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lnet/veritran/vtuserapplication/api/map/Trayecto;->startLocationLng:D

    return-wide v0
.end method

.method public setDistanceText(Ljava/lang/String;)V
    .locals 0
    .param p1, "distanceText"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lnet/veritran/vtuserapplication/api/map/Trayecto;->distanceText:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setDistanceValue(I)V
    .locals 0
    .param p1, "distanceValue"    # I

    .prologue
    .line 42
    iput p1, p0, Lnet/veritran/vtuserapplication/api/map/Trayecto;->distanceValue:I

    .line 43
    return-void
.end method

.method public setDurationText(Ljava/lang/String;)V
    .locals 0
    .param p1, "durationText"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lnet/veritran/vtuserapplication/api/map/Trayecto;->durationText:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setDurationValue(I)V
    .locals 0
    .param p1, "durationValue"    # I

    .prologue
    .line 58
    iput p1, p0, Lnet/veritran/vtuserapplication/api/map/Trayecto;->durationValue:I

    .line 59
    return-void
.end method

.method public setEndLocationLat(D)V
    .locals 1
    .param p1, "endLocationLat"    # D

    .prologue
    .line 74
    iput-wide p1, p0, Lnet/veritran/vtuserapplication/api/map/Trayecto;->endLocationLat:D

    .line 75
    return-void
.end method

.method public setEndLocationLng(D)V
    .locals 1
    .param p1, "endLocationLng"    # D

    .prologue
    .line 82
    iput-wide p1, p0, Lnet/veritran/vtuserapplication/api/map/Trayecto;->endLocationLng:D

    .line 83
    return-void
.end method

.method public setStartLocationLat(D)V
    .locals 1
    .param p1, "startLocationLat"    # D

    .prologue
    .line 66
    iput-wide p1, p0, Lnet/veritran/vtuserapplication/api/map/Trayecto;->startLocationLat:D

    .line 67
    return-void
.end method

.method public setStartLocationLng(D)V
    .locals 1
    .param p1, "startLocationLng"    # D

    .prologue
    .line 86
    iput-wide p1, p0, Lnet/veritran/vtuserapplication/api/map/Trayecto;->startLocationLng:D

    .line 87
    return-void
.end method
