.class public final Lorg/mapsforge/android/maps/rendertheme/RenderTheme;
.super Ljava/lang/Object;
.source "RenderTheme.java"


# instance fields
.field private final baseStrokeWidth:F

.field private final baseTextSize:F

.field private levels:I

.field private final mapBackground:I

.field private final matchingCache:Lorg/mapsforge/core/LRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapsforge/core/LRUCache",
            "<",
            "Lorg/mapsforge/android/maps/rendertheme/MatchingCacheKey;",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/android/maps/rendertheme/renderinstruction/RenderInstruction;",
            ">;>;"
        }
    .end annotation
.end field

.field private final rulesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/mapsforge/android/maps/rendertheme/Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(IFF)V
    .locals 2
    .param p1, "mapBackground"    # I
    .param p2, "baseStrokeWidth"    # F
    .param p3, "baseTextSize"    # F

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p1, p0, Lorg/mapsforge/android/maps/rendertheme/RenderTheme;->mapBackground:I

    .line 84
    iput p2, p0, Lorg/mapsforge/android/maps/rendertheme/RenderTheme;->baseStrokeWidth:F

    .line 85
    iput p3, p0, Lorg/mapsforge/android/maps/rendertheme/RenderTheme;->baseTextSize:F

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/RenderTheme;->rulesList:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Lorg/mapsforge/core/LRUCache;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lorg/mapsforge/core/LRUCache;-><init>(I)V

    iput-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/RenderTheme;->matchingCache:Lorg/mapsforge/core/LRUCache;

    .line 88
    return-void
.end method

.method static create(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lorg/mapsforge/android/maps/rendertheme/RenderTheme;
    .locals 10
    .param p0, "elementName"    # Ljava/lang/String;
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;

    .prologue
    const/4 v9, 0x0

    .line 47
    const/4 v6, 0x0

    .line 48
    .local v6, "version":Ljava/lang/Integer;
    const/4 v3, -0x1

    .line 49
    .local v3, "mapBackground":I
    const/high16 v0, 0x3f800000    # 1.0f

    .line 50
    .local v0, "baseStrokeWidth":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 52
    .local v1, "baseTextSize":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v7

    if-ge v2, v7, :cond_5

    .line 53
    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, "name":Ljava/lang/String;
    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, "value":Ljava/lang/String;
    const-string v7, "schemaLocation"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 57
    const-string v7, "version"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 59
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 52
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    :cond_1
    const-string v7, "map-background"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 61
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    .line 62
    :cond_2
    const-string v7, "base-stroke-width"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 63
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_1

    .line 64
    :cond_3
    const-string v7, "base-text-size"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 65
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    goto :goto_1

    .line 67
    :cond_4
    invoke-static {p0, v4, v5, v2}, Lorg/mapsforge/android/maps/rendertheme/RenderThemeHandler;->logUnknownAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 71
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_5
    if-nez v6, :cond_6

    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "missing attribute version for element:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_6
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_7

    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "invalid render theme version:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_7
    cmpg-float v7, v0, v9

    if-gez v7, :cond_8

    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "base-stroke-width must not be negative: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_8
    cmpg-float v7, v1, v9

    if-gez v7, :cond_9

    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "base-text-size must not be negative: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 72
    :cond_9
    new-instance v7, Lorg/mapsforge/android/maps/rendertheme/RenderTheme;

    invoke-direct {v7, v3, v0, v1}, Lorg/mapsforge/android/maps/rendertheme/RenderTheme;-><init>(IFF)V

    return-object v7
.end method

.method private matchWay(Lorg/mapsforge/android/maps/rendertheme/RenderCallback;Ljava/util/List;BLorg/mapsforge/android/maps/rendertheme/Closed;)V
    .locals 9
    .param p1, "renderCallback"    # Lorg/mapsforge/android/maps/rendertheme/RenderCallback;
    .param p3, "zoomLevel"    # B
    .param p4, "closed"    # Lorg/mapsforge/android/maps/rendertheme/Closed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapsforge/android/maps/rendertheme/RenderCallback;",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/core/Tag;",
            ">;B",
            "Lorg/mapsforge/android/maps/rendertheme/Closed;",
            ")V"
        }
    .end annotation

    .prologue
    .line 184
    .local p2, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/Tag;>;"
    new-instance v7, Lorg/mapsforge/android/maps/rendertheme/MatchingCacheKey;

    invoke-direct {v7, p2, p3, p4}, Lorg/mapsforge/android/maps/rendertheme/MatchingCacheKey;-><init>(Ljava/util/List;BLorg/mapsforge/android/maps/rendertheme/Closed;)V

    .line 186
    .local v7, "matchingCacheKey":Lorg/mapsforge/android/maps/rendertheme/MatchingCacheKey;
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/RenderTheme;->matchingCache:Lorg/mapsforge/core/LRUCache;

    invoke-virtual {v0, v7}, Lorg/mapsforge/core/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 187
    .local v5, "matchingList":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/android/maps/rendertheme/renderinstruction/RenderInstruction;>;"
    if-eqz v5, :cond_0

    .line 189
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    .local v8, "n":I
    :goto_0
    if-ge v6, v8, :cond_2

    .line 190
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/RenderInstruction;

    invoke-interface {v0, p1, p2}, Lorg/mapsforge/android/maps/rendertheme/renderinstruction/RenderInstruction;->renderWay(Lorg/mapsforge/android/maps/rendertheme/RenderCallback;Ljava/util/List;)V

    .line 189
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 196
    .end local v6    # "i":I
    .end local v8    # "n":I
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "matchingList":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/android/maps/rendertheme/renderinstruction/RenderInstruction;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .restart local v5    # "matchingList":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/android/maps/rendertheme/renderinstruction/RenderInstruction;>;"
    const/4 v6, 0x0

    .restart local v6    # "i":I
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/RenderTheme;->rulesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .restart local v8    # "n":I
    :goto_1
    if-ge v6, v8, :cond_1

    .line 198
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/RenderTheme;->rulesList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/android/maps/rendertheme/Rule;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/mapsforge/android/maps/rendertheme/Rule;->matchWay(Lorg/mapsforge/android/maps/rendertheme/RenderCallback;Ljava/util/List;BLorg/mapsforge/android/maps/rendertheme/Closed;Ljava/util/List;)V

    .line 197
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 201
    :cond_1
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/RenderTheme;->matchingCache:Lorg/mapsforge/core/LRUCache;

    invoke-virtual {v0, v7, v5}, Lorg/mapsforge/core/LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_2
    return-void
.end method


# virtual methods
.method final addRule(Lorg/mapsforge/android/maps/rendertheme/Rule;)V
    .locals 1
    .param p1, "rule"    # Lorg/mapsforge/android/maps/rendertheme/Rule;

    .prologue
    .line 205
    iget-object v0, p0, Lorg/mapsforge/android/maps/rendertheme/RenderTheme;->rulesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    return-void
.end method

.method final complete()V
    .locals 3

    .prologue
    .line 209
    iget-object v2, p0, Lorg/mapsforge/android/maps/rendertheme/RenderTheme;->rulesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->trimToSize()V

    .line 210
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lorg/mapsforge/android/maps/rendertheme/RenderTheme;->rulesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 211
    iget-object v2, p0, Lorg/mapsforge/android/maps/rendertheme/RenderTheme;->rulesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/android/maps/rendertheme/Rule;

    invoke-virtual {v2}, Lorg/mapsforge/android/maps/rendertheme/Rule;->onComplete()V

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_0
    return-void
.end method

.method public final getLevels()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lorg/mapsforge/android/maps/rendertheme/RenderTheme;->levels:I

    return v0
.end method

.method public final getMapBackground()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lorg/mapsforge/android/maps/rendertheme/RenderTheme;->mapBackground:I

    return v0
.end method

.method public final matchClosedWay(Lorg/mapsforge/android/maps/rendertheme/RenderCallback;Ljava/util/List;B)V
    .locals 1
    .param p1, "renderCallback"    # Lorg/mapsforge/android/maps/rendertheme/RenderCallback;
    .param p3, "zoomLevel"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapsforge/android/maps/rendertheme/RenderCallback;",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/core/Tag;",
            ">;B)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p2, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/Tag;>;"
    sget-object v0, Lorg/mapsforge/android/maps/rendertheme/Closed;->YES:Lorg/mapsforge/android/maps/rendertheme/Closed;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/mapsforge/android/maps/rendertheme/RenderTheme;->matchWay(Lorg/mapsforge/android/maps/rendertheme/RenderCallback;Ljava/util/List;BLorg/mapsforge/android/maps/rendertheme/Closed;)V

    .line 127
    return-void
.end method

.method public final matchLinearWay(Lorg/mapsforge/android/maps/rendertheme/RenderCallback;Ljava/util/List;B)V
    .locals 1
    .param p1, "renderCallback"    # Lorg/mapsforge/android/maps/rendertheme/RenderCallback;
    .param p3, "zoomLevel"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapsforge/android/maps/rendertheme/RenderCallback;",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/core/Tag;",
            ">;B)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p2, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/Tag;>;"
    sget-object v0, Lorg/mapsforge/android/maps/rendertheme/Closed;->NO:Lorg/mapsforge/android/maps/rendertheme/Closed;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/mapsforge/android/maps/rendertheme/RenderTheme;->matchWay(Lorg/mapsforge/android/maps/rendertheme/RenderCallback;Ljava/util/List;BLorg/mapsforge/android/maps/rendertheme/Closed;)V

    .line 141
    return-void
.end method

.method public final matchNode(Lorg/mapsforge/android/maps/rendertheme/RenderCallback;Ljava/util/List;B)V
    .locals 3
    .param p1, "renderCallback"    # Lorg/mapsforge/android/maps/rendertheme/RenderCallback;
    .param p3, "zoomLevel"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapsforge/android/maps/rendertheme/RenderCallback;",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/core/Tag;",
            ">;B)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p2, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/Tag;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lorg/mapsforge/android/maps/rendertheme/RenderTheme;->rulesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 155
    iget-object v2, p0, Lorg/mapsforge/android/maps/rendertheme/RenderTheme;->rulesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/android/maps/rendertheme/Rule;

    invoke-virtual {v2, p1, p2, p3}, Lorg/mapsforge/android/maps/rendertheme/Rule;->matchNode(Lorg/mapsforge/android/maps/rendertheme/RenderCallback;Ljava/util/List;B)V

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_0
    return-void
.end method

.method public final scaleStrokeWidth(F)V
    .locals 4
    .param p1, "scaleFactor"    # F

    .prologue
    .line 166
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lorg/mapsforge/android/maps/rendertheme/RenderTheme;->rulesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 167
    iget-object v2, p0, Lorg/mapsforge/android/maps/rendertheme/RenderTheme;->rulesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/android/maps/rendertheme/Rule;

    iget v3, p0, Lorg/mapsforge/android/maps/rendertheme/RenderTheme;->baseStrokeWidth:F

    mul-float/2addr v3, p1

    invoke-virtual {v2, v3}, Lorg/mapsforge/android/maps/rendertheme/Rule;->scaleStrokeWidth(F)V

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_0
    return-void
.end method

.method public final scaleTextSize(F)V
    .locals 4
    .param p1, "scaleFactor"    # F

    .prologue
    .line 178
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lorg/mapsforge/android/maps/rendertheme/RenderTheme;->rulesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 179
    iget-object v2, p0, Lorg/mapsforge/android/maps/rendertheme/RenderTheme;->rulesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/android/maps/rendertheme/Rule;

    iget v3, p0, Lorg/mapsforge/android/maps/rendertheme/RenderTheme;->baseTextSize:F

    mul-float/2addr v3, p1

    invoke-virtual {v2, v3}, Lorg/mapsforge/android/maps/rendertheme/Rule;->scaleTextSize(F)V

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_0
    return-void
.end method

.method final setLevels(I)V
    .locals 0
    .param p1, "levels"    # I

    .prologue
    .line 216
    iput p1, p0, Lorg/mapsforge/android/maps/rendertheme/RenderTheme;->levels:I

    .line 217
    return-void
.end method
