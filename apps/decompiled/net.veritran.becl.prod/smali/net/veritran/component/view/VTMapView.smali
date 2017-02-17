.class public interface abstract Lnet/veritran/component/view/VTMapView;
.super Ljava/lang/Object;
.source "VTMapView.java"

# interfaces
.implements Lnet/veritran/component/view/VTUIComponentView;


# static fields
.field public static final HYBRID:I = 0x4

.field public static final NONE:I = 0x0

.field public static final ROADMAP:I = 0x1

.field public static final SATELLITE:I = 0x2

.field public static final TERRAIN:I = 0x3


# virtual methods
.method public abstract addMarkerToMap(Lnet/veritran/vtuserapplication/api/map/VTMarker;)V
.end method

.method public abstract clearMarkersAndRoutes()V
.end method

.method public abstract drawRouteOnMap(Lnet/veritran/vtuserapplication/api/map/VTRoute;Ljava/lang/String;)V
.end method

.method public abstract freeResources()V
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V
.end method

.method public abstract setMapCenter(Lcom/google/android/gms/maps/model/LatLng;)V
.end method

.method public abstract setMapType(I)V
.end method

.method public abstract setZoom(F)V
.end method
