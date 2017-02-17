.class public final Lorg/osmdroid/views/overlay/OverlayManager;
.super Ljava/util/AbstractList;
.source "OverlayManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Lorg/osmdroid/views/overlay/Overlay;",
        ">;"
    }
.end annotation


# instance fields
.field private final mOverlayList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lorg/osmdroid/views/overlay/Overlay;",
            ">;"
        }
    .end annotation
.end field

.field private mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

.field private mUseSafeCanvas:Z


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/overlay/TilesOverlay;)V
    .locals 2
    .param p1, "tilesOverlay"    # Lorg/osmdroid/views/overlay/TilesOverlay;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/OverlayManager;->mUseSafeCanvas:Z

    .line 27
    iput-object p1, p0, Lorg/osmdroid/views/overlay/OverlayManager;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayManager;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-boolean v1, p0, Lorg/osmdroid/views/overlay/OverlayManager;->mUseSafeCanvas:Z

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/TilesOverlay;->setUseSafeCanvas(Z)V

    .line 28
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/OverlayManager;->mOverlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lorg/osmdroid/views/overlay/OverlayManager;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/overlay/OverlayManager;

    .prologue
    .line 19
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayManager;->mOverlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method private overlaysReversed()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/osmdroid/views/overlay/Overlay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Lorg/osmdroid/views/overlay/OverlayManager$1;

    invoke-direct {v0, p0}, Lorg/osmdroid/views/overlay/OverlayManager$1;-><init>(Lorg/osmdroid/views/overlay/OverlayManager;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 19
    check-cast p2, Lorg/osmdroid/views/overlay/Overlay;

    .end local p2    # "x1":Ljava/lang/Object;
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayManager;->mOverlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    instance-of v0, p2, Lorg/osmdroid/views/overlay/SafeDrawOverlay;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/osmdroid/views/overlay/SafeDrawOverlay;

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/OverlayManager;->mUseSafeCanvas:Z

    invoke-virtual {p2, v0}, Lorg/osmdroid/views/overlay/SafeDrawOverlay;->setUseSafeCanvas(Z)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 19
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayManager;->mOverlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Overlay;

    return-object v0
.end method

.method public final onDetach$2087f92b()V
    .locals 2

    .prologue
    .line 145
    iget-object v1, p0, Lorg/osmdroid/views/overlay/OverlayManager;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lorg/osmdroid/views/overlay/OverlayManager;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/TilesOverlay;->onDetach$2087f92b()V

    .line 149
    :cond_0
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/OverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Overlay;

    .line 150
    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/Overlay;->onDetach$2087f92b()V

    goto :goto_0

    .line 152
    :cond_1
    return-void
.end method

.method public final onDoubleTap$4682072e()Z
    .locals 2

    .prologue
    .line 210
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/OverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 211
    invoke-static {}, Lorg/osmdroid/views/overlay/Overlay;->onDoubleTap$4682072e()Z

    goto :goto_0

    .line 216
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public final onDoubleTapEvent$4682072e()Z
    .locals 2

    .prologue
    .line 220
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/OverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 221
    invoke-static {}, Lorg/osmdroid/views/overlay/Overlay;->onDoubleTapEvent$4682072e()Z

    goto :goto_0

    .line 226
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public final onDown$4682072e()Z
    .locals 2

    .prologue
    .line 242
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/OverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 243
    invoke-static {}, Lorg/osmdroid/views/overlay/Overlay;->onDown$4682072e()Z

    goto :goto_0

    .line 248
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public final onDraw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "pMapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 122
    iget-object v2, p0, Lorg/osmdroid/views/overlay/OverlayManager;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/osmdroid/views/overlay/OverlayManager;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-virtual {v2}, Lorg/osmdroid/views/overlay/TilesOverlay;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    iget-object v2, p0, Lorg/osmdroid/views/overlay/OverlayManager;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-virtual {v2, p1, p2, v4}, Lorg/osmdroid/views/overlay/TilesOverlay;->draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V

    .line 126
    :cond_0
    iget-object v2, p0, Lorg/osmdroid/views/overlay/OverlayManager;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/osmdroid/views/overlay/OverlayManager;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-virtual {v2}, Lorg/osmdroid/views/overlay/TilesOverlay;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    iget-object v2, p0, Lorg/osmdroid/views/overlay/OverlayManager;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-virtual {v2, p1, p2, v3}, Lorg/osmdroid/views/overlay/TilesOverlay;->draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V

    .line 130
    :cond_1
    iget-object v2, p0, Lorg/osmdroid/views/overlay/OverlayManager;->mOverlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Overlay;

    .line 131
    .local v1, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/Overlay;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 132
    invoke-virtual {v1, p1, p2, v4}, Lorg/osmdroid/views/overlay/Overlay;->draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V

    goto :goto_0

    .line 136
    .end local v1    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    :cond_3
    iget-object v2, p0, Lorg/osmdroid/views/overlay/OverlayManager;->mOverlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Overlay;

    .line 137
    .restart local v1    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/Overlay;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 138
    invoke-virtual {v1, p1, p2, v3}, Lorg/osmdroid/views/overlay/Overlay;->draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V

    goto :goto_1

    .line 142
    .end local v1    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    :cond_5
    return-void
.end method

.method public final onFling$6e3d8c7d()Z
    .locals 2

    .prologue
    .line 253
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/OverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 254
    invoke-static {}, Lorg/osmdroid/views/overlay/Overlay;->onFling$6e3d8c7d()Z

    goto :goto_0

    .line 259
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public final onKeyDown$4aafb6b2()Z
    .locals 2

    .prologue
    .line 155
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/OverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 156
    invoke-static {}, Lorg/osmdroid/views/overlay/Overlay;->onKeyDown$4aafb6b2()Z

    goto :goto_0

    .line 161
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public final onKeyUp$4aafb6b2()Z
    .locals 2

    .prologue
    .line 165
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/OverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    invoke-static {}, Lorg/osmdroid/views/overlay/Overlay;->onKeyUp$4aafb6b2()Z

    goto :goto_0

    .line 171
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public final onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 2
    .param p1, "pEvent"    # Landroid/view/MotionEvent;
    .param p2, "pMapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 263
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/OverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Overlay;

    .line 264
    invoke-virtual {v1, p1, p2}, Lorg/osmdroid/views/overlay/Overlay;->onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    const/4 v1, 0x1

    .line 269
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final onScroll$6e3d8c7d()Z
    .locals 2

    .prologue
    .line 274
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/OverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 275
    invoke-static {}, Lorg/osmdroid/views/overlay/Overlay;->onScroll$6e3d8c7d()Z

    goto :goto_0

    .line 280
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public final onShowPress$4682072a()V
    .locals 2

    .prologue
    .line 284
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/OverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 285
    invoke-static {}, Lorg/osmdroid/views/overlay/Overlay;->onShowPress$4682072a()V

    goto :goto_0

    .line 287
    :cond_0
    return-void
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "pMapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 230
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/OverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Overlay;

    .line 231
    invoke-virtual {v1, p1, p2}, Lorg/osmdroid/views/overlay/Overlay;->onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    const/4 v1, 0x1

    .line 236
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 2
    .param p1, "pEvent"    # Landroid/view/MotionEvent;
    .param p2, "pMapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 290
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/OverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Overlay;

    .line 291
    invoke-virtual {v1, p1, p2}, Lorg/osmdroid/views/overlay/Overlay;->onSingleTapUp(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    const/4 v1, 0x1

    .line 296
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final onSnapToItem$d9026f1()Z
    .locals 2

    .prologue
    .line 196
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/OverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 204
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public final onTouchEvent$4682072e(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 175
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/OverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Overlay;

    .line 176
    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/Overlay;->onTouchEvent$4682072e(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    const/4 v1, 0x1

    .line 181
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final onTrackballEvent$4682072e()Z
    .locals 2

    .prologue
    .line 185
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/OverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 186
    invoke-static {}, Lorg/osmdroid/views/overlay/Overlay;->onTrackballEvent$4682072e()Z

    goto :goto_0

    .line 191
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public final bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 19
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayManager;->mOverlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Overlay;

    return-object v0
.end method

.method public final bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 19
    check-cast p2, Lorg/osmdroid/views/overlay/Overlay;

    .end local p2    # "x1":Ljava/lang/Object;
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayManager;->mOverlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Overlay;

    instance-of v1, p2, Lorg/osmdroid/views/overlay/SafeDrawOverlay;

    if-eqz v1, :cond_0

    check-cast p2, Lorg/osmdroid/views/overlay/SafeDrawOverlay;

    iget-boolean v1, p0, Lorg/osmdroid/views/overlay/OverlayManager;->mUseSafeCanvas:Z

    invoke-virtual {p2, v1}, Lorg/osmdroid/views/overlay/SafeDrawOverlay;->setUseSafeCanvas(Z)V

    :cond_0
    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayManager;->mOverlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method
