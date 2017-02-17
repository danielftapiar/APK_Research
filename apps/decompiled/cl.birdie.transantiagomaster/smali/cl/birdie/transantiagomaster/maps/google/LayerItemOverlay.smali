.class public final Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;
.super Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;
.source "LayerItemOverlay.java"

# interfaces
.implements Lcl/birdie/transantiagomaster/maps/IOverlay;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay",
        "<",
        "Lcom/google/android/maps/OverlayItem;",
        ">;",
        "Lcl/birdie/transantiagomaster/maps/IOverlay;"
    }
.end annotation


# instance fields
.field private layer:Lcl/birdie/transantiagomaster/newobjetos/Layer;

.field public mOverlays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/maps/OverlayItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/google/android/maps/MapView;Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;Lcl/birdie/transantiagomaster/newobjetos/Layer;)V
    .locals 1
    .param p1, "defaultMarker"    # Landroid/graphics/drawable/Drawable;
    .param p2, "mapView"    # Lcom/google/android/maps/MapView;
    .param p3, "overlay"    # Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;
    .param p4, "layer"    # Lcl/birdie/transantiagomaster/newobjetos/Layer;

    .prologue
    .line 73
    iget v0, p4, Lcl/birdie/transantiagomaster/newobjetos/Layer;->relative:I

    invoke-static {p1, v0}, Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;->boundRelative(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;Lcom/google/android/maps/MapView;)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;->mOverlays:Ljava/util/ArrayList;

    .line 76
    iget-object v0, p3, Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;->mOverlays:Ljava/util/ArrayList;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;->mOverlays:Ljava/util/ArrayList;

    .line 77
    iput-object p4, p0, Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;->layer:Lcl/birdie/transantiagomaster/newobjetos/Layer;

    .line 78
    if-eqz p1, :cond_0

    .line 79
    iget v0, p4, Lcl/birdie/transantiagomaster/newobjetos/Layer;->relative:I

    if-nez v0, :cond_1

    .line 80
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;->setBalloonBottomOffset(I)V

    .line 85
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;->populate()V

    .line 86
    return-void

    .line 82
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;->setBalloonBottomOffset(I)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/google/android/maps/MapView;Lcl/birdie/transantiagomaster/newobjetos/Layer;)V
    .locals 1
    .param p1, "defaultMarker"    # Landroid/graphics/drawable/Drawable;
    .param p2, "mapView"    # Lcom/google/android/maps/MapView;
    .param p3, "layer"    # Lcl/birdie/transantiagomaster/newobjetos/Layer;

    .prologue
    .line 53
    iget v0, p3, Lcl/birdie/transantiagomaster/newobjetos/Layer;->relative:I

    invoke-static {p1, v0}, Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;->boundRelative(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;Lcom/google/android/maps/MapView;)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;->mOverlays:Ljava/util/ArrayList;

    .line 54
    iput-object p3, p0, Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;->layer:Lcl/birdie/transantiagomaster/newobjetos/Layer;

    .line 55
    if-eqz p1, :cond_0

    .line 56
    iget v0, p3, Lcl/birdie/transantiagomaster/newobjetos/Layer;->relative:I

    if-nez v0, :cond_1

    .line 57
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;->setBalloonBottomOffset(I)V

    .line 62
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;->populate()V

    .line 63
    return-void

    .line 59
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;->setBalloonBottomOffset(I)V

    goto :goto_0
.end method

.method private static boundRelative(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "marker"    # Landroid/graphics/drawable/Drawable;
    .param p1, "relative"    # I

    .prologue
    .line 26
    if-nez p1, :cond_0

    .line 27
    invoke-static {p0}, Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;->boundCenter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 40
    .end local p0    # "marker":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object p0

    .line 29
    .restart local p0    # "marker":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-static {p0}, Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;->boundCenter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 30
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 31
    .local v0, "r":Landroid/graphics/Rect;
    add-int/lit8 v1, p1, -0x1

    mul-int/lit8 v1, v1, 0x30

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 32
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method


# virtual methods
.method public final anadeItem(Ljava/lang/Object;)V
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 144
    check-cast p1, Lcom/google/android/maps/OverlayItem;

    .end local p1    # "item":Ljava/lang/Object;
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    return-void
.end method

.method protected final createBalloonOverlayView()Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView",
            "<",
            "Lcom/google/android/maps/OverlayItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;->layer:Lcl/birdie/transantiagomaster/newobjetos/Layer;

    iget v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->relative:I

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcl/birdie/transantiagomaster/maps/google/LugarDestacadoBalloonOverlayView;

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;->getMapView()Lcom/google/android/maps/MapView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;->getBalloonBottomOffset()I

    move-result v2

    iget-object v3, p0, Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;->layer:Lcl/birdie/transantiagomaster/newobjetos/Layer;

    invoke-direct {v0, v1, v2, v3}, Lcl/birdie/transantiagomaster/maps/google/LugarDestacadoBalloonOverlayView;-><init>(Landroid/content/Context;ILcl/birdie/transantiagomaster/newobjetos/Layer;)V

    .line 139
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;->getMapView()Lcom/google/android/maps/MapView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;->getBalloonBottomOffset()I

    move-result v2

    iget-object v3, p0, Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;->layer:Lcl/birdie/transantiagomaster/newobjetos/Layer;

    invoke-direct {v0, v1, v2, v3}, Lcl/birdie/transantiagomaster/maps/google/ReclamoBalloonOverlayView;-><init>(Landroid/content/Context;ILcl/birdie/transantiagomaster/newobjetos/Layer;)V

    goto :goto_0
.end method

.method protected final createItem(I)Lcom/google/android/maps/OverlayItem;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/OverlayItem;

    return-object v0
.end method

.method public final draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapView"    # Lcom/google/android/maps/MapView;
    .param p3, "shadow"    # Z

    .prologue
    .line 45
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;->layer:Lcl/birdie/transantiagomaster/newobjetos/Layer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;->layer:Lcl/birdie/transantiagomaster/newobjetos/Layer;

    iget v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->relative:I

    if-eqz v0, :cond_0

    .line 46
    if-nez p3, :cond_1

    .line 47
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V

    .line 50
    :cond_1
    return-void
.end method

.method public final llenar()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;->setLastFocusedIndex(I)V

    .line 155
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;->populate()V

    .line 156
    return-void
.end method

.method public final onBalloonTap$830ad1c(Lcom/google/android/maps/OverlayItem;)Z
    .locals 6
    .param p1, "item"    # Lcom/google/android/maps/OverlayItem;

    .prologue
    .line 111
    instance-of v3, p1, Lcl/birdie/transantiagomaster/newobjetos/Marker;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 112
    check-cast v2, Lcl/birdie/transantiagomaster/newobjetos/Marker;

    .line 114
    .local v2, "m":Lcl/birdie/transantiagomaster/newobjetos/Marker;
    invoke-virtual {v2}, Lcl/birdie/transantiagomaster/newobjetos/Marker;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 117
    :try_start_0
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;->getMapView()Lcom/google/android/maps/MapView;

    move-result-object v3

    check-cast v3, Lcl/birdie/transantiagomaster/maps/google/GMapView;

    .line 118
    const/4 v1, 0x0

    .local v1, "gm":Lcl/birdie/transantiagomaster/maps/google/GMapView;
    invoke-virtual {v3}, Lcl/birdie/transantiagomaster/maps/google/GMapView;->getListener()Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-result-object v3

    .line 119
    invoke-virtual {v2}, Lcl/birdie/transantiagomaster/newobjetos/Marker;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onLaunchURL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v1    # "gm":Lcl/birdie/transantiagomaster/maps/google/GMapView;
    :goto_0
    const/4 v3, 0x1

    .line 128
    .end local v2    # "m":Lcl/birdie/transantiagomaster/newobjetos/Marker;
    :goto_1
    return v3

    .line 120
    .restart local v2    # "m":Lcl/birdie/transantiagomaster/newobjetos/Marker;
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "LayerItemOverlay"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "excepcion al procesar url "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcl/birdie/transantiagomaster/newobjetos/Marker;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 128
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "m":Lcl/birdie/transantiagomaster/newobjetos/Marker;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final vaciar()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;->setLastFocusedIndex(I)V

    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/LayerItemOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 150
    return-void
.end method
