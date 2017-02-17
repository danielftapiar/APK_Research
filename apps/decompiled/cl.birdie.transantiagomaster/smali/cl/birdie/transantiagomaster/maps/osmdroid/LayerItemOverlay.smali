.class public final Lcl/birdie/transantiagomaster/maps/osmdroid/LayerItemOverlay;
.super Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;
.source "LayerItemOverlay.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/maps/IOverlay;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble",
        "<",
        "Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;",
        ">;",
        "Lcl/birdie/transantiagomaster/maps/IOverlay;"
    }
.end annotation


# instance fields
.field drawable:Landroid/graphics/drawable/Drawable;

.field layer:Lcl/birdie/transantiagomaster/newobjetos/Layer;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lorg/osmdroid/views/MapView;Lcl/birdie/transantiagomaster/maps/osmdroid/LayerItemOverlay;Lcl/birdie/transantiagomaster/newobjetos/Layer;)V
    .locals 3
    .param p1, "defaultMarker"    # Landroid/graphics/drawable/Drawable;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;
    .param p3, "overlay"    # Lcl/birdie/transantiagomaster/maps/osmdroid/LayerItemOverlay;
    .param p4, "layer"    # Lcl/birdie/transantiagomaster/newobjetos/Layer;

    .prologue
    .line 52
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p3, Lcl/birdie/transantiagomaster/maps/osmdroid/LayerItemOverlay;->mItemList:Ljava/util/List;

    invoke-static {p2, p4}, Lcl/birdie/transantiagomaster/maps/osmdroid/LayerItemOverlay;->eligeInfoWindow(Lorg/osmdroid/views/MapView;Lcl/birdie/transantiagomaster/newobjetos/Layer;)Lorg/osmdroid/bonuspack/overlays/InfoWindow;

    move-result-object v2

    invoke-direct {p0, v0, v1, p2, v2}, Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;-><init>(Landroid/content/Context;Ljava/util/List;Lorg/osmdroid/views/MapView;Lorg/osmdroid/bonuspack/overlays/InfoWindow;)V

    .line 53
    iput-object p1, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/LayerItemOverlay;->drawable:Landroid/graphics/drawable/Drawable;

    .line 54
    iput-object p4, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/LayerItemOverlay;->layer:Lcl/birdie/transantiagomaster/newobjetos/Layer;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lorg/osmdroid/views/MapView;Lcl/birdie/transantiagomaster/newobjetos/Layer;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;
    .param p3, "layer"    # Lcl/birdie/transantiagomaster/newobjetos/Layer;

    .prologue
    .line 46
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2, p3}, Lcl/birdie/transantiagomaster/maps/osmdroid/LayerItemOverlay;->eligeInfoWindow(Lorg/osmdroid/views/MapView;Lcl/birdie/transantiagomaster/newobjetos/Layer;)Lorg/osmdroid/bonuspack/overlays/InfoWindow;

    move-result-object v2

    invoke-direct {p0, v0, v1, p2, v2}, Lorg/osmdroid/bonuspack/overlays/ItemizedOverlayWithBubble;-><init>(Landroid/content/Context;Ljava/util/List;Lorg/osmdroid/views/MapView;Lorg/osmdroid/bonuspack/overlays/InfoWindow;)V

    .line 47
    iput-object p1, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/LayerItemOverlay;->drawable:Landroid/graphics/drawable/Drawable;

    .line 48
    iput-object p3, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/LayerItemOverlay;->layer:Lcl/birdie/transantiagomaster/newobjetos/Layer;

    .line 49
    return-void
.end method

.method private static eligeInfoWindow(Lorg/osmdroid/views/MapView;Lcl/birdie/transantiagomaster/newobjetos/Layer;)Lorg/osmdroid/bonuspack/overlays/InfoWindow;
    .locals 1
    .param p0, "mapView"    # Lorg/osmdroid/views/MapView;
    .param p1, "l"    # Lcl/birdie/transantiagomaster/newobjetos/Layer;

    .prologue
    .line 58
    iget v0, p1, Lcl/birdie/transantiagomaster/newobjetos/Layer;->relative:I

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcl/birdie/transantiagomaster/maps/osmdroid/LugarDestacadoInfoWindow;

    invoke-direct {v0, p0, p1}, Lcl/birdie/transantiagomaster/maps/osmdroid/LugarDestacadoInfoWindow;-><init>(Lorg/osmdroid/views/MapView;Lcl/birdie/transantiagomaster/newobjetos/Layer;)V

    .line 61
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;

    invoke-direct {v0, p0, p1}, Lcl/birdie/transantiagomaster/maps/osmdroid/ReclamoInfoWindow;-><init>(Lorg/osmdroid/views/MapView;Lcl/birdie/transantiagomaster/newobjetos/Layer;)V

    goto :goto_0
.end method


# virtual methods
.method public final anadeItem(Ljava/lang/Object;)V
    .locals 9
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 69
    move-object v0, p1

    check-cast v0, Lcl/birdie/transantiagomaster/newobjetos/IMarker;

    .line 70
    .local v0, "im":Lcl/birdie/transantiagomaster/newobjetos/IMarker;
    new-instance v1, Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/newobjetos/IMarker;->getNombre()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/newobjetos/IMarker;->getDescripcion()Ljava/lang/String;

    move-result-object v3

    .line 71
    new-instance v4, Lorg/osmdroid/util/GeoPoint;

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/newobjetos/IMarker;->getLatitude()D

    move-result-wide v5

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/newobjetos/IMarker;->getLongitude()D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 70
    invoke-direct {v1, v2, v3, v4}, Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/util/GeoPoint;)V

    .line 73
    .local v1, "it":Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;
    iget-object v2, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/LayerItemOverlay;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/LayerItemOverlay;->layer:Lcl/birdie/transantiagomaster/newobjetos/Layer;

    iget v3, v3, Lcl/birdie/transantiagomaster/newobjetos/Layer;->relative:I

    if-nez v3, :cond_0

    sget-object v3, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    invoke-virtual {v1, v3}, Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;->setMarkerHotspot(Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;)V

    :goto_0
    invoke-virtual {v1, v2}, Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    .line 74
    invoke-virtual {v1, p1}, Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;->setRelatedObject(Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p0, v1}, Lcl/birdie/transantiagomaster/maps/osmdroid/LayerItemOverlay;->addItem(Lorg/osmdroid/views/overlay/OverlayItem;)Z

    .line 85
    return-void

    .line 73
    :cond_0
    sget-object v4, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    invoke-virtual {v1, v4}, Lorg/osmdroid/bonuspack/overlays/ExtendedOverlayItem;->setMarkerHotspot(Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;)V

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v3, v3, 0x30

    const/16 v5, 0x20

    invoke-virtual {v4, v3, v5}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public final llenar()V
    .locals 0

    .prologue
    .line 94
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/LayerItemOverlay;->populate()V

    .line 95
    return-void
.end method

.method public final vaciar()V
    .locals 0

    .prologue
    .line 89
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/LayerItemOverlay;->removeAllItems()V

    .line 90
    return-void
.end method
