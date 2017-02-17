.class public Lcl/santander/santanderCL/famtec/android/maps/Maps$RouteOverlay;
.super Lcom/google/android/maps/Overlay;


# instance fields
.field private synthetic a:Lcl/santander/santanderCL/famtec/android/maps/Maps;


# direct methods
.method protected constructor <init>(Lcl/santander/santanderCL/famtec/android/maps/Maps;)V
    .locals 0

    iput-object p1, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps$RouteOverlay;->a:Lcl/santander/santanderCL/famtec/android/maps/Maps;

    invoke-direct {p0}, Lcom/google/android/maps/Overlay;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;ZJ)Z
    .locals 12

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/maps/Overlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v0, 0xff

    const/16 v1, 0x50

    const/16 v2, 0x96

    const/16 v3, 0x1e

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps$RouteOverlay;->a:Lcl/santander/santanderCL/famtec/android/maps/Maps;

    iget-object v0, v0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->c:[Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    if-eqz v0, :cond_0

    new-instance v2, Lcom/google/android/maps/GeoPoint;

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps$RouteOverlay;->a:Lcl/santander/santanderCL/famtec/android/maps/Maps;

    iget-object v0, v0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->c:[Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-wide v0, v0, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_latitud:D

    const-wide v3, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, v3

    double-to-int v0, v0

    iget-object v1, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps$RouteOverlay;->a:Lcl/santander/santanderCL/famtec/android/maps/Maps;

    iget-object v1, v1, Lcl/santander/santanderCL/famtec/android/maps/Maps;->c:[Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    iget-wide v3, v1, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_longitud:D

    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v3, v6

    double-to-int v1, v3

    invoke-direct {v2, v0, v1}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    const/4 v0, 0x0

    move v6, v0

    move-object v7, v1

    move-object v0, v2

    :goto_0
    iget-object v1, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps$RouteOverlay;->a:Lcl/santander/santanderCL/famtec/android/maps/Maps;

    iget-object v1, v1, Lcl/santander/santanderCL/famtec/android/maps/Maps;->c:[Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-lt v6, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    new-instance v9, Lcom/google/android/maps/GeoPoint;

    iget-object v1, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps$RouteOverlay;->a:Lcl/santander/santanderCL/famtec/android/maps/Maps;

    iget-object v1, v1, Lcl/santander/santanderCL/famtec/android/maps/Maps;->c:[Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    add-int/lit8 v2, v6, 0x1

    aget-object v1, v1, v2

    iget-wide v1, v1, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_latitud:D

    const-wide v3, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iget-object v2, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps$RouteOverlay;->a:Lcl/santander/santanderCL/famtec/android/maps/Maps;

    iget-object v2, v2, Lcl/santander/santanderCL/famtec/android/maps/Maps;->c:[Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    add-int/lit8 v3, v6, 0x1

    aget-object v2, v2, v3

    iget-wide v2, v2, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_longitud:D

    const-wide v10, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v2, v10

    double-to-int v2, v2

    invoke-direct {v9, v1, v2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps$RouteOverlay;->a:Lcl/santander/santanderCL/famtec/android/maps/Maps;

    invoke-static {v2}, Lcl/santander/santanderCL/famtec/android/maps/Maps;->c(Lcl/santander/santanderCL/famtec/android/maps/Maps;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps$RouteOverlay;->a:Lcl/santander/santanderCL/famtec/android/maps/Maps;

    iget-object v2, v2, Lcl/santander/santanderCL/famtec/android/maps/Maps;->d:[Lcom/google/android/maps/GeoPoint;

    iget-object v3, p0, Lcl/santander/santanderCL/famtec/android/maps/Maps$RouteOverlay;->a:Lcl/santander/santanderCL/famtec/android/maps/Maps;

    invoke-static {v3}, Lcl/santander/santanderCL/famtec/android/maps/Maps;->c(Lcl/santander/santanderCL/famtec/android/maps/Maps;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcom/google/android/maps/GeoPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    move v10, v0

    :goto_1
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v0

    invoke-interface {v0, v9, v8}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    const/16 v0, 0xff

    const/16 v1, 0x32

    const/16 v2, 0x32

    const/16 v3, 0xff

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v0, v7, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, v7, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, v8, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, v8, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, v7, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget v0, v7, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    if-eqz v10, :cond_2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/16 v1, 0xff

    const/16 v2, 0x3c

    const/16 v3, 0x3c

    const/16 v4, 0x3c

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v1, v7, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, v7, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move-object v7, v8

    move-object v0, v9

    goto/16 :goto_0

    :cond_3
    move v10, v1

    goto :goto_1
.end method
