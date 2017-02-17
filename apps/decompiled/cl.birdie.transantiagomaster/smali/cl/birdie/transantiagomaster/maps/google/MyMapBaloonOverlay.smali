.class public final Lcl/birdie/transantiagomaster/maps/google/MyMapBaloonOverlay;
.super Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;
.source "MyMapBaloonOverlay.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay",
        "<",
        "Lcom/google/android/maps/OverlayItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mOverlays:Ljava/util/ArrayList;
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
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/google/android/maps/MapView;)V
    .locals 1
    .param p1, "defaultMarker"    # Landroid/graphics/drawable/Drawable;
    .param p2, "mapView"    # Lcom/google/android/maps/MapView;

    .prologue
    .line 17
    invoke-static {p1}, Lcl/birdie/transantiagomaster/maps/google/MyMapBaloonOverlay;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;Lcom/google/android/maps/MapView;)V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/MyMapBaloonOverlay;->mOverlays:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/MyMapBaloonOverlay;->populate()V

    .line 20
    return-void
.end method


# virtual methods
.method public final addItem(Lcom/google/android/maps/OverlayItem;)V
    .locals 2
    .param p1, "obj"    # Lcom/google/android/maps/OverlayItem;

    .prologue
    .line 38
    move-object v0, p1

    .line 39
    .local v0, "item":Lcom/google/android/maps/OverlayItem;
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/MyMapBaloonOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/maps/google/MyMapBaloonOverlay;->setLastFocusedIndex(I)V

    .line 32
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/MyMapBaloonOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 33
    return-void
.end method

.method protected final createItem(I)Lcom/google/android/maps/OverlayItem;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/MyMapBaloonOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/OverlayItem;

    return-object v0
.end method

.method public final llenar()V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/MyMapBaloonOverlay;->populate()V

    .line 44
    return-void
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/MyMapBaloonOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
