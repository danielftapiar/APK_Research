.class public final Lcl/birdie/transantiagomaster/maps/layers/LayerController;
.super Ljava/lang/Object;
.source "LayerController.java"


# static fields
.field private static layers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcl/birdie/transantiagomaster/newobjetos/Layer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcl/birdie/transantiagomaster/maps/layers/LayerController;->layers:Ljava/util/List;

    return-void
.end method

.method public static actualizarDatos$25a2cf1e()V
    .locals 6

    .prologue
    .line 276
    sget-object v3, Lcl/birdie/transantiagomaster/maps/layers/LayerController;->layers:Ljava/util/List;

    monitor-enter v3

    .line 279
    :try_start_0
    sget-object v2, Lcl/birdie/transantiagomaster/maps/layers/LayerController;->layers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v0, "l":Lcl/birdie/transantiagomaster/newobjetos/Layer;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 278
    monitor-exit v3

    return-void

    .line 279
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "l":Lcl/birdie/transantiagomaster/newobjetos/Layer;
    check-cast v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;

    .line 280
    .restart local v0    # "l":Lcl/birdie/transantiagomaster/newobjetos/Layer;
    iget v4, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->status:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 281
    iget-object v4, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->ovlIcon:Lcl/birdie/transantiagomaster/maps/IOverlay;

    if-nez v4, :cond_2

    .line 285
    const-string v4, "LayerController"

    const-string v5, "ovlIcon no existe!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 278
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 289
    :cond_2
    :try_start_1
    iget-object v4, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->ovlIcon:Lcl/birdie/transantiagomaster/maps/IOverlay;

    invoke-interface {v4}, Lcl/birdie/transantiagomaster/maps/IOverlay;->vaciar()V

    .line 291
    iget-object v4, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->ovlSmallIcon:Lcl/birdie/transantiagomaster/maps/IOverlay;

    if-eqz v4, :cond_3

    .line 292
    iget-object v4, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->ovlSmallIcon:Lcl/birdie/transantiagomaster/maps/IOverlay;

    invoke-interface {v4}, Lcl/birdie/transantiagomaster/maps/IOverlay;->vaciar()V

    .line 294
    :cond_3
    iget-object v4, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->markers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 295
    iget-object v4, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->markers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 300
    :cond_4
    iget-object v4, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->ovlIcon:Lcl/birdie/transantiagomaster/maps/IOverlay;

    invoke-interface {v4}, Lcl/birdie/transantiagomaster/maps/IOverlay;->llenar()V

    .line 302
    iget-object v4, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->ovlSmallIcon:Lcl/birdie/transantiagomaster/maps/IOverlay;

    if-eqz v4, :cond_0

    .line 303
    iget-object v4, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->ovlSmallIcon:Lcl/birdie/transantiagomaster/maps/IOverlay;

    invoke-interface {v4}, Lcl/birdie/transantiagomaster/maps/IOverlay;->llenar()V

    goto :goto_0

    .line 295
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcl/birdie/transantiagomaster/newobjetos/IMarker;

    .line 296
    .local v1, "m":Lcl/birdie/transantiagomaster/newobjetos/IMarker;
    iget-object v5, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->ovlIcon:Lcl/birdie/transantiagomaster/maps/IOverlay;

    invoke-interface {v5, v1}, Lcl/birdie/transantiagomaster/maps/IOverlay;->anadeItem(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static anadeLayers(Lcl/birdie/transantiagomaster/maps/layers/IOverlayAdder;)V
    .locals 6
    .param p0, "adder"    # Lcl/birdie/transantiagomaster/maps/layers/IOverlayAdder;

    .prologue
    .line 250
    sget-object v3, Lcl/birdie/transantiagomaster/maps/layers/LayerController;->layers:Ljava/util/List;

    monitor-enter v3

    .line 257
    :try_start_0
    sget-object v2, Lcl/birdie/transantiagomaster/maps/layers/LayerController;->layers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 256
    monitor-exit v3

    return-void

    .line 257
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;

    .line 258
    .local v0, "l":Lcl/birdie/transantiagomaster/newobjetos/Layer;
    iget v4, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->status:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 259
    sget v4, Lcl/birdie/transantiagomaster/Pantalla;->zoomLevel:I

    iget v5, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->minZoom:I

    if-lt v4, v5, :cond_0

    iget v4, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->maxZoom:I

    if-ltz v4, :cond_2

    iget v4, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->maxZoom:I

    sget v5, Lcl/birdie/transantiagomaster/Pantalla;->zoomLevel:I

    if-lt v4, v5, :cond_0

    .line 263
    :cond_2
    iget v4, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->largeZoom:I

    if-ltz v4, :cond_3

    iget v4, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->largeZoom:I

    sget v5, Lcl/birdie/transantiagomaster/Pantalla;->zoomLevel:I

    if-lt v4, v5, :cond_4

    .line 264
    :cond_3
    iget-object v1, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->ovlIcon:Lcl/birdie/transantiagomaster/maps/IOverlay;

    .line 267
    .local v1, "ovl":Lcl/birdie/transantiagomaster/maps/IOverlay;
    :goto_1
    if-eqz v1, :cond_0

    .line 268
    invoke-interface {p0, v1}, Lcl/birdie/transantiagomaster/maps/layers/IOverlayAdder;->anadir(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 256
    .end local v0    # "l":Lcl/birdie/transantiagomaster/newobjetos/Layer;
    .end local v1    # "ovl":Lcl/birdie/transantiagomaster/maps/IOverlay;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 266
    .restart local v0    # "l":Lcl/birdie/transantiagomaster/newobjetos/Layer;
    :cond_4
    :try_start_1
    iget-object v1, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->ovlSmallIcon:Lcl/birdie/transantiagomaster/maps/IOverlay;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v1    # "ovl":Lcl/birdie/transantiagomaster/maps/IOverlay;
    goto :goto_1
.end method

.method public static borrarLayers()V
    .locals 2

    .prologue
    .line 346
    sget-object v1, Lcl/birdie/transantiagomaster/maps/layers/LayerController;->layers:Ljava/util/List;

    monitor-enter v1

    .line 349
    :try_start_0
    sget-object v0, Lcl/birdie/transantiagomaster/maps/layers/LayerController;->layers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 348
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static crearLayer(Lcl/birdie/transantiagomaster/newobjetos/Layer;Lcl/birdie/transantiagomaster/ITSMMapView;)V
    .locals 4
    .param p0, "l"    # Lcl/birdie/transantiagomaster/newobjetos/Layer;
    .param p1, "mapView"    # Lcl/birdie/transantiagomaster/ITSMMapView;

    .prologue
    .line 208
    if-nez p1, :cond_1

    .line 212
    const-string v2, "LayerController"

    const-string v3, "crearLayer: mapView null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    iget-object v2, p0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->icon:Ljava/lang/String;

    invoke-static {v2}, Lcl/birdie/transantiagomaster/handlers/LayerImageHandler;->existeImagen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "fnameIcon":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 219
    iget-object v2, p0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->smallIcon:Ljava/lang/String;

    invoke-static {v2}, Lcl/birdie/transantiagomaster/handlers/LayerImageHandler;->existeImagen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "fnameSmallIcon":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "construyendo capa gmaps con "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->icon:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    invoke-interface {p1, p0, v0, v1}, Lcl/birdie/transantiagomaster/ITSMMapView;->crearCapa(Lcl/birdie/transantiagomaster/newobjetos/Layer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static procesarLayer(Lorg/json/me/JSONObject;)V
    .locals 46
    .param p0, "obj"    # Lorg/json/me/JSONObject;

    .prologue
    .line 30
    const/16 v34, 0x0

    .line 34
    .local v34, "lay":Lcl/birdie/transantiagomaster/newobjetos/Layer;
    const/16 v25, 0x0

    .line 37
    .local v25, "addLay":Z
    :try_start_0
    const-string v12, "icon"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/me/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v29

    .line 43
    .local v29, "icon":Ljava/lang/String;
    :try_start_1
    const-string v12, "relative"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v31

    .line 44
    .local v31, "l_relative":I
    :goto_0
    :try_start_2
    const-string v12, "reltype"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v33

    .line 45
    .local v33, "l_reltype":Ljava/lang/String;
    :goto_1
    :try_start_3
    const-string v12, "relcode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v32

    .line 47
    .local v32, "l_relcode":Ljava/lang/String;
    :goto_2
    sget-object v15, Lcl/birdie/transantiagomaster/maps/layers/LayerController;->layers:Ljava/util/List;

    monitor-enter v15

    .line 48
    :try_start_4
    sget-object v12, Lcl/birdie/transantiagomaster/maps/layers/LayerController;->layers:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_5

    .line 47
    :goto_3
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 59
    if-nez v34, :cond_1

    .line 60
    new-instance v34, Lcl/birdie/transantiagomaster/newobjetos/Layer;

    .end local v34    # "lay":Lcl/birdie/transantiagomaster/newobjetos/Layer;
    invoke-direct/range {v34 .. v34}, Lcl/birdie/transantiagomaster/newobjetos/Layer;-><init>()V

    .line 62
    .restart local v34    # "lay":Lcl/birdie/transantiagomaster/newobjetos/Layer;
    move-object/from16 v0, v29

    move-object/from16 v1, v34

    iput-object v0, v1, Lcl/birdie/transantiagomaster/newobjetos/Layer;->icon:Ljava/lang/String;

    .line 63
    const/16 v25, 0x1

    .line 66
    :cond_1
    move/from16 v0, v31

    move-object/from16 v1, v34

    iput v0, v1, Lcl/birdie/transantiagomaster/newobjetos/Layer;->relative:I

    .line 67
    move-object/from16 v0, v32

    move-object/from16 v1, v34

    iput-object v0, v1, Lcl/birdie/transantiagomaster/newobjetos/Layer;->relcode:Ljava/lang/String;

    .line 68
    move-object/from16 v0, v33

    move-object/from16 v1, v34

    iput-object v0, v1, Lcl/birdie/transantiagomaster/newobjetos/Layer;->reltype:Ljava/lang/String;

    .line 70
    move-object/from16 v0, v34

    iget-object v12, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->icon:Ljava/lang/String;

    invoke-static {v12}, Lcl/birdie/transantiagomaster/handlers/LayerImageHandler;->anadirImagen(Ljava/lang/String;)V

    .line 73
    :try_start_5
    const-string v12, "smallIcon"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v34

    iput-object v12, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->smallIcon:Ljava/lang/String;

    .line 74
    move-object/from16 v0, v34

    iget-object v12, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->smallIcon:Ljava/lang/String;

    invoke-static {v12}, Lcl/birdie/transantiagomaster/handlers/LayerImageHandler;->anadirImagen(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/me/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    .line 77
    :goto_4
    :try_start_6
    const-string v12, "minzoom"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, v34

    iput v12, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->minZoom:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 78
    :goto_5
    :try_start_7
    const-string v12, "maxzoom"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, v34

    iput v12, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->maxZoom:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 79
    :goto_6
    :try_start_8
    const-string v12, "largezoom"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, v34

    iput v12, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->largeZoom:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 81
    :goto_7
    :try_start_9
    const-string v12, "tipo"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 82
    .local v43, "tipo":Ljava/lang/String;
    const-string v12, "bus"

    move-object/from16 v0, v43

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 83
    sget-object v12, Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;->TIPO_BUS:Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;

    move-object/from16 v0, v34

    iput-object v12, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->tipo:Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 90
    .end local v43    # "tipo":Ljava/lang/String;
    :cond_2
    :goto_8
    move-object/from16 v0, v34

    iget-object v12, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->markers:Ljava/util/List;

    if-eqz v12, :cond_a

    .line 91
    move-object/from16 v0, v34

    iget-object v12, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->markers:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 97
    :goto_9
    :try_start_a
    const-string v12, "markers"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/me/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/me/JSONArray;

    move-result-object v35

    .line 98
    .local v35, "markers":Lorg/json/me/JSONArray;
    invoke-virtual/range {v35 .. v35}, Lorg/json/me/JSONArray;->length()I
    :try_end_a
    .catch Lorg/json/me/JSONException; {:try_start_a .. :try_end_a} :catch_9

    move-result v30

    .line 99
    .local v30, "l":I
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_a
    move/from16 v0, v28

    move/from16 v1, v30

    if-lt v0, v1, :cond_b

    .line 123
    .end local v28    # "i":I
    .end local v30    # "l":I
    .end local v35    # "markers":Lorg/json/me/JSONArray;
    :goto_b
    const-wide/16 v38, 0x0

    .local v38, "oldlat":D
    const-wide/16 v40, 0x0

    .line 126
    .local v40, "oldlng":D
    :try_start_b
    const-string v12, "relmarkers"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/json/me/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/me/JSONArray;

    move-result-object v42

    .line 127
    .local v42, "relmarkers":Lorg/json/me/JSONArray;
    invoke-virtual/range {v42 .. v42}, Lorg/json/me/JSONArray;->length()I

    move-result v30

    .line 128
    .restart local v30    # "l":I
    const/4 v2, 0x0

    .line 130
    .local v2, "m":Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker;
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_c
    move/from16 v0, v28

    move/from16 v1, v30

    if-lt v0, v1, :cond_10

    .line 168
    if-eqz v2, :cond_3

    .line 169
    move-object/from16 v0, v34

    iget-object v12, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->markers:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Lorg/json/me/JSONException; {:try_start_b .. :try_end_b} :catch_b

    .line 177
    .end local v2    # "m":Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker;
    .end local v28    # "i":I
    .end local v30    # "l":I
    .end local v42    # "relmarkers":Lorg/json/me/JSONArray;
    :cond_3
    :goto_d
    if-eqz v25, :cond_4

    .line 178
    sget-object v15, Lcl/birdie/transantiagomaster/maps/layers/LayerController;->layers:Ljava/util/List;

    monitor-enter v15

    .line 179
    :try_start_c
    sget-object v12, Lcl/birdie/transantiagomaster/maps/layers/LayerController;->layers:Ljava/util/List;

    move-object/from16 v0, v34

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    monitor-exit v15
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 182
    .end local v29    # "icon":Ljava/lang/String;
    .end local v31    # "l_relative":I
    .end local v32    # "l_relcode":Ljava/lang/String;
    .end local v33    # "l_reltype":Ljava/lang/String;
    .end local v38    # "oldlat":D
    .end local v40    # "oldlng":D
    :cond_4
    :goto_e
    return-void

    .line 38
    :catch_0
    move-exception v12

    const-string v12, "LayerController"

    const-string v15, "error al obtener tag icon"

    invoke-static {v12, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 43
    .restart local v29    # "icon":Ljava/lang/String;
    :catch_1
    move-exception v12

    const/16 v31, 0x0

    .restart local v31    # "l_relative":I
    goto/16 :goto_0

    .line 44
    :catch_2
    move-exception v12

    const/16 v33, 0x0

    .restart local v33    # "l_reltype":Ljava/lang/String;
    goto/16 :goto_1

    .line 45
    :catch_3
    move-exception v12

    const/16 v32, 0x0

    .restart local v32    # "l_relcode":Ljava/lang/String;
    goto/16 :goto_2

    .line 48
    :cond_5
    :try_start_d
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcl/birdie/transantiagomaster/newobjetos/Layer;

    .line 49
    .local v30, "l":Lcl/birdie/transantiagomaster/newobjetos/Layer;
    if-nez v31, :cond_6

    move-object/from16 v0, v30

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->icon:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_7

    .line 50
    :cond_6
    if-lez v31, :cond_0

    move-object/from16 v0, v30

    iget v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->relative:I

    move/from16 v16, v0

    move/from16 v0, v16

    move/from16 v1, v31

    if-ne v0, v1, :cond_0

    .line 51
    if-eqz v33, :cond_0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->reltype:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 52
    if-eqz v32, :cond_0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->relcode:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result v16

    if-eqz v16, :cond_0

    .line 54
    :cond_7
    move-object/from16 v34, v30

    .line 55
    goto/16 :goto_3

    .line 47
    .end local v30    # "l":Lcl/birdie/transantiagomaster/newobjetos/Layer;
    :catchall_0
    move-exception v12

    monitor-exit v15

    throw v12

    .line 75
    :catch_4
    move-exception v12

    const/4 v12, 0x0

    move-object/from16 v0, v34

    iput-object v12, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->smallIcon:Ljava/lang/String;

    goto/16 :goto_4

    .line 77
    :catch_5
    move-exception v12

    const/16 v12, 0x10

    move-object/from16 v0, v34

    iput v12, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->minZoom:I

    goto/16 :goto_5

    .line 78
    :catch_6
    move-exception v12

    const/4 v12, -0x1

    move-object/from16 v0, v34

    iput v12, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->maxZoom:I

    goto/16 :goto_6

    .line 79
    :catch_7
    move-exception v12

    const/4 v12, -0x1

    move-object/from16 v0, v34

    iput v12, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->largeZoom:I

    goto/16 :goto_7

    .line 84
    .restart local v43    # "tipo":Ljava/lang/String;
    :cond_8
    :try_start_e
    const-string v12, "lugar"

    move-object/from16 v0, v43

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 85
    sget-object v12, Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;->TIPO_LUGAR:Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;

    move-object/from16 v0, v34

    iput-object v12, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->tipo:Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    goto/16 :goto_8

    .line 88
    .end local v43    # "tipo":Ljava/lang/String;
    :catch_8
    move-exception v12

    sget-object v12, Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;->TIPO_LUGAR:Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;

    move-object/from16 v0, v34

    iput-object v12, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->tipo:Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;

    goto/16 :goto_8

    .line 86
    .restart local v43    # "tipo":Ljava/lang/String;
    :cond_9
    :try_start_f
    const-string v12, "reclamo"

    move-object/from16 v0, v43

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 87
    sget-object v12, Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;->TIPO_RECLAMO:Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;

    move-object/from16 v0, v34

    iput-object v12, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->tipo:Lcl/birdie/transantiagomaster/newobjetos/Layer$TipoLayer;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    goto/16 :goto_8

    .line 93
    .end local v43    # "tipo":Ljava/lang/String;
    :cond_a
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v34

    iput-object v12, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->markers:Ljava/util/List;

    goto/16 :goto_9

    .line 100
    .restart local v28    # "i":I
    .local v30, "l":I
    .restart local v35    # "markers":Lorg/json/me/JSONArray;
    :cond_b
    :try_start_10
    move-object/from16 v0, v35

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/me/JSONArray;->getJSONArray(I)Lorg/json/me/JSONArray;

    move-result-object v26

    .line 101
    .local v26, "arr":Lorg/json/me/JSONArray;
    const/4 v12, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "id":Ljava/lang/String;
    const/4 v12, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, "nombre":Ljava/lang/String;
    const/4 v12, 0x3

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 104
    .local v5, "lat":D
    const/4 v12, 0x2

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 107
    .local v7, "lng":D
    const/4 v12, 0x4

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 108
    .local v9, "descripcion":Ljava/lang/String;
    const/4 v12, 0x5

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 109
    .local v10, "imagen":Ljava/lang/String;
    if-eqz v10, :cond_d

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_c

    const-string v12, "null"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 110
    :cond_c
    const/4 v10, 0x0

    .line 111
    :cond_d
    const/4 v12, 0x6

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lorg/json/me/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 112
    .local v11, "url":Ljava/lang/String;
    if-eqz v11, :cond_f

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_e

    const-string v12, "null"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 113
    :cond_e
    const/4 v11, 0x0

    .line 115
    :cond_f
    new-instance v2, Lcl/birdie/transantiagomaster/newobjetos/Marker;

    invoke-direct/range {v2 .. v11}, Lcl/birdie/transantiagomaster/newobjetos/Marker;-><init>(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .local v2, "m":Lcl/birdie/transantiagomaster/newobjetos/Marker;
    move-object/from16 v0, v34

    iget-object v12, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->markers:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catch Lorg/json/me/JSONException; {:try_start_10 .. :try_end_10} :catch_9

    .line 99
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_a

    .line 118
    .end local v2    # "m":Lcl/birdie/transantiagomaster/newobjetos/Marker;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "nombre":Ljava/lang/String;
    .end local v5    # "lat":D
    .end local v7    # "lng":D
    .end local v9    # "descripcion":Ljava/lang/String;
    .end local v10    # "imagen":Ljava/lang/String;
    .end local v11    # "url":Ljava/lang/String;
    .end local v26    # "arr":Lorg/json/me/JSONArray;
    .end local v28    # "i":I
    .end local v30    # "l":I
    .end local v35    # "markers":Lorg/json/me/JSONArray;
    :catch_9
    move-exception v27

    .line 119
    .local v27, "e":Lorg/json/me/JSONException;
    const-string v12, "LayerController"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "excepci\u00f3n JSON 1: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v27 .. v27}, Lorg/json/me/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v12, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 131
    .end local v27    # "e":Lorg/json/me/JSONException;
    .local v2, "m":Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker;
    .restart local v28    # "i":I
    .restart local v30    # "l":I
    .restart local v38    # "oldlat":D
    .restart local v40    # "oldlng":D
    .restart local v42    # "relmarkers":Lorg/json/me/JSONArray;
    :cond_10
    :try_start_11
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v15, "relmarker: procesando elemento "

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-object/from16 v0, v42

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/me/JSONArray;->getJSONObject(I)Lorg/json/me/JSONObject;

    move-result-object v37

    .line 134
    .local v37, "o":Lorg/json/me/JSONObject;
    const-string v12, "id"

    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 135
    .restart local v3    # "id":Ljava/lang/String;
    const-string v12, "nom"

    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 136
    .local v13, "nom":Ljava/lang/String;
    const-string v12, "lng"

    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 137
    .restart local v7    # "lng":D
    const-string v12, "lat"

    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 138
    .restart local v5    # "lat":D
    const-string v12, "msg"

    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 139
    .local v36, "msg":Ljava/lang/String;
    const-string v12, "userid"

    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 140
    .local v45, "userid":Ljava/lang/String;
    const-string v12, "tstamp"

    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 141
    .local v21, "timestamp":Ljava/lang/String;
    const-string v12, "name"

    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 142
    .local v19, "name":Ljava/lang/String;
    const-string v12, "uname"

    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 143
    .local v44, "uname":Ljava/lang/String;
    const-string v12, "gender"

    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 144
    .local v20, "gender":Ljava/lang/String;
    const-string v12, "network"

    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 145
    .local v23, "network":Ljava/lang/String;
    const-string v12, "profilepic"

    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_11
    .catch Lorg/json/me/JSONException; {:try_start_11 .. :try_end_11} :catch_b

    move-result-object v24

    .line 147
    .local v24, "profilepic":Ljava/lang/String;
    :try_start_12
    const-string v12, "image"

    move-object/from16 v0, v37

    invoke-virtual {v0, v12}, Lorg/json/me/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_12
    .catch Lorg/json/me/JSONException; {:try_start_12 .. :try_end_12} :catch_a

    move-result-object v22

    .line 149
    .local v22, "image":Ljava/lang/String;
    :goto_f
    if-eqz v24, :cond_12

    :try_start_13
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_11

    const-string v12, "null"

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 150
    :cond_11
    const/16 v24, 0x0

    .line 152
    :cond_12
    cmpl-double v12, v38, v5

    if-nez v12, :cond_13

    cmpl-double v12, v40, v7

    if-nez v12, :cond_13

    if-nez v2, :cond_15

    .line 153
    :cond_13
    if-eqz v2, :cond_14

    .line 155
    move-object/from16 v0, v34

    iget-object v12, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->markers:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_14
    new-instance v2, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker;

    .end local v2    # "m":Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker;
    move-object v12, v2

    move-object v14, v13

    move-wide v15, v7

    move-wide/from16 v17, v5

    invoke-direct/range {v12 .. v18}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker;-><init>(Ljava/lang/String;Ljava/lang/String;DD)V

    .line 160
    .restart local v2    # "m":Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker;
    :cond_15
    new-instance v14, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;

    move-object v15, v3

    move-object/from16 v16, v36

    move-object/from16 v17, v45

    move-object/from16 v18, v44

    invoke-direct/range {v14 .. v24}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .local v14, "c":Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;
    invoke-virtual {v2, v14}, Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker;->addComentario(Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;)V

    .line 163
    move-wide/from16 v38, v5

    move-wide/from16 v40, v7

    .line 165
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v15, "relmarker: a\u00f1adiendo elemento "

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_13
    .catch Lorg/json/me/JSONException; {:try_start_13 .. :try_end_13} :catch_b

    .line 130
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_c

    .line 147
    .end local v14    # "c":Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker$Comentario;
    .end local v22    # "image":Ljava/lang/String;
    :catch_a
    move-exception v12

    const/16 v22, 0x0

    .restart local v22    # "image":Ljava/lang/String;
    goto :goto_f

    .line 171
    .end local v2    # "m":Lcl/birdie/transantiagomaster/newobjetos/RelativeMarker;
    .end local v3    # "id":Ljava/lang/String;
    .end local v5    # "lat":D
    .end local v7    # "lng":D
    .end local v13    # "nom":Ljava/lang/String;
    .end local v19    # "name":Ljava/lang/String;
    .end local v20    # "gender":Ljava/lang/String;
    .end local v21    # "timestamp":Ljava/lang/String;
    .end local v22    # "image":Ljava/lang/String;
    .end local v23    # "network":Ljava/lang/String;
    .end local v24    # "profilepic":Ljava/lang/String;
    .end local v28    # "i":I
    .end local v30    # "l":I
    .end local v36    # "msg":Ljava/lang/String;
    .end local v37    # "o":Lorg/json/me/JSONObject;
    .end local v42    # "relmarkers":Lorg/json/me/JSONArray;
    .end local v44    # "uname":Ljava/lang/String;
    .end local v45    # "userid":Ljava/lang/String;
    :catch_b
    move-exception v27

    .line 172
    .restart local v27    # "e":Lorg/json/me/JSONException;
    const-string v12, "LayerController"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "excepci\u00f3n JSON 2: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v27 .. v27}, Lorg/json/me/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v12, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 178
    .end local v27    # "e":Lorg/json/me/JSONException;
    :catchall_1
    move-exception v12

    monitor-exit v15

    throw v12
.end method

.method public static quitarLayers(Lcl/birdie/transantiagomaster/maps/layers/IOverlayRemover;)V
    .locals 5
    .param p0, "param"    # Lcl/birdie/transantiagomaster/maps/layers/IOverlayRemover;

    .prologue
    .line 326
    sget-object v2, Lcl/birdie/transantiagomaster/maps/layers/LayerController;->layers:Ljava/util/List;

    monitor-enter v2

    .line 329
    :try_start_0
    sget-object v1, Lcl/birdie/transantiagomaster/maps/layers/LayerController;->layers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 328
    monitor-exit v2

    return-void

    .line 329
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;

    .line 330
    .local v0, "l":Lcl/birdie/transantiagomaster/newobjetos/Layer;
    iget v3, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->status:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 331
    iget-object v3, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->ovlIcon:Lcl/birdie/transantiagomaster/maps/IOverlay;

    if-eqz v3, :cond_2

    .line 334
    iget-object v3, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->ovlIcon:Lcl/birdie/transantiagomaster/maps/IOverlay;

    invoke-interface {p0, v3}, Lcl/birdie/transantiagomaster/maps/layers/IOverlayRemover;->quitar(Ljava/lang/Object;)V

    .line 337
    :cond_2
    iget-object v3, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->ovlSmallIcon:Lcl/birdie/transantiagomaster/maps/IOverlay;

    if-eqz v3, :cond_0

    .line 338
    iget-object v3, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->ovlSmallIcon:Lcl/birdie/transantiagomaster/maps/IOverlay;

    invoke-interface {p0, v3}, Lcl/birdie/transantiagomaster/maps/layers/IOverlayRemover;->quitar(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 328
    .end local v0    # "l":Lcl/birdie/transantiagomaster/newobjetos/Layer;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static recrearLayers(Lcl/birdie/transantiagomaster/ITSMMapView;)V
    .locals 5
    .param p0, "mapView"    # Lcl/birdie/transantiagomaster/ITSMMapView;

    .prologue
    .line 191
    sget-object v2, Lcl/birdie/transantiagomaster/maps/layers/LayerController;->layers:Ljava/util/List;

    monitor-enter v2

    .line 194
    :try_start_0
    sget-object v1, Lcl/birdie/transantiagomaster/maps/layers/LayerController;->layers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 193
    monitor-exit v2

    return-void

    .line 194
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;

    .line 195
    .local v0, "l":Lcl/birdie/transantiagomaster/newobjetos/Layer;
    iget v3, v0, Lcl/birdie/transantiagomaster/newobjetos/Layer;->status:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 196
    invoke-static {v0, p0}, Lcl/birdie/transantiagomaster/maps/layers/LayerController;->crearLayer(Lcl/birdie/transantiagomaster/newobjetos/Layer;Lcl/birdie/transantiagomaster/ITSMMapView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 193
    .end local v0    # "l":Lcl/birdie/transantiagomaster/newobjetos/Layer;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static revisarLayers(Lcl/birdie/transantiagomaster/ITSMMapView;Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;)V
    .locals 5
    .param p0, "mapView"    # Lcl/birdie/transantiagomaster/ITSMMapView;
    .param p1, "listener"    # Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 229
    .local v0, "creado":Z
    sget-object v3, Lcl/birdie/transantiagomaster/maps/layers/LayerController;->layers:Ljava/util/List;

    monitor-enter v3

    .line 230
    :try_start_0
    sget-object v2, Lcl/birdie/transantiagomaster/maps/layers/LayerController;->layers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 229
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    if-eqz v0, :cond_2

    .line 239
    if-eqz p1, :cond_1

    .line 240
    invoke-interface {p1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onMapaRefrescarOverlays()V

    .line 241
    :cond_1
    invoke-static {}, Lcl/birdie/transantiagomaster/maps/layers/LayerController;->actualizarDatos$25a2cf1e()V

    .line 243
    :cond_2
    return-void

    .line 230
    :cond_3
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcl/birdie/transantiagomaster/newobjetos/Layer;

    .line 231
    .local v1, "l":Lcl/birdie/transantiagomaster/newobjetos/Layer;
    iget v4, v1, Lcl/birdie/transantiagomaster/newobjetos/Layer;->status:I

    if-nez v4, :cond_0

    .line 233
    invoke-static {v1, p0}, Lcl/birdie/transantiagomaster/maps/layers/LayerController;->crearLayer(Lcl/birdie/transantiagomaster/newobjetos/Layer;Lcl/birdie/transantiagomaster/ITSMMapView;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    const/4 v0, 0x1

    goto :goto_0

    .line 229
    .end local v1    # "l":Lcl/birdie/transantiagomaster/newobjetos/Layer;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
