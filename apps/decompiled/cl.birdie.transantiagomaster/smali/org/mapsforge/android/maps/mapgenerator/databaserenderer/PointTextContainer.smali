.class final Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;
.super Ljava/lang/Object;
.source "PointTextContainer.java"


# instance fields
.field final boundary:Landroid/graphics/Rect;

.field final paintBack:Landroid/graphics/Paint;

.field final paintFront:Landroid/graphics/Paint;

.field symbol:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

.field final text:Ljava/lang/String;

.field x:F

.field y:F


# direct methods
.method constructor <init>(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "paintFront"    # Landroid/graphics/Paint;

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->text:Ljava/lang/String;

    .line 43
    iput p2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    .line 44
    iput p3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    .line 45
    iput-object p4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->paintFront:Landroid/graphics/Paint;

    .line 46
    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->paintBack:Landroid/graphics/Paint;

    .line 47
    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->symbol:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {p4, p1, v0, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 51
    return-void
.end method

.method constructor <init>(Ljava/lang/String;FFLandroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "paintFront"    # Landroid/graphics/Paint;
    .param p5, "paintBack"    # Landroid/graphics/Paint;

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->text:Ljava/lang/String;

    .line 69
    iput p2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    .line 70
    iput p3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    .line 71
    iput-object p4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->paintFront:Landroid/graphics/Paint;

    .line 72
    iput-object p5, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->paintBack:Landroid/graphics/Paint;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->symbol:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    .line 76
    if-eqz p5, :cond_0

    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {p5, p1, v2, v0, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {p4, p1, v2, v0, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;FFLandroid/graphics/Paint;Landroid/graphics/Paint;Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "paintFront"    # Landroid/graphics/Paint;
    .param p5, "paintBack"    # Landroid/graphics/Paint;
    .param p6, "symbol"    # Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->text:Ljava/lang/String;

    .line 102
    iput p2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    .line 103
    iput p3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    .line 104
    iput-object p4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->paintFront:Landroid/graphics/Paint;

    .line 105
    iput-object p5, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->paintBack:Landroid/graphics/Paint;

    .line 106
    iput-object p6, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->symbol:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    .line 109
    if-eqz p5, :cond_0

    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {p5, p1, v2, v0, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {p4, p1, v2, v0, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    goto :goto_0
.end method
