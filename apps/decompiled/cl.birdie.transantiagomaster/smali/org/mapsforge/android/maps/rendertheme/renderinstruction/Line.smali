.class public final Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Line;
.super Ljava/lang/Object;
.source "Line.java"

# interfaces
.implements Lorg/mapsforge/android/maps/rendertheme/renderinstruction/RenderInstruction;


# static fields
.field private static final SPLIT_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final level:I

.field private final paint:Landroid/graphics/Paint;

.field private final strokeWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Line;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF[FLandroid/graphics/Paint$Cap;I)V
    .locals 4
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "stroke"    # I
    .param p3, "strokeWidth"    # F
    .param p4, "strokeDasharray"    # [F
    .param p5, "strokeLinecap"    # Landroid/graphics/Paint$Cap;
    .param p6, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-static {p1}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/BitmapUtils;->createBitmapShader(Ljava/lang/String;)Landroid/graphics/BitmapShader;

    move-result-object v0

    .line 106
    .local v0, "shader":Landroid/graphics/Shader;
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Line;->paint:Landroid/graphics/Paint;

    .line 107
    iget-object v1, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Line;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 108
    iget-object v1, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Line;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 109
    iget-object v1, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Line;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    if-eqz p4, :cond_0

    .line 111
    iget-object v1, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Line;->paint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/DashPathEffect;

    const/4 v3, 0x0

    invoke-direct {v2, p4, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 113
    :cond_0
    iget-object v1, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Line;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 115
    iput p3, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Line;->strokeWidth:F

    .line 116
    iput p6, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Line;->level:I

    .line 117
    return-void
.end method

.method public static create(Ljava/lang/String;Lorg/xml/sax/Attributes;I)Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Line;
    .locals 11
    .param p0, "elementName"    # Ljava/lang/String;
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .param p2, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    const/4 v1, 0x0

    .line 53
    .local v1, "src":Ljava/lang/String;
    const/high16 v2, -0x1000000

    .line 54
    .local v2, "stroke":I
    const/4 v3, 0x0

    .line 55
    .local v3, "strokeWidth":F
    const/4 v4, 0x0

    .line 56
    .local v4, "strokeDasharray":[F
    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 58
    .local v5, "strokeLinecap":Landroid/graphics/Paint$Cap;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v7, v0, :cond_6

    .line 59
    invoke-interface {p1, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v8

    .line 60
    .local v8, "name":Ljava/lang/String;
    invoke-interface {p1, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v9

    .line 62
    .local v9, "value":Ljava/lang/String;
    const-string v0, "src"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    move-object v1, v9

    .line 58
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 64
    :cond_0
    const-string v0, "stroke"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    .line 66
    :cond_1
    const-string v0, "stroke-width"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    goto :goto_1

    .line 68
    :cond_2
    const-string v0, "stroke-dasharray"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 69
    sget-object v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Line;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v9}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v6

    array-length v0, v6

    new-array v4, v0, [F

    .end local v4    # "strokeDasharray":[F
    const/4 v0, 0x0

    :goto_2
    array-length v10, v6

    if-ge v0, v10, :cond_3

    aget-object v10, v6, v0

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    aput v10, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .restart local v4    # "strokeDasharray":[F
    :cond_3
    goto :goto_1

    .line 70
    :cond_4
    const-string v0, "stroke-linecap"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 71
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Paint$Cap;->valueOf(Ljava/lang/String;)Landroid/graphics/Paint$Cap;

    move-result-object v5

    goto :goto_1

    .line 73
    :cond_5
    invoke-static {p0, v8, v9, v7}, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->logUnknownAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 77
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_6
    const/4 v0, 0x0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "stroke-width must not be negative: "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_7
    new-instance v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Line;

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Line;-><init>(Ljava/lang/String;IF[FLandroid/graphics/Paint$Cap;I)V

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
    .line 127
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
    .line 131
    .local p2, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/Tag;>;"
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Line;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Line;->level:I

    invoke-interface {p1, v0, v1}, Lorg/mapsforge/android/maps/rendertheme/RenderCallback;->renderWay(Landroid/graphics/Paint;I)V

    .line 132
    return-void
.end method

.method public final scaleStrokeWidth(F)V
    .locals 2
    .param p1, "scaleFactor"    # F

    .prologue
    .line 136
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Line;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/Line;->strokeWidth:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 137
    return-void
.end method

.method public final scaleTextSize(F)V
    .locals 0
    .param p1, "scaleFactor"    # F

    .prologue
    .line 142
    return-void
.end method
