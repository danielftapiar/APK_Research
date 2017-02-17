.class public final Lcl/birdie/transantiagomaster/maps/google/RecorridoOverlay;
.super Lcom/google/android/maps/Overlay;
.source "RecorridoOverlay.java"


# instance fields
.field public route:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/maps/GeoPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/maps/Overlay;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/google/RecorridoOverlay;->route:Ljava/util/ArrayList;

    .line 22
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapView"    # Lcom/google/android/maps/MapView;
    .param p3, "shadow"    # Z

    .prologue
    .line 26
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/maps/Overlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V

    .line 28
    iget-object v7, p0, Lcl/birdie/transantiagomaster/maps/google/RecorridoOverlay;->route:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 59
    :goto_0
    return-void

    .line 32
    :cond_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 33
    .local v1, "mPaint":Landroid/graphics/Paint;
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setDither(Z)V

    .line 34
    const/high16 v7, -0x10000

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    const/16 v7, 0x64

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 36
    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    sget-object v7, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 38
    sget-object v7, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 39
    const/high16 v7, 0x40c00000    # 6.0f

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 41
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 43
    .local v4, "path":Landroid/graphics/Path;
    iget-object v7, p0, Lcl/birdie/transantiagomaster/maps/google/RecorridoOverlay;->route:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/maps/GeoPoint;

    .line 45
    .local v6, "start":Lcom/google/android/maps/GeoPoint;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 46
    .local v2, "p1":Landroid/graphics/Point;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 47
    .local v3, "p2":Landroid/graphics/Point;
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v5

    .line 49
    .local v5, "projection":Lcom/google/android/maps/Projection;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    iget-object v7, p0, Lcl/birdie/transantiagomaster/maps/google/RecorridoOverlay;->route:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v0, v7, :cond_1

    .line 58
    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 50
    :cond_1
    invoke-interface {v5, v6, v2}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 51
    iget-object v7, p0, Lcl/birdie/transantiagomaster/maps/google/RecorridoOverlay;->route:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/maps/GeoPoint;

    invoke-interface {v5, v7, v3}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 53
    iget v7, v3, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget v8, v3, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 54
    iget v7, v2, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget v8, v2, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 56
    iget-object v7, p0, Lcl/birdie/transantiagomaster/maps/google/RecorridoOverlay;->route:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "start":Lcom/google/android/maps/GeoPoint;
    check-cast v6, Lcom/google/android/maps/GeoPoint;

    .line 49
    .restart local v6    # "start":Lcom/google/android/maps/GeoPoint;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
