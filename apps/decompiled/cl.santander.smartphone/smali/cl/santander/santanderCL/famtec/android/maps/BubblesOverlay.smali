.class public Lcl/santander/santanderCL/famtec/android/maps/BubblesOverlay;
.super Lcom/google/android/maps/Overlay;


# static fields
.field public static final DISTANCE_BUBBLE:I = 0xf

.field public static final PADDING_X:I = 0xa

.field public static final PADDING_Y:I = 0x8

.field public static final RADIUS_BUBBLES:I = 0x5

.field public static final SIZE_SELECTOR_BUBBLE:I = 0xa


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Lcom/google/android/maps/GeoPoint;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const/16 v3, 0xff

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/maps/Overlay;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/BubblesOverlay;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/BubblesOverlay;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/BubblesOverlay;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/BubblesOverlay;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/BubblesOverlay;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/BubblesOverlay;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/BubblesOverlay;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/BubblesOverlay;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/BubblesOverlay;->c:Landroid/graphics/Paint;

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/BubblesOverlay;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/BubblesOverlay;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/BubblesOverlay;->c:Landroid/graphics/Paint;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V
    .locals 9

    const/high16 v8, 0x40a00000    # 5.0f

    const/4 v6, 0x0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/santanderCL/famtec/android/maps/BubblesOverlay;->d:Lcom/google/android/maps/GeoPoint;

    invoke-interface {v1, v2, v0}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    invoke-virtual {p0}, Lcl/santander/santanderCL/famtec/android/maps/BubblesOverlay;->getWidthText()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    invoke-virtual {p0}, Lcl/santander/santanderCL/famtec/android/maps/BubblesOverlay;->getHeightText()I

    move-result v2

    add-int/lit8 v2, v2, 0x10

    new-instance v3, Landroid/graphics/RectF;

    int-to-float v4, v1

    int-to-float v5, v2

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v4, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v2

    add-int/lit8 v5, v5, -0xa

    add-int/lit8 v5, v5, -0xf

    int-to-float v6, v4

    int-to-float v7, v5

    invoke-virtual {v3, v6, v7}, Landroid/graphics/RectF;->offset(FF)V

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v3, v8, v8, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x5

    int-to-float v3, v3

    add-int v7, v5, v2

    int-to-float v7, v7

    invoke-virtual {v6, v3, v7}, Landroid/graphics/Path;->moveTo(FF)V

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    add-int v7, v5, v2

    add-int/lit8 v7, v7, 0xa

    int-to-float v7, v7

    invoke-virtual {v6, v3, v7}, Landroid/graphics/Path;->lineTo(FF)V

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    add-int v3, v5, v2

    int-to-float v3, v3

    invoke-virtual {v6, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcl/santander/santanderCL/famtec/android/maps/BubblesOverlay;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcl/santander/santanderCL/famtec/android/maps/BubblesOverlay;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcl/santander/santanderCL/famtec/android/maps/BubblesOverlay;->e:Ljava/lang/String;

    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcl/santander/santanderCL/famtec/android/maps/BubblesOverlay;->getWidthText()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget-object v4, p0, Lcl/santander/santanderCL/famtec/android/maps/BubblesOverlay;->c:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    sub-float/2addr v0, v4

    const/high16 v4, 0x41200000    # 10.0f

    sub-float/2addr v0, v4

    int-to-float v2, v2

    sub-float/2addr v0, v2

    const/high16 v2, 0x41000000    # 8.0f

    add-float/2addr v0, v2

    const/high16 v2, 0x41700000    # 15.0f

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcl/santander/santanderCL/famtec/android/maps/BubblesOverlay;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getHeightText()I
    .locals 2

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/BubblesOverlay;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcl/santander/santanderCL/famtec/android/maps/BubblesOverlay;->c:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getWidthText()I
    .locals 2

    iget-object v0, p0, Lcl/santander/santanderCL/famtec/android/maps/BubblesOverlay;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcl/santander/santanderCL/famtec/android/maps/BubblesOverlay;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public setBubble(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcl/santander/santanderCL/famtec/android/maps/BubblesOverlay;->d:Lcom/google/android/maps/GeoPoint;

    iput-object p2, p0, Lcl/santander/santanderCL/famtec/android/maps/BubblesOverlay;->e:Ljava/lang/String;

    return-void
.end method
