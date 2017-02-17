.class final Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;
.super Ljava/lang/Object;
.source "CanvasRasterer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer$1;
    }
.end annotation


# static fields
.field private static final PAINT_BITMAP_FILTER:Landroid/graphics/Paint;

.field private static final PAINT_TILE_COORDINATES:Landroid/graphics/Paint;

.field private static final PAINT_TILE_COORDINATES_STROKE:Landroid/graphics/Paint;

.field private static final PAINT_TILE_FRAME:Landroid/graphics/Paint;

.field private static final TILE_FRAME:[F


# instance fields
.field private final canvas:Landroid/graphics/Canvas;

.field private final path:Landroid/graphics/Path;

.field private final symbolMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->PAINT_BITMAP_FILTER:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->PAINT_TILE_COORDINATES:Landroid/graphics/Paint;

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->PAINT_TILE_COORDINATES_STROKE:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->PAINT_TILE_FRAME:Landroid/graphics/Paint;

    .line 39
    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->TILE_FRAME:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x43800000    # 256.0f
        0x0
        0x43800000    # 256.0f
        0x43800000    # 256.0f
        0x43800000    # 256.0f
        0x43800000    # 256.0f
        0x43800000    # 256.0f
        0x43800000    # 256.0f
        0x0
    .end array-data
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x41a00000    # 20.0f

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->canvas:Landroid/graphics/Canvas;

    .line 59
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->symbolMatrix:Landroid/graphics/Matrix;

    .line 60
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->path:Landroid/graphics/Path;

    .line 61
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->path:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 62
    sget-object v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->PAINT_TILE_COORDINATES:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    sget-object v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->PAINT_TILE_COORDINATES:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->PAINT_TILE_COORDINATES_STROKE:Landroid/graphics/Paint;

    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    sget-object v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->PAINT_TILE_COORDINATES_STROKE:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->PAINT_TILE_COORDINATES_STROKE:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->PAINT_TILE_COORDINATES_STROKE:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->PAINT_TILE_COORDINATES_STROKE:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    return-void
.end method

.method private drawTileCoordinate(Ljava/lang/String;I)V
    .locals 4
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "offsetY"    # I

    .prologue
    const/high16 v3, 0x41a00000    # 20.0f

    .line 66
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p2

    sget-object v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->PAINT_TILE_COORDINATES_STROKE:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v3, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 67
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p2

    sget-object v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->PAINT_TILE_COORDINATES:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v3, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 68
    return-void
.end method


# virtual methods
.method final drawNodes(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "pointTextContainers":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_1

    .line 72
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    .line 74
    .local v1, "pointTextContainer":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;
    iget-object v2, v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->paintBack:Landroid/graphics/Paint;

    if-eqz v2, :cond_0

    .line 75
    iget-object v2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->canvas:Landroid/graphics/Canvas;

    iget-object v3, v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->text:Ljava/lang/String;

    iget v4, v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    iget v5, v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    iget-object v6, v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->paintBack:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 79
    :cond_0
    iget-object v2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->canvas:Landroid/graphics/Canvas;

    iget-object v3, v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->text:Ljava/lang/String;

    iget v4, v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    iget v5, v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    iget-object v6, v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->paintFront:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 71
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 82
    .end local v1    # "pointTextContainer":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;
    :cond_1
    return-void
.end method

.method final drawSymbols(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "symbolContainers":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_1

    .line 86
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    .line 88
    .local v3, "symbolContainer":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;
    iget-boolean v4, v3, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->alignCenter:Z

    if-eqz v4, :cond_0

    .line 89
    iget-object v4, v3, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->symbol:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    shr-int/lit8 v1, v4, 0x1

    .line 90
    .local v1, "pivotX":I
    iget-object v4, v3, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->symbol:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    shr-int/lit8 v2, v4, 0x1

    .line 91
    .local v2, "pivotY":I
    iget-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->symbolMatrix:Landroid/graphics/Matrix;

    iget v5, v3, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->rotation:F

    int-to-float v6, v1

    int-to-float v7, v2

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 92
    iget-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->symbolMatrix:Landroid/graphics/Matrix;

    iget v5, v3, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    int-to-float v6, v1

    sub-float/2addr v5, v6

    iget v6, v3, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->y:F

    int-to-float v7, v2

    sub-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 98
    .end local v1    # "pivotX":I
    .end local v2    # "pivotY":I
    :goto_1
    iget-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->canvas:Landroid/graphics/Canvas;

    iget-object v5, v3, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->symbol:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->symbolMatrix:Landroid/graphics/Matrix;

    sget-object v7, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->PAINT_BITMAP_FILTER:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 85
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 94
    :cond_0
    iget-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->symbolMatrix:Landroid/graphics/Matrix;

    iget v5, v3, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->rotation:F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 95
    iget-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->symbolMatrix:Landroid/graphics/Matrix;

    iget v5, v3, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    iget v6, v3, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->y:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 100
    .end local v3    # "symbolContainer":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;
    :cond_1
    return-void
.end method

.method final drawTileCoordinates(Lorg/mapsforge/core/Tile;)V
    .locals 3
    .param p1, "tile"    # Lorg/mapsforge/core/Tile;

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "X: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p1, Lorg/mapsforge/core/Tile;->tileX:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-direct {p0, v0, v1}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->drawTileCoordinate(Ljava/lang/String;I)V

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Y: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p1, Lorg/mapsforge/core/Tile;->tileY:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-direct {p0, v0, v1}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->drawTileCoordinate(Ljava/lang/String;I)V

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Z: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, p1, Lorg/mapsforge/core/Tile;->zoomLevel:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5a

    invoke-direct {p0, v0, v1}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->drawTileCoordinate(Ljava/lang/String;I)V

    .line 106
    return-void
.end method

.method final drawTileFrame()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->canvas:Landroid/graphics/Canvas;

    sget-object v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->TILE_FRAME:[F

    sget-object v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->PAINT_TILE_FRAME:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 110
    return-void
.end method

.method final drawWayNames(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/WayTextContainer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "wayTextContainers":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/WayTextContainer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .local v7, "index":I
    :goto_0
    if-ltz v7, :cond_1

    .line 114
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/WayTextContainer;

    .line 115
    .local v9, "wayTextContainer":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/WayTextContainer;
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 117
    iget-object v8, v9, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/WayTextContainer;->coordinates:[F

    .line 118
    .local v8, "textCoordinates":[F
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->path:Landroid/graphics/Path;

    const/4 v1, 0x0

    aget v1, v8, v1

    const/4 v2, 0x1

    aget v2, v8, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 119
    const/4 v6, 0x2

    .local v6, "i":I
    :goto_1
    array-length v0, v8

    if-ge v6, v0, :cond_0

    .line 120
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->path:Landroid/graphics/Path;

    aget v1, v8, v6

    add-int/lit8 v2, v6, 0x1

    aget v2, v8, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 119
    add-int/lit8 v6, v6, 0x2

    goto :goto_1

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, v9, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/WayTextContainer;->text:Ljava/lang/String;

    iget-object v2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->path:Landroid/graphics/Path;

    const/4 v3, 0x0

    const/high16 v4, 0x40400000    # 3.0f

    iget-object v5, v9, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/WayTextContainer;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 113
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 124
    .end local v6    # "i":I
    .end local v8    # "textCoordinates":[F
    .end local v9    # "wayTextContainer":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/WayTextContainer;
    :cond_1
    return-void
.end method

.method final drawWays(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapePaintContainer;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "drawWays":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/util/List<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapePaintContainer;>;>;>;"
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v9

    .line 129
    .local v9, "levelsPerLayer":I
    const/4 v6, 0x0

    .local v6, "layer":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "layers":I
    :goto_0
    if-ge v6, v7, :cond_4

    .line 130
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 132
    .local v11, "shapePaintContainers":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapePaintContainer;>;>;"
    const/4 v8, 0x0

    .local v8, "level":I
    :goto_1
    if-ge v8, v9, :cond_3

    .line 133
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 135
    .local v12, "wayList":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapePaintContainer;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v4, v13, -0x1

    .local v4, "index":I
    :goto_2
    if-ltz v4, :cond_2

    .line 136
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapePaintContainer;

    .line 137
    .local v10, "shapePaintContainer":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapePaintContainer;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->path:Landroid/graphics/Path;

    invoke-virtual {v13}, Landroid/graphics/Path;->rewind()V

    .line 139
    sget-object v13, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer$1;->$SwitchMap$org$mapsforge$android$maps$mapgenerator$databaserenderer$ShapeType:[I

    iget-object v14, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapePaintContainer;->shapeContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeContainer;

    invoke-interface {v14}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeContainer;->getShapeType()Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;

    move-result-object v14

    invoke-virtual {v14}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeType;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    .line 160
    :cond_0
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->path:Landroid/graphics/Path;

    iget-object v15, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapePaintContainer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 135
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 141
    :pswitch_0
    iget-object v1, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapePaintContainer;->shapeContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeContainer;

    check-cast v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CircleContainer;

    .line 142
    .local v1, "circleContainer":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CircleContainer;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->path:Landroid/graphics/Path;

    iget v14, v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CircleContainer;->x:F

    iget v15, v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CircleContainer;->y:F

    iget v0, v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CircleContainer;->radius:F

    move/from16 v16, v0

    sget-object v17, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_3

    .line 147
    .end local v1    # "circleContainer":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CircleContainer;
    :pswitch_1
    iget-object v13, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapePaintContainer;->shapeContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeContainer;

    check-cast v13, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/WayContainer;

    .line 148
    iget-object v2, v13, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/WayContainer;->coordinates:[[F

    .line 149
    .local v2, "coordinates":[[F
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_4
    array-length v13, v2

    if-ge v5, v13, :cond_0

    .line 151
    aget-object v13, v2, v5

    array-length v13, v13

    const/4 v14, 0x2

    if-le v13, v14, :cond_1

    .line 152
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->path:Landroid/graphics/Path;

    aget-object v14, v2, v5

    const/4 v15, 0x0

    aget v14, v14, v15

    aget-object v15, v2, v5

    const/16 v16, 0x1

    aget v15, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 153
    const/4 v3, 0x2

    .local v3, "i":I
    :goto_5
    aget-object v13, v2, v5

    array-length v13, v13

    if-ge v3, v13, :cond_1

    .line 154
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->path:Landroid/graphics/Path;

    aget-object v14, v2, v5

    aget v14, v14, v3

    aget-object v15, v2, v5

    add-int/lit8 v16, v3, 0x1

    aget v15, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 153
    add-int/lit8 v3, v3, 0x2

    goto :goto_5

    .line 149
    .end local v3    # "i":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 132
    .end local v2    # "coordinates":[[F
    .end local v5    # "j":I
    .end local v10    # "shapePaintContainer":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapePaintContainer;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 129
    .end local v4    # "index":I
    .end local v12    # "wayList":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapePaintContainer;>;"
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 164
    .end local v8    # "level":I
    .end local v11    # "shapePaintContainers":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapePaintContainer;>;>;"
    :cond_4
    return-void

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method final fill(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 168
    return-void
.end method

.method final setCanvasBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 171
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 172
    return-void
.end method
