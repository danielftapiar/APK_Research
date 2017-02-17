.class public abstract Lorg/osmdroid/bonuspack/overlays/InfoWindow;
.super Ljava/lang/Object;
.source "InfoWindow.java"


# instance fields
.field protected mIsVisible:Z

.field protected mMapView:Lorg/osmdroid/views/MapView;

.field protected mView:Landroid/view/View;


# direct methods
.method public constructor <init>(ILorg/osmdroid/views/MapView;)V
    .locals 5
    .param p1, "layoutResId"    # I
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    const/4 v4, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v4, p0, Lorg/osmdroid/bonuspack/overlays/InfoWindow;->mIsVisible:Z

    .line 40
    iput-object p2, p0, Lorg/osmdroid/bonuspack/overlays/InfoWindow;->mMapView:Lorg/osmdroid/views/MapView;

    .line 41
    iput-boolean v4, p0, Lorg/osmdroid/bonuspack/overlays/InfoWindow;->mIsVisible:Z

    .line 42
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 43
    .local v1, "parent":Landroid/view/ViewGroup;
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 44
    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 45
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v0, p1, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lorg/osmdroid/bonuspack/overlays/InfoWindow;->mView:Landroid/view/View;

    .line 46
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 76
    iget-boolean v0, p0, Lorg/osmdroid/bonuspack/overlays/InfoWindow;->mIsVisible:Z

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/bonuspack/overlays/InfoWindow;->mIsVisible:Z

    .line 78
    iget-object v0, p0, Lorg/osmdroid/bonuspack/overlays/InfoWindow;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/osmdroid/bonuspack/overlays/InfoWindow;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 79
    :cond_0
    return-void
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/osmdroid/bonuspack/overlays/InfoWindow;->mView:Landroid/view/View;

    return-object v0
.end method

.method public abstract onOpen(Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;)V
.end method

.method public final open(Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;II)V
    .locals 4
    .param p1, "item"    # Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lorg/osmdroid/bonuspack/overlays/InfoWindow;->onOpen(Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;)V

    .line 64
    invoke-virtual {p1}, Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;->getPoint()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    .line 65
    .local v1, "position":Lorg/osmdroid/util/GeoPoint;
    new-instance v0, Lorg/osmdroid/views/MapView$LayoutParams;

    invoke-direct {v0, v1, p2, p3}, Lorg/osmdroid/views/MapView$LayoutParams;-><init>(Lorg/osmdroid/api/IGeoPoint;II)V

    .line 70
    .local v0, "lp":Lorg/osmdroid/views/MapView$LayoutParams;
    invoke-virtual {p0}, Lorg/osmdroid/bonuspack/overlays/InfoWindow;->close()V

    .line 71
    iget-object v2, p0, Lorg/osmdroid/bonuspack/overlays/InfoWindow;->mMapView:Lorg/osmdroid/views/MapView;

    iget-object v3, p0, Lorg/osmdroid/bonuspack/overlays/InfoWindow;->mView:Landroid/view/View;

    invoke-virtual {v2, v3, v0}, Lorg/osmdroid/views/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/osmdroid/bonuspack/overlays/InfoWindow;->mIsVisible:Z

    .line 73
    return-void
.end method
