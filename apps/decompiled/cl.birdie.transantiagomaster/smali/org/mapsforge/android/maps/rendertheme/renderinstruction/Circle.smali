.class public final Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Circle;
.super Ljava/lang/Object;
.source "Circle.java"

# interfaces
.implements Lorg/mapsforge/android/maps/rendertheme/renderinstruction/RenderInstruction;


# instance fields
.field private final fill:Landroid/graphics/Paint;

.field private final level:I

.field private final outline:Landroid/graphics/Paint;

.field private final radius:F

.field private renderRadius:F

.field private final scaleRadius:Z

.field private final strokeWidth:F


# direct methods
.method private constructor <init>(Ljava/lang/Float;ZIIFI)V
    .locals 4
    .param p1, "radius"    # Ljava/lang/Float;
    .param p2, "scaleRadius"    # Z
    .param p3, "fill"    # I
    .param p4, "stroke"    # I
    .param p5, "strokeWidth"    # F
    .param p6, "level"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Circle;->radius:F

    .line 93
    iput-boolean p2, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Circle;->scaleRadius:Z

    .line 95
    if-nez p3, :cond_1

    .line 96
    iput-object v3, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Circle;->fill:Landroid/graphics/Paint;

    .line 103
    :goto_0
    if-nez p4, :cond_2

    .line 104
    iput-object v3, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Circle;->outline:Landroid/graphics/Paint;

    .line 111
    :goto_1
    iput p5, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Circle;->strokeWidth:F

    .line 112
    iput p6, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Circle;->level:I

    .line 114
    iget-boolean v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Circle;->scaleRadius:Z

    if-nez v0, :cond_0

    .line 115
    iget v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Circle;->radius:F

    iput v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Circle;->renderRadius:F

    .line 116
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Circle;->outline:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Circle;->outline:Landroid/graphics/Paint;

    iget v1, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Circle;->strokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 120
    :cond_0
    return-void

    .line 98
    :cond_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Circle;->fill:Landroid/graphics/Paint;

    .line 99
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Circle;->fill:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Circle;->fill:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 106
    :cond_2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Circle;->outline:Landroid/graphics/Paint;

    .line 107
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Circle;->outline:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Circle;->outline:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1
.end method

.method public static create(Ljava/lang/String;Lorg/xml/sax/Attributes;I)Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Circle;
    .locals 11
    .param p0, "elementName"    # Ljava/lang/String;
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .param p2, "level"    # I

    .prologue
    const/4 v6, 0x0

    .line 42
    const/4 v1, 0x0

    .line 43
    .local v1, "radius":Ljava/lang/Float;
    const/4 v2, 0x0

    .line 44
    .local v2, "scaleRadius":Z
    const/4 v3, 0x0

    .line 45
    .local v3, "fill":I
    const/4 v4, 0x0

    .line 46
    .local v4, "stroke":I
    const/4 v5, 0x0

    .line 48
    .local v5, "strokeWidth":F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v7, v0, :cond_5

    .line 49
    invoke-interface {p1, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v8

    .line 50
    .local v8, "name":Ljava/lang/String;
    invoke-interface {p1, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v9

    .line 52
    .local v9, "value":Ljava/lang/String;
    const-string v0, "r"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 48
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 54
    :cond_0
    const-string v0, "scale-radius"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    .line 56
    :cond_1
    const-string v0, "fill"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    .line 58
    :cond_2
    const-string v0, "stroke"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    .line 60
    :cond_3
    const-string v0, "stroke-width"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 61
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    goto :goto_1

    .line 63
    :cond_4
    invoke-static {p0, v8, v9, v7}, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->logUnknownAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 67
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_5
    if-nez v1, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "missing attribute r for element: "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "radius must not be negative: "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    cmpg-float v0, v5, v6

    if-gez v0, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "stroke-width must not be negative: "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_8
    new-instance v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Circle;

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Circle;-><init>(Ljava/lang/Float;ZIIFI)V

    return-object v0
.end method


# virtual methods
.method public final renderNode(Lorg/mapsforge/android/maps/rendertheme/RenderCallback;Ljava/util/List;)V
    .locals 3
    .param p1, "renderCallback"    # Lorg/mapsforge/android/maps/rendertheme/RenderCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapsforge/android/maps/rendertheme/RenderCallback;",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/core/Tag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p2, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/Tag;>;"
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Circle;->outline:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 130
    iget v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Circle;->renderRadius:F

    iget-object v1, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Circle;->outline:Landroid/graphics/Paint;

    iget v2, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Circle;->level:I

    invoke-interface {p1, v0, v1, v2}, Lorg/mapsforge/android/maps/rendertheme/RenderCallback;->renderPointOfInterestCircle(FLandroid/graphics/Paint;I)V

    .line 132
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Circle;->fill:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 133
    iget v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Circle;->renderRadius:F

    iget-object v1, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Circle;->fill:Landroid/graphics/Paint;

    iget v2, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Circle;->level:I

    invoke-interface {p1, v0, v1, v2}, Lorg/mapsforge/android/maps/rendertheme/RenderCallback;->renderPointOfInterestCircle(FLandroid/graphics/Paint;I)V

    .line 135
    :cond_1
    return-void
.end method

.method public final renderWay(Lorg/mapsforge/android/maps/rendertheme/RenderCallback;Ljava/util/List;)V
    .locals 0
    .param p1, "renderCallback"    # Lorg/mapsforge/android/maps/rendertheme/RenderCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapsforge/android/maps/rendertheme/RenderCallback;",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/core/Tag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p2, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/Tag;>;"
    return-void
.end method

.method public final scaleStrokeWidth(F)V
    .locals 2
    .param p1, "scaleFactor"    # F

    .prologue
    .line 144
    iget-boolean v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Circle;->scaleRadius:Z

    if-eqz v0, :cond_0

    .line 145
    iget v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Circle;->radius:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Circle;->renderRadius:F

    .line 146
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Circle;->outline:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Circle;->outline:Landroid/graphics/Paint;

    iget v1, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Circle;->strokeWidth:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 150
    :cond_0
    return-void
.end method

.method public final scaleTextSize(F)V
    .locals 0
    .param p1, "scaleFactor"    # F

    .prologue
    .line 155
    return-void
.end method
