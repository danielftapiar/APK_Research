.class public final Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Caption;
.super Ljava/lang/Object;
.source "Caption.java"

# interfaces
.implements Lorg/mapsforge/android/maps/rendertheme/renderinstruction/RenderInstruction;


# instance fields
.field private final dy:F

.field private final fontSize:F

.field private final paint:Landroid/graphics/Paint;

.field private final stroke:Landroid/graphics/Paint;

.field private final textKey:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;


# direct methods
.method private constructor <init>(Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;FLandroid/graphics/Typeface;FIIF)V
    .locals 3
    .param p1, "textKey"    # Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;
    .param p2, "dy"    # F
    .param p3, "typeface"    # Landroid/graphics/Typeface;
    .param p4, "fontSize"    # F
    .param p5, "fill"    # I
    .param p6, "stroke"    # I
    .param p7, "strokeWidth"    # F

    .prologue
    const/4 v2, 0x1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Caption;->textKey:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;

    .line 103
    iput p2, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Caption;->dy:F

    .line 105
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Caption;->paint:Landroid/graphics/Paint;

    .line 106
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Caption;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 107
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Caption;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 108
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Caption;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Caption;->stroke:Landroid/graphics/Paint;

    .line 111
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Caption;->stroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 112
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Caption;->stroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 113
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Caption;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 114
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Caption;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Caption;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 117
    iput p4, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Caption;->fontSize:F

    .line 118
    return-void
.end method

.method public static create(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Caption;
    .locals 16
    .param p0, "elementName"    # Ljava/lang/String;
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 43
    const/4 v2, 0x0

    .line 44
    .local v2, "textKey":Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;
    const/4 v3, 0x0

    .line 45
    .local v3, "dy":F
    sget-object v9, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;->DEFAULT:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;

    .line 46
    .local v9, "fontFamily":Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;
    sget-object v10, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;->NORMAL:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;

    .line 47
    .local v10, "fontStyle":Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;
    const/4 v5, 0x0

    .line 48
    .local v5, "fontSize":F
    const/high16 v6, -0x1000000

    .line 49
    .local v6, "fill":I
    const/high16 v7, -0x1000000

    .line 50
    .local v7, "stroke":I
    const/4 v8, 0x0

    .line 52
    .local v8, "strokeWidth":F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v11, v1, :cond_8

    .line 53
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v12

    .line 54
    .local v12, "name":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v13

    .line 56
    .local v13, "value":Ljava/lang/String;
    const-string v1, "k"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-static {v13}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;->getInstance(Ljava/lang/String;)Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;

    move-result-object v2

    .line 52
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 58
    :cond_0
    const-string v1, "dy"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    goto :goto_1

    .line 60
    :cond_1
    const-string v1, "font-family"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v13, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;->valueOf(Ljava/lang/String;)Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;

    move-result-object v9

    goto :goto_1

    .line 62
    :cond_2
    const-string v1, "font-style"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v13, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;->valueOf(Ljava/lang/String;)Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;

    move-result-object v10

    goto :goto_1

    .line 64
    :cond_3
    const-string v1, "font-size"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 65
    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    goto :goto_1

    .line 66
    :cond_4
    const-string v1, "fill"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 67
    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    .line 68
    :cond_5
    const-string v1, "stroke"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 69
    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    goto :goto_1

    .line 70
    :cond_6
    const-string v1, "stroke-width"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 71
    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    goto :goto_1

    .line 73
    :cond_7
    move-object/from16 v0, p0

    invoke-static {v0, v12, v13, v11}, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->logUnknownAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 77
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :cond_8
    if-nez v2, :cond_9

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "missing attribute k for element: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v1, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    const/4 v1, 0x0

    cmpg-float v1, v5, v1

    if-gez v1, :cond_a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "font-size must not be negative: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v1, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    const/4 v1, 0x0

    cmpg-float v1, v8, v1

    if-gez v1, :cond_b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "stroke-width must not be negative: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v1, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_b
    invoke-virtual {v9}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;->toTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v10}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;->toInt()I

    move-result v14

    invoke-static {v1, v14}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    .line 79
    .local v4, "typeface":Landroid/graphics/Typeface;
    new-instance v1, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Caption;

    invoke-direct/range {v1 .. v8}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Caption;-><init>(Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;FLandroid/graphics/Typeface;FIIF)V

    return-object v1
.end method


# virtual methods
.method public final renderNode(Lorg/mapsforge/android/maps/rendertheme/RenderCallback;Ljava/util/List;)V
    .locals 4
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
    .line 127
    .local p2, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/Tag;>;"
    iget-object v1, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Caption;->textKey:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;

    invoke-virtual {v1, p2}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;->getValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "caption":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 131
    :cond_0
    iget v1, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Caption;->dy:F

    iget-object v2, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Caption;->paint:Landroid/graphics/Paint;

    iget-object v3, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Caption;->stroke:Landroid/graphics/Paint;

    invoke-interface {p1, v0, v1, v2, v3}, Lorg/mapsforge/android/maps/rendertheme/RenderCallback;->renderPointOfInterestCaption(Ljava/lang/String;FLandroid/graphics/Paint;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public final renderWay(Lorg/mapsforge/android/maps/rendertheme/RenderCallback;Ljava/util/List;)V
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
    .line 136
    .local p2, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/Tag;>;"
    iget-object v1, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Caption;->textKey:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;

    invoke-virtual {v1, p2}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;->getValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "caption":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 140
    :cond_0
    iget v1, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Caption;->dy:F

    iget-object v1, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Caption;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Caption;->stroke:Landroid/graphics/Paint;

    invoke-interface {p1, v0, v1, v2}, Lorg/mapsforge/android/maps/rendertheme/RenderCallback;->renderAreaCaption$47a30cb(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public final scaleStrokeWidth(F)V
    .locals 0
    .param p1, "scaleFactor"    # F

    .prologue
    .line 146
    return-void
.end method

.method public final scaleTextSize(F)V
    .locals 2
    .param p1, "scaleFactor"    # F

    .prologue
    .line 150
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Caption;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Caption;->fontSize:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 151
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Caption;->stroke:Landroid/graphics/Paint;

    iget v1, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Caption;->fontSize:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 152
    return-void
.end method
