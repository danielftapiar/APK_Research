.class public final Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Area;
.super Ljava/lang/Object;
.source "Area.java"

# interfaces
.implements Lorg/mapsforge/android/maps/rendertheme/renderinstruction/RenderInstruction;


# instance fields
.field private final fill:Landroid/graphics/Paint;

.field private final level:I

.field private final outline:Landroid/graphics/Paint;

.field private final strokeWidth:F


# direct methods
.method private constructor <init>(Ljava/lang/String;IIFI)V
    .locals 5
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "fill"    # I
    .param p3, "stroke"    # I
    .param p4, "strokeWidth"    # F
    .param p5, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-static {p1}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/BitmapUtils;->createBitmapShader(Ljava/lang/String;)Landroid/graphics/BitmapShader;

    move-result-object v0

    .line 89
    .local v0, "shader":Landroid/graphics/Shader;
    if-nez p2, :cond_0

    .line 90
    iput-object v4, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Area;->fill:Landroid/graphics/Paint;

    .line 99
    :goto_0
    if-nez p3, :cond_1

    .line 100
    iput-object v4, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Area;->outline:Landroid/graphics/Paint;

    .line 108
    :goto_1
    iput p4, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Area;->strokeWidth:F

    .line 109
    iput p5, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Area;->level:I

    .line 110
    return-void

    .line 92
    :cond_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Area;->fill:Landroid/graphics/Paint;

    .line 93
    iget-object v1, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Area;->fill:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 94
    iget-object v1, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Area;->fill:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    iget-object v1, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Area;->fill:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    iget-object v1, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Area;->fill:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_0

    .line 102
    :cond_1
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Area;->outline:Landroid/graphics/Paint;

    .line 103
    iget-object v1, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Area;->outline:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    iget-object v1, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Area;->outline:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    iget-object v1, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Area;->outline:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_1
.end method

.method public static create(Ljava/lang/String;Lorg/xml/sax/Attributes;I)Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Area;
    .locals 10
    .param p0, "elementName"    # Ljava/lang/String;
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .param p2, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    const/4 v1, 0x0

    .line 48
    .local v1, "src":Ljava/lang/String;
    const/high16 v2, -0x1000000

    .line 49
    .local v2, "fill":I
    const/4 v3, 0x0

    .line 50
    .local v3, "stroke":I
    const/4 v4, 0x0

    .line 52
    .local v4, "strokeWidth":F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v6, v0, :cond_4

    .line 53
    invoke-interface {p1, v6}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v7

    .line 54
    .local v7, "name":Ljava/lang/String;
    invoke-interface {p1, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v8

    .line 56
    .local v8, "value":Ljava/lang/String;
    const-string v0, "src"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    move-object v1, v8

    .line 52
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 58
    :cond_0
    const-string v0, "fill"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    .line 60
    :cond_1
    const-string v0, "stroke"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    .line 62
    :cond_2
    const-string v0, "stroke-width"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    goto :goto_1

    .line 65
    :cond_3
    invoke-static {p0, v7, v8, v6}, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->logUnknownAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 69
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    cmpg-float v0, v4, v0

    if-gez v0, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "stroke-width must not be negative: "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_5
    new-instance v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Area;

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Area;-><init>(Ljava/lang/String;IIFI)V

    return-object v0
.end method


# virtual methods
.method public final renderNode(Lorg/mapsforge/android/maps/rendertheme/RenderCallback;Ljava/util/List;)V
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
    .line 120
    .local p2, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/Tag;>;"
    return-void
.end method

.method public final renderWay(Lorg/mapsforge/android/maps/rendertheme/RenderCallback;Ljava/util/List;)V
    .locals 2
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
    .line 124
    .local p2, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/Tag;>;"
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Area;->outline:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Area;->outline:Landroid/graphics/Paint;

    iget v1, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Area;->level:I

    invoke-interface {p1, v0, v1}, Lorg/mapsforge/android/maps/rendertheme/RenderCallback;->renderArea(Landroid/graphics/Paint;I)V

    .line 127
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Area;->fill:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Area;->fill:Landroid/graphics/Paint;

    iget v1, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Area;->level:I

    invoke-interface {p1, v0, v1}, Lorg/mapsforge/android/maps/rendertheme/RenderCallback;->renderArea(Landroid/graphics/Paint;I)V

    .line 130
    :cond_1
    return-void
.end method

.method public final scaleStrokeWidth(F)V
    .locals 2
    .param p1, "scaleFactor"    # F

    .prologue
    .line 134
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Area;->outline:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Area;->outline:Landroid/graphics/Paint;

    iget v1, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Area;->strokeWidth:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 137
    :cond_0
    return-void
.end method

.method public final scaleTextSize(F)V
    .locals 0
    .param p1, "scaleFactor"    # F

    .prologue
    .line 142
    return-void
.end method
