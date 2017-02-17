.class public Lorg/osmdroid/views/util/PathProjection;
.super Ljava/lang/Object;
.source "PathProjection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toPixels(Lorg/osmdroid/views/Projection;Ljava/util/List;Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 1
    .param p0, "projection"    # Lorg/osmdroid/views/Projection;
    .param p2, "reuse"    # Landroid/graphics/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/views/Projection;",
            "Ljava/util/List",
            "<+",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/graphics/Path;"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "in":Ljava/util/List;, "Ljava/util/List<+Lorg/osmdroid/util/GeoPoint;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/osmdroid/views/util/PathProjection;->toPixels(Lorg/osmdroid/views/Projection;Ljava/util/List;Landroid/graphics/Path;Z)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public static toPixels(Lorg/osmdroid/views/Projection;Ljava/util/List;Landroid/graphics/Path;Z)Landroid/graphics/Path;
    .locals 28
    .param p0, "projection"    # Lorg/osmdroid/views/Projection;
    .param p2, "reuse"    # Landroid/graphics/Path;
    .param p3, "doGudermann"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/views/Projection;",
            "Ljava/util/List",
            "<+",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;",
            "Landroid/graphics/Path;",
            "Z)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "in":Ljava/util/List;, "Ljava/util/List<+Lorg/osmdroid/util/GeoPoint;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 25
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "List of GeoPoints needs to be at least 2."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 28
    :cond_0
    if-eqz p2, :cond_1

    move-object/from16 v15, p2

    .line 29
    .local v15, "out":Landroid/graphics/Path;
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v15, v2}, Landroid/graphics/Path;->incReserve(I)V

    .line 31
    const/4 v10, 0x1

    .line 32
    .local v10, "first":Z
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/osmdroid/util/GeoPoint;

    .line 33
    .local v11, "gp":Lorg/osmdroid/util/GeoPoint;
    invoke-virtual {v11}, Lorg/osmdroid/util/GeoPoint;->getLatitudeE6()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v4

    invoke-virtual {v11}, Lorg/osmdroid/util/GeoPoint;->getLongitudeE6()I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x412e848000000000L    # 1000000.0

    div-double/2addr v4, v6

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/Projection;->getZoomLevel()I

    move-result v6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lorg/osmdroid/util/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v21

    .line 36
    .local v21, "underGeopointTileCoords":Landroid/graphics/Point;
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0}, Lorg/osmdroid/util/TileSystem;->PixelXYToTileXY(IILandroid/graphics/Point;)Landroid/graphics/Point;

    .line 42
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lorg/osmdroid/util/TileSystem;->TileXYToPixelXY(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v25

    .line 44
    .local v25, "upperRight":Landroid/graphics/Point;
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/Point;->x:I

    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v4

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lorg/osmdroid/util/TileSystem;->TileXYToPixelXY(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v13

    .line 47
    .local v13, "lowerLeft":Landroid/graphics/Point;
    move-object/from16 v0, v25

    iget v2, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v25

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/Projection;->getZoomLevel()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lorg/osmdroid/util/TileSystem;->PixelXYToLatLong(IIILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v14

    .line 49
    .local v14, "neGeoPoint":Lorg/osmdroid/util/GeoPoint;
    iget v2, v13, Landroid/graphics/Point;->x:I

    iget v3, v13, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/Projection;->getZoomLevel()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lorg/osmdroid/util/TileSystem;->PixelXYToLatLong(IIILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v18

    .line 51
    .local v18, "swGeoPoint":Lorg/osmdroid/util/GeoPoint;
    new-instance v8, Lorg/osmdroid/util/BoundingBoxE6;

    invoke-virtual {v14}, Lorg/osmdroid/util/GeoPoint;->getLatitudeE6()I

    move-result v2

    invoke-virtual {v14}, Lorg/osmdroid/util/GeoPoint;->getLongitudeE6()I

    move-result v3

    invoke-virtual/range {v18 .. v18}, Lorg/osmdroid/util/GeoPoint;->getLatitudeE6()I

    move-result v4

    invoke-virtual/range {v18 .. v18}, Lorg/osmdroid/util/GeoPoint;->getLongitudeE6()I

    move-result v5

    invoke-direct {v8, v2, v3, v4, v5}, Lorg/osmdroid/util/BoundingBoxE6;-><init>(IIII)V

    .line 56
    .local v8, "bb":Lorg/osmdroid/util/BoundingBoxE6;
    if-eqz p3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/Projection;->getZoomLevel()I

    move-result v2

    const/4 v3, 0x7

    if-ge v2, v3, :cond_2

    .line 57
    invoke-virtual {v11}, Lorg/osmdroid/util/GeoPoint;->getLatitudeE6()I

    move-result v2

    invoke-virtual {v11}, Lorg/osmdroid/util/GeoPoint;->getLongitudeE6()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v8, v2, v3, v4}, Lorg/osmdroid/util/BoundingBoxE6;->getRelativePositionOfGeoPointInBoundingBoxWithExactGudermannInterpolation(IILandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v16

    .line 66
    .local v16, "relativePositionInCenterMapTile":Landroid/graphics/PointF;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/Projection;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v17

    .line 67
    .local v17, "screenRect":Landroid/graphics/Rect;
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lorg/osmdroid/util/TileSystem;->PixelXYToTileXY(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v9

    .line 69
    .local v9, "centerMapTileCoords":Landroid/graphics/Point;
    iget v2, v9, Landroid/graphics/Point;->x:I

    iget v3, v9, Landroid/graphics/Point;->y:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lorg/osmdroid/util/TileSystem;->TileXYToPixelXY(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v24

    .line 71
    .local v24, "upperLeftCornerOfCenterMapTile":Landroid/graphics/Point;
    iget v2, v9, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Point;->x:I

    sub-int v19, v2, v3

    .line 72
    .local v19, "tileDiffX":I
    iget v2, v9, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Point;->y:I

    sub-int v20, v2, v3

    .line 73
    .local v20, "tileDiffY":I
    move-object/from16 v0, v24

    iget v2, v0, Landroid/graphics/Point;->x:I

    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v3

    mul-int v3, v3, v19

    sub-int v22, v2, v3

    .line 75
    .local v22, "underGeopointTileScreenLeft":I
    move-object/from16 v0, v24

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v3

    mul-int v3, v3, v20

    sub-int v23, v2, v3

    .line 78
    .local v23, "underGeopointTileScreenTop":I
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/PointF;->x:F

    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int v26, v22, v2

    .line 80
    .local v26, "x":I
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/PointF;->y:F

    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int v27, v23, v2

    .line 84
    .local v27, "y":I
    if-eqz v10, :cond_3

    .line 85
    move/from16 v0, v26

    int-to-float v2, v0

    move/from16 v0, v27

    int-to-float v3, v0

    invoke-virtual {v15, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 91
    :goto_3
    const/4 v10, 0x0

    .line 92
    goto/16 :goto_1

    .line 28
    .end local v8    # "bb":Lorg/osmdroid/util/BoundingBoxE6;
    .end local v9    # "centerMapTileCoords":Landroid/graphics/Point;
    .end local v10    # "first":Z
    .end local v11    # "gp":Lorg/osmdroid/util/GeoPoint;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "lowerLeft":Landroid/graphics/Point;
    .end local v14    # "neGeoPoint":Lorg/osmdroid/util/GeoPoint;
    .end local v15    # "out":Landroid/graphics/Path;
    .end local v16    # "relativePositionInCenterMapTile":Landroid/graphics/PointF;
    .end local v17    # "screenRect":Landroid/graphics/Rect;
    .end local v18    # "swGeoPoint":Lorg/osmdroid/util/GeoPoint;
    .end local v19    # "tileDiffX":I
    .end local v20    # "tileDiffY":I
    .end local v21    # "underGeopointTileCoords":Landroid/graphics/Point;
    .end local v22    # "underGeopointTileScreenLeft":I
    .end local v23    # "underGeopointTileScreenTop":I
    .end local v24    # "upperLeftCornerOfCenterMapTile":Landroid/graphics/Point;
    .end local v25    # "upperRight":Landroid/graphics/Point;
    .end local v26    # "x":I
    .end local v27    # "y":I
    :cond_1
    new-instance v15, Landroid/graphics/Path;

    invoke-direct {v15}, Landroid/graphics/Path;-><init>()V

    goto/16 :goto_0

    .line 61
    .restart local v8    # "bb":Lorg/osmdroid/util/BoundingBoxE6;
    .restart local v10    # "first":Z
    .restart local v11    # "gp":Lorg/osmdroid/util/GeoPoint;
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v13    # "lowerLeft":Landroid/graphics/Point;
    .restart local v14    # "neGeoPoint":Lorg/osmdroid/util/GeoPoint;
    .restart local v15    # "out":Landroid/graphics/Path;
    .restart local v18    # "swGeoPoint":Lorg/osmdroid/util/GeoPoint;
    .restart local v21    # "underGeopointTileCoords":Landroid/graphics/Point;
    .restart local v25    # "upperRight":Landroid/graphics/Point;
    :cond_2
    invoke-virtual {v11}, Lorg/osmdroid/util/GeoPoint;->getLatitudeE6()I

    move-result v2

    invoke-virtual {v11}, Lorg/osmdroid/util/GeoPoint;->getLongitudeE6()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v8, v2, v3, v4}, Lorg/osmdroid/util/BoundingBoxE6;->getRelativePositionOfGeoPointInBoundingBoxWithLinearInterpolation(IILandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v16

    .restart local v16    # "relativePositionInCenterMapTile":Landroid/graphics/PointF;
    goto :goto_2

    .line 89
    .restart local v9    # "centerMapTileCoords":Landroid/graphics/Point;
    .restart local v17    # "screenRect":Landroid/graphics/Rect;
    .restart local v19    # "tileDiffX":I
    .restart local v20    # "tileDiffY":I
    .restart local v22    # "underGeopointTileScreenLeft":I
    .restart local v23    # "underGeopointTileScreenTop":I
    .restart local v24    # "upperLeftCornerOfCenterMapTile":Landroid/graphics/Point;
    .restart local v26    # "x":I
    .restart local v27    # "y":I
    :cond_3
    move/from16 v0, v26

    int-to-float v2, v0

    move/from16 v0, v27

    int-to-float v3, v0

    invoke-virtual {v15, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_3

    .line 94
    .end local v8    # "bb":Lorg/osmdroid/util/BoundingBoxE6;
    .end local v9    # "centerMapTileCoords":Landroid/graphics/Point;
    .end local v11    # "gp":Lorg/osmdroid/util/GeoPoint;
    .end local v13    # "lowerLeft":Landroid/graphics/Point;
    .end local v14    # "neGeoPoint":Lorg/osmdroid/util/GeoPoint;
    .end local v16    # "relativePositionInCenterMapTile":Landroid/graphics/PointF;
    .end local v17    # "screenRect":Landroid/graphics/Rect;
    .end local v18    # "swGeoPoint":Lorg/osmdroid/util/GeoPoint;
    .end local v19    # "tileDiffX":I
    .end local v20    # "tileDiffY":I
    .end local v21    # "underGeopointTileCoords":Landroid/graphics/Point;
    .end local v22    # "underGeopointTileScreenLeft":I
    .end local v23    # "underGeopointTileScreenTop":I
    .end local v24    # "upperLeftCornerOfCenterMapTile":Landroid/graphics/Point;
    .end local v25    # "upperRight":Landroid/graphics/Point;
    .end local v26    # "x":I
    .end local v27    # "y":I
    :cond_4
    return-object v15
.end method
