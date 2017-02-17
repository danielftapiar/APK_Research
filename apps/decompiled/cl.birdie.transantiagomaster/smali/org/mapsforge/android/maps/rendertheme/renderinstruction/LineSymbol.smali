.class public final Lorg/mapsforge/android/maps/rendertheme/renderinstruction/LineSymbol;
.super Ljava/lang/Object;
.source "LineSymbol.java"

# interfaces
.implements Lorg/mapsforge/android/maps/rendertheme/renderinstruction/RenderInstruction;


# instance fields
.field private final alignCenter:Z

.field private final bitmap:Landroid/graphics/Bitmap;

.field private final repeat:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "alignCenter"    # Z
    .param p3, "repeat"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {p1}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/BitmapUtils;->createBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/LineSymbol;->bitmap:Landroid/graphics/Bitmap;

    .line 78
    iput-boolean p2, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/LineSymbol;->alignCenter:Z

    .line 79
    iput-boolean p3, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/LineSymbol;->repeat:Z

    .line 80
    return-void
.end method

.method public static create(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lorg/mapsforge/android/maps/rendertheme/renderinstruction/LineSymbol;
    .locals 9
    .param p0, "elementName"    # Ljava/lang/String;
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    const/4 v4, 0x0

    .line 42
    .local v4, "src":Ljava/lang/String;
    const/4 v0, 0x0

    .line 43
    .local v0, "alignCenter":Z
    const/4 v3, 0x0

    .line 45
    .local v3, "repeat":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 46
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "name":Ljava/lang/String;
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    .line 49
    .local v5, "value":Ljava/lang/String;
    const-string v6, "src"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 50
    move-object v4, v5

    .line 45
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_0
    const-string v6, "align-center"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 52
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    .line 53
    :cond_1
    const-string v6, "repeat"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 54
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    goto :goto_1

    .line 56
    :cond_2
    invoke-static {p0, v2, v5, v1}, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->logUnknownAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 60
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_3
    if-nez v4, :cond_4

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "missing attribute src for element: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 61
    :cond_4
    new-instance v6, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/LineSymbol;

    invoke-direct {v6, v4, v0, v3}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/LineSymbol;-><init>(Ljava/lang/String;ZZ)V

    return-object v6
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
    .line 90
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
    .line 94
    .local p2, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/Tag;>;"
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/LineSymbol;->bitmap:Landroid/graphics/Bitmap;

    iget-boolean v1, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/LineSymbol;->alignCenter:Z

    iget-boolean v2, p0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/LineSymbol;->repeat:Z

    invoke-interface {p1, v0, v1, v2}, Lorg/mapsforge/android/maps/rendertheme/RenderCallback;->renderWaySymbol(Landroid/graphics/Bitmap;ZZ)V

    .line 95
    return-void
.end method

.method public final scaleStrokeWidth(F)V
    .locals 0
    .param p1, "scaleFactor"    # F

    .prologue
    .line 100
    return-void
.end method

.method public final scaleTextSize(F)V
    .locals 0
    .param p1, "scaleFactor"    # F

    .prologue
    .line 105
    return-void
.end method
