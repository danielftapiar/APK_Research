.class public final Lorg/mapsforge/android/maps/overlay/OverlayList;
.super Ljava/lang/Object;
.source "OverlayList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/List",
        "<",
        "Lorg/mapsforge/android/maps/overlay/Overlay;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/android/maps/overlay/Overlay;",
            ">;"
        }
    .end annotation
.end field

.field private final mapView:Lorg/mapsforge/android/maps/MapView;


# direct methods
.method public constructor <init>(Lorg/mapsforge/android/maps/MapView;)V
    .locals 2
    .param p1, "mapView"    # Lorg/mapsforge/android/maps/MapView;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/mapsforge/android/maps/overlay/OverlayList;->mapView:Lorg/mapsforge/android/maps/MapView;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/android/maps/overlay/OverlayList;->list:Ljava/util/List;

    .line 43
    return-void
.end method

.method private get(I)Lorg/mapsforge/android/maps/overlay/Overlay;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/OverlayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/android/maps/overlay/Overlay;

    return-object v0
.end method

.method private setupOverlay(Lorg/mapsforge/android/maps/overlay/Overlay;)V
    .locals 1
    .param p1, "overlay"    # Lorg/mapsforge/android/maps/overlay/Overlay;

    .prologue
    .line 192
    invoke-virtual {p1}, Lorg/mapsforge/android/maps/overlay/Overlay;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    invoke-virtual {p1}, Lorg/mapsforge/android/maps/overlay/Overlay;->start()V

    .line 195
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/OverlayList;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {p1, v0}, Lorg/mapsforge/android/maps/overlay/Overlay;->setupOverlay(Lorg/mapsforge/android/maps/MapView;)V

    .line 196
    return-void
.end method


# virtual methods
.method public final bridge synthetic add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p2, Lorg/mapsforge/android/maps/overlay/Overlay;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lorg/mapsforge/android/maps/overlay/OverlayList;->setupOverlay(Lorg/mapsforge/android/maps/overlay/Overlay;)V

    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/OverlayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Lorg/mapsforge/android/maps/overlay/Overlay;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lorg/mapsforge/android/maps/overlay/OverlayList;->setupOverlay(Lorg/mapsforge/android/maps/overlay/Overlay;)V

    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/OverlayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lorg/mapsforge/android/maps/overlay/Overlay;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 67
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/mapsforge/android/maps/overlay/Overlay;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/android/maps/overlay/Overlay;

    .line 68
    .local v1, "overlay":Lorg/mapsforge/android/maps/overlay/Overlay;
    invoke-direct {p0, v1}, Lorg/mapsforge/android/maps/overlay/OverlayList;->setupOverlay(Lorg/mapsforge/android/maps/overlay/Overlay;)V

    goto :goto_0

    .line 70
    .end local v1    # "overlay":Lorg/mapsforge/android/maps/overlay/Overlay;
    :cond_0
    iget-object v2, p0, Lorg/mapsforge/android/maps/overlay/OverlayList;->list:Ljava/util/List;

    invoke-interface {v2, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v2

    return v2
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/mapsforge/android/maps/overlay/Overlay;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/mapsforge/android/maps/overlay/Overlay;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/android/maps/overlay/Overlay;

    .line 60
    .local v1, "overlay":Lorg/mapsforge/android/maps/overlay/Overlay;
    invoke-direct {p0, v1}, Lorg/mapsforge/android/maps/overlay/OverlayList;->setupOverlay(Lorg/mapsforge/android/maps/overlay/Overlay;)V

    goto :goto_0

    .line 62
    .end local v1    # "overlay":Lorg/mapsforge/android/maps/overlay/Overlay;
    :cond_0
    iget-object v2, p0, Lorg/mapsforge/android/maps/overlay/OverlayList;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v2

    return v2
.end method

.method public final clear()V
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/mapsforge/android/maps/overlay/OverlayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 76
    invoke-direct {p0, v0}, Lorg/mapsforge/android/maps/overlay/OverlayList;->get(I)Lorg/mapsforge/android/maps/overlay/Overlay;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mapsforge/android/maps/overlay/Overlay;->interrupt()V

    .line 75
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 78
    :cond_0
    iget-object v1, p0, Lorg/mapsforge/android/maps/overlay/OverlayList;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 79
    iget-object v1, p0, Lorg/mapsforge/android/maps/overlay/OverlayList;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v1}, Lorg/mapsforge/android/maps/MapView;->invalidateOnUiThread()V

    .line 80
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/OverlayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/OverlayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lorg/mapsforge/android/maps/overlay/OverlayList;->get(I)Lorg/mapsforge/android/maps/overlay/Overlay;

    move-result-object v0

    return-object v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/OverlayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/OverlayList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/mapsforge/android/maps/overlay/Overlay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/OverlayList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 114
    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/OverlayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Lorg/mapsforge/android/maps/overlay/Overlay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/OverlayList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<",
            "Lorg/mapsforge/android/maps/overlay/Overlay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/OverlayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic remove(I)Ljava/lang/Object;
    .locals 2
    .param p1, "x0"    # I

    .prologue
    .line 30
    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/OverlayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/android/maps/overlay/Overlay;

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/overlay/Overlay;->interrupt()V

    iget-object v1, p0, Lorg/mapsforge/android/maps/overlay/OverlayList;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v1}, Lorg/mapsforge/android/maps/MapView;->invalidateOnUiThread()V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 137
    iget-object v1, p0, Lorg/mapsforge/android/maps/overlay/OverlayList;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 138
    .local v0, "listChanged":Z
    instance-of v1, p1, Lorg/mapsforge/android/maps/overlay/Overlay;

    if-eqz v1, :cond_0

    .line 139
    check-cast p1, Lorg/mapsforge/android/maps/overlay/Overlay;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/mapsforge/android/maps/overlay/Overlay;->interrupt()V

    .line 141
    :cond_0
    iget-object v1, p0, Lorg/mapsforge/android/maps/overlay/OverlayList;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v1}, Lorg/mapsforge/android/maps/MapView;->invalidateOnUiThread()V

    .line 142
    return v0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v3, p0, Lorg/mapsforge/android/maps/overlay/OverlayList;->list:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v1

    .line 148
    .local v1, "listChanged":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 149
    .local v2, "object":Ljava/lang/Object;
    instance-of v3, v2, Lorg/mapsforge/android/maps/overlay/Overlay;

    if-eqz v3, :cond_0

    .line 150
    check-cast v2, Lorg/mapsforge/android/maps/overlay/Overlay;

    .end local v2    # "object":Ljava/lang/Object;
    invoke-virtual {v2}, Lorg/mapsforge/android/maps/overlay/Overlay;->interrupt()V

    goto :goto_0

    .line 153
    :cond_1
    iget-object v3, p0, Lorg/mapsforge/android/maps/overlay/OverlayList;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v3}, Lorg/mapsforge/android/maps/MapView;->invalidateOnUiThread()V

    .line 154
    return v1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/OverlayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p2, Lorg/mapsforge/android/maps/overlay/Overlay;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lorg/mapsforge/android/maps/overlay/OverlayList;->setupOverlay(Lorg/mapsforge/android/maps/overlay/Overlay;)V

    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/OverlayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/android/maps/overlay/Overlay;

    invoke-virtual {v0}, Lorg/mapsforge/android/maps/overlay/Overlay;->interrupt()V

    iget-object v1, p0, Lorg/mapsforge/android/maps/overlay/OverlayList;->mapView:Lorg/mapsforge/android/maps/MapView;

    invoke-virtual {v1}, Lorg/mapsforge/android/maps/MapView;->invalidateOnUiThread()V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/OverlayList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final subList(II)Ljava/util/List;
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/android/maps/overlay/Overlay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/OverlayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/OverlayList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 188
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lorg/mapsforge/android/maps/overlay/OverlayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
