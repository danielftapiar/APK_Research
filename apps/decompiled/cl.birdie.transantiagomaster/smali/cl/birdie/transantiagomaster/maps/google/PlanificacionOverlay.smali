.class public final Lcl/birdie/transantiagomaster/maps/google/PlanificacionOverlay;
.super Lcom/google/android/maps/Overlay;
.source "PlanificacionOverlay.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/maps/Overlay;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V
    .locals 33
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapView"    # Lcom/google/android/maps/MapView;
    .param p3, "shadow"    # Z

    .prologue
    .line 30
    invoke-super/range {p0 .. p3}, Lcom/google/android/maps/Overlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V

    .line 32
    sget-object v30, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v30

    .line 33
    :try_start_0
    sget-object v29, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    move-object/from16 v0, v29

    iget v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->modoNavegacion:I

    move/from16 v29, v0

    const/16 v31, 0x2

    move/from16 v0, v29

    move/from16 v1, v31

    if-eq v0, v1, :cond_1

    .line 34
    sget-object v29, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    move-object/from16 v0, v29

    iget v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->modoNavegacion:I

    move/from16 v29, v0

    const/16 v31, 0x3

    move/from16 v0, v29

    move/from16 v1, v31

    if-eq v0, v1, :cond_1

    .line 35
    monitor-exit v30
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :cond_0
    return-void

    .line 32
    :cond_1
    monitor-exit v30

    .line 51
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    .line 52
    .local v21, "path":Landroid/graphics/Path;
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v23

    .line 53
    .local v23, "projection":Lcom/google/android/maps/Projection;
    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15}, Landroid/graphics/Point;-><init>()V

    .line 54
    .local v15, "p1":Landroid/graphics/Point;
    new-instance v16, Landroid/graphics/Point;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Point;-><init>()V

    .line 70
    .local v16, "p2":Landroid/graphics/Point;
    sget-object v29, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    move-object/from16 v0, v29

    iget-object v14, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->planificacion:Lcl/birdie/transantiagomaster/newobjetos/Plan;

    .line 71
    .local v14, "p":Lcl/birdie/transantiagomaster/newobjetos/Plan;
    sget-object v29, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    move-object/from16 v0, v29

    iget v8, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->itinerarioPlanificacion:I

    .line 72
    .local v8, "iti":I
    iget-object v0, v14, Lcl/birdie/transantiagomaster/newobjetos/Plan;->itinerarios:[Lcl/birdie/transantiagomaster/newobjetos/Itinerario;

    move-object/from16 v29, v0

    aget-object v7, v29, v8

    .line 76
    .local v7, "it":Lcl/birdie/transantiagomaster/newobjetos/Itinerario;
    iget-object v0, v7, Lcl/birdie/transantiagomaster/newobjetos/Itinerario;->legs:[Lcl/birdie/transantiagomaster/newobjetos/Leg;

    move-object/from16 v29, v0

    if-eqz v29, :cond_4

    iget-object v0, v7, Lcl/birdie/transantiagomaster/newobjetos/Itinerario;->legs:[Lcl/birdie/transantiagomaster/newobjetos/Leg;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v9, v0

    .line 79
    .local v9, "itlength":I
    :goto_0
    new-instance v19, Landroid/graphics/Paint;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    .line 80
    .local v19, "paintgreen":Landroid/graphics/Paint;
    const v29, -0xff0100

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    const/high16 v29, 0x40a00000    # 5.0f

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 82
    const/16 v29, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 83
    const/16 v29, 0x64

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 84
    sget-object v29, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    sget-object v29, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 86
    sget-object v29, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 87
    const/high16 v29, 0x40c00000    # 6.0f

    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 89
    new-instance v20, Landroid/graphics/Paint;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 90
    .local v20, "paintred":Landroid/graphics/Paint;
    const/high16 v29, -0x10000

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    new-instance v18, Landroid/graphics/Paint;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 93
    .local v18, "paintblue":Landroid/graphics/Paint;
    const v29, -0xffff01

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    new-instance v28, Landroid/graphics/Paint;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Paint;-><init>()V

    .line 96
    .local v28, "textpaint":Landroid/graphics/Paint;
    const/high16 v29, -0x1000000

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    const/high16 v29, 0x41a00000    # 20.0f

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 99
    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 101
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v29

    .line 102
    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v29, v0

    mul-int/lit8 v26, v29, -0x1

    .line 114
    .local v26, "textbase":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v9, :cond_0

    .line 116
    iget-object v0, v7, Lcl/birdie/transantiagomaster/newobjetos/Itinerario;->legs:[Lcl/birdie/transantiagomaster/newobjetos/Leg;

    move-object/from16 v29, v0

    aget-object v12, v29, v6

    .line 118
    .local v12, "leg":Lcl/birdie/transantiagomaster/newobjetos/Leg;
    iget-object v0, v12, Lcl/birdie/transantiagomaster/newobjetos/Leg;->steps:[Lcl/birdie/transantiagomaster/newobjetos/Step;

    move-object/from16 v29, v0

    if-eqz v29, :cond_5

    iget-object v0, v12, Lcl/birdie/transantiagomaster/newobjetos/Leg;->steps:[Lcl/birdie/transantiagomaster/newobjetos/Step;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v25, v0

    .line 122
    .local v25, "steplength":I
    :goto_2
    iget v0, v12, Lcl/birdie/transantiagomaster/newobjetos/Leg;->mode:I

    move/from16 v29, v0

    packed-switch v29, :pswitch_data_0

    .line 126
    move-object/from16 v17, v20

    .line 133
    .local v17, "pColor":Landroid/graphics/Paint;
    :goto_3
    iget-object v0, v12, Lcl/birdie/transantiagomaster/newobjetos/Leg;->points:[Lcl/birdie/toolkit/CacheableLatLng;

    move-object/from16 v29, v0

    if-eqz v29, :cond_7

    iget-object v0, v12, Lcl/birdie/transantiagomaster/newobjetos/Leg;->points:[Lcl/birdie/toolkit/CacheableLatLng;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_7

    .line 135
    iget-object v0, v12, Lcl/birdie/transantiagomaster/newobjetos/Leg;->points:[Lcl/birdie/toolkit/CacheableLatLng;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v22, v0

    .line 137
    .local v22, "pointslength":I
    iget-object v0, v12, Lcl/birdie/transantiagomaster/newobjetos/Leg;->points:[Lcl/birdie/toolkit/CacheableLatLng;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-object v29, v29, v30

    invoke-virtual/range {v29 .. v29}, Lcl/birdie/toolkit/CacheableLatLng;->toGeoPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v24

    .line 139
    .local v24, "start":Lcom/google/android/maps/GeoPoint;
    const/4 v11, 0x1

    .local v11, "l":I
    :goto_4
    move/from16 v0, v22

    if-lt v11, v0, :cond_6

    .line 187
    .end local v11    # "l":I
    .end local v22    # "pointslength":I
    .end local v24    # "start":Lcom/google/android/maps/GeoPoint;
    :cond_2
    :goto_5
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 188
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Path;->reset()V

    .line 190
    iget-object v0, v12, Lcl/birdie/transantiagomaster/newobjetos/Leg;->fromPos:Lcl/birdie/toolkit/CacheableLatLng;

    move-object/from16 v29, v0

    if-eqz v29, :cond_3

    .line 192
    iget-object v0, v12, Lcl/birdie/transantiagomaster/newobjetos/Leg;->fromPos:Lcl/birdie/toolkit/CacheableLatLng;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcl/birdie/toolkit/CacheableLatLng;->toGeoPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v29

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v15}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 195
    sget-object v29, Lcl/birdie/transantiagomaster/Imagenes;->bmpLeg:Landroid/graphics/Bitmap;

    iget v0, v15, Landroid/graphics/Point;->x:I

    move/from16 v30, v0

    .line 196
    sget v31, Lcl/birdie/transantiagomaster/Imagenes;->iconoLegAnchorX:I

    sub-int v30, v30, v31

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    iget v0, v15, Landroid/graphics/Point;->y:I

    move/from16 v31, v0

    .line 197
    sget v32, Lcl/birdie/transantiagomaster/Imagenes;->iconoParaderoAnchorY:I

    sub-int v31, v31, v32

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    .line 195
    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 198
    add-int/lit8 v29, v6, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    .line 199
    .local v27, "texto":Ljava/lang/String;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 200
    .local v5, "bounds":Landroid/graphics/Rect;
    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v30

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 202
    iget v0, v15, Landroid/graphics/Point;->x:I

    move/from16 v29, v0

    sget v30, Lcl/birdie/transantiagomaster/Imagenes;->iconoLegAnchorX:I

    sub-int v29, v29, v30

    .line 203
    sget v30, Lcl/birdie/transantiagomaster/Imagenes;->iconoLegWidth:I

    iget v0, v5, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    div-int/lit8 v30, v30, 0x2

    add-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    iget v0, v15, Landroid/graphics/Point;->y:I

    move/from16 v30, v0

    .line 204
    sget v31, Lcl/birdie/transantiagomaster/Imagenes;->iconoLegAnchorY:I

    sub-int v30, v30, v31

    .line 205
    sget v31, Lcl/birdie/transantiagomaster/Imagenes;->iconoLegTextY:I

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    div-int/lit8 v31, v31, 0x2

    add-int v30, v30, v31

    .line 206
    add-int v30, v30, v26

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    .line 202
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move/from16 v2, v29

    move/from16 v3, v30

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 114
    .end local v5    # "bounds":Landroid/graphics/Rect;
    .end local v27    # "texto":Ljava/lang/String;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 32
    .end local v6    # "i":I
    .end local v7    # "it":Lcl/birdie/transantiagomaster/newobjetos/Itinerario;
    .end local v8    # "iti":I
    .end local v9    # "itlength":I
    .end local v12    # "leg":Lcl/birdie/transantiagomaster/newobjetos/Leg;
    .end local v14    # "p":Lcl/birdie/transantiagomaster/newobjetos/Plan;
    .end local v15    # "p1":Landroid/graphics/Point;
    .end local v16    # "p2":Landroid/graphics/Point;
    .end local v17    # "pColor":Landroid/graphics/Paint;
    .end local v18    # "paintblue":Landroid/graphics/Paint;
    .end local v19    # "paintgreen":Landroid/graphics/Paint;
    .end local v20    # "paintred":Landroid/graphics/Paint;
    .end local v21    # "path":Landroid/graphics/Path;
    .end local v23    # "projection":Lcom/google/android/maps/Projection;
    .end local v25    # "steplength":I
    .end local v26    # "textbase":I
    .end local v28    # "textpaint":Landroid/graphics/Paint;
    :catchall_0
    move-exception v29

    monitor-exit v30

    throw v29

    .line 76
    .restart local v7    # "it":Lcl/birdie/transantiagomaster/newobjetos/Itinerario;
    .restart local v8    # "iti":I
    .restart local v14    # "p":Lcl/birdie/transantiagomaster/newobjetos/Plan;
    .restart local v15    # "p1":Landroid/graphics/Point;
    .restart local v16    # "p2":Landroid/graphics/Point;
    .restart local v21    # "path":Landroid/graphics/Path;
    .restart local v23    # "projection":Lcom/google/android/maps/Projection;
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 119
    .restart local v6    # "i":I
    .restart local v9    # "itlength":I
    .restart local v12    # "leg":Lcl/birdie/transantiagomaster/newobjetos/Leg;
    .restart local v18    # "paintblue":Landroid/graphics/Paint;
    .restart local v19    # "paintgreen":Landroid/graphics/Paint;
    .restart local v20    # "paintred":Landroid/graphics/Paint;
    .restart local v26    # "textbase":I
    .restart local v28    # "textpaint":Landroid/graphics/Paint;
    :cond_5
    const/16 v25, 0x0

    goto/16 :goto_2

    .line 123
    .restart local v25    # "steplength":I
    :pswitch_0
    move-object/from16 v17, v19

    .restart local v17    # "pColor":Landroid/graphics/Paint;
    goto/16 :goto_3

    .line 124
    .end local v17    # "pColor":Landroid/graphics/Paint;
    :pswitch_1
    move-object/from16 v17, v20

    .restart local v17    # "pColor":Landroid/graphics/Paint;
    goto/16 :goto_3

    .line 125
    .end local v17    # "pColor":Landroid/graphics/Paint;
    :pswitch_2
    move-object/from16 v17, v18

    .restart local v17    # "pColor":Landroid/graphics/Paint;
    goto/16 :goto_3

    .line 140
    .restart local v11    # "l":I
    .restart local v22    # "pointslength":I
    .restart local v24    # "start":Lcom/google/android/maps/GeoPoint;
    :cond_6
    iget-object v0, v12, Lcl/birdie/transantiagomaster/newobjetos/Leg;->points:[Lcl/birdie/toolkit/CacheableLatLng;

    move-object/from16 v29, v0

    aget-object v13, v29, v11

    .line 146
    .local v13, "ll":Lcl/birdie/toolkit/CacheableLatLng;
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v0, v1, v15}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 147
    invoke-virtual {v13}, Lcl/birdie/toolkit/CacheableLatLng;->toGeoPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 149
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v21

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 150
    iget v0, v15, Landroid/graphics/Point;->x:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    iget v0, v15, Landroid/graphics/Point;->y:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v21

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 139
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 154
    .end local v11    # "l":I
    .end local v13    # "ll":Lcl/birdie/toolkit/CacheableLatLng;
    .end local v22    # "pointslength":I
    .end local v24    # "start":Lcom/google/android/maps/GeoPoint;
    :cond_7
    const/16 v29, 0x1

    move/from16 v0, v25

    move/from16 v1, v29

    if-le v0, v1, :cond_9

    .line 155
    iget-object v0, v12, Lcl/birdie/transantiagomaster/newobjetos/Leg;->steps:[Lcl/birdie/transantiagomaster/newobjetos/Step;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-object v29, v29, v30

    move-object/from16 v0, v29

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Step;->pos:Lcl/birdie/toolkit/CacheableLatLng;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcl/birdie/toolkit/CacheableLatLng;->toGeoPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v24

    .line 158
    .restart local v24    # "start":Lcom/google/android/maps/GeoPoint;
    const/4 v10, 0x1

    .local v10, "j":I
    :goto_6
    move/from16 v0, v25

    if-ge v10, v0, :cond_2

    .line 159
    iget-object v0, v12, Lcl/birdie/transantiagomaster/newobjetos/Leg;->steps:[Lcl/birdie/transantiagomaster/newobjetos/Step;

    move-object/from16 v29, v0

    aget-object v29, v29, v10

    .line 162
    move-object/from16 v0, v29

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Step;->pos:Lcl/birdie/toolkit/CacheableLatLng;

    move-object/from16 v29, v0

    if-eqz v29, :cond_8

    .line 163
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v0, v1, v15}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 167
    iget-object v0, v12, Lcl/birdie/transantiagomaster/newobjetos/Leg;->steps:[Lcl/birdie/transantiagomaster/newobjetos/Step;

    move-object/from16 v29, v0

    aget-object v29, v29, v10

    move-object/from16 v0, v29

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Step;->pos:Lcl/birdie/toolkit/CacheableLatLng;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcl/birdie/toolkit/CacheableLatLng;->toGeoPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v24

    .line 166
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 170
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v21

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 171
    iget v0, v15, Landroid/graphics/Point;->x:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    iget v0, v15, Landroid/graphics/Point;->y:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v21

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 158
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 175
    .end local v10    # "j":I
    .end local v24    # "start":Lcom/google/android/maps/GeoPoint;
    :cond_9
    iget-object v0, v12, Lcl/birdie/transantiagomaster/newobjetos/Leg;->fromPos:Lcl/birdie/toolkit/CacheableLatLng;

    move-object/from16 v29, v0

    if-eqz v29, :cond_2

    .line 176
    iget-object v0, v12, Lcl/birdie/transantiagomaster/newobjetos/Leg;->toPos:Lcl/birdie/toolkit/CacheableLatLng;

    move-object/from16 v29, v0

    if-eqz v29, :cond_2

    .line 179
    iget-object v0, v12, Lcl/birdie/transantiagomaster/newobjetos/Leg;->fromPos:Lcl/birdie/toolkit/CacheableLatLng;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcl/birdie/toolkit/CacheableLatLng;->toGeoPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v29

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v15}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 180
    iget-object v0, v12, Lcl/birdie/transantiagomaster/newobjetos/Leg;->toPos:Lcl/birdie/toolkit/CacheableLatLng;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcl/birdie/toolkit/CacheableLatLng;->toGeoPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v29

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 182
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v21

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 183
    iget v0, v15, Landroid/graphics/Point;->x:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    iget v0, v15, Landroid/graphics/Point;->y:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v21

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_5

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
