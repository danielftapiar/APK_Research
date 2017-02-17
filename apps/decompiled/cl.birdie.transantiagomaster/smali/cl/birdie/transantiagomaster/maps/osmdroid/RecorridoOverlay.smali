.class public final Lcl/birdie/transantiagomaster/maps/osmdroid/RecorridoOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "RecorridoOverlay.java"


# instance fields
.field public route:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 23
    new-instance v0, Lorg/osmdroid/DefaultResourceProxyImpl;

    invoke-direct {v0, p1}, Lorg/osmdroid/DefaultResourceProxyImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcl/birdie/transantiagomaster/maps/osmdroid/RecorridoOverlay;-><init>(Lorg/osmdroid/ResourceProxy;)V

    .line 24
    return-void
.end method

.method private constructor <init>(Lorg/osmdroid/ResourceProxy;)V
    .locals 1
    .param p1, "px"    # Lorg/osmdroid/ResourceProxy;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lorg/osmdroid/views/overlay/Overlay;-><init>(Lorg/osmdroid/ResourceProxy;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/RecorridoOverlay;->route:Ljava/util/ArrayList;

    .line 28
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;
    .param p3, "shadow"    # Z

    .prologue
    .line 37
    iget-object v7, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/RecorridoOverlay;->route:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 68
    :goto_0
    return-void

    .line 41
    :cond_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 42
    .local v1, "mPaint":Landroid/graphics/Paint;
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setDither(Z)V

    .line 43
    const/high16 v7, -0x10000

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    const/16 v7, 0x64

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 45
    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    sget-object v7, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 47
    sget-object v7, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 48
    const/high16 v7, 0x40c00000    # 6.0f

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 50
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 52
    .local v4, "path":Landroid/graphics/Path;
    iget-object v7, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/RecorridoOverlay;->route:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/osmdroid/util/GeoPoint;

    .line 54
    .local v6, "start":Lorg/osmdroid/util/GeoPoint;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 55
    .local v2, "p1":Landroid/graphics/Point;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 56
    .local v3, "p2":Landroid/graphics/Point;
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/MapView$Projection;

    move-result-object v5

    .line 58
    .local v5, "projection":Lorg/osmdroid/views/MapView$Projection;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    iget-object v7, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/RecorridoOverlay;->route:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v0, v7, :cond_1

    .line 67
    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {v5, v6, v2}, Lorg/osmdroid/views/MapView$Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 60
    iget-object v7, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/RecorridoOverlay;->route:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/osmdroid/api/IGeoPoint;

    invoke-virtual {v5, v7, v3}, Lorg/osmdroid/views/MapView$Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 62
    iget v7, v3, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget v8, v3, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 63
    iget v7, v2, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget v8, v2, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 65
    iget-object v7, p0, Lcl/birdie/transantiagomaster/maps/osmdroid/RecorridoOverlay;->route:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "start":Lorg/osmdroid/util/GeoPoint;
    check-cast v6, Lorg/osmdroid/util/GeoPoint;

    .line 58
    .restart local v6    # "start":Lorg/osmdroid/util/GeoPoint;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
