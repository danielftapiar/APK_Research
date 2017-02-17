.class public final Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;
.super Lorg/osmdroid/views/overlay/ItemizedOverlay;
.source "MyMapOverlay.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/osmdroid/views/overlay/ItemizedOverlay",
        "<",
        "Lorg/osmdroid/views/overlay/OverlayItem;",
        ">;"
    }
.end annotation


# instance fields
.field private cHandler:Lcl/birdie/transantiagomaster/maps/ClickHandler;

.field private mContext:Landroid/content/Context;

.field private mOverlays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/views/overlay/OverlayItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lorg/osmdroid/ResourceProxy;Landroid/content/Context;Lcl/birdie/transantiagomaster/maps/ClickHandler;)V
    .locals 1
    .param p1, "pDefaultMarker"    # Landroid/graphics/drawable/Drawable;
    .param p2, "pResourceProxy"    # Lorg/osmdroid/ResourceProxy;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "ch"    # Lcl/birdie/transantiagomaster/maps/ClickHandler;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lorg/osmdroid/views/overlay/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;Lorg/osmdroid/ResourceProxy;)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;->mOverlays:Ljava/util/ArrayList;

    .line 19
    iput-object p3, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;->mContext:Landroid/content/Context;

    .line 20
    iput-object p4, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;->cHandler:Lcl/birdie/transantiagomaster/maps/ClickHandler;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lorg/osmdroid/ResourceProxy;Landroid/content/Context;Lcl/birdie/transantiagomaster/maps/ClickHandler;Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;)V
    .locals 1
    .param p1, "pDefaultMarker"    # Landroid/graphics/drawable/Drawable;
    .param p2, "pResourceProxy"    # Lorg/osmdroid/ResourceProxy;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "ch"    # Lcl/birdie/transantiagomaster/maps/ClickHandler;
    .param p5, "overlay"    # Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lorg/osmdroid/views/overlay/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;Lorg/osmdroid/ResourceProxy;)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;->mOverlays:Ljava/util/ArrayList;

    .line 26
    iput-object p3, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;->mContext:Landroid/content/Context;

    .line 27
    iput-object p4, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;->cHandler:Lcl/birdie/transantiagomaster/maps/ClickHandler;

    .line 28
    iget-object v0, p5, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;->mOverlays:Ljava/util/ArrayList;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;->mOverlays:Ljava/util/ArrayList;

    .line 29
    return-void
.end method


# virtual methods
.method public final addItem(Lorg/osmdroid/views/overlay/OverlayItem;)V
    .locals 2
    .param p1, "obj"    # Lorg/osmdroid/views/overlay/OverlayItem;

    .prologue
    .line 66
    move-object v0, p1

    .line 67
    .local v0, "item":Lorg/osmdroid/views/overlay/OverlayItem;
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 60
    return-void
.end method

.method protected final createItem(I)Lorg/osmdroid/views/overlay/OverlayItem;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayItem;

    return-object v0
.end method

.method public final llenar()V
    .locals 0

    .prologue
    .line 72
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;->populate()V

    .line 73
    return-void
.end method

.method protected final onTap(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 91
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 92
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayItem;

    .line 93
    .local v0, "item":Lorg/osmdroid/views/overlay/OverlayItem;
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;->cHandler:Lcl/birdie/transantiagomaster/maps/ClickHandler;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;->cHandler:Lcl/birdie/transantiagomaster/maps/ClickHandler;

    iget-object v2, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;->mContext:Landroid/content/Context;

    invoke-interface {v1, v0}, Lcl/birdie/transantiagomaster/maps/ClickHandler;->click$640198d7(Ljava/lang/Object;)V

    .line 95
    :cond_0
    const/4 v1, 0x1

    .line 103
    .end local v0    # "item":Lorg/osmdroid/views/overlay/OverlayItem;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/MyMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
