.class public Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;
.super Ljava/lang/Object;
.source "DatabaseRenderer.java"

# interfaces
.implements Lorg/mapsforge/android/maps/mapgenerator/MapGenerator;
.implements Lorg/mapsforge/android/maps/rendertheme/RenderCallback;
.implements Lorg/mapsforge/map/reader/MapDatabaseCallback;


# static fields
.field private static final DEFAULT_START_ZOOM_LEVEL:Ljava/lang/Byte;

.field private static final LOG:Ljava/util/logging/Logger;

.field private static final PAINT_WATER_TILE_HIGHTLIGHT:Landroid/graphics/Paint;

.field private static final TAG_NATURAL_WATER:Lorg/mapsforge/core/Tag;

.field private static final WATER_TILE_COORDINATES:[[F


# instance fields
.field private final areaLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final canvasRasterer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;

.field private coordinates:[[F

.field private currentTile:Lorg/mapsforge/core/Tile;

.field private drawingLayer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapePaintContainer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final labelPlacement:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;

.field private mapDatabase:Lorg/mapsforge/map/reader/MapDatabase;

.field private nodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;",
            ">;"
        }
    .end annotation
.end field

.field private poiX:F

.field private poiY:F

.field private final pointSymbols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;",
            ">;"
        }
    .end annotation
.end field

.field private previousJobTheme:Lorg/mapsforge/android/maps/mapgenerator/JobTheme;

.field private previousTextScale:F

.field private previousZoomLevel:B

.field private renderTheme:Lorg/mapsforge/android/maps/rendertheme/RenderTheme;

.field private shapeContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeContainer;

.field private final tagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/core/Tag;",
            ">;"
        }
    .end annotation
.end field

.field private final wayNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/WayTextContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final waySymbols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final ways:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapePaintContainer;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 49
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->DEFAULT_START_ZOOM_LEVEL:Ljava/lang/Byte;

    .line 51
    const-class v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->LOG:Ljava/util/logging/Logger;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->PAINT_WATER_TILE_HIGHTLIGHT:Landroid/graphics/Paint;

    .line 55
    new-instance v0, Lorg/mapsforge/core/Tag;

    const-string v1, "natural"

    const-string v2, "water"

    invoke-direct {v0, v1, v2}, Lorg/mapsforge/core/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->TAG_NATURAL_WATER:Lorg/mapsforge/core/Tag;

    .line 56
    new-array v0, v3, [[F

    const/4 v1, 0x0

    const/16 v2, 0xa

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    sput-object v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->WATER_TILE_COORDINATES:[[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x43800000    # 256.0f
        0x0
        0x43800000    # 256.0f
        0x43800000    # 256.0f
        0x0
        0x43800000    # 256.0f
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x40

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;

    invoke-direct {v0}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->canvasRasterer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;

    .line 119
    new-instance v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;

    invoke-direct {v0}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->labelPlacement:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->ways:Ljava/util/List;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->wayNames:Ljava/util/List;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->nodes:Ljava/util/List;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->areaLabels:Ljava/util/List;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->waySymbols:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->pointSymbols:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->tagList:Ljava/util/List;

    .line 129
    sget-object v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->PAINT_WATER_TILE_HIGHTLIGHT:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    sget-object v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->PAINT_WATER_TILE_HIGHTLIGHT:Landroid/graphics/Paint;

    const v1, -0xff0001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    return-void
.end method

.method private clearLists()V
    .locals 4

    .prologue
    .line 328
    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->ways:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 329
    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->ways:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 330
    .local v1, "innerWayList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapePaintContainer;>;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_0

    .line 331
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 330
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 328
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 335
    .end local v1    # "innerWayList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapePaintContainer;>;>;"
    .end local v2    # "j":I
    :cond_1
    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->areaLabels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 336
    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->nodes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 337
    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->pointSymbols:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 338
    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->wayNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 339
    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->waySymbols:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 340
    return-void
.end method

.method private static getRenderTheme(Lorg/mapsforge/android/maps/mapgenerator/JobTheme;)Lorg/mapsforge/android/maps/rendertheme/RenderTheme;
    .locals 6
    .param p0, "jobTheme"    # Lorg/mapsforge/android/maps/mapgenerator/JobTheme;

    .prologue
    const/4 v3, 0x0

    .line 61
    const/4 v1, 0x0

    .line 63
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-interface {p0}, Lorg/mapsforge/android/maps/mapgenerator/JobTheme;->getRenderThemeAsStream()Ljava/io/InputStream;

    move-result-object v1

    .line 64
    invoke-static {v1}, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->getRenderTheme(Ljava/io/InputStream;)Lorg/mapsforge/android/maps/rendertheme/RenderTheme;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 73
    if-eqz v1, :cond_0

    .line 74
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    :cond_0
    :goto_0
    return-object v2

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->LOG:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 65
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 66
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_2
    sget-object v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    if-eqz v1, :cond_1

    .line 74
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :cond_1
    :goto_1
    move-object v2, v3

    .line 80
    goto :goto_0

    .line 76
    .restart local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v0

    .line 77
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v2, v4, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 67
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 68
    .local v0, "e":Lorg/xml/sax/SAXException;
    :try_start_4
    sget-object v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 73
    if-eqz v1, :cond_1

    .line 74
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 76
    :catch_4
    move-exception v0

    .line 77
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v2, v4, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 69
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 70
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_6
    sget-object v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 73
    if-eqz v1, :cond_1

    .line 74
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_1

    .line 76
    :catch_6
    move-exception v0

    .line 77
    sget-object v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v2, v4, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 72
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 73
    if-eqz v1, :cond_2

    .line 74
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 78
    :cond_2
    :goto_2
    throw v2

    .line 76
    :catch_7
    move-exception v0

    .line 77
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->LOG:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private static getValidLayer(B)B
    .locals 1
    .param p0, "layer"    # B

    .prologue
    .line 84
    if-gez p0, :cond_1

    .line 85
    const/4 p0, 0x0

    .line 89
    .end local p0    # "layer":B
    :cond_0
    :goto_0
    return p0

    .line 86
    .restart local p0    # "layer":B
    :cond_1
    const/16 v0, 0xb

    if-lt p0, v0, :cond_0

    .line 87
    const/16 p0, 0xa

    goto :goto_0
.end method

.method private scaleLatitude(F)F
    .locals 4
    .param p1, "latitude"    # F

    .prologue
    .line 363
    float-to-double v0, p1

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    iget-object v2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->currentTile:Lorg/mapsforge/core/Tile;

    iget-byte v2, v2, Lorg/mapsforge/core/Tile;->zoomLevel:B

    invoke-static {v0, v1, v2}, Lorg/mapsforge/core/MercatorProjection;->latitudeToPixelY(DB)D

    move-result-wide v0

    iget-object v2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->currentTile:Lorg/mapsforge/core/Tile;

    invoke-virtual {v2}, Lorg/mapsforge/core/Tile;->getPixelY()J

    move-result-wide v2

    long-to-double v2, v2

    sub-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private scaleLongitude(F)F
    .locals 4
    .param p1, "longitude"    # F

    .prologue
    .line 375
    float-to-double v0, p1

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    iget-object v2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->currentTile:Lorg/mapsforge/core/Tile;

    iget-byte v2, v2, Lorg/mapsforge/core/Tile;->zoomLevel:B

    invoke-static {v0, v1, v2}, Lorg/mapsforge/core/MercatorProjection;->longitudeToPixelX(DB)D

    move-result-wide v0

    iget-object v2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->currentTile:Lorg/mapsforge/core/Tile;

    invoke-virtual {v2}, Lorg/mapsforge/core/Tile;->getPixelX()J

    move-result-wide v2

    long-to-double v2, v2

    sub-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public final executeJob(Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;Landroid/graphics/Bitmap;)Z
    .locals 9
    .param p1, "mapGeneratorJob"    # Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 142
    iget-object v4, p1, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->tile:Lorg/mapsforge/core/Tile;

    iput-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->currentTile:Lorg/mapsforge/core/Tile;

    .line 144
    iget-object v4, p1, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->jobParameters:Lorg/mapsforge/android/maps/mapgenerator/JobParameters;

    iget-object v0, v4, Lorg/mapsforge/android/maps/mapgenerator/JobParameters;->jobTheme:Lorg/mapsforge/android/maps/mapgenerator/JobTheme;

    .line 145
    .local v0, "jobTheme":Lorg/mapsforge/android/maps/mapgenerator/JobTheme;
    iget-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->previousJobTheme:Lorg/mapsforge/android/maps/mapgenerator/JobTheme;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 146
    invoke-static {v0}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->getRenderTheme(Lorg/mapsforge/android/maps/mapgenerator/JobTheme;)Lorg/mapsforge/android/maps/rendertheme/RenderTheme;

    move-result-object v4

    iput-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->renderTheme:Lorg/mapsforge/android/maps/rendertheme/RenderTheme;

    .line 147
    iget-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->renderTheme:Lorg/mapsforge/android/maps/rendertheme/RenderTheme;

    if-nez v4, :cond_0

    .line 148
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->previousJobTheme:Lorg/mapsforge/android/maps/mapgenerator/JobTheme;

    .line 193
    :goto_0
    return v3

    .line 151
    :cond_0
    iget-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->renderTheme:Lorg/mapsforge/android/maps/rendertheme/RenderTheme;

    invoke-virtual {v4}, Lorg/mapsforge/android/maps/rendertheme/RenderTheme;->getLevels()I

    move-result v6

    iget-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->ways:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    const/16 v4, 0xa

    move v5, v4

    :goto_1
    if-ltz v5, :cond_2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    add-int/lit8 v4, v6, -0x1

    :goto_2
    if-ltz v4, :cond_1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->ways:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v5, -0x1

    int-to-byte v4, v4

    move v5, v4

    goto :goto_1

    .line 152
    :cond_2
    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->previousJobTheme:Lorg/mapsforge/android/maps/mapgenerator/JobTheme;

    .line 153
    const/16 v4, -0x80

    iput-byte v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->previousZoomLevel:B

    .line 156
    :cond_3
    iget-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->currentTile:Lorg/mapsforge/core/Tile;

    iget-byte v2, v4, Lorg/mapsforge/core/Tile;->zoomLevel:B

    .line 157
    .local v2, "zoomLevel":B
    iget-byte v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->previousZoomLevel:B

    if-eq v2, v4, :cond_4

    .line 158
    add-int/lit8 v4, v2, -0xc

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->renderTheme:Lorg/mapsforge/android/maps/rendertheme/RenderTheme;

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    int-to-double v7, v3

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v3, v5

    invoke-virtual {v4, v3}, Lorg/mapsforge/android/maps/rendertheme/RenderTheme;->scaleStrokeWidth(F)V

    .line 159
    iput-byte v2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->previousZoomLevel:B

    .line 162
    :cond_4
    iget-object v3, p1, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->jobParameters:Lorg/mapsforge/android/maps/mapgenerator/JobParameters;

    iget v1, v3, Lorg/mapsforge/android/maps/mapgenerator/JobParameters;->textScale:F

    .line 163
    .local v1, "textScale":F
    iget v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->previousTextScale:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_5

    .line 164
    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->renderTheme:Lorg/mapsforge/android/maps/rendertheme/RenderTheme;

    invoke-virtual {v3, v1}, Lorg/mapsforge/android/maps/rendertheme/RenderTheme;->scaleTextSize(F)V

    .line 165
    iput v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->previousTextScale:F

    .line 168
    :cond_5
    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->mapDatabase:Lorg/mapsforge/map/reader/MapDatabase;

    if-eqz v3, :cond_6

    .line 169
    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->mapDatabase:Lorg/mapsforge/map/reader/MapDatabase;

    iget-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->currentTile:Lorg/mapsforge/core/Tile;

    invoke-virtual {v3, v4, p0}, Lorg/mapsforge/map/reader/MapDatabase;->executeQuery(Lorg/mapsforge/core/Tile;Lorg/mapsforge/map/reader/MapDatabaseCallback;)V

    .line 172
    :cond_6
    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->labelPlacement:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;

    iget-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->nodes:Ljava/util/List;

    iget-object v5, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->pointSymbols:Ljava/util/List;

    iget-object v6, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->areaLabels:Ljava/util/List;

    iget-object v7, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->currentTile:Lorg/mapsforge/core/Tile;

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->placeLabels(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/mapsforge/core/Tile;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->nodes:Ljava/util/List;

    .line 174
    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->canvasRasterer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;

    invoke-virtual {v3, p2}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->setCanvasBitmap(Landroid/graphics/Bitmap;)V

    .line 175
    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->canvasRasterer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;

    iget-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->renderTheme:Lorg/mapsforge/android/maps/rendertheme/RenderTheme;

    invoke-virtual {v4}, Lorg/mapsforge/android/maps/rendertheme/RenderTheme;->getMapBackground()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->fill(I)V

    .line 176
    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->canvasRasterer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;

    iget-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->ways:Ljava/util/List;

    invoke-virtual {v3, v4}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->drawWays(Ljava/util/List;)V

    .line 177
    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->canvasRasterer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;

    iget-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->waySymbols:Ljava/util/List;

    invoke-virtual {v3, v4}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->drawSymbols(Ljava/util/List;)V

    .line 178
    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->canvasRasterer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;

    iget-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->pointSymbols:Ljava/util/List;

    invoke-virtual {v3, v4}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->drawSymbols(Ljava/util/List;)V

    .line 179
    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->canvasRasterer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;

    iget-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->wayNames:Ljava/util/List;

    invoke-virtual {v3, v4}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->drawWayNames(Ljava/util/List;)V

    .line 180
    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->canvasRasterer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;

    iget-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->nodes:Ljava/util/List;

    invoke-virtual {v3, v4}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->drawNodes(Ljava/util/List;)V

    .line 181
    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->canvasRasterer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;

    iget-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->areaLabels:Ljava/util/List;

    invoke-virtual {v3, v4}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->drawNodes(Ljava/util/List;)V

    .line 183
    iget-object v3, p1, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->debugSettings:Lorg/mapsforge/android/maps/DebugSettings;

    iget-boolean v3, v3, Lorg/mapsforge/android/maps/DebugSettings;->drawTileFrames:Z

    if-eqz v3, :cond_7

    .line 184
    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->canvasRasterer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;

    invoke-virtual {v3}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->drawTileFrame()V

    .line 187
    :cond_7
    iget-object v3, p1, Lorg/mapsforge/android/maps/mapgenerator/MapGeneratorJob;->debugSettings:Lorg/mapsforge/android/maps/DebugSettings;

    iget-boolean v3, v3, Lorg/mapsforge/android/maps/DebugSettings;->drawTileCoordinates:Z

    if-eqz v3, :cond_8

    .line 188
    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->canvasRasterer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;

    iget-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->currentTile:Lorg/mapsforge/core/Tile;

    invoke-virtual {v3, v4}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CanvasRasterer;->drawTileCoordinates(Lorg/mapsforge/core/Tile;)V

    .line 191
    :cond_8
    invoke-direct {p0}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->clearLists()V

    .line 193
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public final getStartPoint()Lorg/mapsforge/core/GeoPoint;
    .locals 2

    .prologue
    .line 198
    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->mapDatabase:Lorg/mapsforge/map/reader/MapDatabase;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->mapDatabase:Lorg/mapsforge/map/reader/MapDatabase;

    invoke-virtual {v1}, Lorg/mapsforge/map/reader/MapDatabase;->hasOpenFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->mapDatabase:Lorg/mapsforge/map/reader/MapDatabase;

    invoke-virtual {v1}, Lorg/mapsforge/map/reader/MapDatabase;->getMapFileInfo()Lorg/mapsforge/map/reader/header/MapFileInfo;

    move-result-object v0

    .line 200
    .local v0, "mapFileInfo":Lorg/mapsforge/map/reader/header/MapFileInfo;
    iget-object v1, v0, Lorg/mapsforge/map/reader/header/MapFileInfo;->startPosition:Lorg/mapsforge/core/GeoPoint;

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, v0, Lorg/mapsforge/map/reader/header/MapFileInfo;->startPosition:Lorg/mapsforge/core/GeoPoint;

    .line 207
    .end local v0    # "mapFileInfo":Lorg/mapsforge/map/reader/header/MapFileInfo;
    :goto_0
    return-object v1

    .line 202
    .restart local v0    # "mapFileInfo":Lorg/mapsforge/map/reader/header/MapFileInfo;
    :cond_0
    iget-object v1, v0, Lorg/mapsforge/map/reader/header/MapFileInfo;->mapCenter:Lorg/mapsforge/core/GeoPoint;

    if-eqz v1, :cond_1

    .line 203
    iget-object v1, v0, Lorg/mapsforge/map/reader/header/MapFileInfo;->mapCenter:Lorg/mapsforge/core/GeoPoint;

    goto :goto_0

    .line 207
    .end local v0    # "mapFileInfo":Lorg/mapsforge/map/reader/header/MapFileInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getStartZoomLevel()Ljava/lang/Byte;
    .locals 2

    .prologue
    .line 212
    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->mapDatabase:Lorg/mapsforge/map/reader/MapDatabase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->mapDatabase:Lorg/mapsforge/map/reader/MapDatabase;

    invoke-virtual {v1}, Lorg/mapsforge/map/reader/MapDatabase;->hasOpenFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->mapDatabase:Lorg/mapsforge/map/reader/MapDatabase;

    invoke-virtual {v1}, Lorg/mapsforge/map/reader/MapDatabase;->getMapFileInfo()Lorg/mapsforge/map/reader/header/MapFileInfo;

    move-result-object v0

    .line 214
    .local v0, "mapFileInfo":Lorg/mapsforge/map/reader/header/MapFileInfo;
    iget-object v1, v0, Lorg/mapsforge/map/reader/header/MapFileInfo;->startZoomLevel:Ljava/lang/Byte;

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, v0, Lorg/mapsforge/map/reader/header/MapFileInfo;->startZoomLevel:Ljava/lang/Byte;

    .line 219
    .end local v0    # "mapFileInfo":Lorg/mapsforge/map/reader/header/MapFileInfo;
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->DEFAULT_START_ZOOM_LEVEL:Ljava/lang/Byte;

    goto :goto_0
.end method

.method public final getZoomLevelMax()B
    .locals 1

    .prologue
    .line 224
    const/16 v0, 0x16

    return v0
.end method

.method public final renderArea(Landroid/graphics/Paint;I)V
    .locals 3
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "level"    # I

    .prologue
    .line 229
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->drawingLayer:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapePaintContainer;

    iget-object v2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->shapeContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeContainer;

    invoke-direct {v1, v2, p1}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapePaintContainer;-><init>(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeContainer;Landroid/graphics/Paint;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    return-void
.end method

.method public final renderAreaCaption$47a30cb(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 8
    .param p1, "caption"    # Ljava/lang/String;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "stroke"    # Landroid/graphics/Paint;

    .prologue
    const/4 v1, 0x0

    .line 234
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->coordinates:[[F

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/GeometryUtils;->calculateCenterOfBoundingBox([F)[F

    move-result-object v6

    .line 235
    .local v6, "centerPosition":[F
    iget-object v7, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->areaLabels:Ljava/util/List;

    new-instance v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    aget v2, v6, v1

    const/4 v1, 0x1

    aget v3, v6, v1

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;-><init>(Ljava/lang/String;FFLandroid/graphics/Paint;Landroid/graphics/Paint;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    return-void
.end method

.method public final renderAreaSymbol(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "symbol"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 240
    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->coordinates:[[F

    aget-object v1, v1, v3

    invoke-static {v1}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/GeometryUtils;->calculateCenterOfBoundingBox([F)[F

    move-result-object v0

    .line 241
    .local v0, "centerPosition":[F
    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->pointSymbols:Ljava/util/List;

    new-instance v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    aget v3, v0, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    shr-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-direct {v2, p1, v3, v4}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;-><init>(Landroid/graphics/Bitmap;FF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    return-void
.end method

.method public final renderPointOfInterest(BIILjava/util/List;)V
    .locals 2
    .param p1, "layer"    # B
    .param p2, "latitude"    # I
    .param p3, "longitude"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BII",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/core/Tag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p4, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/Tag;>;"
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->ways:Ljava/util/List;

    invoke-static {p1}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->getValidLayer(B)B

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->drawingLayer:Ljava/util/List;

    .line 248
    int-to-float v0, p3

    invoke-direct {p0, v0}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->scaleLongitude(F)F

    move-result v0

    iput v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->poiX:F

    .line 249
    int-to-float v0, p2

    invoke-direct {p0, v0}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->scaleLatitude(F)F

    move-result v0

    iput v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->poiY:F

    .line 250
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->renderTheme:Lorg/mapsforge/android/maps/rendertheme/RenderTheme;

    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->currentTile:Lorg/mapsforge/core/Tile;

    iget-byte v1, v1, Lorg/mapsforge/core/Tile;->zoomLevel:B

    invoke-virtual {v0, p0, p4, v1}, Lorg/mapsforge/android/maps/rendertheme/RenderTheme;->matchNode(Lorg/mapsforge/android/maps/rendertheme/RenderCallback;Ljava/util/List;B)V

    .line 251
    return-void
.end method

.method public final renderPointOfInterestCaption(Ljava/lang/String;FLandroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 7
    .param p1, "caption"    # Ljava/lang/String;
    .param p2, "verticalOffset"    # F
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p4, "stroke"    # Landroid/graphics/Paint;

    .prologue
    .line 255
    iget-object v6, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->nodes:Ljava/util/List;

    new-instance v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget v2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->poiX:F

    iget v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->poiY:F

    add-float v3, v1, p2

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;-><init>(Ljava/lang/String;FFLandroid/graphics/Paint;Landroid/graphics/Paint;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    return-void
.end method

.method public final renderPointOfInterestCircle(FLandroid/graphics/Paint;I)V
    .locals 5
    .param p1, "radius"    # F
    .param p2, "outline"    # Landroid/graphics/Paint;
    .param p3, "level"    # I

    .prologue
    .line 260
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->drawingLayer:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapePaintContainer;

    new-instance v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CircleContainer;

    iget v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->poiX:F

    iget v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->poiY:F

    invoke-direct {v2, v3, v4, p1}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/CircleContainer;-><init>(FFF)V

    invoke-direct {v1, v2, p2}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapePaintContainer;-><init>(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeContainer;Landroid/graphics/Paint;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    return-void
.end method

.method public final renderPointOfInterestSymbol(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "symbol"    # Landroid/graphics/Bitmap;

    .prologue
    .line 266
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->pointSymbols:Ljava/util/List;

    new-instance v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget v2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->poiX:F

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->poiY:F

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-direct {v1, p1, v2, v3}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;-><init>(Landroid/graphics/Bitmap;FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    return-void
.end method

.method public final renderWaterBackground()V
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->tagList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 273
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->tagList:Ljava/util/List;

    sget-object v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->TAG_NATURAL_WATER:Lorg/mapsforge/core/Tag;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    sget-object v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->WATER_TILE_COORDINATES:[[F

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->coordinates:[[F

    .line 275
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->renderTheme:Lorg/mapsforge/android/maps/rendertheme/RenderTheme;

    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->tagList:Ljava/util/List;

    iget-object v2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->currentTile:Lorg/mapsforge/core/Tile;

    iget-byte v2, v2, Lorg/mapsforge/core/Tile;->zoomLevel:B

    invoke-virtual {v0, p0, v1, v2}, Lorg/mapsforge/android/maps/rendertheme/RenderTheme;->matchClosedWay(Lorg/mapsforge/android/maps/rendertheme/RenderCallback;Ljava/util/List;B)V

    .line 276
    return-void
.end method

.method public final renderWay(Landroid/graphics/Paint;I)V
    .locals 3
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "level"    # I

    .prologue
    .line 301
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->drawingLayer:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapePaintContainer;

    iget-object v2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->shapeContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeContainer;

    invoke-direct {v1, v2, p1}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapePaintContainer;-><init>(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeContainer;Landroid/graphics/Paint;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    return-void
.end method

.method public final renderWay$262a1f5d(BLjava/util/List;[[F)V
    .locals 8
    .param p1, "layer"    # B
    .param p3, "wayNodes"    # [[F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/core/Tag;",
            ">;[[F)V"
        }
    .end annotation

    .prologue
    .local p2, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/Tag;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 280
    iget-object v2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->ways:Ljava/util/List;

    invoke-static {p1}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->getValidLayer(B)B

    move-result v5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput-object v2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->drawingLayer:Ljava/util/List;

    .line 283
    iput-object p3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->coordinates:[[F

    .line 284
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->coordinates:[[F

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 285
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->coordinates:[[F

    aget-object v2, v2, v0

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 286
    iget-object v2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->coordinates:[[F

    aget-object v2, v2, v0

    iget-object v5, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->coordinates:[[F

    aget-object v5, v5, v0

    aget v5, v5, v1

    invoke-direct {p0, v5}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->scaleLongitude(F)F

    move-result v5

    aput v5, v2, v1

    .line 287
    iget-object v2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->coordinates:[[F

    aget-object v2, v2, v0

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->coordinates:[[F

    aget-object v6, v6, v0

    add-int/lit8 v7, v1, 0x1

    aget v6, v6, v7

    invoke-direct {p0, v6}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->scaleLatitude(F)F

    move-result v6

    aput v6, v2, v5

    .line 285
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 284
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    .end local v1    # "j":I
    :cond_1
    new-instance v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/WayContainer;

    iget-object v5, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->coordinates:[[F

    invoke-direct {v2, v5}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/WayContainer;-><init>([[F)V

    iput-object v2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->shapeContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ShapeContainer;

    .line 292
    iget-object v2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->coordinates:[[F

    aget-object v2, v2, v4

    aget v5, v2, v4

    array-length v6, v2

    add-int/lit8 v6, v6, -0x2

    aget v6, v2, v6

    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_2

    aget v5, v2, v3

    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    aget v2, v2, v6

    invoke-static {v5, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    if-eqz v2, :cond_3

    .line 293
    iget-object v2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->renderTheme:Lorg/mapsforge/android/maps/rendertheme/RenderTheme;

    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->currentTile:Lorg/mapsforge/core/Tile;

    iget-byte v3, v3, Lorg/mapsforge/core/Tile;->zoomLevel:B

    invoke-virtual {v2, p0, p2, v3}, Lorg/mapsforge/android/maps/rendertheme/RenderTheme;->matchClosedWay(Lorg/mapsforge/android/maps/rendertheme/RenderCallback;Ljava/util/List;B)V

    .line 297
    :goto_3
    return-void

    :cond_2
    move v2, v4

    .line 292
    goto :goto_2

    .line 295
    :cond_3
    iget-object v2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->renderTheme:Lorg/mapsforge/android/maps/rendertheme/RenderTheme;

    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->currentTile:Lorg/mapsforge/core/Tile;

    iget-byte v3, v3, Lorg/mapsforge/core/Tile;->zoomLevel:B

    invoke-virtual {v2, p0, p2, v3}, Lorg/mapsforge/android/maps/rendertheme/RenderTheme;->matchLinearWay(Lorg/mapsforge/android/maps/rendertheme/RenderCallback;Ljava/util/List;B)V

    goto :goto_3
.end method

.method public final renderWaySymbol(Landroid/graphics/Bitmap;ZZ)V
    .locals 14
    .param p1, "symbolBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "alignCenter"    # Z
    .param p3, "repeatSymbol"    # Z

    .prologue
    .line 306
    iget-object v11, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->coordinates:[[F

    iget-object v12, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->waySymbols:Ljava/util/List;

    const/16 v3, 0x1e

    const/4 v0, 0x0

    aget-object v0, v11, v0

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v0, 0x0

    aget-object v0, v11, v0

    const/4 v1, 0x1

    aget v1, v0, v1

    const/4 v0, 0x2

    move v6, v0

    move v0, v1

    move v1, v2

    move v2, v3

    :goto_0
    const/4 v3, 0x0

    aget-object v3, v11, v3

    array-length v3, v3

    if-ge v6, v3, :cond_2

    const/4 v3, 0x0

    aget-object v3, v11, v3

    aget v8, v3, v6

    const/4 v3, 0x0

    aget-object v3, v11, v3

    add-int/lit8 v4, v6, 0x1

    aget v7, v3, v4

    sub-float v4, v8, v1

    sub-float v3, v7, v0

    mul-float v5, v4, v4

    mul-float v9, v3, v3

    add-float/2addr v5, v9

    float-to-double v9, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v5, v9

    move v9, v5

    move v10, v2

    move v2, v1

    move v1, v4

    move v13, v3

    move v3, v0

    move v0, v13

    :goto_1
    int-to-float v4, v10

    sub-float v4, v9, v4

    const/high16 v5, 0x41f00000    # 30.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    int-to-float v4, v10

    div-float/2addr v4, v9

    mul-float/2addr v1, v4

    add-float/2addr v2, v1

    mul-float/2addr v0, v4

    add-float/2addr v3, v0

    sub-float v0, v7, v3

    float-to-double v0, v0

    sub-float v4, v8, v2

    float-to-double v4, v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v5, v0

    new-instance v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    move-object v1, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;-><init>(Landroid/graphics/Bitmap;FFZF)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_2

    sub-float v1, v8, v2

    sub-float v0, v7, v3

    int-to-float v4, v10

    sub-float v4, v9, v4

    const/16 v5, 0xc8

    move v9, v4

    move v10, v5

    goto :goto_1

    :cond_0
    int-to-float v0, v10

    sub-float/2addr v0, v9

    float-to-int v1, v0

    const/16 v0, 0x1e

    if-ge v1, v0, :cond_1

    const/16 v1, 0x1e

    :cond_1
    add-int/lit8 v0, v6, 0x2

    move v6, v0

    move v2, v1

    move v1, v8

    move v0, v7

    goto :goto_0

    .line 307
    :cond_2
    return-void
.end method

.method public final renderWayText(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 14
    .param p1, "textKey"    # Ljava/lang/String;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "outline"    # Landroid/graphics/Paint;

    .prologue
    .line 311
    iget-object v7, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->coordinates:[[F

    iget-object v8, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->wayNames:Ljava/util/List;

    move-object/from16 v0, p2

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    add-float v9, v1, v2

    const/4 v4, 0x0

    const/4 v1, 0x0

    aget-object v1, v7, v1

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v1, 0x0

    aget-object v1, v7, v1

    const/4 v2, 0x1

    aget v2, v1, v2

    const/4 v1, 0x2

    move v6, v4

    move v4, v3

    :goto_0
    const/4 v3, 0x0

    aget-object v3, v7, v3

    array-length v3, v3

    if-ge v1, v3, :cond_3

    const/4 v3, 0x0

    aget-object v3, v7, v3

    aget v5, v3, v1

    const/4 v3, 0x0

    aget-object v3, v7, v3

    add-int/lit8 v10, v1, 0x1

    aget v3, v3, v10

    sub-float v10, v5, v4

    sub-float v11, v3, v2

    mul-float/2addr v10, v10

    mul-float/2addr v11, v11

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    if-lez v6, :cond_0

    int-to-double v12, v6

    sub-double v10, v12, v10

    double-to-int v2, v10

    :goto_1
    add-int/lit8 v1, v1, 0x2

    move v4, v5

    move v6, v2

    move v2, v3

    goto :goto_0

    :cond_0
    float-to-double v12, v9

    cmpl-double v10, v10, v12

    if-lez v10, :cond_4

    const/4 v6, 0x4

    new-array v6, v6, [F

    cmpg-float v10, v4, v5

    if-gtz v10, :cond_2

    const/4 v10, 0x0

    aput v4, v6, v10

    const/4 v4, 0x1

    aput v2, v6, v4

    const/4 v2, 0x2

    aput v5, v6, v2

    const/4 v2, 0x3

    aput v3, v6, v2

    :goto_2
    new-instance v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/WayTextContainer;

    move-object/from16 v0, p2

    invoke-direct {v2, v6, p1, v0}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/WayTextContainer;-><init>([FLjava/lang/String;Landroid/graphics/Paint;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    new-instance v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/WayTextContainer;

    move-object/from16 v0, p3

    invoke-direct {v2, v6, p1, v0}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/WayTextContainer;-><init>([FLjava/lang/String;Landroid/graphics/Paint;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/16 v2, 0x1f4

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    aput v5, v6, v10

    const/4 v10, 0x1

    aput v3, v6, v10

    const/4 v10, 0x2

    aput v4, v6, v10

    const/4 v4, 0x3

    aput v2, v6, v4

    goto :goto_2

    .line 312
    :cond_3
    return-void

    :cond_4
    move v2, v6

    goto :goto_1
.end method

.method public final requiresInternetConnection()Z
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    return v0
.end method

.method public final setMapDatabase(Lorg/mapsforge/map/reader/MapDatabase;)V
    .locals 0
    .param p1, "mapDatabase"    # Lorg/mapsforge/map/reader/MapDatabase;

    .prologue
    .line 324
    iput-object p1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DatabaseRenderer;->mapDatabase:Lorg/mapsforge/map/reader/MapDatabase;

    .line 325
    return-void
.end method
