.class public abstract Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;
.super Lcom/google/android/maps/ItemizedOverlay;
.source "BalloonItemizedOverlay.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Lcom/google/android/maps/OverlayItem;",
        ">",
        "Lcom/google/android/maps/ItemizedOverlay",
        "<TItem;>;"
    }
.end annotation


# static fields
.field private static finishBalloonInflation:Ljava/lang/Runnable;

.field private static handler:Landroid/os/Handler;

.field private static isInflating:Z


# instance fields
.field private balloonView:Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView",
            "<TItem;>;"
        }
    .end annotation
.end field

.field private clickRegion:Landroid/view/View;

.field private closeRegion:Landroid/view/View;

.field private currentFocusedIndex:I

.field private currentFocusedItem:Lcom/google/android/maps/OverlayItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TItem;"
        }
    .end annotation
.end field

.field private mapView:Lcom/google/android/maps/MapView;

.field final mc:Lcom/google/android/maps/MapController;

.field private showClose:Z

.field private showDisclosure:Z

.field private snapToCenter:Z

.field private viewOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->handler:Landroid/os/Handler;

    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->isInflating:Z

    .line 354
    new-instance v0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay$1;

    invoke-direct {v0}, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay$1;-><init>()V

    sput-object v0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->finishBalloonInflation:Ljava/lang/Runnable;

    .line 358
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/google/android/maps/MapView;)V
    .locals 2
    .param p1, "defaultMarker"    # Landroid/graphics/drawable/Drawable;
    .param p2, "mapView"    # Lcom/google/android/maps/MapView;

    .prologue
    .local p0, "this":Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;, "Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay<TItem;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/maps/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 55
    iput-boolean v1, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->showClose:Z

    .line 56
    iput-boolean v0, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->showDisclosure:Z

    .line 57
    iput-boolean v1, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->snapToCenter:Z

    .line 69
    iput-object p2, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->mapView:Lcom/google/android/maps/MapView;

    .line 70
    iput v0, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->viewOffset:I

    .line 71
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    iput-object v0, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->mc:Lcom/google/android/maps/MapController;

    .line 72
    return-void
.end method

.method static synthetic access$0$1385ff()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->isInflating:Z

    return-void
.end method

.method static synthetic access$1(Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->currentFocusedIndex:I

    return v0
.end method

.method static synthetic access$2(Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;)Lcom/google/android/maps/OverlayItem;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->currentFocusedItem:Lcom/google/android/maps/OverlayItem;

    return-object v0
.end method

.method private createAndDisplayBalloonOverlay()Z
    .locals 10

    .prologue
    .local p0, "this":Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;, "Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay<TItem;>;"
    const/16 v7, 0x8

    const/4 v9, -0x2

    const/4 v8, 0x0

    .line 283
    iget-object v5, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->balloonView:Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;

    if-nez v5, :cond_6

    .line 284
    invoke-virtual {p0}, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->createBalloonOverlayView()Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;

    move-result-object v5

    iput-object v5, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->balloonView:Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;

    .line 285
    iget-object v5, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->balloonView:Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;

    sget v6, Lcom/readystatesoftware/mapviewballoons/R$id;->balloon_inner_layout:I

    invoke-virtual {v5, v6}, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->clickRegion:Landroid/view/View;

    .line 286
    iget-object v5, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->clickRegion:Landroid/view/View;

    new-instance v6, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay$2;

    invoke-direct {v6, p0}, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay$2;-><init>(Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 287
    iget-object v5, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->balloonView:Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;

    sget v6, Lcom/readystatesoftware/mapviewballoons/R$id;->balloon_close:I

    invoke-virtual {v5, v6}, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->closeRegion:Landroid/view/View;

    .line 288
    iget-object v5, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->closeRegion:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 289
    iget-boolean v5, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->showClose:Z

    if-nez v5, :cond_5

    .line 290
    iget-object v5, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->closeRegion:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 300
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->showDisclosure:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->showClose:Z

    if-nez v5, :cond_1

    .line 301
    iget-object v5, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->balloonView:Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;

    sget v6, Lcom/readystatesoftware/mapviewballoons/R$id;->balloon_disclosure:I

    invoke-virtual {v5, v6}, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 302
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 303
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 306
    .end local v4    # "v":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    .line 311
    .local v0, "isRecycled":Z
    :goto_1
    iget-object v5, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->balloonView:Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;

    invoke-virtual {v5, v7}, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->setVisibility(I)V

    .line 313
    iget-object v5, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v5}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    .line 314
    .local v1, "mapOverlays":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    .line 315
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_7

    .line 318
    :cond_3
    iget-object v5, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->currentFocusedItem:Lcom/google/android/maps/OverlayItem;

    if-eqz v5, :cond_4

    .line 319
    iget-object v5, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->balloonView:Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;

    iget-object v6, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->currentFocusedItem:Lcom/google/android/maps/OverlayItem;

    invoke-virtual {v5, v6}, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->setData(Lcom/google/android/maps/OverlayItem;)V

    .line 321
    :cond_4
    iget-object v5, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->currentFocusedItem:Lcom/google/android/maps/OverlayItem;

    invoke-virtual {v5}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v3

    .line 322
    .local v3, "point":Lcom/google/android/maps/GeoPoint;
    new-instance v2, Lcom/google/android/maps/MapView$LayoutParams;

    .line 324
    const/16 v5, 0x51

    .line 322
    invoke-direct {v2, v9, v9, v3, v5}, Lcom/google/android/maps/MapView$LayoutParams;-><init>(IILcom/google/android/maps/GeoPoint;I)V

    .line 325
    .local v2, "params":Lcom/google/android/maps/MapView$LayoutParams;
    iput v8, v2, Lcom/google/android/maps/MapView$LayoutParams;->mode:I

    .line 327
    iget-object v5, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->balloonView:Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;

    invoke-virtual {v5, v8}, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->setVisibility(I)V

    .line 329
    if-eqz v0, :cond_8

    .line 330
    iget-object v5, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->balloonView:Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;

    invoke-virtual {v5, v2}, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    :goto_3
    return v0

    .line 292
    .end local v0    # "isRecycled":Z
    .end local v1    # "mapOverlays":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    .end local v2    # "params":Lcom/google/android/maps/MapView$LayoutParams;
    .end local v3    # "point":Lcom/google/android/maps/GeoPoint;
    :cond_5
    iget-object v5, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->closeRegion:Landroid/view/View;

    new-instance v6, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay$3;

    invoke-direct {v6, p0}, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay$3;-><init>(Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 308
    :cond_6
    const/4 v0, 0x1

    .restart local v0    # "isRecycled":Z
    goto :goto_1

    .line 315
    .restart local v1    # "mapOverlays":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/maps/Overlay;

    instance-of v7, v5, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;

    if-eqz v7, :cond_2

    if-eq v5, p0, :cond_2

    check-cast v5, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;

    invoke-virtual {v5}, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->hideBalloon()V

    goto :goto_2

    .line 332
    .restart local v2    # "params":Lcom/google/android/maps/MapView$LayoutParams;
    .restart local v3    # "point":Lcom/google/android/maps/GeoPoint;
    :cond_8
    iget-object v5, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->mapView:Lcom/google/android/maps/MapView;

    iget-object v6, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->balloonView:Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;

    invoke-virtual {v5, v6, v2}, Lcom/google/android/maps/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3
.end method


# virtual methods
.method protected createBalloonOverlayView()Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;, "Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay<TItem;>;"
    new-instance v0, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;

    iget-object v1, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->viewOffset:I

    invoke-direct {v0, v1, v2}, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public final getBalloonBottomOffset()I
    .locals 1

    .prologue
    .line 87
    .local p0, "this":Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;, "Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay<TItem;>;"
    iget v0, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->viewOffset:I

    return v0
.end method

.method public getFocus()Lcom/google/android/maps/OverlayItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TItem;"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, "this":Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;, "Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay<TItem;>;"
    iget-object v0, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->currentFocusedItem:Lcom/google/android/maps/OverlayItem;

    return-object v0
.end method

.method protected final getMapView()Lcom/google/android/maps/MapView;
    .locals 1

    .prologue
    .line 159
    .local p0, "this":Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;, "Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay<TItem;>;"
    iget-object v0, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->mapView:Lcom/google/android/maps/MapView;

    return-object v0
.end method

.method public final hideBalloon()V
    .locals 2

    .prologue
    .line 175
    .local p0, "this":Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;, "Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay<TItem;>;"
    iget-object v0, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->balloonView:Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->balloonView:Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->setVisibility(I)V

    .line 178
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->currentFocusedItem:Lcom/google/android/maps/OverlayItem;

    .line 179
    return-void
.end method

.method protected onBalloonTap$830ad1c(Lcom/google/android/maps/OverlayItem;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)Z"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;, "Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay<TItem;>;"
    .local p1, "item":Lcom/google/android/maps/OverlayItem;, "TItem;"
    const/4 v0, 0x0

    return v0
.end method

.method public final onTap(I)Z
    .locals 5
    .param p1, "index"    # I

    .prologue
    .local p0, "this":Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;, "Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay<TItem;>;"
    const/4 v4, 0x1

    .line 117
    sget-object v0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->finishBalloonInflation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 118
    sput-boolean v4, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->isInflating:Z

    .line 119
    sget-object v0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->finishBalloonInflation:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 121
    iput p1, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->currentFocusedIndex:I

    .line 122
    invoke-virtual {p0, p1}, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->createItem(I)Lcom/google/android/maps/OverlayItem;

    move-result-object v0

    iput-object v0, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->currentFocusedItem:Lcom/google/android/maps/OverlayItem;

    .line 123
    invoke-virtual {p0, p1}, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->setLastFocusedIndex(I)V

    .line 125
    invoke-direct {p0}, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->createAndDisplayBalloonOverlay()Z

    .line 128
    iget-boolean v0, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->snapToCenter:Z

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->currentFocusedItem:Lcom/google/android/maps/OverlayItem;

    invoke-virtual {v0}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->mc:Lcom/google/android/maps/MapController;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 132
    :cond_0
    return v4
.end method

.method public final setBalloonBottomOffset(I)V
    .locals 0
    .param p1, "pixels"    # I

    .prologue
    .line 84
    .local p0, "this":Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;, "Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay<TItem;>;"
    iput p1, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->viewOffset:I

    .line 85
    return-void
.end method

.method public setFocus(Lcom/google/android/maps/OverlayItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p0, "this":Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;, "Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay<TItem;>;"
    .local p1, "item":Lcom/google/android/maps/OverlayItem;, "TItem;"
    invoke-super {p0, p1}, Lcom/google/android/maps/ItemizedOverlay;->setFocus(Lcom/google/android/maps/OverlayItem;)V

    .line 267
    invoke-virtual {p0}, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->getLastFocusedIndex()I

    move-result v0

    iput v0, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->currentFocusedIndex:I

    .line 268
    iput-object p1, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->currentFocusedItem:Lcom/google/android/maps/OverlayItem;

    .line 269
    iget-object v0, p0, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->currentFocusedItem:Lcom/google/android/maps/OverlayItem;

    if-nez v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->hideBalloon()V

    .line 274
    :goto_0
    return-void

    .line 272
    :cond_0
    invoke-direct {p0}, Lcom/readystatesoftware/mapviewballoons/BalloonItemizedOverlay;->createAndDisplayBalloonOverlay()Z

    goto :goto_0
.end method
