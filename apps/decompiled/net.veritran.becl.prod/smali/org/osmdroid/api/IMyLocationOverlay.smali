.class public interface abstract Lorg/osmdroid/api/IMyLocationOverlay;
.super Ljava/lang/Object;
.source "IMyLocationOverlay.java"


# virtual methods
.method public abstract disableCompass()V
.end method

.method public abstract disableMyLocation()V
.end method

.method public abstract enableCompass()Z
.end method

.method public abstract enableMyLocation()Z
.end method

.method public abstract getLastFix()Landroid/location/Location;
.end method

.method public abstract getOrientation()F
.end method

.method public abstract isCompassEnabled()Z
.end method

.method public abstract isMyLocationEnabled()Z
.end method

.method public abstract onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
.end method

.method public abstract runOnFirstFix(Ljava/lang/Runnable;)Z
.end method
