.class final Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;
.super Ljava/lang/Object;
.source "LabelPlacement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePositionYComparator;,
        Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePositionHeightComparator;,
        Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;
    }
.end annotation


# instance fields
.field final dependencyCache:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;

.field label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

.field private labelDistanceToLabel:I

.field private labelDistanceToSymbol:I

.field rect1:Landroid/graphics/Rect;

.field rect2:Landroid/graphics/Rect;

.field referencePosition:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;

.field private startDistanceToSymbols:I

.field symbolContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

.field private symbolDistanceToSymbol:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->labelDistanceToLabel:I

    .line 143
    iput v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->labelDistanceToSymbol:I

    .line 147
    const/4 v0, 0x4

    iput v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->startDistanceToSymbols:I

    .line 148
    iput v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->symbolDistanceToSymbol:I

    .line 158
    new-instance v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;

    invoke-direct {v0}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->dependencyCache:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;

    .line 159
    return-void
.end method

.method private preprocessLabels(Ljava/util/List;)V
    .locals 6
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
    .local p1, "labels":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;>;"
    const/high16 v5, 0x43800000    # 256.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 187
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget v0, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    iget-object v2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget-object v2, v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    cmpl-float v0, v0, v5

    if-lez v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iput-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget v0, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    iget-object v2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget-object v2, v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iput-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget v0, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    iget-object v2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget-object v2, v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget-object v2, v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iput-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget v0, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iput-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 188
    :cond_4
    return-void
.end method

.method private preprocessSymbols(Ljava/util/List;)V
    .locals 9
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
    .local p1, "symbols":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;>;"
    const/4 v2, 0x0

    const/high16 v5, 0x43800000    # 256.0f

    const/4 v4, 0x0

    .line 191
    move v1, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->symbolContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->symbolContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget v0, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->symbolContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget v0, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->y:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->symbolContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget v0, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->symbolContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget-object v3, v3, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->symbol:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->symbolContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget v0, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->y:F

    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->symbolContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget-object v3, v3, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->symbol:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 192
    :cond_4
    iget v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->symbolDistanceToSymbol:I

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->symbolContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->symbolContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget v1, v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    float-to-int v1, v1

    sub-int/2addr v1, v3

    iget-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->symbolContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget v4, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->y:F

    float-to-int v4, v4

    sub-int/2addr v4, v3

    iget-object v5, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->symbolContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget v5, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    float-to-int v5, v5

    iget-object v6, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->symbolContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget-object v6, v6, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->symbol:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v5, v3

    iget-object v6, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->symbolContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget v6, v6, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->y:F

    float-to-int v6, v6

    iget-object v7, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->symbolContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget-object v7, v7, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->symbol:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    invoke-direct {v0, v1, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->rect1:Landroid/graphics/Rect;

    add-int/lit8 v0, v2, 0x1

    move v1, v0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    if-eq v1, v2, :cond_5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->symbolContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->symbolContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget v4, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    float-to-int v4, v4

    iget-object v5, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->symbolContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget v5, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->y:F

    float-to-int v5, v5

    iget-object v6, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->symbolContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget v6, v6, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    float-to-int v6, v6

    iget-object v7, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->symbolContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget-object v7, v7, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->symbol:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->symbolContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget v7, v7, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->y:F

    float-to-int v7, v7

    iget-object v8, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->symbolContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget-object v8, v8, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->symbol:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->rect2:Landroid/graphics/Rect;

    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->rect2:Landroid/graphics/Rect;

    iget-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->rect1:Landroid/graphics/Rect;

    invoke-static {v0, v4}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 193
    :cond_7
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->dependencyCache:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;

    invoke-virtual {v0, p1}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->removeSymbolsFromDrawnAreas(Ljava/util/List;)V

    .line 194
    return-void
.end method

.method private processFourPointGreedy(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, "labels":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;>;"
    .local p2, "symbols":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;>;"
    .local p3, "areaLabels":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v21, "resolutionSet":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    new-array v0, v4, [Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;

    move-object/from16 v20, v0

    .line 219
    .local v20, "refPos":[Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;
    new-instance v19, Ljava/util/PriorityQueue;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    mul-int/lit8 v4, v4, 0x2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    div-int/lit8 v5, v5, 0xa

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sget-object v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePositionYComparator;->INSTANCE:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePositionYComparator;

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v5}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 222
    .local v19, "priorUp":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;>;"
    new-instance v18, Ljava/util/PriorityQueue;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    mul-int/lit8 v4, v4, 0x2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    div-int/lit8 v5, v5, 0xa

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sget-object v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePositionHeightComparator;->INSTANCE:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePositionHeightComparator;

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v5}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 226
    .local v18, "priorDown":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;>;"
    move-object/from16 v0, p0

    iget v15, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->startDistanceToSymbols:I

    .line 229
    .local v15, "dis":I
    const/4 v7, 0x0

    .local v7, "z":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v7, v4, :cond_2

    .line 230
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 231
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget-object v4, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->symbol:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    if-eqz v4, :cond_1

    .line 232
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    .line 235
    .local v22, "tmp":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;
    mul-int/lit8 v11, v7, 0x4

    new-instance v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;

    move-object/from16 v0, v22

    iget v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    move-object/from16 v0, v22

    iget-object v6, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    move-object/from16 v0, v22

    iget v6, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    move-object/from16 v0, v22

    iget-object v8, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->symbol:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget-object v8, v8, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->symbol:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float/2addr v6, v8

    int-to-float v8, v15

    sub-float/2addr v6, v8

    move-object/from16 v0, v22

    iget-object v8, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    move-object/from16 v0, v22

    iget-object v9, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    move-object/from16 v0, v22

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->symbol:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    invoke-direct/range {v4 .. v10}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;-><init>(FFIFFLorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;)V

    aput-object v4, v20, v11

    .line 239
    mul-int/lit8 v4, v7, 0x4

    add-int/lit8 v11, v4, 0x1

    new-instance v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;

    move-object/from16 v0, v22

    iget v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    move-object/from16 v0, v22

    iget-object v6, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    move-object/from16 v0, v22

    iget v6, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    move-object/from16 v0, v22

    iget-object v8, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->symbol:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget-object v8, v8, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->symbol:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v6, v8

    move-object/from16 v0, v22

    iget-object v8, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v6, v8

    int-to-float v8, v15

    add-float/2addr v6, v8

    move-object/from16 v0, v22

    iget-object v8, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    move-object/from16 v0, v22

    iget-object v9, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    move-object/from16 v0, v22

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->symbol:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    invoke-direct/range {v4 .. v10}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;-><init>(FFIFFLorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;)V

    aput-object v4, v20, v11

    .line 243
    mul-int/lit8 v4, v7, 0x4

    add-int/lit8 v11, v4, 0x2

    new-instance v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;

    move-object/from16 v0, v22

    iget v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    move-object/from16 v0, v22

    iget-object v6, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->symbol:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget-object v6, v6, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->symbol:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    move-object/from16 v0, v22

    iget-object v6, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    int-to-float v6, v15

    sub-float/2addr v5, v6

    move-object/from16 v0, v22

    iget v6, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    move-object/from16 v0, v22

    iget-object v8, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v6, v8

    move-object/from16 v0, v22

    iget-object v8, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    move-object/from16 v0, v22

    iget-object v9, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    move-object/from16 v0, v22

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->symbol:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    invoke-direct/range {v4 .. v10}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;-><init>(FFIFFLorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;)V

    aput-object v4, v20, v11

    .line 247
    mul-int/lit8 v4, v7, 0x4

    add-int/lit8 v11, v4, 0x3

    new-instance v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;

    move-object/from16 v0, v22

    iget v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    move-object/from16 v0, v22

    iget-object v6, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->symbol:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget-object v6, v6, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->symbol:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    int-to-float v6, v15

    add-float/2addr v5, v6

    move-object/from16 v0, v22

    iget v6, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    move-object/from16 v0, v22

    iget-object v8, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v6, v8

    const v8, 0x3dcccccd    # 0.1f

    sub-float/2addr v6, v8

    move-object/from16 v0, v22

    iget-object v8, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    move-object/from16 v0, v22

    iget-object v9, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    move-object/from16 v0, v22

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->symbol:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    invoke-direct/range {v4 .. v10}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;-><init>(FFIFFLorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;)V

    aput-object v4, v20, v11

    .line 229
    .end local v22    # "tmp":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 251
    :cond_1
    mul-int/lit8 v11, v7, 0x4

    new-instance v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget v6, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget-object v5, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v5, v6, v5

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget v6, v6, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget-object v8, v8, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget-object v9, v9, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;-><init>(FFIFFLorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;)V

    aput-object v4, v20, v11

    .line 253
    mul-int/lit8 v4, v7, 0x4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v20, v4

    .line 254
    mul-int/lit8 v4, v7, 0x4

    add-int/lit8 v4, v4, 0x2

    const/4 v5, 0x0

    aput-object v5, v20, v4

    .line 255
    mul-int/lit8 v4, v7, 0x4

    add-int/lit8 v4, v4, 0x3

    const/4 v5, 0x0

    aput-object v5, v20, v4

    goto :goto_1

    .line 260
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->removeNonValidateReferencePosition([Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;Ljava/util/List;Ljava/util/List;)V

    .line 263
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    move-object/from16 v0, v20

    array-length v4, v0

    move/from16 v0, v16

    if-ge v0, v4, :cond_5

    .line 264
    aget-object v4, v20, v16

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->referencePosition:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;

    .line 265
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->referencePosition:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;

    if-eqz v4, :cond_3

    .line 266
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->referencePosition:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 267
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->referencePosition:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 313
    .local v17, "linkedRef":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;>;"
    :cond_4
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    .line 271
    .end local v17    # "linkedRef":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;>;"
    :cond_5
    invoke-virtual/range {v19 .. v19}, Ljava/util/PriorityQueue;->size()I

    move-result v4

    if-eqz v4, :cond_6

    .line 272
    invoke-virtual/range {v19 .. v19}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->referencePosition:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;

    .line 274
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->referencePosition:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;

    iget v4, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->nodeNumber:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    .line 276
    new-instance v8, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget-object v9, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->text:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->referencePosition:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;

    iget v10, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->x:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->referencePosition:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;

    iget v11, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget-object v12, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->paintFront:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget-object v13, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->paintBack:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget-object v14, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->symbol:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    invoke-direct/range {v8 .. v14}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;-><init>(Ljava/lang/String;FFLandroid/graphics/Paint;Landroid/graphics/Paint;Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;)V

    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-virtual/range {v19 .. v19}, Ljava/util/PriorityQueue;->size()I

    move-result v4

    if-nez v4, :cond_7

    .line 316
    :cond_6
    return-object v21

    .line 283
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->referencePosition:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;

    iget v4, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->nodeNumber:I

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x0

    aget-object v4, v20, v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 284
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->referencePosition:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;

    iget v4, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->nodeNumber:I

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x1

    aget-object v4, v20, v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 285
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->referencePosition:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;

    iget v4, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->nodeNumber:I

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x2

    aget-object v4, v20, v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 286
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->referencePosition:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;

    iget v4, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->nodeNumber:I

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x3

    aget-object v4, v20, v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 288
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->referencePosition:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;

    iget v4, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->nodeNumber:I

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x0

    aget-object v4, v20, v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 289
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->referencePosition:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;

    iget v4, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->nodeNumber:I

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x1

    aget-object v4, v20, v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 290
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->referencePosition:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;

    iget v4, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->nodeNumber:I

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x2

    aget-object v4, v20, v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 291
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->referencePosition:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;

    iget v4, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->nodeNumber:I

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x3

    aget-object v4, v20, v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 293
    new-instance v17, Ljava/util/LinkedList;

    invoke-direct/range {v17 .. v17}, Ljava/util/LinkedList;-><init>()V

    .line 295
    .restart local v17    # "linkedRef":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;>;"
    :goto_3
    invoke-virtual/range {v18 .. v18}, Ljava/util/PriorityQueue;->size()I

    move-result v4

    if-eqz v4, :cond_8

    .line 296
    invoke-virtual/range {v18 .. v18}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;

    iget v4, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->x:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->referencePosition:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;

    iget v5, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->x:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->referencePosition:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;

    iget v6, v6, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->width:F

    add-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_8

    .line 297
    invoke-virtual/range {v18 .. v18}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 304
    :cond_8
    const/16 v16, 0x0

    :goto_4
    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->size()I

    move-result v4

    move/from16 v0, v16

    if-ge v0, v4, :cond_4

    .line 305
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;

    iget v4, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->x:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->referencePosition:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;

    iget v5, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->x:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->referencePosition:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;

    iget v6, v6, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->width:F

    add-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_9

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;

    iget v5, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->referencePosition:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;

    iget v6, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->y:F

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;

    iget v4, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->height:F

    sub-float v4, v6, v4

    cmpl-float v4, v5, v4

    if-ltz v4, :cond_9

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;

    iget v5, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->y:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->referencePosition:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;

    iget v6, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->y:F

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;

    iget v4, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->height:F

    add-float/2addr v4, v6

    cmpg-float v4, v5, v4

    if-gtz v4, :cond_9

    .line 308
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 309
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 310
    add-int/lit8 v16, v16, -0x1

    .line 304
    :cond_9
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_4
.end method

.method private removeEmptySymbolReferences(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 425
    .local p1, "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;>;"
    .local p2, "symbols":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 426
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iput-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    .line 427
    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget-object v1, v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->symbol:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 428
    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->symbol:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    .line 425
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 431
    :cond_1
    return-void
.end method

.method private removeNonValidateReferencePosition([Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;Ljava/util/List;Ljava/util/List;)V
    .locals 12
    .param p1, "refPos"    # [Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "symbols":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;>;"
    .local p3, "areaLabels":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;>;"
    const/4 v11, 0x0

    .line 447
    iget v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->labelDistanceToSymbol:I

    .line 449
    .local v1, "dis":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 450
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iput-object v5, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->symbolContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    .line 451
    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->symbolContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget v6, v6, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    float-to-int v6, v6

    sub-int/2addr v6, v1

    iget-object v7, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->symbolContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget v7, v7, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->y:F

    float-to-int v7, v7

    sub-int/2addr v7, v1

    iget-object v8, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->symbolContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget v8, v8, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    float-to-int v8, v8

    iget-object v9, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->symbolContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget-object v9, v9, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->symbol:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v1

    iget-object v9, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->symbolContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget v9, v9, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->y:F

    float-to-int v9, v9

    iget-object v10, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->symbolContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget-object v10, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->symbol:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v9, v1

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->rect1:Landroid/graphics/Rect;

    .line 455
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_1
    array-length v5, p1

    if-ge v4, v5, :cond_1

    .line 456
    aget-object v5, p1, v4

    if-eqz v5, :cond_0

    .line 458
    new-instance v5, Landroid/graphics/Rect;

    aget-object v6, p1, v4

    iget v6, v6, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->x:F

    float-to-int v6, v6

    aget-object v7, p1, v4

    iget v7, v7, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->y:F

    aget-object v8, p1, v4

    iget v8, v8, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->height:F

    sub-float/2addr v7, v8

    float-to-int v7, v7

    aget-object v8, p1, v4

    iget v8, v8, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->x:F

    aget-object v9, p1, v4

    iget v9, v9, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->width:F

    add-float/2addr v8, v9

    float-to-int v8, v8

    aget-object v9, p1, v4

    iget v9, v9, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->y:F

    float-to-int v9, v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->rect2:Landroid/graphics/Rect;

    .line 461
    iget-object v5, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->rect2:Landroid/graphics/Rect;

    iget-object v6, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->rect1:Landroid/graphics/Rect;

    invoke-static {v5, v6}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 462
    aput-object v11, p1, v4

    .line 455
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 449
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 468
    .end local v4    # "y":I
    :cond_2
    iget v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->labelDistanceToLabel:I

    .line 470
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    .line 472
    .local v0, "areaLabel":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;
    new-instance v5, Landroid/graphics/Rect;

    iget v6, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    float-to-int v6, v6

    sub-int/2addr v6, v1

    iget v7, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    float-to-int v7, v7

    iget-object v8, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr v7, v1

    iget v8, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    float-to-int v8, v8

    iget-object v9, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v1

    iget v9, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    float-to-int v9, v9

    add-int/2addr v9, v1

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->rect1:Landroid/graphics/Rect;

    .line 476
    const/4 v4, 0x0

    .restart local v4    # "y":I
    :goto_2
    array-length v5, p1

    if-ge v4, v5, :cond_3

    .line 477
    aget-object v5, p1, v4

    if-eqz v5, :cond_4

    .line 479
    new-instance v5, Landroid/graphics/Rect;

    aget-object v6, p1, v4

    iget v6, v6, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->x:F

    float-to-int v6, v6

    aget-object v7, p1, v4

    iget v7, v7, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->y:F

    aget-object v8, p1, v4

    iget v8, v8, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->height:F

    sub-float/2addr v7, v8

    float-to-int v7, v7

    aget-object v8, p1, v4

    iget v8, v8, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->x:F

    aget-object v9, p1, v4

    iget v9, v9, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->width:F

    add-float/2addr v8, v9

    float-to-int v8, v8

    aget-object v9, p1, v4

    iget v9, v9, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->y:F

    float-to-int v9, v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->rect2:Landroid/graphics/Rect;

    .line 482
    iget-object v5, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->rect2:Landroid/graphics/Rect;

    iget-object v6, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->rect1:Landroid/graphics/Rect;

    invoke-static {v5, v6}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 483
    aput-object v11, p1, v4

    .line 476
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 489
    .end local v0    # "areaLabel":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;
    .end local v4    # "y":I
    :cond_5
    iget-object v5, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->dependencyCache:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;

    invoke-virtual {v5, p1}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->removeReferencePointsFromDependencyCache([Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;)V

    .line 490
    return-void
.end method

.method private removeOverlappingSymbolsWithAreaLabels(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 615
    .local p1, "symbols":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;>;"
    .local p2, "pTC":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;>;"
    iget v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->labelDistanceToSymbol:I

    .line 617
    .local v0, "dis":I
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 618
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iput-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    .line 620
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget v4, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    float-to-int v4, v4

    sub-int/2addr v4, v0

    iget-object v5, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget v5, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    iget-object v6, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget-object v6, v6, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    sub-int/2addr v5, v0

    iget-object v6, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget v6, v6, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    iget-object v7, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget-object v7, v7, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    int-to-float v7, v0

    add-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v7, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget v7, v7, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    int-to-float v8, v0

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->rect1:Landroid/graphics/Rect;

    .line 624
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 625
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iput-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->symbolContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    .line 627
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->symbolContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget v4, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    float-to-int v4, v4

    iget-object v5, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->symbolContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget v5, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->y:F

    float-to-int v5, v5

    iget-object v6, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->symbolContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget v6, v6, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    iget-object v7, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->symbolContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget-object v7, v7, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->symbol:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v7, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->symbolContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget v7, v7, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->y:F

    iget-object v8, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->symbolContainer:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget-object v8, v8, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->symbol:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->rect2:Landroid/graphics/Rect;

    .line 631
    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->rect1:Landroid/graphics/Rect;

    iget-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->rect2:Landroid/graphics/Rect;

    invoke-static {v3, v4}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 632
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 633
    add-int/lit8 v2, v2, -0x1

    .line 624
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 617
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 637
    .end local v2    # "y":I
    :cond_2
    return-void
.end method


# virtual methods
.method final placeLabels(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lorg/mapsforge/core/Tile;)Ljava/util/List;
    .locals 10
    .param p4, "cT"    # Lorg/mapsforge/core/Tile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;",
            ">;",
            "Lorg/mapsforge/core/Tile;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "labels":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;>;"
    .local p2, "symbols":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;>;"
    .local p3, "areaLabels":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;>;"
    const/high16 v7, 0x43800000    # 256.0f

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 676
    move-object v0, p1

    .line 677
    .local v0, "returnLabels":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;>;"
    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->dependencyCache:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;

    invoke-virtual {v1, p4}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->generateTileAndDependencyOnTile(Lorg/mapsforge/core/Tile;)V

    move v2, v3

    .line 679
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iput-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget v4, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    iget-object v5, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget-object v5, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iput v4, v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_5

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iput-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget v1, v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    cmpl-float v1, v1, v7

    if-lez v1, :cond_2

    invoke-interface {p3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :cond_1
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget v1, v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    iget-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget-object v4, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v1, v4

    cmpl-float v1, v1, v7

    if-lez v1, :cond_3

    invoke-interface {p3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget v1, v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    iget-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget-object v4, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    cmpg-float v1, v1, v6

    if-gez v1, :cond_4

    invoke-interface {p3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget v1, v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    iget-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget-object v4, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    cmpg-float v1, v1, v6

    if-gez v1, :cond_1

    invoke-interface {p3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_5
    iget v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->labelDistanceToLabel:I

    :goto_3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_8

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iput-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget v2, v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    float-to-int v2, v2

    sub-int/2addr v2, v4

    iget-object v5, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget v5, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    float-to-int v5, v5

    sub-int/2addr v5, v4

    iget-object v6, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget v6, v6, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    iget-object v7, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget-object v7, v7, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v6, v4

    iget-object v7, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget v7, v7, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    iget-object v8, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget-object v8, v8, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    int-to-float v8, v4

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-direct {v1, v2, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->rect1:Landroid/graphics/Rect;

    add-int/lit8 v1, v3, 0x1

    move v2, v1

    :goto_4
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_7

    if-eq v2, v3, :cond_6

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iput-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v5, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget v5, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    float-to-int v5, v5

    iget-object v6, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget v6, v6, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    float-to-int v6, v6

    iget-object v7, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget v7, v7, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    iget-object v8, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget-object v8, v8, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    float-to-int v7, v7

    iget-object v8, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget v8, v8, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    iget-object v9, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->label:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget-object v9, v9, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    float-to-int v8, v8

    invoke-direct {v1, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->rect2:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->rect1:Landroid/graphics/Rect;

    iget-object v5, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->rect2:Landroid/graphics/Rect;

    invoke-static {v1, v5}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :cond_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    :cond_8
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->dependencyCache:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;

    invoke-virtual {v1, p3}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->removeAreaLabelsInAlreadyDrawnAreas(Ljava/util/List;)V

    .line 681
    :cond_9
    invoke-direct {p0, v0}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->preprocessLabels(Ljava/util/List;)V

    .line 683
    invoke-direct {p0, p2}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->preprocessSymbols(Ljava/util/List;)V

    .line 685
    invoke-direct {p0, v0, p2}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->removeEmptySymbolReferences(Ljava/util/List;Ljava/util/List;)V

    .line 687
    invoke-direct {p0, p2, p3}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->removeOverlappingSymbolsWithAreaLabels(Ljava/util/List;Ljava/util/List;)V

    .line 689
    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->dependencyCache:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;

    invoke-virtual {v1, v0, p3, p2}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->removeOverlappingObjectsWithDependencyOnTile(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 691
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 692
    invoke-direct {p0, v0, p2, p3}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->processFourPointGreedy(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 698
    :cond_a
    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement;->dependencyCache:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;

    invoke-virtual {v1, v0, p2, p3}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->fillDependencyOnTile(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 706
    return-object v0
.end method
