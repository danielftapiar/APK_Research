.class public final Lorg/mapsforge/android/maps/MapController;
.super Ljava/lang/Object;
.source "MapController.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private final mapView:Lorg/mapsforge/android/maps/MapView;


# direct methods
.method constructor <init>(Lorg/mapsforge/android/maps/MapView;)V
    .locals 0
    .param p1, "mapView"    # Lorg/mapsforge/android/maps/MapView;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/mapsforge/android/maps/MapController;->mapView:Lorg/mapsforge/android/maps/MapView;

    .line 36
    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 40
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapController;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v0, p2, p3}, Lorg/mapsforge/android/maps/MapView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 47
    :goto_0
    return v0

    .line 43
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 45
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapController;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v0, p2, p3}, Lorg/mapsforge/android/maps/MapView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setCenter(Lorg/mapsforge/core/GeoPoint;)V
    .locals 1
    .param p1, "geoPoint"    # Lorg/mapsforge/core/GeoPoint;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapController;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v0, p1}, Lorg/mapsforge/android/maps/MapView;->setCenter(Lorg/mapsforge/core/GeoPoint;)V

    .line 58
    return-void
.end method

.method public final setZoom(I)I
    .locals 3
    .param p1, "zoomLevel"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapController;->mapView:Lorg/mapsforge/android/maps/MapView;

    iget-object v1, p0, Lorg/mapsforge/android/maps/MapController;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v1}, Lorg/mapsforge/android/maps/MapView;->getMapPosition()Lorg/mapsforge/android/maps/MapViewPosition;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mapsforge/android/maps/MapViewPosition;->getZoomLevel()B

    move-result v1

    sub-int v1, p1, v1

    int-to-byte v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lorg/mapsforge/android/maps/MapView;->zoom(BF)Z

    .line 69
    iget-object v0, p0, Lorg/mapsforge/android/maps/MapController;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/MapView;->getMapPosition()Lorg/mapsforge/android/maps/MapViewPosition;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/MapViewPosition;->getZoomLevel()B

    move-result v0

    return v0
.end method
