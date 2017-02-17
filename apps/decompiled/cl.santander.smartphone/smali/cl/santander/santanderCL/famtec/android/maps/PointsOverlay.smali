.class public Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;
.super Lcom/google/android/maps/Overlay;


# instance fields
.field private a:[Lcom/google/android/maps/GeoPoint;

.field private b:Landroid/graphics/Bitmap;

.field private c:Z

.field private d:[Ljava/lang/String;

.field private e:[Landroid/graphics/drawable/Drawable;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/Overlay;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/Overlay;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/MapActivity;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/Overlay;-><init>()V

    iput-boolean p2, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;->f:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V
    .locals 7

    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v2

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;->a:[Lcom/google/android/maps/GeoPoint;

    array-length v0, v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;->e:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;->b:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v4, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;->a:[Lcom/google/android/maps/GeoPoint;

    aget-object v4, v4, v1

    invoke-interface {v2, v4, v0}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget-object v4, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;->b:Landroid/graphics/Bitmap;

    iget v5, v0, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    shr-int/lit8 v6, v6, 0x1

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    shr-int/lit8 v6, v6, 0x1

    sub-int/2addr v0, v6

    int-to-float v0, v0

    invoke-virtual {p1, v4, v5, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public getHRectFIcon(II)Landroid/graphics/RectF;
    .locals 5

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, -0xa

    int-to-float v1, v1

    iget-object v2, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    neg-int v2, v2

    shr-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    int-to-float v3, v3

    iget-object v4, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    return-object v0
.end method

.method public getHit(IIFF)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;->getHRectFIcon(II)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTap(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/MapView;)Z
    .locals 8

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;->f:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "tap"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;->c:Z

    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v4

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    invoke-interface {v4, p1, v5}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "Punto pulsado: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;->a:[Lcom/google/android/maps/GeoPoint;

    array-length v0, v0

    if-lt v2, v0, :cond_3

    iget-boolean v2, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;->c:Z

    :cond_0
    return v2

    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/Overlay;

    instance-of v0, v0, Lcl/santander/santanderCL/famtec/android/maps/BubblesOverlay;

    if-eqz v0, :cond_2

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;->a:[Lcom/google/android/maps/GeoPoint;

    aget-object v1, v1, v2

    invoke-interface {v4, v1, v0}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v6, v5, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v7, v5, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-virtual {p0, v1, v0, v6, v7}, Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;->getHit(IIFF)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;->c:Z

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "Punto encontrado: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;->a:[Lcom/google/android/maps/GeoPoint;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;->a:[Lcom/google/android/maps/GeoPoint;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Lcl/santander/santanderCL/famtec/android/maps/BubblesOverlay;

    invoke-direct {v0}, Lcl/santander/santanderCL/famtec/android/maps/BubblesOverlay;-><init>()V

    iget-object v1, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;->a:[Lcom/google/android/maps/GeoPoint;

    aget-object v1, v1, v2

    iget-object v6, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;->d:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v0, v1, v6}, Lcl/santander/santanderCL/famtec/android/maps/BubblesOverlay;->setBubble(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->postInvalidate()V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public setIconos([Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;->e:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setOficinas([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setPoints([Lcom/google/android/maps/GeoPoint;)V
    .locals 0

    iput-object p1, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;->a:[Lcom/google/android/maps/GeoPoint;

    return-void
.end method

.method public setTexts([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;->d:[Ljava/lang/String;

    return-void
.end method
