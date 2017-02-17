.class public final Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapViewController;
.super Ljava/lang/Object;
.source "OSMDroidMapViewController.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/IMapViewController;


# instance fields
.field mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

.field viewContainer:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final crearMapView$7a1a0ab8(Landroid/view/LayoutInflater;)V
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 47
    const v0, 0x7f030044

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapViewController;->viewContainer:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapViewController;->viewContainer:Landroid/view/View;

    const v1, 0x7f0800d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/ITSMMapView;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapViewController;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    .line 51
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapViewController;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    if-nez v0, :cond_0

    .line 52
    const-string v0, "OSMDroidMapViewController"

    const-string v1, "mapView NULL!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    return-void
.end method

.method public final destroyMapView()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public final getMapView()Lcl/birdie/transantiagomaster/ITSMMapView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapViewController;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    return-object v0
.end method

.method public final getMapViewContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapViewController;->viewContainer:Landroid/view/View;

    return-object v0
.end method

.method public final inicializarActividad(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method public final restoreFromBundle(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    const-string v1, "zoomLevel"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 58
    .local v0, "zoomLevel":I
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapViewController;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    if-nez v1, :cond_0

    .line 59
    const-string v1, "OSMDroidMapViewController"

    const-string v2, "restoreFromBundle: mapView NULL!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapViewController;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    invoke-interface {v1, v0}, Lcl/birdie/transantiagomaster/ITSMMapView;->seteaZoomLevel(I)V

    goto :goto_0
.end method

.method public final saveToBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapViewController;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    if-nez v0, :cond_0

    .line 68
    const-string v0, "OSMDroidMapViewController"

    const-string v1, "saveToBundle: mapView NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_0
    const-string v0, "zoomLevel"

    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/OSMDroidMapViewController;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    invoke-interface {v1}, Lcl/birdie/transantiagomaster/ITSMMapView;->obtieneZoomLevel()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method
