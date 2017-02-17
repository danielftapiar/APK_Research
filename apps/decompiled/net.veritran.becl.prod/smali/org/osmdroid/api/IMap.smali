.class public interface abstract Lorg/osmdroid/api/IMap;
.super Ljava/lang/Object;
.source "IMap.java"


# virtual methods
.method public abstract addMarker(Lorg/osmdroid/api/Marker;)V
.end method

.method public varargs abstract addPointsToPolyline(I[Lorg/osmdroid/api/IGeoPoint;)V
.end method

.method public abstract addPolyline(Lorg/osmdroid/api/Polyline;)I
.end method

.method public abstract clear()V
.end method

.method public abstract clearPolyline(I)V
.end method

.method public abstract getBearing()F
.end method

.method public abstract getCenter()Lorg/osmdroid/api/IGeoPoint;
.end method

.method public abstract getProjection()Lorg/osmdroid/api/IProjection;
.end method

.method public abstract getZoomLevel()F
.end method

.method public abstract isMyLocationEnabled()Z
.end method

.method public abstract setBearing(F)V
.end method

.method public abstract setCenter(DD)V
.end method

.method public abstract setMyLocationEnabled(Z)V
.end method

.method public abstract setOnCameraChangeListener(Lorg/osmdroid/api/OnCameraChangeListener;)V
.end method

.method public abstract setPosition(Lorg/osmdroid/api/IPosition;)V
.end method

.method public abstract setZoom(F)V
.end method

.method public abstract zoomIn()Z
.end method

.method public abstract zoomOut()Z
.end method
