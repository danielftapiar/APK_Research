.class final Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;
.super Ljava/lang/Object;
.source "DependencyCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;,
        Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;,
        Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;,
        Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;
    }
.end annotation


# instance fields
.field private currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

.field private currentTile:Lorg/mapsforge/core/Tile;

.field depLabel:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency",
            "<",
            "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;",
            ">;"
        }
    .end annotation
.end field

.field final dependencyTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/mapsforge/core/Tile;",
            "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;",
            ">;"
        }
    .end annotation
.end field

.field rect1:Landroid/graphics/Rect;

.field rect2:Landroid/graphics/Rect;

.field smb:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

.field tmp:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    .line 179
    return-void
.end method

.method private fillDependencyLabels(Ljava/util/List;)V
    .locals 19
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
    .line 209
    .local p1, "pTC":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;>;"
    new-instance v1, Lorg/mapsforge/core/Tile;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v10, v10, Lorg/mapsforge/core/Tile;->tileX:J

    const-wide/16 v12, 0x1

    sub-long v2, v10, v12

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v4, v10, Lorg/mapsforge/core/Tile;->tileY:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-byte v6, v10, Lorg/mapsforge/core/Tile;->zoomLevel:B

    invoke-direct/range {v1 .. v6}, Lorg/mapsforge/core/Tile;-><init>(JJB)V

    .line 210
    .local v1, "left":Lorg/mapsforge/core/Tile;
    new-instance v2, Lorg/mapsforge/core/Tile;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v10, v10, Lorg/mapsforge/core/Tile;->tileX:J

    const-wide/16 v12, 0x1

    add-long v3, v10, v12

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v5, v10, Lorg/mapsforge/core/Tile;->tileY:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-byte v7, v10, Lorg/mapsforge/core/Tile;->zoomLevel:B

    invoke-direct/range {v2 .. v7}, Lorg/mapsforge/core/Tile;-><init>(JJB)V

    .line 211
    .local v2, "right":Lorg/mapsforge/core/Tile;
    new-instance v3, Lorg/mapsforge/core/Tile;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v4, v10, Lorg/mapsforge/core/Tile;->tileX:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v10, v10, Lorg/mapsforge/core/Tile;->tileY:J

    const-wide/16 v12, 0x1

    sub-long v6, v10, v12

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-byte v8, v10, Lorg/mapsforge/core/Tile;->zoomLevel:B

    invoke-direct/range {v3 .. v8}, Lorg/mapsforge/core/Tile;-><init>(JJB)V

    .line 212
    .local v3, "up":Lorg/mapsforge/core/Tile;
    new-instance v4, Lorg/mapsforge/core/Tile;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v5, v10, Lorg/mapsforge/core/Tile;->tileX:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v10, v10, Lorg/mapsforge/core/Tile;->tileY:J

    const-wide/16 v12, 0x1

    add-long v7, v10, v12

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-byte v9, v10, Lorg/mapsforge/core/Tile;->zoomLevel:B

    invoke-direct/range {v4 .. v9}, Lorg/mapsforge/core/Tile;-><init>(JJB)V

    .line 214
    .local v4, "down":Lorg/mapsforge/core/Tile;
    new-instance v5, Lorg/mapsforge/core/Tile;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v10, v10, Lorg/mapsforge/core/Tile;->tileX:J

    const-wide/16 v12, 0x1

    sub-long v6, v10, v12

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v10, v10, Lorg/mapsforge/core/Tile;->tileY:J

    const-wide/16 v12, 0x1

    sub-long v8, v10, v12

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-byte v10, v10, Lorg/mapsforge/core/Tile;->zoomLevel:B

    invoke-direct/range {v5 .. v10}, Lorg/mapsforge/core/Tile;-><init>(JJB)V

    .line 215
    .local v5, "leftup":Lorg/mapsforge/core/Tile;
    new-instance v6, Lorg/mapsforge/core/Tile;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v10, v10, Lorg/mapsforge/core/Tile;->tileX:J

    const-wide/16 v12, 0x1

    sub-long v7, v10, v12

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v10, v10, Lorg/mapsforge/core/Tile;->tileY:J

    const-wide/16 v12, 0x1

    add-long v9, v10, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-byte v11, v11, Lorg/mapsforge/core/Tile;->zoomLevel:B

    invoke-direct/range {v6 .. v11}, Lorg/mapsforge/core/Tile;-><init>(JJB)V

    .line 216
    .local v6, "leftdown":Lorg/mapsforge/core/Tile;
    new-instance v7, Lorg/mapsforge/core/Tile;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v10, v10, Lorg/mapsforge/core/Tile;->tileX:J

    const-wide/16 v12, 0x1

    add-long v8, v10, v12

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v10, v10, Lorg/mapsforge/core/Tile;->tileY:J

    const-wide/16 v12, 0x1

    sub-long/2addr v10, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-byte v12, v12, Lorg/mapsforge/core/Tile;->zoomLevel:B

    invoke-direct/range {v7 .. v12}, Lorg/mapsforge/core/Tile;-><init>(JJB)V

    .line 217
    .local v7, "rightup":Lorg/mapsforge/core/Tile;
    new-instance v8, Lorg/mapsforge/core/Tile;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v10, v10, Lorg/mapsforge/core/Tile;->tileX:J

    const-wide/16 v12, 0x1

    add-long v9, v10, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v11, v11, Lorg/mapsforge/core/Tile;->tileY:J

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-byte v13, v13, Lorg/mapsforge/core/Tile;->zoomLevel:B

    invoke-direct/range {v8 .. v13}, Lorg/mapsforge/core/Tile;-><init>(JJB)V

    .line 223
    .local v8, "rightdown":Lorg/mapsforge/core/Tile;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v15, v10, :cond_12

    .line 225
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    .line 227
    .local v16, "label":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;
    const/4 v9, 0x0

    .line 230
    .local v9, "toAdd":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;
    move-object/from16 v0, v16

    iget v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    move-object/from16 v0, v16

    iget-object v11, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-boolean v10, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->drawn:Z

    if-nez v10, :cond_1

    .line 231
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    .line 233
    .local v17, "linkedDep":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;
    new-instance v9, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;

    .end local v9    # "toAdd":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;
    move-object/from16 v0, v16

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->paintFront:Landroid/graphics/Paint;

    move-object/from16 v0, v16

    iget-object v11, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->paintBack:Landroid/graphics/Paint;

    move-object/from16 v0, v16

    iget-object v12, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->text:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v13, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    invoke-direct/range {v9 .. v14}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;-><init>(Landroid/graphics/Paint;Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Rect;Lorg/mapsforge/core/Tile;)V

    .line 236
    .restart local v9    # "toAdd":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    new-instance v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    new-instance v12, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    move-object/from16 v0, v16

    iget v13, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    move-object/from16 v0, v16

    iget v14, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    invoke-direct {v12, v13, v14}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;-><init>(FF)V

    invoke-direct {v11, v9, v12}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;-><init>(Ljava/lang/Object;Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;)V

    invoke-virtual {v10, v11}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->addText(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;)V

    .line 239
    new-instance v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    new-instance v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    move-object/from16 v0, v16

    iget v12, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    move-object/from16 v0, v16

    iget v13, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    const/high16 v14, 0x43800000    # 256.0f

    add-float/2addr v13, v14

    invoke-direct {v11, v12, v13}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;-><init>(FF)V

    invoke-direct {v10, v9, v11}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;-><init>(Ljava/lang/Object;Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->addText(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;)V

    .line 242
    invoke-virtual {v9, v3}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;->addTile(Lorg/mapsforge/core/Tile;)V

    .line 244
    move-object/from16 v0, v16

    iget v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-boolean v10, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->drawn:Z

    if-nez v10, :cond_0

    .line 245
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    .line 247
    new-instance v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    new-instance v12, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    move-object/from16 v0, v16

    iget v13, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    const/high16 v14, 0x43800000    # 256.0f

    add-float/2addr v13, v14

    move-object/from16 v0, v16

    iget v14, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    const/high16 v18, 0x43800000    # 256.0f

    add-float v14, v14, v18

    invoke-direct {v12, v13, v14}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;-><init>(FF)V

    invoke-direct {v11, v9, v12}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;-><init>(Ljava/lang/Object;Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;)V

    invoke-virtual {v10, v11}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->addText(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;)V

    .line 250
    invoke-virtual {v9, v5}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;->addTile(Lorg/mapsforge/core/Tile;)V

    .line 253
    :cond_0
    move-object/from16 v0, v16

    iget v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    move-object/from16 v0, v16

    iget-object v11, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    const/high16 v11, 0x43800000    # 256.0f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_1

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-boolean v10, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->drawn:Z

    if-nez v10, :cond_1

    .line 254
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    .line 256
    new-instance v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    new-instance v12, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    move-object/from16 v0, v16

    iget v13, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    const/high16 v14, 0x43800000    # 256.0f

    sub-float/2addr v13, v14

    move-object/from16 v0, v16

    iget v14, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    const/high16 v18, 0x43800000    # 256.0f

    add-float v14, v14, v18

    invoke-direct {v12, v13, v14}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;-><init>(FF)V

    invoke-direct {v11, v9, v12}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;-><init>(Ljava/lang/Object;Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;)V

    invoke-virtual {v10, v11}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->addText(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;)V

    .line 259
    invoke-virtual {v9, v7}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;->addTile(Lorg/mapsforge/core/Tile;)V

    .line 264
    .end local v17    # "linkedDep":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;
    :cond_1
    move-object/from16 v0, v16

    iget v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    const/high16 v11, 0x43800000    # 256.0f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_4

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-boolean v10, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->drawn:Z

    if-nez v10, :cond_4

    .line 266
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    .line 268
    .restart local v17    # "linkedDep":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;
    if-nez v9, :cond_2

    .line 269
    new-instance v9, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;

    .end local v9    # "toAdd":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;
    move-object/from16 v0, v16

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->paintFront:Landroid/graphics/Paint;

    move-object/from16 v0, v16

    iget-object v11, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->paintBack:Landroid/graphics/Paint;

    move-object/from16 v0, v16

    iget-object v12, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->text:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v13, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    invoke-direct/range {v9 .. v14}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;-><init>(Landroid/graphics/Paint;Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Rect;Lorg/mapsforge/core/Tile;)V

    .line 272
    .restart local v9    # "toAdd":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    new-instance v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    new-instance v12, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    move-object/from16 v0, v16

    iget v13, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    move-object/from16 v0, v16

    iget v14, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    invoke-direct {v12, v13, v14}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;-><init>(FF)V

    invoke-direct {v11, v9, v12}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;-><init>(Ljava/lang/Object;Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;)V

    invoke-virtual {v10, v11}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->addText(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;)V

    .line 277
    :cond_2
    new-instance v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    new-instance v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    move-object/from16 v0, v16

    iget v12, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    move-object/from16 v0, v16

    iget v13, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    const/high16 v14, 0x43800000    # 256.0f

    sub-float/2addr v13, v14

    invoke-direct {v11, v12, v13}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;-><init>(FF)V

    invoke-direct {v10, v9, v11}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;-><init>(Ljava/lang/Object;Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->addText(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;)V

    .line 280
    invoke-virtual {v9, v4}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;->addTile(Lorg/mapsforge/core/Tile;)V

    .line 282
    move-object/from16 v0, v16

    iget v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_3

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-boolean v10, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->drawn:Z

    if-nez v10, :cond_3

    .line 283
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    .line 285
    new-instance v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    new-instance v12, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    move-object/from16 v0, v16

    iget v13, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    const/high16 v14, 0x43800000    # 256.0f

    add-float/2addr v13, v14

    move-object/from16 v0, v16

    iget v14, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    const/high16 v18, 0x43800000    # 256.0f

    sub-float v14, v14, v18

    invoke-direct {v12, v13, v14}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;-><init>(FF)V

    invoke-direct {v11, v9, v12}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;-><init>(Ljava/lang/Object;Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;)V

    invoke-virtual {v10, v11}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->addText(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;)V

    .line 288
    invoke-virtual {v9, v6}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;->addTile(Lorg/mapsforge/core/Tile;)V

    .line 291
    :cond_3
    move-object/from16 v0, v16

    iget v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    move-object/from16 v0, v16

    iget-object v11, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    const/high16 v11, 0x43800000    # 256.0f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_4

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-boolean v10, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->drawn:Z

    if-nez v10, :cond_4

    .line 293
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    .line 295
    new-instance v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    new-instance v12, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    move-object/from16 v0, v16

    iget v13, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    const/high16 v14, 0x43800000    # 256.0f

    sub-float/2addr v13, v14

    move-object/from16 v0, v16

    iget v14, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    const/high16 v18, 0x43800000    # 256.0f

    sub-float v14, v14, v18

    invoke-direct {v12, v13, v14}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;-><init>(FF)V

    invoke-direct {v11, v9, v12}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;-><init>(Ljava/lang/Object;Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;)V

    invoke-virtual {v10, v11}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->addText(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;)V

    .line 298
    invoke-virtual {v9, v8}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;->addTile(Lorg/mapsforge/core/Tile;)V

    .line 303
    .end local v17    # "linkedDep":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;
    :cond_4
    move-object/from16 v0, v16

    iget v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_6

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-boolean v10, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->drawn:Z

    if-nez v10, :cond_6

    .line 304
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    .line 306
    .restart local v17    # "linkedDep":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;
    if-nez v9, :cond_5

    .line 307
    new-instance v9, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;

    .end local v9    # "toAdd":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;
    move-object/from16 v0, v16

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->paintFront:Landroid/graphics/Paint;

    move-object/from16 v0, v16

    iget-object v11, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->paintBack:Landroid/graphics/Paint;

    move-object/from16 v0, v16

    iget-object v12, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->text:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v13, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    invoke-direct/range {v9 .. v14}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;-><init>(Landroid/graphics/Paint;Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Rect;Lorg/mapsforge/core/Tile;)V

    .line 310
    .restart local v9    # "toAdd":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    new-instance v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    new-instance v12, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    move-object/from16 v0, v16

    iget v13, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    move-object/from16 v0, v16

    iget v14, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    invoke-direct {v12, v13, v14}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;-><init>(FF)V

    invoke-direct {v11, v9, v12}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;-><init>(Ljava/lang/Object;Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;)V

    invoke-virtual {v10, v11}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->addText(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;)V

    .line 314
    :cond_5
    new-instance v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    new-instance v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    move-object/from16 v0, v16

    iget v12, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    const/high16 v13, 0x43800000    # 256.0f

    add-float/2addr v12, v13

    move-object/from16 v0, v16

    iget v13, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    invoke-direct {v11, v12, v13}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;-><init>(FF)V

    invoke-direct {v10, v9, v11}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;-><init>(Ljava/lang/Object;Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->addText(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;)V

    .line 317
    invoke-virtual {v9, v1}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;->addTile(Lorg/mapsforge/core/Tile;)V

    .line 320
    .end local v17    # "linkedDep":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;
    :cond_6
    move-object/from16 v0, v16

    iget v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    move-object/from16 v0, v16

    iget-object v11, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    const/high16 v11, 0x43800000    # 256.0f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_8

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-boolean v10, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->drawn:Z

    if-nez v10, :cond_8

    .line 321
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    .line 323
    .restart local v17    # "linkedDep":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;
    if-nez v9, :cond_7

    .line 324
    new-instance v9, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;

    .end local v9    # "toAdd":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;
    move-object/from16 v0, v16

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->paintFront:Landroid/graphics/Paint;

    move-object/from16 v0, v16

    iget-object v11, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->paintBack:Landroid/graphics/Paint;

    move-object/from16 v0, v16

    iget-object v12, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->text:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v13, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    invoke-direct/range {v9 .. v14}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;-><init>(Landroid/graphics/Paint;Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Rect;Lorg/mapsforge/core/Tile;)V

    .line 327
    .restart local v9    # "toAdd":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    new-instance v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    new-instance v12, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    move-object/from16 v0, v16

    iget v13, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    move-object/from16 v0, v16

    iget v14, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    invoke-direct {v12, v13, v14}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;-><init>(FF)V

    invoke-direct {v11, v9, v12}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;-><init>(Ljava/lang/Object;Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;)V

    invoke-virtual {v10, v11}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->addText(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;)V

    .line 331
    :cond_7
    new-instance v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    new-instance v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    move-object/from16 v0, v16

    iget v12, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    const/high16 v13, 0x43800000    # 256.0f

    sub-float/2addr v12, v13

    move-object/from16 v0, v16

    iget v13, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    invoke-direct {v11, v12, v13}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;-><init>(FF)V

    invoke-direct {v10, v9, v11}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;-><init>(Ljava/lang/Object;Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->addText(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;)V

    .line 334
    invoke-virtual {v9, v2}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;->addTile(Lorg/mapsforge/core/Tile;)V

    .line 339
    .end local v17    # "linkedDep":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;
    :cond_8
    move-object/from16 v0, v16

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->symbol:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    if-eqz v10, :cond_11

    if-nez v9, :cond_11

    .line 341
    move-object/from16 v0, v16

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->symbol:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget v10, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->y:F

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_a

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-boolean v10, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->drawn:Z

    if-nez v10, :cond_a

    .line 342
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    .line 344
    .restart local v17    # "linkedDep":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;
    new-instance v9, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;

    .end local v9    # "toAdd":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;
    move-object/from16 v0, v16

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->paintFront:Landroid/graphics/Paint;

    move-object/from16 v0, v16

    iget-object v11, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->paintBack:Landroid/graphics/Paint;

    move-object/from16 v0, v16

    iget-object v12, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->text:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v13, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    invoke-direct/range {v9 .. v14}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;-><init>(Landroid/graphics/Paint;Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Rect;Lorg/mapsforge/core/Tile;)V

    .line 347
    .restart local v9    # "toAdd":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    new-instance v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    new-instance v12, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    move-object/from16 v0, v16

    iget v13, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    move-object/from16 v0, v16

    iget v14, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    invoke-direct {v12, v13, v14}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;-><init>(FF)V

    invoke-direct {v11, v9, v12}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;-><init>(Ljava/lang/Object;Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;)V

    invoke-virtual {v10, v11}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->addText(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;)V

    .line 350
    new-instance v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    new-instance v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    move-object/from16 v0, v16

    iget v12, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    move-object/from16 v0, v16

    iget v13, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    const/high16 v14, 0x43800000    # 256.0f

    add-float/2addr v13, v14

    invoke-direct {v11, v12, v13}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;-><init>(FF)V

    invoke-direct {v10, v9, v11}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;-><init>(Ljava/lang/Object;Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->addText(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;)V

    .line 353
    invoke-virtual {v9, v3}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;->addTile(Lorg/mapsforge/core/Tile;)V

    .line 355
    move-object/from16 v0, v16

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->symbol:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget v10, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-boolean v10, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->drawn:Z

    if-nez v10, :cond_9

    .line 356
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    .line 358
    new-instance v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    new-instance v12, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    move-object/from16 v0, v16

    iget v13, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    const/high16 v14, 0x43800000    # 256.0f

    add-float/2addr v13, v14

    move-object/from16 v0, v16

    iget v14, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    const/high16 v18, 0x43800000    # 256.0f

    add-float v14, v14, v18

    invoke-direct {v12, v13, v14}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;-><init>(FF)V

    invoke-direct {v11, v9, v12}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;-><init>(Ljava/lang/Object;Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;)V

    invoke-virtual {v10, v11}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->addText(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;)V

    .line 361
    invoke-virtual {v9, v5}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;->addTile(Lorg/mapsforge/core/Tile;)V

    .line 364
    :cond_9
    move-object/from16 v0, v16

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->symbol:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget v10, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    move-object/from16 v0, v16

    iget-object v11, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->symbol:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget-object v11, v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->symbol:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    const/high16 v11, 0x43800000    # 256.0f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_a

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-boolean v10, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->drawn:Z

    if-nez v10, :cond_a

    .line 366
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    .line 368
    new-instance v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    new-instance v12, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    move-object/from16 v0, v16

    iget v13, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    const/high16 v14, 0x43800000    # 256.0f

    sub-float/2addr v13, v14

    move-object/from16 v0, v16

    iget v14, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    const/high16 v18, 0x43800000    # 256.0f

    add-float v14, v14, v18

    invoke-direct {v12, v13, v14}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;-><init>(FF)V

    invoke-direct {v11, v9, v12}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;-><init>(Ljava/lang/Object;Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;)V

    invoke-virtual {v10, v11}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->addText(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;)V

    .line 371
    invoke-virtual {v9, v7}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;->addTile(Lorg/mapsforge/core/Tile;)V

    .line 375
    .end local v17    # "linkedDep":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;
    :cond_a
    move-object/from16 v0, v16

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->symbol:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget v10, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->y:F

    move-object/from16 v0, v16

    iget-object v11, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->symbol:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget-object v11, v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->symbol:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    const/high16 v11, 0x43800000    # 256.0f

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_d

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-boolean v10, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->drawn:Z

    if-nez v10, :cond_d

    .line 378
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    .line 380
    .restart local v17    # "linkedDep":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;
    if-nez v9, :cond_b

    .line 381
    new-instance v9, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;

    .end local v9    # "toAdd":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;
    move-object/from16 v0, v16

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->paintFront:Landroid/graphics/Paint;

    move-object/from16 v0, v16

    iget-object v11, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->paintBack:Landroid/graphics/Paint;

    move-object/from16 v0, v16

    iget-object v12, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->text:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v13, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    invoke-direct/range {v9 .. v14}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;-><init>(Landroid/graphics/Paint;Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Rect;Lorg/mapsforge/core/Tile;)V

    .line 384
    .restart local v9    # "toAdd":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    new-instance v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    new-instance v12, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    move-object/from16 v0, v16

    iget v13, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    move-object/from16 v0, v16

    iget v14, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    invoke-direct {v12, v13, v14}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;-><init>(FF)V

    invoke-direct {v11, v9, v12}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;-><init>(Ljava/lang/Object;Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;)V

    invoke-virtual {v10, v11}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->addText(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;)V

    .line 388
    :cond_b
    new-instance v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    new-instance v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    move-object/from16 v0, v16

    iget v12, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    move-object/from16 v0, v16

    iget v13, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    const/high16 v14, 0x43800000    # 256.0f

    add-float/2addr v13, v14

    invoke-direct {v11, v12, v13}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;-><init>(FF)V

    invoke-direct {v10, v9, v11}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;-><init>(Ljava/lang/Object;Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->addText(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;)V

    .line 391
    invoke-virtual {v9, v3}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;->addTile(Lorg/mapsforge/core/Tile;)V

    .line 393
    move-object/from16 v0, v16

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->symbol:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget v10, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_c

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-boolean v10, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->drawn:Z

    if-nez v10, :cond_c

    .line 394
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    .line 396
    new-instance v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    new-instance v12, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    move-object/from16 v0, v16

    iget v13, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    const/high16 v14, 0x43800000    # 256.0f

    add-float/2addr v13, v14

    move-object/from16 v0, v16

    iget v14, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    const/high16 v18, 0x43800000    # 256.0f

    sub-float v14, v14, v18

    invoke-direct {v12, v13, v14}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;-><init>(FF)V

    invoke-direct {v11, v9, v12}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;-><init>(Ljava/lang/Object;Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;)V

    invoke-virtual {v10, v11}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->addText(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;)V

    .line 399
    invoke-virtual {v9, v6}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;->addTile(Lorg/mapsforge/core/Tile;)V

    .line 402
    :cond_c
    move-object/from16 v0, v16

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->symbol:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget v10, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    move-object/from16 v0, v16

    iget-object v11, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->symbol:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget-object v11, v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->symbol:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    const/high16 v11, 0x43800000    # 256.0f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_d

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-boolean v10, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->drawn:Z

    if-nez v10, :cond_d

    .line 405
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    .line 407
    new-instance v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    new-instance v12, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    move-object/from16 v0, v16

    iget v13, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    const/high16 v14, 0x43800000    # 256.0f

    sub-float/2addr v13, v14

    move-object/from16 v0, v16

    iget v14, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    const/high16 v18, 0x43800000    # 256.0f

    sub-float v14, v14, v18

    invoke-direct {v12, v13, v14}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;-><init>(FF)V

    invoke-direct {v11, v9, v12}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;-><init>(Ljava/lang/Object;Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;)V

    invoke-virtual {v10, v11}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->addText(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;)V

    .line 410
    invoke-virtual {v9, v8}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;->addTile(Lorg/mapsforge/core/Tile;)V

    .line 414
    .end local v17    # "linkedDep":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;
    :cond_d
    move-object/from16 v0, v16

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->symbol:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget v10, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_f

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-boolean v10, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->drawn:Z

    if-nez v10, :cond_f

    .line 415
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    .line 417
    .restart local v17    # "linkedDep":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;
    if-nez v9, :cond_e

    .line 418
    new-instance v9, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;

    .end local v9    # "toAdd":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;
    move-object/from16 v0, v16

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->paintFront:Landroid/graphics/Paint;

    move-object/from16 v0, v16

    iget-object v11, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->paintBack:Landroid/graphics/Paint;

    move-object/from16 v0, v16

    iget-object v12, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->text:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v13, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    invoke-direct/range {v9 .. v14}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;-><init>(Landroid/graphics/Paint;Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Rect;Lorg/mapsforge/core/Tile;)V

    .line 421
    .restart local v9    # "toAdd":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    new-instance v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    new-instance v12, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    move-object/from16 v0, v16

    iget v13, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    move-object/from16 v0, v16

    iget v14, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    invoke-direct {v12, v13, v14}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;-><init>(FF)V

    invoke-direct {v11, v9, v12}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;-><init>(Ljava/lang/Object;Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;)V

    invoke-virtual {v10, v11}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->addText(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;)V

    .line 425
    :cond_e
    new-instance v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    new-instance v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    move-object/from16 v0, v16

    iget v12, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    const/high16 v13, 0x43800000    # 256.0f

    sub-float/2addr v12, v13

    move-object/from16 v0, v16

    iget v13, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    invoke-direct {v11, v12, v13}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;-><init>(FF)V

    invoke-direct {v10, v9, v11}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;-><init>(Ljava/lang/Object;Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->addText(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;)V

    .line 428
    invoke-virtual {v9, v1}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;->addTile(Lorg/mapsforge/core/Tile;)V

    .line 431
    .end local v17    # "linkedDep":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;
    :cond_f
    move-object/from16 v0, v16

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->symbol:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget v10, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    move-object/from16 v0, v16

    iget-object v11, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->symbol:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget-object v11, v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->symbol:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    const/high16 v11, 0x43800000    # 256.0f

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_11

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-boolean v10, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->drawn:Z

    if-nez v10, :cond_11

    .line 433
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    .line 435
    .restart local v17    # "linkedDep":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;
    if-nez v9, :cond_10

    .line 436
    new-instance v9, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;

    .end local v9    # "toAdd":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;
    move-object/from16 v0, v16

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->paintFront:Landroid/graphics/Paint;

    move-object/from16 v0, v16

    iget-object v11, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->paintBack:Landroid/graphics/Paint;

    move-object/from16 v0, v16

    iget-object v12, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->text:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v13, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    invoke-direct/range {v9 .. v14}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;-><init>(Landroid/graphics/Paint;Landroid/graphics/Paint;Ljava/lang/String;Landroid/graphics/Rect;Lorg/mapsforge/core/Tile;)V

    .line 439
    .restart local v9    # "toAdd":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    new-instance v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    new-instance v12, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    move-object/from16 v0, v16

    iget v13, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    move-object/from16 v0, v16

    iget v14, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    invoke-direct {v12, v13, v14}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;-><init>(FF)V

    invoke-direct {v11, v9, v12}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;-><init>(Ljava/lang/Object;Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;)V

    invoke-virtual {v10, v11}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->addText(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;)V

    .line 443
    :cond_10
    new-instance v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    new-instance v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    move-object/from16 v0, v16

    iget v12, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    const/high16 v13, 0x43800000    # 256.0f

    add-float/2addr v12, v13

    move-object/from16 v0, v16

    iget v13, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    invoke-direct {v11, v12, v13}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;-><init>(FF)V

    invoke-direct {v10, v9, v11}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;-><init>(Ljava/lang/Object;Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->addText(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;)V

    .line 446
    invoke-virtual {v9, v2}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;->addTile(Lorg/mapsforge/core/Tile;)V

    .line 223
    .end local v17    # "linkedDep":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;
    :cond_11
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 450
    .end local v9    # "toAdd":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;
    .end local v16    # "label":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;
    :cond_12
    return-void
.end method

.method private removeOverlappingAreaLabelsWithDependencyLabels(Ljava/util/List;)V
    .locals 8
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
    .line 596
    .local p1, "areaLabels":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-object v3, v3, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->labels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 597
    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-object v3, v3, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->labels:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    iput-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->depLabel:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    .line 598
    new-instance v4, Landroid/graphics/Rect;

    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->depLabel:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    iget-object v3, v3, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->point:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v3, v3, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointX:F

    float-to-int v5, v3

    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->depLabel:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    iget-object v3, v3, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->point:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v6, v3, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointY:F

    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->depLabel:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    iget-object v3, v3, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->value:Ljava/lang/Object;

    check-cast v3, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;

    iget-object v3, v3, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v6, v3

    float-to-int v6, v3

    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->depLabel:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    iget-object v3, v3, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->point:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v7, v3, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointX:F

    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->depLabel:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    iget-object v3, v3, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->value:Ljava/lang/Object;

    check-cast v3, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;

    iget-object v3, v3, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v7

    float-to-int v3, v3

    iget-object v7, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->depLabel:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    iget-object v7, v7, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->point:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v7, v7, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointY:F

    float-to-int v7, v7

    invoke-direct {v4, v5, v6, v3, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->rect1:Landroid/graphics/Rect;

    .line 603
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 604
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    .line 606
    .local v1, "pTC":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;
    new-instance v3, Landroid/graphics/Rect;

    iget v4, v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    float-to-int v4, v4

    iget v5, v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    float-to-int v5, v5

    iget-object v6, v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    float-to-int v6, v6

    iget-object v7, v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    float-to-int v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->rect2:Landroid/graphics/Rect;

    .line 609
    iget-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->rect2:Landroid/graphics/Rect;

    iget-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->rect1:Landroid/graphics/Rect;

    invoke-static {v3, v4}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 610
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 611
    add-int/lit8 v2, v2, -0x1

    .line 603
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 596
    .end local v1    # "pTC":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 615
    .end local v2    # "x":I
    :cond_2
    return-void
.end method

.method private removeOverlappingAreaLabelsWithDependencySymbols(Ljava/util/List;)V
    .locals 10
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
    .line 620
    .local p1, "areaLabels":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;>;"
    iget-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-object v4, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->symbols:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    .line 622
    .local v0, "depSmb":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;, "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;>;"
    new-instance v5, Landroid/graphics/Rect;

    iget-object v4, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->point:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v4, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointX:F

    float-to-int v6, v4

    iget-object v4, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->point:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v4, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointY:F

    float-to-int v7, v4

    iget-object v4, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->point:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v4, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointX:F

    float-to-int v8, v4

    iget-object v4, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->value:Ljava/lang/Object;

    check-cast v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;

    iget-object v4, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;->symbol:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v8, v4

    iget-object v4, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->point:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v4, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointY:F

    float-to-int v9, v4

    iget-object v4, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->value:Ljava/lang/Object;

    check-cast v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;

    iget-object v4, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;->symbol:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/2addr v4, v9

    invoke-direct {v5, v6, v7, v8, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->rect1:Landroid/graphics/Rect;

    .line 626
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 627
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    .line 629
    .local v2, "label":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    float-to-int v5, v5

    iget v6, v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    iget-object v7, v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v6, v6

    iget v7, v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    iget-object v8, v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    float-to-int v8, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->rect2:Landroid/graphics/Rect;

    .line 632
    iget-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->rect2:Landroid/graphics/Rect;

    iget-object v5, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->rect1:Landroid/graphics/Rect;

    invoke-static {v4, v5}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 633
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 634
    add-int/lit8 v3, v3, -0x1

    .line 626
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 638
    .end local v0    # "depSmb":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;, "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;>;"
    .end local v2    # "label":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;
    .end local v3    # "x":I
    :cond_2
    return-void
.end method

.method private removeOverlappingSymbolsWithDepencySymbols$22875ea3(Ljava/util/List;)V
    .locals 10
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
    .line 659
    .local p1, "symbols":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;>;"
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_0
    iget-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-object v4, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->symbols:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 660
    iget-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-object v4, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->symbols:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    .line 661
    .local v1, "sym2":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;, "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;>;"
    new-instance v5, Landroid/graphics/Rect;

    iget-object v4, v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->point:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v4, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointX:F

    float-to-int v4, v4

    add-int/lit8 v6, v4, -0x2

    iget-object v4, v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->point:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v4, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointY:F

    float-to-int v4, v4

    add-int/lit8 v7, v4, -0x2

    iget-object v4, v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->point:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v4, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointX:F

    float-to-int v8, v4

    iget-object v4, v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->value:Ljava/lang/Object;

    check-cast v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;

    iget-object v4, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;->symbol:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v4, v8

    add-int/lit8 v8, v4, 0x2

    iget-object v4, v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->point:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v4, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointY:F

    float-to-int v9, v4

    iget-object v4, v1, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->value:Ljava/lang/Object;

    check-cast v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;

    iget-object v4, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;->symbol:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/2addr v4, v9

    add-int/lit8 v4, v4, 0x2

    invoke-direct {v5, v6, v7, v8, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->rect1:Landroid/graphics/Rect;

    .line 665
    const/4 v3, 0x0

    .local v3, "y":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 667
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    .line 668
    .local v0, "sym":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    float-to-int v5, v5

    iget v6, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->y:F

    float-to-int v6, v6

    iget v7, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    float-to-int v7, v7

    iget-object v8, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->symbol:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->y:F

    float-to-int v8, v8

    iget-object v9, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->symbol:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->rect2:Landroid/graphics/Rect;

    .line 671
    iget-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->rect2:Landroid/graphics/Rect;

    iget-object v5, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->rect1:Landroid/graphics/Rect;

    invoke-static {v4, v5}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 672
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 673
    add-int/lit8 v3, v3, -0x1

    .line 665
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 659
    .end local v0    # "sym":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 677
    .end local v1    # "sym2":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;, "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;>;"
    .end local v3    # "y":I
    :cond_2
    return-void
.end method


# virtual methods
.method final fillDependencyOnTile(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 19
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 713
    .local p1, "labels":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;>;"
    .local p2, "symbols":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;>;"
    .local p3, "areaLabels":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->drawn:Z

    .line 715
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    .line 716
    :cond_0
    new-instance v2, Lorg/mapsforge/core/Tile;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v3, v3, Lorg/mapsforge/core/Tile;->tileX:J

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v5, v5, Lorg/mapsforge/core/Tile;->tileY:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-byte v7, v7, Lorg/mapsforge/core/Tile;->zoomLevel:B

    invoke-direct/range {v2 .. v7}, Lorg/mapsforge/core/Tile;-><init>(JJB)V

    new-instance v3, Lorg/mapsforge/core/Tile;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v4, v4, Lorg/mapsforge/core/Tile;->tileX:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v6, v6, Lorg/mapsforge/core/Tile;->tileY:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-byte v8, v8, Lorg/mapsforge/core/Tile;->zoomLevel:B

    invoke-direct/range {v3 .. v8}, Lorg/mapsforge/core/Tile;-><init>(JJB)V

    new-instance v4, Lorg/mapsforge/core/Tile;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v5, v5, Lorg/mapsforge/core/Tile;->tileX:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v7, v7, Lorg/mapsforge/core/Tile;->tileY:J

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-byte v9, v9, Lorg/mapsforge/core/Tile;->zoomLevel:B

    invoke-direct/range {v4 .. v9}, Lorg/mapsforge/core/Tile;-><init>(JJB)V

    new-instance v5, Lorg/mapsforge/core/Tile;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v6, v6, Lorg/mapsforge/core/Tile;->tileX:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v8, v8, Lorg/mapsforge/core/Tile;->tileY:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-byte v10, v10, Lorg/mapsforge/core/Tile;->zoomLevel:B

    invoke-direct/range {v5 .. v10}, Lorg/mapsforge/core/Tile;-><init>(JJB)V

    new-instance v6, Lorg/mapsforge/core/Tile;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v7, v7, Lorg/mapsforge/core/Tile;->tileX:J

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v9, v9, Lorg/mapsforge/core/Tile;->tileY:J

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-byte v11, v11, Lorg/mapsforge/core/Tile;->zoomLevel:B

    invoke-direct/range {v6 .. v11}, Lorg/mapsforge/core/Tile;-><init>(JJB)V

    new-instance v7, Lorg/mapsforge/core/Tile;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v8, v8, Lorg/mapsforge/core/Tile;->tileX:J

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v10, v10, Lorg/mapsforge/core/Tile;->tileY:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-byte v12, v12, Lorg/mapsforge/core/Tile;->zoomLevel:B

    invoke-direct/range {v7 .. v12}, Lorg/mapsforge/core/Tile;-><init>(JJB)V

    new-instance v8, Lorg/mapsforge/core/Tile;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v9, v9, Lorg/mapsforge/core/Tile;->tileX:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v11, v11, Lorg/mapsforge/core/Tile;->tileY:J

    const-wide/16 v13, 0x1

    sub-long/2addr v11, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-byte v13, v13, Lorg/mapsforge/core/Tile;->zoomLevel:B

    invoke-direct/range {v8 .. v13}, Lorg/mapsforge/core/Tile;-><init>(JJB)V

    new-instance v9, Lorg/mapsforge/core/Tile;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v10, v10, Lorg/mapsforge/core/Tile;->tileX:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v12, v12, Lorg/mapsforge/core/Tile;->tileY:J

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-byte v14, v14, Lorg/mapsforge/core/Tile;->zoomLevel:B

    invoke-direct/range {v9 .. v14}, Lorg/mapsforge/core/Tile;-><init>(JJB)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_1

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    new-instance v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    invoke-direct {v11}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;-><init>()V

    invoke-interface {v10, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_2

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    new-instance v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    invoke-direct {v11}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;-><init>()V

    invoke-interface {v10, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_3

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    new-instance v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    invoke-direct {v11}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;-><init>()V

    invoke-interface {v10, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_4

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    new-instance v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    invoke-direct {v11}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;-><init>()V

    invoke-interface {v10, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_5

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    new-instance v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    invoke-direct {v11}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;-><init>()V

    invoke-interface {v10, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_6

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    new-instance v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    invoke-direct {v11}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;-><init>()V

    invoke-interface {v10, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_7

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    new-instance v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    invoke-direct {v11}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;-><init>()V

    invoke-interface {v10, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_8

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    new-instance v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    invoke-direct {v11}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;-><init>()V

    invoke-interface {v10, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-direct/range {p0 .. p1}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->fillDependencyLabels(Ljava/util/List;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->fillDependencyLabels(Ljava/util/List;)V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_9
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    const/4 v12, 0x0

    iget v11, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->y:F

    const/4 v14, 0x0

    cmpg-float v11, v11, v14

    if-gez v11, :cond_b

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-boolean v11, v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->drawn:Z

    if-nez v11, :cond_b

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    new-instance v12, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;

    iget-object v14, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->symbol:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    invoke-direct {v12, v14, v15}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;-><init>(Landroid/graphics/Bitmap;Lorg/mapsforge/core/Tile;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    new-instance v15, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    new-instance v16, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v0, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    move/from16 v17, v0

    iget v0, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->y:F

    move/from16 v18, v0

    invoke-direct/range {v16 .. v18}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;-><init>(FF)V

    move-object/from16 v0, v16

    invoke-direct {v15, v12, v0}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;-><init>(Ljava/lang/Object;Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;)V

    invoke-virtual {v14, v15}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->addSymbol(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;)V

    new-instance v14, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    new-instance v15, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v0, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    move/from16 v16, v0

    iget v0, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->y:F

    move/from16 v17, v0

    const/high16 v18, 0x43800000    # 256.0f

    add-float v17, v17, v18

    invoke-direct/range {v15 .. v17}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;-><init>(FF)V

    invoke-direct {v14, v12, v15}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;-><init>(Ljava/lang/Object;Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;)V

    invoke-virtual {v11, v14}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->addSymbol(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;)V

    invoke-virtual {v12, v4}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;->addTile(Lorg/mapsforge/core/Tile;)V

    iget v11, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    const/4 v14, 0x0

    cmpg-float v11, v11, v14

    if-gez v11, :cond_a

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-boolean v11, v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->drawn:Z

    if-nez v11, :cond_a

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    new-instance v14, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    new-instance v15, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v0, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    move/from16 v16, v0

    const/high16 v17, 0x43800000    # 256.0f

    add-float v16, v16, v17

    iget v0, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->y:F

    move/from16 v17, v0

    const/high16 v18, 0x43800000    # 256.0f

    add-float v17, v17, v18

    invoke-direct/range {v15 .. v17}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;-><init>(FF)V

    invoke-direct {v14, v12, v15}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;-><init>(Ljava/lang/Object;Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;)V

    invoke-virtual {v11, v14}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->addSymbol(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;)V

    invoke-virtual {v12, v6}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;->addTile(Lorg/mapsforge/core/Tile;)V

    :cond_a
    iget v11, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    iget-object v14, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->symbol:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v11, v14

    const/high16 v14, 0x43800000    # 256.0f

    cmpl-float v11, v11, v14

    if-lez v11, :cond_b

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-boolean v11, v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->drawn:Z

    if-nez v11, :cond_b

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    new-instance v14, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    new-instance v15, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v0, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    move/from16 v16, v0

    const/high16 v17, 0x43800000    # 256.0f

    sub-float v16, v16, v17

    iget v0, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->y:F

    move/from16 v17, v0

    const/high16 v18, 0x43800000    # 256.0f

    add-float v17, v17, v18

    invoke-direct/range {v15 .. v17}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;-><init>(FF)V

    invoke-direct {v14, v12, v15}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;-><init>(Ljava/lang/Object;Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;)V

    invoke-virtual {v11, v14}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->addSymbol(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;)V

    invoke-virtual {v12, v8}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;->addTile(Lorg/mapsforge/core/Tile;)V

    :cond_b
    iget v11, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->y:F

    iget-object v14, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->symbol:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v11, v14

    const/high16 v14, 0x43800000    # 256.0f

    cmpl-float v11, v11, v14

    if-lez v11, :cond_e

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-boolean v11, v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->drawn:Z

    if-nez v11, :cond_e

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    if-nez v12, :cond_c

    new-instance v12, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;

    iget-object v14, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->symbol:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    invoke-direct {v12, v14, v15}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;-><init>(Landroid/graphics/Bitmap;Lorg/mapsforge/core/Tile;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    new-instance v15, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    new-instance v16, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v0, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    move/from16 v17, v0

    iget v0, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->y:F

    move/from16 v18, v0

    invoke-direct/range {v16 .. v18}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;-><init>(FF)V

    move-object/from16 v0, v16

    invoke-direct {v15, v12, v0}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;-><init>(Ljava/lang/Object;Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;)V

    invoke-virtual {v14, v15}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->addSymbol(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;)V

    :cond_c
    new-instance v14, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    new-instance v15, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v0, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    move/from16 v16, v0

    iget v0, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->y:F

    move/from16 v17, v0

    const/high16 v18, 0x43800000    # 256.0f

    sub-float v17, v17, v18

    invoke-direct/range {v15 .. v17}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;-><init>(FF)V

    invoke-direct {v14, v12, v15}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;-><init>(Ljava/lang/Object;Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;)V

    invoke-virtual {v11, v14}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->addSymbol(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;)V

    invoke-virtual {v12, v5}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;->addTile(Lorg/mapsforge/core/Tile;)V

    iget v11, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    const/4 v14, 0x0

    cmpg-float v11, v11, v14

    if-gez v11, :cond_d

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-boolean v11, v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->drawn:Z

    if-nez v11, :cond_d

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    new-instance v14, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    new-instance v15, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v0, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    move/from16 v16, v0

    const/high16 v17, 0x43800000    # 256.0f

    add-float v16, v16, v17

    iget v0, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->y:F

    move/from16 v17, v0

    const/high16 v18, 0x43800000    # 256.0f

    sub-float v17, v17, v18

    invoke-direct/range {v15 .. v17}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;-><init>(FF)V

    invoke-direct {v14, v12, v15}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;-><init>(Ljava/lang/Object;Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;)V

    invoke-virtual {v11, v14}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->addSymbol(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;)V

    invoke-virtual {v12, v7}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;->addTile(Lorg/mapsforge/core/Tile;)V

    :cond_d
    iget v11, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    iget-object v14, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->symbol:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v11, v14

    const/high16 v14, 0x43800000    # 256.0f

    cmpl-float v11, v11, v14

    if-lez v11, :cond_e

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-boolean v11, v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->drawn:Z

    if-nez v11, :cond_e

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    new-instance v14, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    new-instance v15, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v0, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    move/from16 v16, v0

    const/high16 v17, 0x43800000    # 256.0f

    sub-float v16, v16, v17

    iget v0, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->y:F

    move/from16 v17, v0

    const/high16 v18, 0x43800000    # 256.0f

    sub-float v17, v17, v18

    invoke-direct/range {v15 .. v17}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;-><init>(FF)V

    invoke-direct {v14, v12, v15}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;-><init>(Ljava/lang/Object;Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;)V

    invoke-virtual {v11, v14}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->addSymbol(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;)V

    invoke-virtual {v12, v9}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;->addTile(Lorg/mapsforge/core/Tile;)V

    :cond_e
    iget v11, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    const/4 v14, 0x0

    cmpg-float v11, v11, v14

    if-gez v11, :cond_10

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-boolean v11, v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->drawn:Z

    if-nez v11, :cond_10

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    if-nez v12, :cond_f

    new-instance v12, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;

    iget-object v14, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->symbol:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    invoke-direct {v12, v14, v15}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;-><init>(Landroid/graphics/Bitmap;Lorg/mapsforge/core/Tile;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    new-instance v15, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    new-instance v16, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v0, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    move/from16 v17, v0

    iget v0, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->y:F

    move/from16 v18, v0

    invoke-direct/range {v16 .. v18}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;-><init>(FF)V

    move-object/from16 v0, v16

    invoke-direct {v15, v12, v0}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;-><init>(Ljava/lang/Object;Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;)V

    invoke-virtual {v14, v15}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->addSymbol(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;)V

    :cond_f
    new-instance v14, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    new-instance v15, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v0, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    move/from16 v16, v0

    const/high16 v17, 0x43800000    # 256.0f

    add-float v16, v16, v17

    iget v0, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->y:F

    move/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;-><init>(FF)V

    invoke-direct {v14, v12, v15}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;-><init>(Ljava/lang/Object;Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;)V

    invoke-virtual {v11, v14}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->addSymbol(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;)V

    invoke-virtual {v12, v2}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;->addTile(Lorg/mapsforge/core/Tile;)V

    :cond_10
    iget v11, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    iget-object v14, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->symbol:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v11, v14

    const/high16 v14, 0x43800000    # 256.0f

    cmpl-float v11, v11, v14

    if-lez v11, :cond_9

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-boolean v11, v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->drawn:Z

    if-nez v11, :cond_9

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    if-nez v12, :cond_11

    new-instance v12, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;

    iget-object v14, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->symbol:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    invoke-direct {v12, v14, v15}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;-><init>(Landroid/graphics/Bitmap;Lorg/mapsforge/core/Tile;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    new-instance v15, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    new-instance v16, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v0, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    move/from16 v17, v0

    iget v0, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->y:F

    move/from16 v18, v0

    invoke-direct/range {v16 .. v18}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;-><init>(FF)V

    move-object/from16 v0, v16

    invoke-direct {v15, v12, v0}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;-><init>(Ljava/lang/Object;Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;)V

    invoke-virtual {v14, v15}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->addSymbol(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;)V

    :cond_11
    new-instance v14, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    new-instance v15, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v0, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    move/from16 v16, v0

    const/high16 v17, 0x43800000    # 256.0f

    sub-float v16, v16, v17

    iget v10, v10, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->y:F

    move/from16 v0, v16

    invoke-direct {v15, v0, v10}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;-><init>(FF)V

    invoke-direct {v14, v12, v15}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;-><init>(Ljava/lang/Object;Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;)V

    invoke-virtual {v11, v14}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->addSymbol(Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;)V

    invoke-virtual {v12, v3}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;->addTile(Lorg/mapsforge/core/Tile;)V

    goto/16 :goto_0

    .line 719
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-object v2, v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->labels:Ljava/util/List;

    if-eqz v2, :cond_14

    .line 720
    const/4 v2, 0x0

    move v8, v2

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-object v2, v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->labels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v8, v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-object v2, v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->labels:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->depLabel:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->depLabel:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    iget-object v2, v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->value:Ljava/lang/Object;

    check-cast v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;

    iget-object v2, v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;->paintBack:Landroid/graphics/Paint;

    if-eqz v2, :cond_13

    new-instance v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->depLabel:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    iget-object v3, v3, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->value:Ljava/lang/Object;

    check-cast v3, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;

    iget-object v3, v3, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;->text:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->depLabel:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    iget-object v4, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->point:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v4, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->depLabel:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    iget-object v5, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->point:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v5, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointY:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->depLabel:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    iget-object v6, v6, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->value:Ljava/lang/Object;

    check-cast v6, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;

    iget-object v6, v6, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;->paintFront:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->depLabel:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    iget-object v7, v7, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->value:Ljava/lang/Object;

    check-cast v7, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;

    iget-object v7, v7, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;->paintBack:Landroid/graphics/Paint;

    invoke-direct/range {v2 .. v7}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;-><init>(Ljava/lang/String;FFLandroid/graphics/Paint;Landroid/graphics/Paint;)V

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_1

    :cond_13
    new-instance v3, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->depLabel:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    iget-object v2, v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->value:Ljava/lang/Object;

    check-cast v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;

    iget-object v4, v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;->text:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->depLabel:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    iget-object v2, v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->point:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v5, v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointX:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->depLabel:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    iget-object v2, v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->point:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v6, v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointY:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->depLabel:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    iget-object v2, v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->value:Ljava/lang/Object;

    check-cast v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;

    iget-object v2, v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;->paintFront:Landroid/graphics/Paint;

    invoke-direct {v3, v4, v5, v6, v2}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;-><init>(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 722
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-object v2, v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->symbols:Ljava/util/List;

    if-eqz v2, :cond_15

    .line 723
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-object v2, v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->symbols:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    new-instance v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget-object v3, v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->value:Ljava/lang/Object;

    check-cast v3, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;

    iget-object v3, v3, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;->symbol:Landroid/graphics/Bitmap;

    iget-object v6, v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->point:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v6, v6, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointX:F

    iget-object v2, v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->point:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v2, v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointY:F

    invoke-direct {v5, v3, v6, v2}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;-><init>(Landroid/graphics/Bitmap;FF)V

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 725
    :cond_15
    return-void
.end method

.method final generateTileAndDependencyOnTile(Lorg/mapsforge/core/Tile;)V
    .locals 6
    .param p1, "tile"    # Lorg/mapsforge/core/Tile;

    .prologue
    .line 735
    new-instance v0, Lorg/mapsforge/core/Tile;

    iget-wide v1, p1, Lorg/mapsforge/core/Tile;->tileX:J

    iget-wide v3, p1, Lorg/mapsforge/core/Tile;->tileY:J

    iget-byte v5, p1, Lorg/mapsforge/core/Tile;->zoomLevel:B

    invoke-direct/range {v0 .. v5}, Lorg/mapsforge/core/Tile;-><init>(JJB)V

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    .line 736
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    .line 738
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    if-nez v0, :cond_0

    .line 739
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    new-instance v2, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    invoke-direct {v2}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    iget-object v1, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    .line 742
    :cond_0
    return-void
.end method

.method final removeAreaLabelsInAlreadyDrawnAreas(Ljava/util/List;)V
    .locals 18
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
    .line 751
    .local p1, "areaLabels":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;>;"
    new-instance v1, Lorg/mapsforge/core/Tile;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v5, v5, Lorg/mapsforge/core/Tile;->tileX:J

    const-wide/16 v7, 0x1

    sub-long v2, v5, v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v4, v5, Lorg/mapsforge/core/Tile;->tileY:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-byte v6, v6, Lorg/mapsforge/core/Tile;->zoomLevel:B

    invoke-direct/range {v1 .. v6}, Lorg/mapsforge/core/Tile;-><init>(JJB)V

    .line 752
    .local v1, "lefttmp":Lorg/mapsforge/core/Tile;
    new-instance v2, Lorg/mapsforge/core/Tile;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v5, v5, Lorg/mapsforge/core/Tile;->tileX:J

    const-wide/16 v7, 0x1

    add-long v3, v5, v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v5, v5, Lorg/mapsforge/core/Tile;->tileY:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-byte v7, v7, Lorg/mapsforge/core/Tile;->zoomLevel:B

    invoke-direct/range {v2 .. v7}, Lorg/mapsforge/core/Tile;-><init>(JJB)V

    .line 753
    .local v2, "righttmp":Lorg/mapsforge/core/Tile;
    new-instance v3, Lorg/mapsforge/core/Tile;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v4, v5, Lorg/mapsforge/core/Tile;->tileX:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v6, v6, Lorg/mapsforge/core/Tile;->tileY:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-byte v8, v8, Lorg/mapsforge/core/Tile;->zoomLevel:B

    invoke-direct/range {v3 .. v8}, Lorg/mapsforge/core/Tile;-><init>(JJB)V

    .line 754
    .local v3, "uptmp":Lorg/mapsforge/core/Tile;
    new-instance v4, Lorg/mapsforge/core/Tile;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v5, v5, Lorg/mapsforge/core/Tile;->tileX:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v7, v7, Lorg/mapsforge/core/Tile;->tileY:J

    const-wide/16 v16, 0x1

    add-long v7, v7, v16

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-byte v9, v9, Lorg/mapsforge/core/Tile;->zoomLevel:B

    invoke-direct/range {v4 .. v9}, Lorg/mapsforge/core/Tile;-><init>(JJB)V

    .line 761
    .local v4, "downtmp":Lorg/mapsforge/core/Tile;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->tmp:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    .line 762
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->tmp:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    if-nez v5, :cond_1

    const/4 v13, 0x0

    .line 764
    .local v13, "left":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->tmp:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    .line 765
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->tmp:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    if-nez v5, :cond_2

    const/4 v14, 0x0

    .line 767
    .local v14, "right":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->tmp:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    .line 768
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->tmp:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    if-nez v5, :cond_3

    const/4 v15, 0x0

    .line 770
    .local v15, "up":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->tmp:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    .line 771
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->tmp:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    if-nez v5, :cond_4

    const/4 v10, 0x0

    .line 775
    .local v10, "down":Z
    :goto_3
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v11, v5, :cond_8

    .line 776
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    .line 778
    .local v12, "label":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;
    if-eqz v15, :cond_5

    iget v5, v12, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    iget-object v6, v12, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_5

    .line 779
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 780
    add-int/lit8 v11, v11, -0x1

    .line 775
    :cond_0
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 762
    .end local v10    # "down":Z
    .end local v11    # "i":I
    .end local v12    # "label":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;
    .end local v13    # "left":Z
    .end local v14    # "right":Z
    .end local v15    # "up":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->tmp:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-boolean v13, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->drawn:Z

    goto :goto_0

    .line 765
    .restart local v13    # "left":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->tmp:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-boolean v14, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->drawn:Z

    goto :goto_1

    .line 768
    .restart local v14    # "right":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->tmp:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-boolean v15, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->drawn:Z

    goto :goto_2

    .line 771
    .restart local v15    # "up":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->tmp:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-boolean v10, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->drawn:Z

    goto :goto_3

    .line 784
    .restart local v10    # "down":Z
    .restart local v11    # "i":I
    .restart local v12    # "label":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;
    :cond_5
    if-eqz v10, :cond_6

    iget v5, v12, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->y:F

    const/high16 v6, 0x43800000    # 256.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6

    .line 785
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 786
    add-int/lit8 v11, v11, -0x1

    .line 787
    goto :goto_5

    .line 789
    :cond_6
    if-eqz v13, :cond_7

    iget v5, v12, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_7

    .line 790
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 791
    add-int/lit8 v11, v11, -0x1

    .line 792
    goto :goto_5

    .line 794
    :cond_7
    if-eqz v14, :cond_0

    iget v5, v12, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->x:F

    iget-object v6, v12, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    const/high16 v6, 0x43800000    # 256.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 795
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 796
    add-int/lit8 v11, v11, -0x1

    goto :goto_5

    .line 800
    .end local v12    # "label":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;
    :cond_8
    return-void
.end method

.method final removeOverlappingObjectsWithDependencyOnTile(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;",
            ">;",
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
    .local p1, "labels":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;>;"
    .local p2, "areaLabels":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;>;"
    .local p3, "symbols":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;>;"
    const/4 v2, 0x0

    .line 814
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-object v0, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->labels:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-object v0, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_6

    move v1, v2

    .line 815
    :goto_0
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-object v0, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    move v3, v2

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget-object v4, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->text:Ljava/lang/String;

    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-object v0, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->labels:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    iget-object v0, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->value:Ljava/lang/Object;

    check-cast v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;

    iget-object v0, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;->text:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget-object v4, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->paintFront:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-object v0, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->labels:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    iget-object v0, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->value:Ljava/lang/Object;

    check-cast v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;

    iget-object v0, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;->paintFront:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;

    iget-object v4, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/PointTextContainer;->paintBack:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-object v0, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->labels:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    iget-object v0, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->value:Ljava/lang/Object;

    check-cast v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;

    iget-object v0, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;->paintBack:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move v1, v2

    .line 816
    :goto_2
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-object v0, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-object v0, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->labels:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->depLabel:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->depLabel:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    iget-object v0, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->point:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v0, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointX:F

    float-to-int v4, v0

    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->depLabel:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    iget-object v0, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->point:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointY:F

    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->depLabel:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    iget-object v0, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->value:Ljava/lang/Object;

    check-cast v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;

    iget-object v0, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, v5, v0

    float-to-int v5, v0

    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->depLabel:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    iget-object v0, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->point:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v6, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointX:F

    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->depLabel:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    iget-object v0, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->value:Ljava/lang/Object;

    check-cast v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;

    iget-object v0, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v6

    float-to-int v0, v0

    iget-object v6, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->depLabel:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    iget-object v6, v6, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->point:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v6, v6, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointY:F

    float-to-int v6, v6

    invoke-direct {v3, v4, v5, v0, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->rect1:Landroid/graphics/Rect;

    move v3, v2

    :goto_3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->smb:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->smb:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget v4, v4, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    float-to-int v4, v4

    iget-object v5, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->smb:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget v5, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->y:F

    float-to-int v5, v5

    iget-object v6, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->smb:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget v6, v6, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    float-to-int v6, v6

    iget-object v7, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->smb:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget-object v7, v7, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->symbol:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->smb:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget v7, v7, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->y:F

    float-to-int v7, v7

    iget-object v8, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->smb:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    iget-object v8, v8, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->symbol:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->rect2:Landroid/graphics/Rect;

    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->rect2:Landroid/graphics/Rect;

    iget-object v4, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->rect1:Landroid/graphics/Rect;

    invoke-static {v0, v4}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    .line 817
    :cond_5
    invoke-direct {p0, p2}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->removeOverlappingAreaLabelsWithDependencyLabels(Ljava/util/List;)V

    .line 820
    :cond_6
    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-object v0, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->symbols:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-object v0, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->symbols:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7

    .line 821
    invoke-direct {p0, p3}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->removeOverlappingSymbolsWithDepencySymbols$22875ea3(Ljava/util/List;)V

    .line 822
    invoke-direct {p0, p2}, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->removeOverlappingAreaLabelsWithDependencySymbols(Ljava/util/List;)V

    .line 824
    :cond_7
    return-void
.end method

.method final removeReferencePointsFromDependencyCache([Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;)V
    .locals 21
    .param p1, "refPos"    # [Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;

    .prologue
    .line 835
    new-instance v1, Lorg/mapsforge/core/Tile;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v5, v5, Lorg/mapsforge/core/Tile;->tileX:J

    const-wide/16 v7, 0x1

    sub-long v2, v5, v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v4, v5, Lorg/mapsforge/core/Tile;->tileY:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-byte v6, v6, Lorg/mapsforge/core/Tile;->zoomLevel:B

    invoke-direct/range {v1 .. v6}, Lorg/mapsforge/core/Tile;-><init>(JJB)V

    .line 836
    .local v1, "lefttmp":Lorg/mapsforge/core/Tile;
    new-instance v2, Lorg/mapsforge/core/Tile;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v5, v5, Lorg/mapsforge/core/Tile;->tileX:J

    const-wide/16 v7, 0x1

    add-long v3, v5, v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v5, v5, Lorg/mapsforge/core/Tile;->tileY:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-byte v7, v7, Lorg/mapsforge/core/Tile;->zoomLevel:B

    invoke-direct/range {v2 .. v7}, Lorg/mapsforge/core/Tile;-><init>(JJB)V

    .line 837
    .local v2, "righttmp":Lorg/mapsforge/core/Tile;
    new-instance v3, Lorg/mapsforge/core/Tile;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v4, v5, Lorg/mapsforge/core/Tile;->tileX:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v6, v6, Lorg/mapsforge/core/Tile;->tileY:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-byte v8, v8, Lorg/mapsforge/core/Tile;->zoomLevel:B

    invoke-direct/range {v3 .. v8}, Lorg/mapsforge/core/Tile;-><init>(JJB)V

    .line 838
    .local v3, "uptmp":Lorg/mapsforge/core/Tile;
    new-instance v4, Lorg/mapsforge/core/Tile;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v5, v5, Lorg/mapsforge/core/Tile;->tileX:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v7, v7, Lorg/mapsforge/core/Tile;->tileY:J

    const-wide/16 v19, 0x1

    add-long v7, v7, v19

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-byte v9, v9, Lorg/mapsforge/core/Tile;->zoomLevel:B

    invoke-direct/range {v4 .. v9}, Lorg/mapsforge/core/Tile;-><init>(JJB)V

    .line 845
    .local v4, "downtmp":Lorg/mapsforge/core/Tile;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->tmp:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    .line 846
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->tmp:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    if-nez v5, :cond_1

    const/4 v13, 0x0

    .line 848
    .local v13, "left":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->tmp:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    .line 849
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->tmp:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    if-nez v5, :cond_2

    const/4 v15, 0x0

    .line 851
    .local v15, "right":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->tmp:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    .line 852
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->tmp:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    if-nez v5, :cond_3

    const/16 v17, 0x0

    .line 854
    .local v17, "up":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->tmp:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    .line 855
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->tmp:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    if-nez v5, :cond_4

    const/4 v10, 0x0

    .line 859
    .local v10, "down":Z
    :goto_3
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    move-object/from16 v0, p1

    array-length v5, v0

    if-ge v11, v5, :cond_8

    .line 860
    aget-object v14, p1, v11

    .line 862
    .local v14, "ref":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;
    if-eqz v14, :cond_0

    .line 863
    if-eqz v17, :cond_5

    iget v5, v14, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->y:F

    iget v6, v14, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->height:F

    sub-float/2addr v5, v6

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_5

    .line 867
    const/4 v5, 0x0

    aput-object v5, p1, v11

    .line 859
    :cond_0
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 846
    .end local v10    # "down":Z
    .end local v11    # "i":I
    .end local v13    # "left":Z
    .end local v14    # "ref":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;
    .end local v15    # "right":Z
    .end local v17    # "up":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->tmp:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-boolean v13, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->drawn:Z

    goto :goto_0

    .line 849
    .restart local v13    # "left":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->tmp:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-boolean v15, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->drawn:Z

    goto :goto_1

    .line 852
    .restart local v15    # "right":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->tmp:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-boolean v0, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->drawn:Z

    move/from16 v17, v0

    goto :goto_2

    .line 855
    .restart local v17    # "up":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->tmp:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-boolean v10, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->drawn:Z

    goto :goto_3

    .line 871
    .restart local v10    # "down":Z
    .restart local v11    # "i":I
    .restart local v14    # "ref":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;
    :cond_5
    if-eqz v10, :cond_6

    iget v5, v14, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->y:F

    const/high16 v6, 0x43800000    # 256.0f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_6

    .line 872
    const/4 v5, 0x0

    aput-object v5, p1, v11

    goto :goto_5

    .line 876
    :cond_6
    if-eqz v13, :cond_7

    iget v5, v14, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->x:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_7

    .line 877
    const/4 v5, 0x0

    aput-object v5, p1, v11

    goto :goto_5

    .line 881
    :cond_7
    if-eqz v15, :cond_0

    iget v5, v14, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->x:F

    iget v6, v14, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->width:F

    add-float/2addr v5, v6

    const/high16 v6, 0x43800000    # 256.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 882
    const/4 v5, 0x0

    aput-object v5, p1, v11

    goto :goto_5

    .line 888
    .end local v14    # "ref":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    if-eqz v5, :cond_e

    .line 890
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-object v5, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->labels:Ljava/util/List;

    if-eqz v5, :cond_b

    .line 891
    const/4 v11, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-object v5, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->labels:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v11, v5, :cond_b

    .line 892
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-object v5, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->labels:Ljava/util/List;

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->depLabel:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    .line 893
    new-instance v6, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->depLabel:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    iget-object v5, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->point:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v5, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointX:F

    float-to-int v5, v5

    add-int/lit8 v7, v5, -0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->depLabel:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    iget-object v5, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->point:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v8, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->depLabel:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    iget-object v5, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->value:Ljava/lang/Object;

    check-cast v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;

    iget-object v5, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v8, v5

    float-to-int v5, v5

    add-int/lit8 v8, v5, -0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->depLabel:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    iget-object v5, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->point:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v9, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->depLabel:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    iget-object v5, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->value:Ljava/lang/Object;

    check-cast v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;

    iget-object v5, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyText;->boundary:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v9

    const/high16 v9, 0x40000000    # 2.0f

    add-float/2addr v5, v9

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->depLabel:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    iget-object v9, v9, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->point:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v9, v9, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointY:F

    const/high16 v19, 0x40000000    # 2.0f

    add-float v9, v9, v19

    float-to-int v9, v9

    invoke-direct {v6, v7, v8, v5, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->rect1:Landroid/graphics/Rect;

    .line 898
    const/16 v18, 0x0

    .local v18, "y":I
    :goto_7
    move-object/from16 v0, p1

    array-length v5, v0

    move/from16 v0, v18

    if-ge v0, v5, :cond_a

    .line 899
    aget-object v5, p1, v18

    if-eqz v5, :cond_9

    .line 900
    new-instance v5, Landroid/graphics/Rect;

    aget-object v6, p1, v18

    iget v6, v6, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->x:F

    float-to-int v6, v6

    aget-object v7, p1, v18

    iget v7, v7, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->y:F

    aget-object v8, p1, v18

    iget v8, v8, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->height:F

    sub-float/2addr v7, v8

    float-to-int v7, v7

    aget-object v8, p1, v18

    iget v8, v8, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->x:F

    aget-object v9, p1, v18

    iget v9, v9, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->width:F

    add-float/2addr v8, v9

    float-to-int v8, v8

    aget-object v9, p1, v18

    iget v9, v9, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->y:F

    float-to-int v9, v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->rect2:Landroid/graphics/Rect;

    .line 904
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->rect2:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->rect1:Landroid/graphics/Rect;

    invoke-static {v5, v6}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 905
    const/4 v5, 0x0

    aput-object v5, p1, v18

    .line 898
    :cond_9
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    .line 891
    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_6

    .line 911
    .end local v18    # "y":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-object v5, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->symbols:Ljava/util/List;

    if-eqz v5, :cond_e

    .line 912
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentDependencyOnTile:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-object v5, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->symbols:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;

    .line 914
    .local v16, "symbols2":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;, "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;>;"
    new-instance v6, Landroid/graphics/Rect;

    move-object/from16 v0, v16

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->point:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v5, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointX:F

    float-to-int v7, v5

    move-object/from16 v0, v16

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->point:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v5, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointY:F

    float-to-int v8, v5

    move-object/from16 v0, v16

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->point:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v9, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointX:F

    move-object/from16 v0, v16

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->value:Ljava/lang/Object;

    check-cast v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;

    iget-object v5, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;->symbol:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v9

    float-to-int v9, v5

    move-object/from16 v0, v16

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->point:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;

    iget v0, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/ImmutablePoint;->pointY:F

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;->value:Ljava/lang/Object;

    check-cast v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;

    iget-object v5, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;->symbol:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float v5, v5, v19

    float-to-int v5, v5

    invoke-direct {v6, v7, v8, v9, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->rect1:Landroid/graphics/Rect;

    .line 918
    const/16 v18, 0x0

    .restart local v18    # "y":I
    :goto_8
    move-object/from16 v0, p1

    array-length v5, v0

    move/from16 v0, v18

    if-ge v0, v5, :cond_c

    .line 919
    aget-object v5, p1, v18

    if-eqz v5, :cond_d

    .line 920
    new-instance v5, Landroid/graphics/Rect;

    aget-object v6, p1, v18

    iget v6, v6, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->x:F

    float-to-int v6, v6

    aget-object v7, p1, v18

    iget v7, v7, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->y:F

    aget-object v8, p1, v18

    iget v8, v8, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->height:F

    sub-float/2addr v7, v8

    float-to-int v7, v7

    aget-object v8, p1, v18

    iget v8, v8, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->x:F

    aget-object v9, p1, v18

    iget v9, v9, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->width:F

    add-float/2addr v8, v9

    float-to-int v8, v8

    aget-object v9, p1, v18

    iget v9, v9, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/LabelPlacement$ReferencePosition;->y:F

    float-to-int v9, v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->rect2:Landroid/graphics/Rect;

    .line 924
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->rect2:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->rect1:Landroid/graphics/Rect;

    invoke-static {v5, v6}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 925
    const/4 v5, 0x0

    aput-object v5, p1, v18

    .line 918
    :cond_d
    add-int/lit8 v18, v18, 0x1

    goto :goto_8

    .line 932
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v16    # "symbols2":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency;, "Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$Dependency<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencySymbol;>;"
    .end local v18    # "y":I
    :cond_e
    return-void
.end method

.method final removeSymbolsFromDrawnAreas(Ljava/util/List;)V
    .locals 18
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
    .line 935
    .local p1, "symbols":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;>;"
    new-instance v1, Lorg/mapsforge/core/Tile;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v5, v5, Lorg/mapsforge/core/Tile;->tileX:J

    const-wide/16 v7, 0x1

    sub-long v2, v5, v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v4, v5, Lorg/mapsforge/core/Tile;->tileY:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-byte v6, v6, Lorg/mapsforge/core/Tile;->zoomLevel:B

    invoke-direct/range {v1 .. v6}, Lorg/mapsforge/core/Tile;-><init>(JJB)V

    .line 936
    .local v1, "lefttmp":Lorg/mapsforge/core/Tile;
    new-instance v2, Lorg/mapsforge/core/Tile;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v5, v5, Lorg/mapsforge/core/Tile;->tileX:J

    const-wide/16 v7, 0x1

    add-long v3, v5, v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v5, v5, Lorg/mapsforge/core/Tile;->tileY:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-byte v7, v7, Lorg/mapsforge/core/Tile;->zoomLevel:B

    invoke-direct/range {v2 .. v7}, Lorg/mapsforge/core/Tile;-><init>(JJB)V

    .line 937
    .local v2, "righttmp":Lorg/mapsforge/core/Tile;
    new-instance v3, Lorg/mapsforge/core/Tile;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v4, v5, Lorg/mapsforge/core/Tile;->tileX:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v6, v6, Lorg/mapsforge/core/Tile;->tileY:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-byte v8, v8, Lorg/mapsforge/core/Tile;->zoomLevel:B

    invoke-direct/range {v3 .. v8}, Lorg/mapsforge/core/Tile;-><init>(JJB)V

    .line 938
    .local v3, "uptmp":Lorg/mapsforge/core/Tile;
    new-instance v4, Lorg/mapsforge/core/Tile;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v5, v5, Lorg/mapsforge/core/Tile;->tileX:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-wide v7, v7, Lorg/mapsforge/core/Tile;->tileY:J

    const-wide/16 v16, 0x1

    add-long v7, v7, v16

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->currentTile:Lorg/mapsforge/core/Tile;

    iget-byte v9, v9, Lorg/mapsforge/core/Tile;->zoomLevel:B

    invoke-direct/range {v4 .. v9}, Lorg/mapsforge/core/Tile;-><init>(JJB)V

    .line 945
    .local v4, "downtmp":Lorg/mapsforge/core/Tile;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->tmp:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    .line 946
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->tmp:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    if-nez v5, :cond_1

    const/4 v12, 0x0

    .line 948
    .local v12, "left":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->tmp:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    .line 949
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->tmp:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    if-nez v5, :cond_2

    const/4 v14, 0x0

    .line 951
    .local v14, "right":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->tmp:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    .line 952
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->tmp:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    if-nez v5, :cond_3

    const/4 v15, 0x0

    .line 954
    .local v15, "up":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->dependencyTable:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->tmp:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    .line 955
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->tmp:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    if-nez v5, :cond_4

    const/4 v10, 0x0

    .line 959
    .local v10, "down":Z
    :goto_3
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v11, v5, :cond_8

    .line 960
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;

    .line 962
    .local v13, "ref":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;
    if-eqz v15, :cond_5

    iget v5, v13, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->y:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_5

    .line 963
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 964
    add-int/lit8 v11, v11, -0x1

    .line 959
    :cond_0
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 946
    .end local v10    # "down":Z
    .end local v11    # "i":I
    .end local v12    # "left":Z
    .end local v13    # "ref":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;
    .end local v14    # "right":Z
    .end local v15    # "up":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->tmp:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-boolean v12, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->drawn:Z

    goto :goto_0

    .line 949
    .restart local v12    # "left":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->tmp:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-boolean v14, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->drawn:Z

    goto :goto_1

    .line 952
    .restart local v14    # "right":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->tmp:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-boolean v15, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->drawn:Z

    goto :goto_2

    .line 955
    .restart local v15    # "up":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache;->tmp:Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;

    iget-boolean v10, v5, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/DependencyCache$DependencyOnTile;->drawn:Z

    goto :goto_3

    .line 968
    .restart local v10    # "down":Z
    .restart local v11    # "i":I
    .restart local v13    # "ref":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;
    :cond_5
    if-eqz v10, :cond_6

    iget v5, v13, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->y:F

    iget-object v6, v13, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->symbol:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    const/high16 v6, 0x43800000    # 256.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6

    .line 969
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 970
    add-int/lit8 v11, v11, -0x1

    .line 971
    goto :goto_5

    .line 973
    :cond_6
    if-eqz v12, :cond_7

    iget v5, v13, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_7

    .line 974
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 975
    add-int/lit8 v11, v11, -0x1

    .line 976
    goto :goto_5

    .line 978
    :cond_7
    if-eqz v14, :cond_0

    iget v5, v13, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->x:F

    iget-object v6, v13, Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;->symbol:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    const/high16 v6, 0x43800000    # 256.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 979
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 980
    add-int/lit8 v11, v11, -0x1

    goto :goto_5

    .line 984
    .end local v13    # "ref":Lorg/mapsforge/android/maps/mapgenerator/databaserenderer/SymbolContainer;
    :cond_8
    return-void
.end method
