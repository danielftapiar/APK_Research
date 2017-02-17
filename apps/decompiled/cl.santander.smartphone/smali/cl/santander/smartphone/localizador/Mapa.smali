.class public Lcl/santander/smartphone/localizador/Mapa;
.super Lcl/santander/smartphone/localizador/FragmentoInterno;
.source "Mapa.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/santander/smartphone/localizador/Mapa$MyListAdapter;,
        Lcl/santander/smartphone/localizador/Mapa$MyListItemClickListener;
    }
.end annotation


# instance fields
.field private adaptador:Lcl/santander/smartphone/localizador/Mapa$MyListAdapter;

.field private contenedor_mapa:Landroid/widget/LinearLayout;

.field private fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field private fmg:Landroid/support/v4/app/FragmentManager;

.field private lv_oficinas_cercanas:Landroid/widget/ListView;

.field private mapManager:Lcl/santander/santanderCL/famtec/android/maps/Maps;

.field private mapa:Lcom/google/android/maps/MapView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcl/santander/smartphone/localizador/FragmentoInterno;-><init>()V

    return-void
.end method

.method public constructor <init>(Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "pActual"    # Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemPOI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p2, "ofis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/santander/santanderCL/data/response/ItemPOI;>;"
    invoke-direct {p0, p1, p2}, Lcl/santander/smartphone/localizador/FragmentoInterno;-><init>(Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;Ljava/util/ArrayList;)V

    .line 57
    return-void
.end method

.method static synthetic access$0(Lcl/santander/smartphone/localizador/Mapa;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Mapa;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    return-object v0
.end method

.method static synthetic access$1(Lcl/santander/smartphone/localizador/Mapa;Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;Lcl/santander/santanderCL/data/response/ItemPOI;)V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0, p1, p2}, Lcl/santander/smartphone/localizador/Mapa;->centraMapaViewPoi(Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;Lcl/santander/santanderCL/data/response/ItemPOI;)V

    return-void
.end method

.method private cargarLista()V
    .locals 3

    .prologue
    .line 316
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Mapa;->listaOficinas:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 319
    new-instance v0, Lcl/santander/smartphone/localizador/Mapa$MyListAdapter;

    invoke-direct {v0, p0}, Lcl/santander/smartphone/localizador/Mapa$MyListAdapter;-><init>(Lcl/santander/smartphone/localizador/Mapa;)V

    iput-object v0, p0, Lcl/santander/smartphone/localizador/Mapa;->adaptador:Lcl/santander/smartphone/localizador/Mapa$MyListAdapter;

    .line 320
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Mapa;->lv_oficinas_cercanas:Landroid/widget/ListView;

    iget-object v1, p0, Lcl/santander/smartphone/localizador/Mapa;->adaptador:Lcl/santander/smartphone/localizador/Mapa$MyListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 321
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Mapa;->lv_oficinas_cercanas:Landroid/widget/ListView;

    new-instance v1, Lcl/santander/smartphone/localizador/Mapa$MyListItemClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcl/santander/smartphone/localizador/Mapa$MyListItemClickListener;-><init>(Lcl/santander/smartphone/localizador/Mapa;Lcl/santander/smartphone/localizador/Mapa$MyListItemClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 324
    :cond_0
    return-void
.end method

.method private centraMapaViewPoi(Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;Lcl/santander/santanderCL/data/response/ItemPOI;)V
    .locals 13
    .param p1, "miPos"    # Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;
    .param p2, "poiSeleccionado"    # Lcl/santander/santanderCL/data/response/ItemPOI;

    .prologue
    .line 221
    new-instance v1, Lcom/google/android/maps/GeoPoint;

    invoke-virtual {p2}, Lcl/santander/santanderCL/data/response/ItemPOI;->getLatitud()D

    move-result-wide v8

    const-wide v10, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    invoke-virtual {p2}, Lcl/santander/santanderCL/data/response/ItemPOI;->getLongitud()D

    move-result-wide v9

    const-wide v11, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v9, v11

    double-to-int v9, v9

    invoke-direct {v1, v8, v9}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 223
    .local v1, "point_ofi":Lcom/google/android/maps/GeoPoint;
    new-instance v2, Lcom/google/android/maps/GeoPoint;

    iget-wide v8, p1, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_latitud:D

    const-wide v10, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    iget-wide v9, p1, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_longitud:D

    const-wide v11, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v9, v11

    double-to-int v9, v9

    invoke-direct {v2, v8, v9}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 226
    .local v2, "posActual":Lcom/google/android/maps/GeoPoint;
    new-instance v0, Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v8

    invoke-virtual {v2}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v9

    add-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    .line 227
    invoke-virtual {v1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v9

    invoke-virtual {v2}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v10

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    .line 226
    invoke-direct {v0, v8, v9}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 229
    .local v0, "centro":Lcom/google/android/maps/GeoPoint;
    iget-object v8, p0, Lcl/santander/smartphone/localizador/Mapa;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v8}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 230
    iget-object v8, p0, Lcl/santander/smartphone/localizador/Mapa;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v8}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v8

    iget-object v9, p0, Lcl/santander/smartphone/localizador/Mapa;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v9}, Lcom/google/android/maps/MapView;->getMaxZoomLevel()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 233
    iget-object v8, p0, Lcl/santander/smartphone/localizador/Mapa;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v8}, Lcom/google/android/maps/MapView;->postInvalidate()V

    .line 235
    iget-object v8, p0, Lcl/santander/smartphone/localizador/Mapa;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v8}, Lcom/google/android/maps/MapView;->invalidate()V

    .line 237
    const/4 v7, 0x0

    .line 238
    .local v7, "visible":Z
    :goto_0
    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Mapa;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcl/santander/smartphone/localizador/Mapa;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v8}, Lcom/google/android/maps/MapView;->getZoomLevel()I

    move-result v8

    const/4 v9, 0x1

    if-gt v8, v9, :cond_1

    .line 271
    :cond_0
    iget-object v8, p0, Lcl/santander/smartphone/localizador/Mapa;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v8}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v8

    iget-object v9, p0, Lcl/santander/smartphone/localizador/Mapa;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v9}, Lcom/google/android/maps/MapView;->getZoomLevel()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 272
    iget-object v8, p0, Lcl/santander/smartphone/localizador/Mapa;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v8}, Lcom/google/android/maps/MapView;->postInvalidate()V

    .line 273
    iget-object v8, p0, Lcl/santander/smartphone/localizador/Mapa;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v8}, Lcom/google/android/maps/MapView;->invalidate()V

    .line 274
    return-void

    .line 240
    :cond_1
    iget-object v8, p0, Lcl/santander/smartphone/localizador/Mapa;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v8}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v3

    .line 242
    .local v3, "proj":Lcom/google/android/maps/Projection;
    const/4 v8, 0x0

    invoke-interface {v3, v1, v8}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v5

    .line 244
    .local v5, "punto1":Landroid/graphics/Point;
    iget-object v8, p0, Lcl/santander/smartphone/localizador/Mapa;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v8}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v4

    .line 245
    .local v4, "proj2":Lcom/google/android/maps/Projection;
    const/4 v8, 0x0

    invoke-interface {v4, v2, v8}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v6

    .line 248
    .local v6, "punto2":Landroid/graphics/Point;
    iget v8, v5, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lcl/santander/smartphone/localizador/Mapa;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v9}, Lcom/google/android/maps/MapView;->getLeft()I

    move-result v9

    if-le v8, v9, :cond_2

    iget v8, v5, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lcl/santander/smartphone/localizador/Mapa;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v9}, Lcom/google/android/maps/MapView;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcl/santander/smartphone/localizador/Mapa;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v10}, Lcom/google/android/maps/MapView;->getLeft()I

    move-result v10

    add-int/2addr v9, v10

    if-ge v8, v9, :cond_2

    .line 249
    iget v8, v5, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lcl/santander/smartphone/localizador/Mapa;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v9}, Lcom/google/android/maps/MapView;->getTop()I

    move-result v9

    if-le v8, v9, :cond_2

    iget v8, v5, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lcl/santander/smartphone/localizador/Mapa;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v9}, Lcom/google/android/maps/MapView;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcl/santander/smartphone/localizador/Mapa;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v10}, Lcom/google/android/maps/MapView;->getTop()I

    move-result v10

    add-int/2addr v9, v10

    if-ge v8, v9, :cond_2

    .line 253
    iget v8, v6, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lcl/santander/smartphone/localizador/Mapa;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v9}, Lcom/google/android/maps/MapView;->getLeft()I

    move-result v9

    if-le v8, v9, :cond_2

    iget v8, v6, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lcl/santander/smartphone/localizador/Mapa;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v9}, Lcom/google/android/maps/MapView;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcl/santander/smartphone/localizador/Mapa;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v10}, Lcom/google/android/maps/MapView;->getLeft()I

    move-result v10

    add-int/2addr v9, v10

    if-ge v8, v9, :cond_2

    .line 254
    iget v8, v6, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lcl/santander/smartphone/localizador/Mapa;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v9}, Lcom/google/android/maps/MapView;->getTop()I

    move-result v9

    if-le v8, v9, :cond_2

    iget v8, v6, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lcl/santander/smartphone/localizador/Mapa;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v9}, Lcom/google/android/maps/MapView;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcl/santander/smartphone/localizador/Mapa;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v10}, Lcom/google/android/maps/MapView;->getTop()I

    move-result v10

    add-int/2addr v9, v10

    if-ge v8, v9, :cond_2

    .line 258
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 262
    :cond_2
    iget-object v8, p0, Lcl/santander/smartphone/localizador/Mapa;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v8}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v8

    iget-object v9, p0, Lcl/santander/smartphone/localizador/Mapa;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v9}, Lcom/google/android/maps/MapView;->getZoomLevel()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 263
    iget-object v8, p0, Lcl/santander/smartphone/localizador/Mapa;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v8}, Lcom/google/android/maps/MapView;->postInvalidate()V

    .line 264
    iget-object v8, p0, Lcl/santander/smartphone/localizador/Mapa;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v8}, Lcom/google/android/maps/MapView;->invalidate()V

    goto/16 :goto_0
.end method

.method private centrarMapa(Lcom/google/android/maps/GeoPoint;)V
    .locals 4
    .param p1, "pos"    # Lcom/google/android/maps/GeoPoint;

    .prologue
    .line 284
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Mapa;->mapa:Lcom/google/android/maps/MapView;

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Mapa;->mapManager:Lcl/santander/santanderCL/famtec/android/maps/Maps;

    iget-object v0, v0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->overlay:Lcom/google/android/maps/MyLocationOverlay;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Mapa;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/localizador/Mapa;->mapManager:Lcl/santander/santanderCL/famtec/android/maps/Maps;

    iget-object v1, v1, Lcl/santander/santanderCL/famtec/android/maps/Maps;->overlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Mapa;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/localizador/Mapa;->mapManager:Lcl/santander/santanderCL/famtec/android/maps/Maps;

    iget-object v1, v1, Lcl/santander/santanderCL/famtec/android/maps/Maps;->overlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 292
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Mapa;->mapManager:Lcl/santander/santanderCL/famtec/android/maps/Maps;

    new-instance v1, Lcom/google/android/maps/MyLocationOverlay;

    iget-object v2, p0, Lcl/santander/smartphone/localizador/Mapa;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcl/santander/smartphone/localizador/Mapa;->mapa:Lcom/google/android/maps/MapView;

    invoke-direct {v1, v2, v3}, Lcom/google/android/maps/MyLocationOverlay;-><init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V

    iput-object v1, v0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->overlay:Lcom/google/android/maps/MyLocationOverlay;

    .line 293
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Mapa;->mapManager:Lcl/santander/santanderCL/famtec/android/maps/Maps;

    iget-object v0, v0, Lcl/santander/santanderCL/famtec/android/maps/Maps;->overlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v0}, Lcom/google/android/maps/MyLocationOverlay;->enableMyLocation()Z

    .line 294
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Mapa;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/localizador/Mapa;->mapManager:Lcl/santander/santanderCL/famtec/android/maps/Maps;

    iget-object v1, v1, Lcl/santander/santanderCL/famtec/android/maps/Maps;->overlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    :try_start_0
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Mapa;->mapa:Lcom/google/android/maps/MapView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapView;->setClickable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_0
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Mapa;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 302
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Mapa;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 305
    :cond_1
    return-void

    .line 300
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private initComponents()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 179
    new-instance v0, Lcl/santander/smartphone/localizador/Mapa$3;

    invoke-direct {v0, p0}, Lcl/santander/smartphone/localizador/Mapa$3;-><init>(Lcl/santander/smartphone/localizador/Mapa;)V

    iput-object v0, p0, Lcl/santander/smartphone/localizador/Mapa;->handlerBubble:Landroid/os/Handler;

    .line 198
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Mapa;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06020f

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/Mapa;->contenedor_mapa:Landroid/widget/LinearLayout;

    .line 201
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Mapa;->contenedor_mapa:Landroid/widget/LinearLayout;

    sget-object v1, Lcl/santander/smartphone/Main;->mapa:Lcom/google/android/maps/MapView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Mapa;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060210

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/Mapa;->lv_oficinas_cercanas:Landroid/widget/ListView;

    .line 208
    new-instance v0, Lcl/santander/santanderCL/famtec/android/maps/Maps;

    iget-object v1, p0, Lcl/santander/smartphone/localizador/Mapa;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-direct {v0, v1}, Lcl/santander/santanderCL/famtec/android/maps/Maps;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcl/santander/smartphone/localizador/Mapa;->mapManager:Lcl/santander/santanderCL/famtec/android/maps/Maps;

    .line 209
    sget-object v0, Lcl/santander/smartphone/Main;->mapa:Lcom/google/android/maps/MapView;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/Mapa;->mapa:Lcom/google/android/maps/MapView;

    .line 211
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Mapa;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 214
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 81
    invoke-super {p0, p1}, Lcl/santander/smartphone/localizador/FragmentoInterno;->onActivityCreated(Landroid/os/Bundle;)V

    .line 83
    sget-object v0, Lcl/santander/smartphone/Main;->mapa:Lcom/google/android/maps/MapView;

    if-eqz v0, :cond_0

    sget-object v0, Lcl/santander/smartphone/Main;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcl/santander/smartphone/Main;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Mapa;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/localizador/Mapa;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 88
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Mapa;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/localizador/Mapa;->fmg:Landroid/support/v4/app/FragmentManager;

    .line 93
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Mapa;->getBubleOverlay()Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Mapa;->getBubleOverlay()Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->removeBubble()V

    .line 95
    :cond_1
    invoke-direct {p0}, Lcl/santander/smartphone/localizador/Mapa;->initComponents()V

    .line 97
    new-instance v0, Lcom/google/android/maps/GeoPoint;

    iget-object v1, p0, Lcl/santander/smartphone/localizador/Mapa;->posicionActual:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    iget-wide v1, v1, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_latitud:D

    mul-double/2addr v1, v4

    double-to-int v1, v1

    iget-object v2, p0, Lcl/santander/smartphone/localizador/Mapa;->posicionActual:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    iget-wide v2, v2, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_longitud:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    invoke-direct {p0, v0}, Lcl/santander/smartphone/localizador/Mapa;->centrarMapa(Lcom/google/android/maps/GeoPoint;)V

    .line 98
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Mapa;->IncluirPois()V

    .line 101
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Mapa;->listaOficinas:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcl/santander/smartphone/localizador/Mapa;->listaOficinas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 104
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Mapa;->mapa:Lcom/google/android/maps/MapView;

    new-instance v1, Lcl/santander/smartphone/localizador/Mapa$1;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/localizador/Mapa$1;-><init>(Lcl/santander/smartphone/localizador/Mapa;)V

    .line 116
    const-wide/16 v2, 0x1f4

    .line 104
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/MapView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 121
    :cond_2
    invoke-direct {p0}, Lcl/santander/smartphone/localizador/Mapa;->cargarLista()V

    .line 126
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/localizador/Mapa;->setRetainInstance(Z)V

    .line 64
    invoke-super {p0, p1}, Lcl/santander/smartphone/localizador/FragmentoInterno;->onCreate(Landroid/os/Bundle;)V

    .line 65
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f030049

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 131
    sget-boolean v0, Lcl/santander/smartphone/Global;->fromDirections:Z

    if-eqz v0, :cond_3

    .line 134
    :try_start_0
    sget-object v0, Lcl/santander/smartphone/Main;->mapa:Lcom/google/android/maps/MapView;

    if-eqz v0, :cond_0

    sget-object v0, Lcl/santander/smartphone/Main;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Lcl/santander/smartphone/Main;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Mapa;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/localizador/Mapa;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 139
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Mapa;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/localizador/Mapa;->fmg:Landroid/support/v4/app/FragmentManager;

    .line 144
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Mapa;->getBubleOverlay()Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Mapa;->getBubleOverlay()Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->removeBubble()V

    .line 146
    :cond_1
    invoke-direct {p0}, Lcl/santander/smartphone/localizador/Mapa;->initComponents()V

    .line 148
    new-instance v0, Lcom/google/android/maps/GeoPoint;

    iget-object v1, p0, Lcl/santander/smartphone/localizador/Mapa;->posicionActual:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    iget-wide v1, v1, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_latitud:D

    mul-double/2addr v1, v4

    double-to-int v1, v1

    iget-object v2, p0, Lcl/santander/smartphone/localizador/Mapa;->posicionActual:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    iget-wide v2, v2, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_longitud:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    invoke-direct {p0, v0}, Lcl/santander/smartphone/localizador/Mapa;->centrarMapa(Lcom/google/android/maps/GeoPoint;)V

    .line 149
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/Mapa;->IncluirPois()V

    .line 152
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Mapa;->listaOficinas:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcl/santander/smartphone/localizador/Mapa;->listaOficinas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 154
    iget-object v0, p0, Lcl/santander/smartphone/localizador/Mapa;->mapa:Lcom/google/android/maps/MapView;

    new-instance v1, Lcl/santander/smartphone/localizador/Mapa$2;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/localizador/Mapa$2;-><init>(Lcl/santander/smartphone/localizador/Mapa;)V

    .line 166
    const-wide/16 v2, 0x1f4

    .line 154
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/MapView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 169
    :cond_2
    invoke-direct {p0}, Lcl/santander/smartphone/localizador/Mapa;->cargarLista()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :cond_3
    :goto_0
    invoke-super {p0}, Lcl/santander/smartphone/localizador/FragmentoInterno;->onResume()V

    .line 173
    return-void

    .line 170
    :catch_0
    move-exception v0

    goto :goto_0
.end method
