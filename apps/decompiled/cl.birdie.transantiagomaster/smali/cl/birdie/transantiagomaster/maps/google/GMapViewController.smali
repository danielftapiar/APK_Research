.class public final Lcl/birdie/transantiagomaster/maps/google/GMapViewController;
.super Ljava/lang/Object;
.source "GMapViewController.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/IMapViewController;


# instance fields
.field mMapView:Lcl/birdie/transantiagomaster/ITSMMapView;

.field mMapViewContainer:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final crearMapView$7a1a0ab8(Landroid/view/LayoutInflater;)V
    .locals 0
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 57
    return-void
.end method

.method public final destroyMapView()V
    .locals 2

    .prologue
    .line 41
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/GMapViewController;->mMapViewContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 44
    .local v0, "parentViewGroup":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 45
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/GMapViewController;->mMapViewContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 47
    :cond_0
    return-void
.end method

.method public final getMapView()Lcl/birdie/transantiagomaster/ITSMMapView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/GMapViewController;->mMapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    return-object v0
.end method

.method public final getMapViewContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/GMapViewController;->mMapViewContainer:Landroid/view/View;

    return-object v0
.end method

.method public final inicializarActividad(Landroid/app/Activity;)Z
    .locals 3
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 21
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 23
    const v1, 0x7f030043

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 22
    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/GMapViewController;->mMapViewContainer:Landroid/view/View;

    .line 24
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/GMapViewController;->mMapViewContainer:Landroid/view/View;

    const v1, 0x7f0800d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/ITSMMapView;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/GMapViewController;->mMapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    .line 26
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/GMapViewController;->mMapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    if-nez v0, :cond_0

    .line 27
    const-string v0, "GMapViewController"

    const-string v1, "onCreate: mMapView NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const/4 v0, 0x0

    .line 31
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final restoreFromBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    const-string v1, "zoomLevel"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 63
    .local v0, "zoomLevel":I
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/GMapViewController;->mMapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    invoke-interface {v1, v0}, Lcl/birdie/transantiagomaster/ITSMMapView;->seteaZoomLevel(I)V

    .line 64
    return-void
.end method

.method public final saveToBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    const-string v0, "zoomLevel"

    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/GMapViewController;->mMapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    invoke-interface {v1}, Lcl/birdie/transantiagomaster/ITSMMapView;->obtieneZoomLevel()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    return-void
.end method
