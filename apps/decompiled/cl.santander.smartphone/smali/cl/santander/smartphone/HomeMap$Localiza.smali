.class Lcl/santander/smartphone/HomeMap$Localiza;
.super Landroid/os/AsyncTask;
.source "HomeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/santander/smartphone/HomeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Localiza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private gps:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

.field private listaOficinas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemPOI;",
            ">;"
        }
    .end annotation
.end field

.field private pointsOverlay:Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;

.field private posicionActual:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

.field final synthetic this$0:Lcl/santander/smartphone/HomeMap;


# direct methods
.method private constructor <init>(Lcl/santander/smartphone/HomeMap;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcl/santander/smartphone/HomeMap;Lcl/santander/smartphone/HomeMap$Localiza;)V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcl/santander/smartphone/HomeMap$Localiza;-><init>(Lcl/santander/smartphone/HomeMap;)V

    return-void
.end method

.method static synthetic access$2(Lcl/santander/smartphone/HomeMap$Localiza;)Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap$Localiza;->gps:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    return-object v0
.end method

.method static synthetic access$3(Lcl/santander/smartphone/HomeMap$Localiza;)Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap$Localiza;->posicionActual:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    return-object v0
.end method

.method static synthetic access$4(Lcl/santander/smartphone/HomeMap$Localiza;Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;Lcl/santander/santanderCL/data/response/ItemPOI;)V
    .locals 0

    .prologue
    .line 430
    invoke-direct {p0, p1, p2}, Lcl/santander/smartphone/HomeMap$Localiza;->centraMapa(Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;Lcl/santander/santanderCL/data/response/ItemPOI;)V

    return-void
.end method

.method static synthetic access$6(Lcl/santander/smartphone/HomeMap$Localiza;)Lcl/santander/smartphone/HomeMap;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    return-object v0
.end method

.method private buscarPOIS()Z
    .locals 13

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 256
    :try_start_0
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    iget-object v0, v0, Lcl/santander/smartphone/HomeMap;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-object v1, p0, Lcl/santander/smartphone/HomeMap$Localiza;->posicionActual:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    iget-wide v1, v1, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_latitud:D

    iget-object v3, p0, Lcl/santander/smartphone/HomeMap$Localiza;->posicionActual:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    iget-wide v3, v3, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_longitud:D

    const/16 v5, 0x1388

    const/4 v6, 0x1

    const/4 v7, 0x0

    sget-object v8, Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;->IMPERDIBLES:Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lcl/santander/smartphone/ServicesManager;->ListadoPois(Landroid/app/Activity;DDIILjava/util/ArrayList;Lcl/santander/santanderCL/utils/Constant$TIPO_BUSQUEDA;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/HomeMap$Localiza;->listaOficinas:Ljava/util/ArrayList;

    .line 258
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap$Localiza;->listaOficinas:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcl/santander/smartphone/HomeMap$Localiza;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    invoke-virtual {v0}, Lcl/santander/smartphone/HomeMap;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap$Localiza;->listaOficinas:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/ItemPOI;->getOferta()Lcl/santander/santanderCL/data/response/ItemImperdible;

    move-result-object v1

    iget-object v0, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    iget-object v2, v0, Lcl/santander/smartphone/HomeMap;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-object v0, p0, Lcl/santander/smartphone/HomeMap$Localiza;->listaOficinas:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/ItemPOI;->getOferta()Lcl/santander/santanderCL/data/response/ItemImperdible;

    move-result-object v0

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/ItemImperdible;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcl/santander/smartphone/Utils;->downloadImage(Landroid/app/Activity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcl/santander/santanderCL/data/response/ItemImperdible;->setIcono(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move v0, v11

    .line 274
    :goto_0
    return v0

    :cond_0
    move v0, v12

    .line 263
    goto :goto_0

    .line 267
    :catch_0
    move-exception v10

    .local v10, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    move v0, v12

    .line 268
    goto :goto_0

    .line 269
    .end local v10    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v10

    .local v10, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    move v0, v12

    .line 270
    goto :goto_0

    .line 272
    .end local v10    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v10

    .local v10, "e":Ljava/lang/Exception;
    move v0, v12

    .line 274
    goto :goto_0
.end method

.method private centraMapa(Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;Lcl/santander/santanderCL/data/response/ItemPOI;)V
    .locals 13
    .param p1, "miPos"    # Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;
    .param p2, "poiSeleccionado"    # Lcl/santander/santanderCL/data/response/ItemPOI;

    .prologue
    .line 433
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

    .line 435
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

    .line 438
    .local v2, "posActual":Lcom/google/android/maps/GeoPoint;
    new-instance v0, Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v8

    invoke-virtual {v2}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v9

    add-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    .line 439
    invoke-virtual {v1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v9

    invoke-virtual {v2}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v10

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    .line 438
    invoke-direct {v0, v8, v9}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 441
    .local v0, "centro":Lcom/google/android/maps/GeoPoint;
    iget-object v8, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->mapa:Lcom/google/android/maps/MapView;
    invoke-static {v8}, Lcl/santander/smartphone/HomeMap;->access$12(Lcl/santander/smartphone/HomeMap;)Lcom/google/android/maps/MapView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 442
    iget-object v8, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->mapa:Lcom/google/android/maps/MapView;
    invoke-static {v8}, Lcl/santander/smartphone/HomeMap;->access$12(Lcl/santander/smartphone/HomeMap;)Lcom/google/android/maps/MapView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v8

    iget-object v9, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->mapa:Lcom/google/android/maps/MapView;
    invoke-static {v9}, Lcl/santander/smartphone/HomeMap;->access$12(Lcl/santander/smartphone/HomeMap;)Lcom/google/android/maps/MapView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/maps/MapView;->getMaxZoomLevel()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 445
    iget-object v8, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->mapa:Lcom/google/android/maps/MapView;
    invoke-static {v8}, Lcl/santander/smartphone/HomeMap;->access$12(Lcl/santander/smartphone/HomeMap;)Lcom/google/android/maps/MapView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/maps/MapView;->postInvalidate()V

    .line 447
    iget-object v8, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->mapa:Lcom/google/android/maps/MapView;
    invoke-static {v8}, Lcl/santander/smartphone/HomeMap;->access$12(Lcl/santander/smartphone/HomeMap;)Lcom/google/android/maps/MapView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/maps/MapView;->invalidate()V

    .line 449
    const/4 v7, 0x0

    .line 450
    .local v7, "visible":Z
    :goto_0
    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcl/santander/smartphone/HomeMap$Localiza;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    invoke-virtual {v8}, Lcl/santander/smartphone/HomeMap;->isVisible()Z

    move-result v8

    if-nez v8, :cond_1

    .line 482
    :cond_0
    return-void

    .line 452
    :cond_1
    iget-object v8, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->mapa:Lcom/google/android/maps/MapView;
    invoke-static {v8}, Lcl/santander/smartphone/HomeMap;->access$12(Lcl/santander/smartphone/HomeMap;)Lcom/google/android/maps/MapView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v3

    .line 454
    .local v3, "proj":Lcom/google/android/maps/Projection;
    const/4 v8, 0x0

    invoke-interface {v3, v1, v8}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v5

    .line 456
    .local v5, "punto1":Landroid/graphics/Point;
    iget-object v8, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->mapa:Lcom/google/android/maps/MapView;
    invoke-static {v8}, Lcl/santander/smartphone/HomeMap;->access$12(Lcl/santander/smartphone/HomeMap;)Lcom/google/android/maps/MapView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v4

    .line 457
    .local v4, "proj2":Lcom/google/android/maps/Projection;
    const/4 v8, 0x0

    invoke-interface {v4, v2, v8}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v6

    .line 460
    .local v6, "punto2":Landroid/graphics/Point;
    iget v8, v5, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->mapa:Lcom/google/android/maps/MapView;
    invoke-static {v9}, Lcl/santander/smartphone/HomeMap;->access$12(Lcl/santander/smartphone/HomeMap;)Lcom/google/android/maps/MapView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/maps/MapView;->getLeft()I

    move-result v9

    if-le v8, v9, :cond_2

    iget v8, v5, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->mapa:Lcom/google/android/maps/MapView;
    invoke-static {v9}, Lcl/santander/smartphone/HomeMap;->access$12(Lcl/santander/smartphone/HomeMap;)Lcom/google/android/maps/MapView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/maps/MapView;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->mapa:Lcom/google/android/maps/MapView;
    invoke-static {v10}, Lcl/santander/smartphone/HomeMap;->access$12(Lcl/santander/smartphone/HomeMap;)Lcom/google/android/maps/MapView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/maps/MapView;->getLeft()I

    move-result v10

    add-int/2addr v9, v10

    if-ge v8, v9, :cond_2

    .line 461
    iget v8, v5, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->mapa:Lcom/google/android/maps/MapView;
    invoke-static {v9}, Lcl/santander/smartphone/HomeMap;->access$12(Lcl/santander/smartphone/HomeMap;)Lcom/google/android/maps/MapView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/maps/MapView;->getTop()I

    move-result v9

    if-le v8, v9, :cond_2

    iget v8, v5, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->mapa:Lcom/google/android/maps/MapView;
    invoke-static {v9}, Lcl/santander/smartphone/HomeMap;->access$12(Lcl/santander/smartphone/HomeMap;)Lcom/google/android/maps/MapView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/maps/MapView;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->mapa:Lcom/google/android/maps/MapView;
    invoke-static {v10}, Lcl/santander/smartphone/HomeMap;->access$12(Lcl/santander/smartphone/HomeMap;)Lcom/google/android/maps/MapView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/maps/MapView;->getTop()I

    move-result v10

    add-int/2addr v9, v10

    if-ge v8, v9, :cond_2

    .line 465
    iget v8, v6, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->mapa:Lcom/google/android/maps/MapView;
    invoke-static {v9}, Lcl/santander/smartphone/HomeMap;->access$12(Lcl/santander/smartphone/HomeMap;)Lcom/google/android/maps/MapView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/maps/MapView;->getLeft()I

    move-result v9

    if-le v8, v9, :cond_2

    iget v8, v6, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->mapa:Lcom/google/android/maps/MapView;
    invoke-static {v9}, Lcl/santander/smartphone/HomeMap;->access$12(Lcl/santander/smartphone/HomeMap;)Lcom/google/android/maps/MapView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/maps/MapView;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->mapa:Lcom/google/android/maps/MapView;
    invoke-static {v10}, Lcl/santander/smartphone/HomeMap;->access$12(Lcl/santander/smartphone/HomeMap;)Lcom/google/android/maps/MapView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/maps/MapView;->getLeft()I

    move-result v10

    add-int/2addr v9, v10

    if-ge v8, v9, :cond_2

    .line 466
    iget v8, v6, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->mapa:Lcom/google/android/maps/MapView;
    invoke-static {v9}, Lcl/santander/smartphone/HomeMap;->access$12(Lcl/santander/smartphone/HomeMap;)Lcom/google/android/maps/MapView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/maps/MapView;->getTop()I

    move-result v9

    if-le v8, v9, :cond_2

    iget v8, v6, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->mapa:Lcom/google/android/maps/MapView;
    invoke-static {v9}, Lcl/santander/smartphone/HomeMap;->access$12(Lcl/santander/smartphone/HomeMap;)Lcom/google/android/maps/MapView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/maps/MapView;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->mapa:Lcom/google/android/maps/MapView;
    invoke-static {v10}, Lcl/santander/smartphone/HomeMap;->access$12(Lcl/santander/smartphone/HomeMap;)Lcom/google/android/maps/MapView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/maps/MapView;->getTop()I

    move-result v10

    add-int/2addr v9, v10

    if-ge v8, v9, :cond_2

    .line 470
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 474
    :cond_2
    iget-object v8, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->mapa:Lcom/google/android/maps/MapView;
    invoke-static {v8}, Lcl/santander/smartphone/HomeMap;->access$12(Lcl/santander/smartphone/HomeMap;)Lcom/google/android/maps/MapView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v8

    iget-object v9, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->mapa:Lcom/google/android/maps/MapView;
    invoke-static {v9}, Lcl/santander/smartphone/HomeMap;->access$12(Lcl/santander/smartphone/HomeMap;)Lcom/google/android/maps/MapView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/maps/MapView;->getZoomLevel()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 475
    iget-object v8, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->mapa:Lcom/google/android/maps/MapView;
    invoke-static {v8}, Lcl/santander/smartphone/HomeMap;->access$12(Lcl/santander/smartphone/HomeMap;)Lcom/google/android/maps/MapView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/maps/MapView;->postInvalidate()V

    .line 476
    iget-object v8, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->mapa:Lcom/google/android/maps/MapView;
    invoke-static {v8}, Lcl/santander/smartphone/HomeMap;->access$12(Lcl/santander/smartphone/HomeMap;)Lcom/google/android/maps/MapView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/maps/MapView;->invalidate()V

    goto/16 :goto_0
.end method

.method private incluirPois()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const-wide v10, 0x412e848000000000L    # 1000000.0

    const/4 v9, 0x0

    .line 376
    iget-object v5, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # invokes: Lcl/santander/smartphone/HomeMap;->getBubleOverlay()Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;
    invoke-static {v5}, Lcl/santander/smartphone/HomeMap;->access$11(Lcl/santander/smartphone/HomeMap;)Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 379
    iget-object v5, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # invokes: Lcl/santander/smartphone/HomeMap;->getBubleOverlay()Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;
    invoke-static {v5}, Lcl/santander/smartphone/HomeMap;->access$11(Lcl/santander/smartphone/HomeMap;)Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;

    move-result-object v5

    invoke-virtual {v5}, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->removeBubble()V

    .line 382
    :cond_0
    iget-object v5, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->mapa:Lcom/google/android/maps/MapView;
    invoke-static {v5}, Lcl/santander/smartphone/HomeMap;->access$12(Lcl/santander/smartphone/HomeMap;)Lcom/google/android/maps/MapView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    .line 384
    .local v0, "capas":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    iget-object v5, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->mapa:Lcom/google/android/maps/MapView;
    invoke-static {v5}, Lcl/santander/smartphone/HomeMap;->access$12(Lcl/santander/smartphone/HomeMap;)Lcom/google/android/maps/MapView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 387
    new-instance v5, Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;

    iget-object v6, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    iget-object v6, v6, Lcl/santander/smartphone/HomeMap;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-direct {v5, v6, v9}, Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;-><init>(Lcom/google/android/maps/MapActivity;Z)V

    iput-object v5, p0, Lcl/santander/smartphone/HomeMap$Localiza;->pointsOverlay:Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;

    .line 390
    new-array v1, v8, [Landroid/graphics/drawable/Drawable;

    .line 392
    .local v1, "iconos":[Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcl/santander/smartphone/HomeMap$Localiza;->listaOficinas:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcl/santander/santanderCL/data/response/ItemPOI;

    .line 395
    .local v3, "poi":Lcl/santander/santanderCL/data/response/ItemPOI;
    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemPOI;->getOferta()Lcl/santander/santanderCL/data/response/ItemImperdible;

    move-result-object v5

    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemImperdible;->getIcono()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v6, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    invoke-virtual {v6}, Lcl/santander/smartphone/HomeMap;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/16 v7, 0x23

    invoke-static {v5, v6, v7}, Lcl/santander/smartphone/Utils;->reesCalarDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v1, v9

    .line 398
    new-array v4, v8, [Lcom/google/android/maps/GeoPoint;

    .line 400
    .local v4, "points":[Lcom/google/android/maps/GeoPoint;
    new-instance v5, Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemPOI;->getLatitud()D

    move-result-wide v6

    mul-double/2addr v6, v10

    double-to-int v6, v6

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemPOI;->getLongitud()D

    move-result-wide v7

    mul-double/2addr v7, v10

    double-to-int v7, v7

    invoke-direct {v5, v6, v7}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    aput-object v5, v4, v9

    .line 402
    aget-object v5, v1, v9

    if-eqz v5, :cond_1

    .line 404
    iget-object v5, p0, Lcl/santander/smartphone/HomeMap$Localiza;->pointsOverlay:Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;

    invoke-virtual {v5, v4}, Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;->setPoints([Lcom/google/android/maps/GeoPoint;)V

    .line 405
    iget-object v5, p0, Lcl/santander/smartphone/HomeMap$Localiza;->pointsOverlay:Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;

    invoke-virtual {v5, v1}, Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;->setIconos([Landroid/graphics/drawable/Drawable;)V

    .line 407
    iget-object v5, p0, Lcl/santander/smartphone/HomeMap$Localiza;->pointsOverlay:Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    :cond_1
    new-instance v2, Lcl/santander/santanderCL/famtec/android/maps/Maps;

    iget-object v5, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    iget-object v5, v5, Lcl/santander/smartphone/HomeMap;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-direct {v2, v5}, Lcl/santander/santanderCL/famtec/android/maps/Maps;-><init>(Landroid/content/Context;)V

    .line 410
    .local v2, "mapManager":Lcl/santander/santanderCL/famtec/android/maps/Maps;
    new-instance v5, Lcom/google/android/maps/MyLocationOverlay;

    iget-object v6, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->mapa:Lcom/google/android/maps/MapView;
    invoke-static {v6}, Lcl/santander/smartphone/HomeMap;->access$12(Lcl/santander/smartphone/HomeMap;)Lcom/google/android/maps/MapView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->mapa:Lcom/google/android/maps/MapView;
    invoke-static {v7}, Lcl/santander/smartphone/HomeMap;->access$12(Lcl/santander/smartphone/HomeMap;)Lcom/google/android/maps/MapView;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/google/android/maps/MyLocationOverlay;-><init>(Landroid/content/Context;Lcom/google/android/maps/MapView;)V

    iput-object v5, v2, Lcl/santander/santanderCL/famtec/android/maps/Maps;->overlay:Lcom/google/android/maps/MyLocationOverlay;

    .line 411
    iget-object v5, v2, Lcl/santander/santanderCL/famtec/android/maps/Maps;->overlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-virtual {v5}, Lcom/google/android/maps/MyLocationOverlay;->enableMyLocation()Z

    .line 412
    iget-object v5, v2, Lcl/santander/santanderCL/famtec/android/maps/Maps;->overlay:Lcom/google/android/maps/MyLocationOverlay;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    iget-object v5, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->mapa:Lcom/google/android/maps/MapView;
    invoke-static {v5}, Lcl/santander/smartphone/HomeMap;->access$12(Lcl/santander/smartphone/HomeMap;)Lcom/google/android/maps/MapView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/maps/MapView;->postInvalidate()V

    .line 416
    iget-object v5, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->mapa:Lcom/google/android/maps/MapView;
    invoke-static {v5}, Lcl/santander/smartphone/HomeMap;->access$12(Lcl/santander/smartphone/HomeMap;)Lcom/google/android/maps/MapView;

    move-result-object v5

    new-instance v6, Lcl/santander/smartphone/HomeMap$Localiza$2;

    invoke-direct {v6, p0, v3}, Lcl/santander/smartphone/HomeMap$Localiza$2;-><init>(Lcl/santander/smartphone/HomeMap$Localiza;Lcl/santander/santanderCL/data/response/ItemPOI;)V

    .line 423
    const-wide/16 v7, 0x1f4

    .line 416
    invoke-virtual {v5, v6, v7, v8}, Lcom/google/android/maps/MapView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 427
    return-void
.end method

.method private scheduleGeo()V
    .locals 4

    .prologue
    .line 233
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 234
    .local v0, "t":Ljava/util/Timer;
    new-instance v1, Lcl/santander/smartphone/HomeMap$Localiza$1;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/HomeMap$Localiza$1;-><init>(Lcl/santander/smartphone/HomeMap$Localiza;)V

    .line 245
    .local v1, "task":Ljava/util/TimerTask;
    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 246
    return-void
.end method

.method private setDatosPoi()V
    .locals 6

    .prologue
    const/16 v5, 0x23

    .line 360
    iget-object v1, p0, Lcl/santander/smartphone/HomeMap$Localiza;->listaOficinas:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/data/response/ItemPOI;

    .line 362
    .local v0, "poi":Lcl/santander/santanderCL/data/response/ItemPOI;
    iget-object v1, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->tv_distancia:Landroid/widget/TextView;
    invoke-static {v1}, Lcl/santander/smartphone/HomeMap;->access$4(Lcl/santander/smartphone/HomeMap;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/ItemPOI;->getNombre()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/ItemPOI;->getDistanciaScreen()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v1, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->tv_direccion:Landroid/widget/TextView;
    invoke-static {v1}, Lcl/santander/smartphone/HomeMap;->access$5(Lcl/santander/smartphone/HomeMap;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/ItemPOI;->getDireccion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v1, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->iv_poi:Landroid/widget/ImageView;
    invoke-static {v1}, Lcl/santander/smartphone/HomeMap;->access$6(Lcl/santander/smartphone/HomeMap;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/ItemPOI;->getOferta()Lcl/santander/santanderCL/data/response/ItemImperdible;

    move-result-object v2

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/ItemImperdible;->getIcono()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    invoke-virtual {v3}, Lcl/santander/smartphone/HomeMap;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcl/santander/smartphone/Utils;->reesCalarDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 365
    iget-object v1, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->tv_estrella_1:Landroid/widget/TextView;
    invoke-static {v1}, Lcl/santander/smartphone/HomeMap;->access$7(Lcl/santander/smartphone/HomeMap;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->tv_estrella_2:Landroid/widget/TextView;
    invoke-static {v2}, Lcl/santander/smartphone/HomeMap;->access$8(Lcl/santander/smartphone/HomeMap;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->tv_estrella_3:Landroid/widget/TextView;
    invoke-static {v3}, Lcl/santander/smartphone/HomeMap;->access$9(Lcl/santander/smartphone/HomeMap;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/ItemPOI;->getOferta()Lcl/santander/santanderCL/data/response/ItemImperdible;

    move-result-object v4

    invoke-virtual {v4}, Lcl/santander/santanderCL/data/response/ItemImperdible;->getDescOferta()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcl/santander/smartphone/Utils;->formatearEstrellaOferta(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 367
    iget-object v1, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->ll_estrella:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcl/santander/smartphone/HomeMap;->access$10(Lcl/santander/smartphone/HomeMap;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    invoke-virtual {v2}, Lcl/santander/smartphone/HomeMap;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    invoke-virtual {v3}, Lcl/santander/smartphone/HomeMap;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcl/santander/smartphone/Utils;->reesCalarDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 369
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 285
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->prepare()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 293
    :goto_1
    new-instance v2, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    iget-object v3, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    iget-object v3, v3, Lcl/santander/smartphone/HomeMap;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-direct {v2, v3, v7}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;-><init>(Landroid/app/Activity;Landroid/app/AlertDialog;)V

    iput-object v2, p0, Lcl/santander/smartphone/HomeMap$Localiza;->gps:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    .line 294
    iget-object v2, p0, Lcl/santander/smartphone/HomeMap$Localiza;->gps:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-virtual {v2}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->Init_GPS()V

    .line 295
    iget-object v2, p0, Lcl/santander/smartphone/HomeMap$Localiza;->gps:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    invoke-virtual {v2, v3, v4}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->setPrecision(D)V

    .line 296
    new-instance v2, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    invoke-direct {v2}, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;-><init>()V

    iput-object v2, p0, Lcl/santander/smartphone/HomeMap$Localiza;->posicionActual:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    .line 297
    const/4 v0, -0x1

    .line 299
    .local v0, "code":I
    iget-object v2, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    iget-object v2, v2, Lcl/santander/smartphone/HomeMap;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-static {v2}, Lcl/santander/smartphone/Utils;->isNetworkAvailable(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    invoke-direct {p0}, Lcl/santander/smartphone/HomeMap$Localiza;->scheduleGeo()V

    .line 304
    iget-object v2, p0, Lcl/santander/smartphone/HomeMap$Localiza;->gps:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    iget-object v3, p0, Lcl/santander/smartphone/HomeMap$Localiza;->posicionActual:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    invoke-virtual {v2, v3}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->GetLocation(Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;)I

    move-result v0

    .line 308
    :cond_0
    iget-object v2, p0, Lcl/santander/smartphone/HomeMap$Localiza;->gps:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    invoke-virtual {v2}, Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;->stop_GPS()V

    .line 309
    iput-object v7, p0, Lcl/santander/smartphone/HomeMap$Localiza;->gps:Lcl/santander/santanderCL/famtec/android/gps/GPS_Engine;

    .line 316
    if-ne v0, v6, :cond_2

    invoke-virtual {p0}, Lcl/santander/smartphone/HomeMap$Localiza;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    invoke-virtual {v2}, Lcl/santander/smartphone/HomeMap;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 319
    invoke-direct {p0}, Lcl/santander/smartphone/HomeMap$Localiza;->buscarPOIS()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 321
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 332
    :goto_2
    return-object v2

    .line 286
    .end local v0    # "code":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 291
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 325
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "code":I
    :cond_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_2

    .line 332
    :cond_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_2
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcl/santander/smartphone/HomeMap$Localiza;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x0

    .line 339
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->ll_posicionando:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcl/santander/smartphone/HomeMap;->access$1(Lcl/santander/smartphone/HomeMap;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->ll_no_posicion:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcl/santander/smartphone/HomeMap;->access$0(Lcl/santander/smartphone/HomeMap;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 355
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 356
    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->ll_homemaps:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcl/santander/smartphone/HomeMap;->access$2(Lcl/santander/smartphone/HomeMap;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->ll_homemaps_activado:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcl/santander/smartphone/HomeMap;->access$3(Lcl/santander/smartphone/HomeMap;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 350
    invoke-direct {p0}, Lcl/santander/smartphone/HomeMap$Localiza;->incluirPois()V

    .line 353
    invoke-direct {p0}, Lcl/santander/smartphone/HomeMap$Localiza;->setDatosPoi()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcl/santander/smartphone/HomeMap$Localiza;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->ll_no_posicion:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcl/santander/smartphone/HomeMap;->access$0(Lcl/santander/smartphone/HomeMap;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcl/santander/smartphone/HomeMap$Localiza;->this$0:Lcl/santander/smartphone/HomeMap;

    # getter for: Lcl/santander/smartphone/HomeMap;->ll_posicionando:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcl/santander/smartphone/HomeMap;->access$1(Lcl/santander/smartphone/HomeMap;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 227
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 228
    return-void
.end method
