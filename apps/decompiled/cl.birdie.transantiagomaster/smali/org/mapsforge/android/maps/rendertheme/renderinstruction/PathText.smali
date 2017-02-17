.class public final Lorg/mapsforge/android/maps/rendertheme/renderinstruction/PathText;
.super Ljava/lang/Object;
.source "PathText.java"

# interfaces
.implements Lorg/mapsforge/android/maps/rendertheme/renderinstruction/RenderInstruction;


# instance fields
.field private final fontSize:F

.field private final paint:Landroid/graphics/Paint;

.field private final stroke:Landroid/graphics/Paint;

.field private final textKey:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;


# direct methods
.method private constructor <init>(Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;Landroid/graphics/Typeface;FIIF)V
    .locals 3
    .param p1, "textKey"    # Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;
    .param p2, "typeface"    # Landroid/graphics/Typeface;
    .param p3, "fontSize"    # F
    .param p4, "fill"    # I
    .param p5, "stroke"    # I
    .param p6, "strokeWidth"    # F

    .prologue
    const/4 v2, 0x1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/PathText;->textKey:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;

    .line 99
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/PathText;->paint:Landroid/graphics/Paint;

    .line 100
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/PathText;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 101
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/PathText;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 102
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/PathText;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/PathText;->stroke:Landroid/graphics/Paint;

    .line 105
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/PathText;->stroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 106
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/PathText;->stroke:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 107
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/PathText;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 108
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/PathText;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/PathText;->stroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 111
    iput p3, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/PathText;->fontSize:F

    .line 112
    return-void
.end method

.method public static create(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lorg/mapsforge/android/maps/rendertheme/renderinstruction/PathText;
    .locals 14
    .param p0, "elementName"    # Ljava/lang/String;
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;

    .prologue
    const/4 v12, 0x0

    .line 43
    const/4 v1, 0x0

    .line 44
    .local v1, "textKey":Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;
    sget-object v7, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;->DEFAULT:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;

    .line 45
    .local v7, "fontFamily":Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;
    sget-object v8, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;->NORMAL:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;

    .line 46
    .local v8, "fontStyle":Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;
    const/4 v3, 0x0

    .line 47
    .local v3, "fontSize":F
    const/high16 v4, -0x1000000

    .line 48
    .local v4, "fill":I
    const/high16 v5, -0x1000000

    .line 49
    .local v5, "stroke":I
    const/4 v6, 0x0

    .line 51
    .local v6, "strokeWidth":F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v9, v0, :cond_7

    .line 52
    invoke-interface {p1, v9}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v10

    .line 53
    .local v10, "name":Ljava/lang/String;
    invoke-interface {p1, v9}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v11

    .line 55
    .local v11, "value":Ljava/lang/String;
    const-string v0, "k"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-static {v11}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;->getInstance(Ljava/lang/String;)Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;

    move-result-object v1

    .line 51
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 57
    :cond_0
    const-string v0, "font-family"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v11, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;->valueOf(Ljava/lang/String;)Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;

    move-result-object v7

    goto :goto_1

    .line 59
    :cond_1
    const-string v0, "font-style"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v11, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;->valueOf(Ljava/lang/String;)Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;

    move-result-object v8

    goto :goto_1

    .line 61
    :cond_2
    const-string v0, "font-size"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    goto :goto_1

    .line 63
    :cond_3
    const-string v0, "fill"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 64
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    .line 65
    :cond_4
    const-string v0, "stroke"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 66
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    .line 67
    :cond_5
    const-string v0, "stroke-width"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 68
    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    goto :goto_1

    .line 70
    :cond_6
    invoke-static {p0, v10, v11, v9}, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->logUnknownAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 74
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :cond_7
    if-nez v1, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "missing attribute k for element: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    cmpg-float v0, v3, v12

    if-gez v0, :cond_9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "font-size must not be negative: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    cmpg-float v0, v6, v12

    if-gez v0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "stroke-width must not be negative: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_a
    invoke-virtual {v7}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontFamily;->toTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v8}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/FontStyle;->toInt()I

    move-result v12

    invoke-static {v0, v12}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 76
    .local v2, "typeface":Landroid/graphics/Typeface;
    new-instance v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/PathText;

    invoke-direct/range {v0 .. v6}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/PathText;-><init>(Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;Landroid/graphics/Typeface;FIIF)V

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
    .line 122
    .local p2, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/Tag;>;"
    return-void
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
    .line 126
    .local p2, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/Tag;>;"
    iget-object v1, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/PathText;->textKey:Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;

    invoke-virtual {v1, p2}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/TextKey;->getValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "caption":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v1, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/PathText;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/PathText;->stroke:Landroid/graphics/Paint;

    invoke-interface {p1, v0, v1, v2}, Lorg/mapsforge/android/maps/rendertheme/RenderCallback;->renderWayText(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public final scaleStrokeWidth(F)V
    .locals 0
    .param p1, "scaleFactor"    # F

    .prologue
    .line 136
    return-void
.end method

.method public final scaleTextSize(F)V
    .locals 2
    .param p1, "scaleFactor"    # F

    .prologue
    .line 140
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/PathText;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/PathText;->fontSize:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 141
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/PathText;->stroke:Landroid/graphics/Paint;

    iget v1, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/PathText;->fontSize:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 142
    return-void
.end method
