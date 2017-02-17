.class public final Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;
.super Lcom/google/android/maps/ItemizedOverlay;
.source "MyMapOverlay.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/maps/ItemizedOverlay",
        "<",
        "Lcom/google/android/maps/OverlayItem;",
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
            "Lcom/google/android/maps/OverlayItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Lcl/birdie/transantiagomaster/maps/ClickHandler;)V
    .locals 1
    .param p1, "defaultMarker"    # Landroid/graphics/drawable/Drawable;
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "ch"    # Lcl/birdie/transantiagomaster/maps/ClickHandler;

    .prologue
    .line 22
    invoke-static {p1}, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->mOverlays:Ljava/util/ArrayList;

    .line 23
    iput-object p2, p0, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->mContext:Landroid/content/Context;

    .line 24
    iput-object p3, p0, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->cHandler:Lcl/birdie/transantiagomaster/maps/ClickHandler;

    .line 25
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->populate()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Lcl/birdie/transantiagomaster/maps/ClickHandler;Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;)V
    .locals 1
    .param p1, "defaultMarker"    # Landroid/graphics/drawable/Drawable;
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "ch"    # Lcl/birdie/transantiagomaster/maps/ClickHandler;
    .param p4, "overlay"    # Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;

    .prologue
    .line 29
    invoke-static {p1}, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->mOverlays:Ljava/util/ArrayList;

    .line 30
    iput-object p2, p0, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->mContext:Landroid/content/Context;

    .line 31
    iput-object p3, p0, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->cHandler:Lcl/birdie/transantiagomaster/maps/ClickHandler;

    .line 32
    iget-object v0, p4, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->mOverlays:Ljava/util/ArrayList;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->mOverlays:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->populate()V

    .line 34
    return-void
.end method


# virtual methods
.method public final addItem(Lcom/google/android/maps/OverlayItem;)V
    .locals 2
    .param p1, "obj"    # Lcom/google/android/maps/OverlayItem;

    .prologue
    .line 45
    move-object v0, p1

    .line 46
    .local v0, "item":Lcom/google/android/maps/OverlayItem;
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->setLastFocusedIndex(I)V

    .line 39
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 40
    return-void
.end method

.method protected final createItem(I)Lcom/google/android/maps/OverlayItem;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/OverlayItem;

    return-object v0
.end method

.method public final llenar()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->setLastFocusedIndex(I)V

    .line 51
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->populate()V

    .line 52
    return-void
.end method

.method protected final onTap(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 68
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 69
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/OverlayItem;

    .line 70
    .local v0, "item":Lcom/google/android/maps/OverlayItem;
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->cHandler:Lcl/birdie/transantiagomaster/maps/ClickHandler;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->cHandler:Lcl/birdie/transantiagomaster/maps/ClickHandler;

    iget-object v2, p0, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->mContext:Landroid/content/Context;

    invoke-interface {v1, v0}, Lcl/birdie/transantiagomaster/maps/ClickHandler;->click$640198d7(Ljava/lang/Object;)V

    .line 72
    :cond_0
    const/4 v1, 0x1

    .line 79
    .end local v0    # "item":Lcom/google/android/maps/OverlayItem;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/MyMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
