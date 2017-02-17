.class public Lcl/santander/smartphone/localizador/ComoLlegar;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "ComoLlegar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;
    }
.end annotation


# instance fields
.field private actualIndication:I

.field backup_overlays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/maps/Overlay;",
            ">;"
        }
    .end annotation
.end field

.field bar:Lcom/actionbarsherlock/app/ActionBar;

.field bt_drive:Landroid/widget/Button;

.field bt_empezar:Landroid/widget/Button;

.field bt_next:Landroid/widget/Button;

.field bt_previous:Landroid/widget/Button;

.field bt_walk:Landroid/widget/Button;

.field private drivingMode:I

.field fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field fmg:Landroid/support/v4/app/FragmentManager;

.field ly_empezar_ruta:Landroid/widget/LinearLayout;

.field ly_indicaciones:Landroid/widget/LinearLayout;

.field ly_info_end:Landroid/widget/LinearLayout;

.field ly_info_first:Landroid/widget/LinearLayout;

.field ly_mapa_container:Landroid/widget/LinearLayout;

.field private mapManager:Lcl/santander/santanderCL/famtec/android/maps/Maps;

.field mapa:Lcom/google/android/maps/MapView;

.field miPos:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

.field poiSeleccionado:Lcl/santander/santanderCL/data/response/ItemPOI;

.field private pointsOverlay:Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;

.field private signals:Landroid/os/Handler;

.field tv_distancia_end:Landroid/widget/TextView;

.field tv_distancia_first:Landroid/widget/TextView;

.field tv_indicacion:Landroid/widget/TextView;

.field tv_paso:Landroid/widget/TextView;

.field tv_tiempo_end:Landroid/widget/TextView;

.field tv_tiempo_first:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->actualIndication:I

    .line 82
    new-instance v0, Lcl/santander/smartphone/localizador/ComoLlegar$1;

    invoke-direct {v0, p0}, Lcl/santander/smartphone/localizador/ComoLlegar$1;-><init>(Lcl/santander/smartphone/localizador/ComoLlegar;)V

    iput-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->signals:Landroid/os/Handler;

    .line 92
    return-void
.end method

.method public constructor <init>(Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;Lcl/santander/santanderCL/data/response/ItemPOI;)V
    .locals 1
    .param p1, "pos_actual"    # Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;
    .param p2, "poi"    # Lcl/santander/santanderCL/data/response/ItemPOI;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->actualIndication:I

    .line 82
    new-instance v0, Lcl/santander/smartphone/localizador/ComoLlegar$1;

    invoke-direct {v0, p0}, Lcl/santander/smartphone/localizador/ComoLlegar$1;-><init>(Lcl/santander/smartphone/localizador/ComoLlegar;)V

    iput-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->signals:Landroid/os/Handler;

    .line 95
    iput-object p2, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->poiSeleccionado:Lcl/santander/santanderCL/data/response/ItemPOI;

    .line 96
    iput-object p1, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->miPos:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    .line 97
    return-void
.end method

.method private GenerarRuta()V
    .locals 4

    .prologue
    .line 306
    new-instance v0, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    invoke-direct {v0}, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;-><init>()V

    .line 307
    .local v0, "posPoi":Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;
    iget-object v1, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->poiSeleccionado:Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemPOI;->getLatitud()D

    move-result-wide v1

    iput-wide v1, v0, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_latitud:D

    .line 308
    iget-object v1, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->poiSeleccionado:Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemPOI;->getLongitud()D

    move-result-wide v1

    iput-wide v1, v0, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_longitud:D

    .line 310
    iget-object v1, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapManager:Lcl/santander/santanderCL/famtec/android/maps/Maps;

    iget-object v2, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->miPos:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    iget v3, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->drivingMode:I

    invoke-virtual {v1, v2, v0, v3}, Lcl/santander/santanderCL/famtec/android/maps/Maps;->setMapRoute(Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;I)V

    .line 311
    iget-object v1, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapManager:Lcl/santander/santanderCL/famtec/android/maps/Maps;

    iget-object v2, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/famtec/android/maps/Maps;->addOverlayMapRoute(Lcom/google/android/maps/MapView;)V

    .line 312
    iget-object v1, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->postInvalidate()V

    .line 314
    return-void
.end method

.method private IncluirPois([Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;)V
    .locals 11
    .param p1, "puntosIntermedios"    # [Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    .prologue
    const/4 v5, 0x2

    const/4 v10, 0x1

    const-wide v8, 0x412e848000000000L    # 1000000.0

    const/4 v7, 0x0

    .line 320
    iget-object v3, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    .line 322
    .local v0, "capas":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    iget-object v3, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->pointsOverlay:Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 323
    iget-object v3, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->pointsOverlay:Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 326
    :cond_0
    new-instance v3, Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;

    iget-object v4, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-direct {v3, v4, v7}, Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;-><init>(Lcom/google/android/maps/MapActivity;Z)V

    iput-object v3, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->pointsOverlay:Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;

    .line 329
    new-array v1, v5, [Landroid/graphics/drawable/Drawable;

    .line 333
    .local v1, "iconos":[Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->poiSeleccionado:Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemPOI;->getIcono()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/ComoLlegar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v3, v4}, Lcl/santander/smartphone/Utils;->reesCalarPOI(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v7

    .line 334
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/ComoLlegar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200e2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/ComoLlegar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v3, v4}, Lcl/santander/smartphone/Utils;->reesCalarPOI(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v10

    .line 337
    new-array v2, v5, [Lcom/google/android/maps/GeoPoint;

    .line 339
    .local v2, "points":[Lcom/google/android/maps/GeoPoint;
    new-instance v3, Lcom/google/android/maps/GeoPoint;

    aget-object v4, p1, v7

    iget-wide v4, v4, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_latitud:D

    mul-double/2addr v4, v8

    double-to-int v4, v4

    aget-object v5, p1, v7

    iget-wide v5, v5, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_longitud:D

    mul-double/2addr v5, v8

    double-to-int v5, v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    aput-object v3, v2, v10

    .line 340
    new-instance v3, Lcom/google/android/maps/GeoPoint;

    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    aget-object v4, p1, v4

    iget-wide v4, v4, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_latitud:D

    mul-double/2addr v4, v8

    double-to-int v4, v4

    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    aget-object v5, p1, v5

    iget-wide v5, v5, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_longitud:D

    mul-double/2addr v5, v8

    double-to-int v5, v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    aput-object v3, v2, v7

    .line 343
    iget-object v3, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->pointsOverlay:Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;

    invoke-virtual {v3, v2}, Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;->setPoints([Lcom/google/android/maps/GeoPoint;)V

    .line 344
    iget-object v3, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->pointsOverlay:Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;

    invoke-virtual {v3, v1}, Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;->setIconos([Landroid/graphics/drawable/Drawable;)V

    .line 346
    iget-object v3, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->pointsOverlay:Lcl/santander/santanderCL/famtec/android/maps/PointsOverlay;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v3, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->tv_distancia_first:Landroid/widget/TextView;

    iget-object v4, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapManager:Lcl/santander/santanderCL/famtec/android/maps/Maps;

    invoke-virtual {v4}, Lcl/santander/santanderCL/famtec/android/maps/Maps;->getTotalDistance()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v3, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->tv_tiempo_first:Landroid/widget/TextView;

    iget-object v4, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapManager:Lcl/santander/santanderCL/famtec/android/maps/Maps;

    invoke-virtual {v4}, Lcl/santander/santanderCL/famtec/android/maps/Maps;->getTotalDuration()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v3, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->postInvalidate()V

    .line 353
    return-void
.end method

.method static synthetic access$0(Lcl/santander/smartphone/localizador/ComoLlegar;)Lcl/santander/santanderCL/famtec/android/maps/Maps;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapManager:Lcl/santander/santanderCL/famtec/android/maps/Maps;

    return-object v0
.end method

.method static synthetic access$1(Lcl/santander/smartphone/localizador/ComoLlegar;[Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;)V
    .locals 0

    .prologue
    .line 316
    invoke-direct {p0, p1}, Lcl/santander/smartphone/localizador/ComoLlegar;->IncluirPois([Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;)V

    return-void
.end method

.method static synthetic access$2(Lcl/santander/smartphone/localizador/ComoLlegar;)I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->actualIndication:I

    return v0
.end method

.method static synthetic access$3(Lcl/santander/smartphone/localizador/ComoLlegar;I)V
    .locals 0

    .prologue
    .line 77
    iput p1, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->actualIndication:I

    return-void
.end method

.method static synthetic access$4(Lcl/santander/smartphone/localizador/ComoLlegar;)V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0}, Lcl/santander/smartphone/localizador/ComoLlegar;->continueIndications()V

    return-void
.end method

.method static synthetic access$5(Lcl/santander/smartphone/localizador/ComoLlegar;I)V
    .locals 0

    .prologue
    .line 80
    iput p1, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->drivingMode:I

    return-void
.end method

.method static synthetic access$6(Lcl/santander/smartphone/localizador/ComoLlegar;)V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Lcl/santander/smartphone/localizador/ComoLlegar;->GenerarRuta()V

    return-void
.end method

.method static synthetic access$7(Lcl/santander/smartphone/localizador/ComoLlegar;)V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0}, Lcl/santander/smartphone/localizador/ComoLlegar;->centraMapa()V

    return-void
.end method

.method private cargaMapa()V
    .locals 4

    .prologue
    .line 209
    sget-object v0, Lcl/santander/smartphone/Main;->mapa:Lcom/google/android/maps/MapView;

    if-eqz v0, :cond_0

    sget-object v0, Lcl/santander/smartphone/Main;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    sget-object v0, Lcl/santander/smartphone/Main;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 213
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->ly_mapa_container:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->backup_overlays:Ljava/util/List;

    .line 217
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 219
    new-instance v0, Lcl/santander/santanderCL/famtec/android/maps/Maps;

    iget-object v1, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-object v2, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->signals:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcl/santander/santanderCL/famtec/android/maps/Maps;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapManager:Lcl/santander/santanderCL/famtec/android/maps/Maps;

    .line 222
    invoke-direct {p0}, Lcl/santander/smartphone/localizador/ComoLlegar;->GenerarRuta()V

    .line 224
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getMaxZoomLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 226
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapa:Lcom/google/android/maps/MapView;

    new-instance v1, Lcl/santander/smartphone/localizador/ComoLlegar$2;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/localizador/ComoLlegar$2;-><init>(Lcl/santander/smartphone/localizador/ComoLlegar;)V

    .line 233
    const-wide/16 v2, 0x3e8

    .line 226
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/MapView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 237
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->invalidate()V

    .line 240
    return-void
.end method

.method private centraMapa()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const-wide v11, 0x412e848000000000L    # 1000000.0

    .line 246
    new-instance v1, Lcom/google/android/maps/GeoPoint;

    iget-object v8, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->poiSeleccionado:Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-virtual {v8}, Lcl/santander/santanderCL/data/response/ItemPOI;->getLatitud()D

    move-result-wide v8

    mul-double/2addr v8, v11

    double-to-int v8, v8

    iget-object v9, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->poiSeleccionado:Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-virtual {v9}, Lcl/santander/santanderCL/data/response/ItemPOI;->getLongitud()D

    move-result-wide v9

    mul-double/2addr v9, v11

    double-to-int v9, v9

    invoke-direct {v1, v8, v9}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 248
    .local v1, "point_ofi":Lcom/google/android/maps/GeoPoint;
    new-instance v2, Lcom/google/android/maps/GeoPoint;

    iget-object v8, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->miPos:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    iget-wide v8, v8, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_latitud:D

    mul-double/2addr v8, v11

    double-to-int v8, v8

    iget-object v9, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->miPos:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    iget-wide v9, v9, Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;->m_longitud:D

    mul-double/2addr v9, v11

    double-to-int v9, v9

    invoke-direct {v2, v8, v9}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 251
    .local v2, "posActual":Lcom/google/android/maps/GeoPoint;
    new-instance v0, Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v8

    invoke-virtual {v2}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v9

    add-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    .line 252
    invoke-virtual {v1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v9

    invoke-virtual {v2}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v10

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    .line 251
    invoke-direct {v0, v8, v9}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 254
    .local v0, "centro":Lcom/google/android/maps/GeoPoint;
    iget-object v8, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v8}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 255
    iget-object v8, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v8}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v8

    iget-object v9, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v9}, Lcom/google/android/maps/MapView;->getMaxZoomLevel()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 259
    :try_start_0
    iget-object v8, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapa:Lcom/google/android/maps/MapView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/google/android/maps/MapView;->setClickable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_0
    iget-object v8, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v8}, Lcom/google/android/maps/MapView;->postInvalidate()V

    .line 265
    iget-object v8, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v8}, Lcom/google/android/maps/MapView;->invalidate()V

    .line 267
    const/4 v7, 0x0

    .line 268
    .local v7, "visible":Z
    :goto_1
    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/ComoLlegar;->isVisible()Z

    move-result v8

    if-nez v8, :cond_1

    .line 300
    :cond_0
    return-void

    .line 270
    :cond_1
    iget-object v8, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v8}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v3

    .line 272
    .local v3, "proj":Lcom/google/android/maps/Projection;
    invoke-interface {v3, v1, v13}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v5

    .line 274
    .local v5, "punto1":Landroid/graphics/Point;
    iget-object v8, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v8}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v4

    .line 275
    .local v4, "proj2":Lcom/google/android/maps/Projection;
    invoke-interface {v4, v2, v13}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v6

    .line 278
    .local v6, "punto2":Landroid/graphics/Point;
    iget v8, v5, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v9}, Lcom/google/android/maps/MapView;->getLeft()I

    move-result v9

    if-le v8, v9, :cond_2

    iget v8, v5, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v9}, Lcom/google/android/maps/MapView;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v10}, Lcom/google/android/maps/MapView;->getLeft()I

    move-result v10

    add-int/2addr v9, v10

    if-ge v8, v9, :cond_2

    .line 279
    iget v8, v5, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v9}, Lcom/google/android/maps/MapView;->getTop()I

    move-result v9

    if-le v8, v9, :cond_2

    iget v8, v5, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v9}, Lcom/google/android/maps/MapView;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v10}, Lcom/google/android/maps/MapView;->getTop()I

    move-result v10

    add-int/2addr v9, v10

    if-ge v8, v9, :cond_2

    .line 283
    iget v8, v6, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v9}, Lcom/google/android/maps/MapView;->getLeft()I

    move-result v9

    if-le v8, v9, :cond_2

    iget v8, v6, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v9}, Lcom/google/android/maps/MapView;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v10}, Lcom/google/android/maps/MapView;->getLeft()I

    move-result v10

    add-int/2addr v9, v10

    if-ge v8, v9, :cond_2

    .line 284
    iget v8, v6, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v9}, Lcom/google/android/maps/MapView;->getTop()I

    move-result v9

    if-le v8, v9, :cond_2

    iget v8, v6, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v9}, Lcom/google/android/maps/MapView;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v10}, Lcom/google/android/maps/MapView;->getTop()I

    move-result v10

    add-int/2addr v9, v10

    if-ge v8, v9, :cond_2

    .line 288
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 292
    :cond_2
    iget-object v8, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v8}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v8

    iget-object v9, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v9}, Lcom/google/android/maps/MapView;->getZoomLevel()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 293
    iget-object v8, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v8}, Lcom/google/android/maps/MapView;->postInvalidate()V

    .line 294
    iget-object v8, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v8}, Lcom/google/android/maps/MapView;->invalidate()V

    goto/16 :goto_1

    .line 261
    .end local v3    # "proj":Lcom/google/android/maps/Projection;
    .end local v4    # "proj2":Lcom/google/android/maps/Projection;
    .end local v5    # "punto1":Landroid/graphics/Point;
    .end local v6    # "punto2":Landroid/graphics/Point;
    .end local v7    # "visible":Z
    :catch_0
    move-exception v8

    goto/16 :goto_0
.end method

.method private continueIndications()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 428
    iget v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->actualIndication:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->actualIndication:I

    iget-object v1, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapManager:Lcl/santander/santanderCL/famtec/android/maps/Maps;

    invoke-virtual {v1}, Lcl/santander/santanderCL/famtec/android/maps/Maps;->getIndicacionesRoute()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 430
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->bt_previous:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 431
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->bt_next:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 432
    iget v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->actualIndication:I

    if-nez v0, :cond_0

    .line 433
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->bt_previous:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 436
    :cond_0
    iget v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->actualIndication:I

    iget-object v1, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapManager:Lcl/santander/santanderCL/famtec/android/maps/Maps;

    invoke-virtual {v1}, Lcl/santander/santanderCL/famtec/android/maps/Maps;->getIndicacionesRoute()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_1

    .line 437
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->bt_next:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 441
    :cond_1
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->tv_distancia_end:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapManager:Lcl/santander/santanderCL/famtec/android/maps/Maps;

    invoke-virtual {v1}, Lcl/santander/santanderCL/famtec/android/maps/Maps;->getDistanciasRoute()[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->actualIndication:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->tv_tiempo_end:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapManager:Lcl/santander/santanderCL/famtec/android/maps/Maps;

    invoke-virtual {v1}, Lcl/santander/santanderCL/famtec/android/maps/Maps;->getDuracionesRoute()[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->actualIndication:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->tv_paso:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Paso "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->actualIndication:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " de "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapManager:Lcl/santander/santanderCL/famtec/android/maps/Maps;

    invoke-virtual {v2}, Lcl/santander/santanderCL/famtec/android/maps/Maps;->getIndicacionesRoute()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->tv_indicacion:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapManager:Lcl/santander/santanderCL/famtec/android/maps/Maps;

    invoke-virtual {v1}, Lcl/santander/santanderCL/famtec/android/maps/Maps;->getIndicacionesRoute()[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->actualIndication:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapManager:Lcl/santander/santanderCL/famtec/android/maps/Maps;

    iget v1, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->actualIndication:I

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/famtec/android/maps/Maps;->showIndicationPoint(I)V

    .line 447
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapManager:Lcl/santander/santanderCL/famtec/android/maps/Maps;

    invoke-virtual {v1}, Lcl/santander/santanderCL/famtec/android/maps/Maps;->getIdicacionesPosRoute()[Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    iget v2, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->actualIndication:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 448
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 456
    :cond_2
    :goto_0
    return-void

    .line 451
    :cond_3
    iget v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->actualIndication:I

    if-gez v0, :cond_4

    .line 452
    iget v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->actualIndication:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->actualIndication:I

    .line 453
    :cond_4
    iget v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->actualIndication:I

    iget-object v1, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapManager:Lcl/santander/santanderCL/famtec/android/maps/Maps;

    invoke-virtual {v1}, Lcl/santander/santanderCL/famtec/android/maps/Maps;->getIndicacionesRoute()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_2

    .line 454
    iget v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->actualIndication:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->actualIndication:I

    goto :goto_0
.end method

.method private getModoRuta()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 150
    iget-object v3, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    sget-object v4, Lcl/santander/smartphone/Global;->SETTINGS:Ljava/lang/String;

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 152
    .local v1, "settings":Landroid/content/SharedPreferences;
    sget-object v3, Lcl/santander/smartphone/Global;->MODO_RUTA:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 154
    .local v0, "conduciendo":Z
    if-eqz v0, :cond_0

    .line 157
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private initComponents()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060211

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->ly_mapa_container:Landroid/widget/LinearLayout;

    .line 166
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060212

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->ly_info_first:Landroid/widget/LinearLayout;

    .line 167
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060217

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->ly_info_end:Landroid/widget/LinearLayout;

    .line 168
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06021a

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->ly_indicaciones:Landroid/widget/LinearLayout;

    .line 169
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06021f

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->ly_empezar_ruta:Landroid/widget/LinearLayout;

    .line 171
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060213

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->tv_distancia_first:Landroid/widget/TextView;

    .line 172
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060214

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->tv_tiempo_first:Landroid/widget/TextView;

    .line 173
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06021b

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->tv_distancia_end:Landroid/widget/TextView;

    .line 174
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06021c

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->tv_tiempo_end:Landroid/widget/TextView;

    .line 175
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060219

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->tv_indicacion:Landroid/widget/TextView;

    .line 176
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060218

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->tv_paso:Landroid/widget/TextView;

    .line 178
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060215

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->bt_drive:Landroid/widget/Button;

    .line 179
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060216

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->bt_walk:Landroid/widget/Button;

    .line 181
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060220

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->bt_empezar:Landroid/widget/Button;

    .line 182
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06021d

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->bt_previous:Landroid/widget/Button;

    .line 183
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06021e

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->bt_next:Landroid/widget/Button;

    .line 186
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->bt_empezar:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;

    invoke-direct {v1, p0, v2}, Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;-><init>(Lcl/santander/smartphone/localizador/ComoLlegar;Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->bt_drive:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;

    invoke-direct {v1, p0, v2}, Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;-><init>(Lcl/santander/smartphone/localizador/ComoLlegar;Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->bt_walk:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;

    invoke-direct {v1, p0, v2}, Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;-><init>(Lcl/santander/smartphone/localizador/ComoLlegar;Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->bt_next:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;

    invoke-direct {v1, p0, v2}, Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;-><init>(Lcl/santander/smartphone/localizador/ComoLlegar;Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->bt_previous:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;

    invoke-direct {v1, p0, v2}, Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;-><init>(Lcl/santander/smartphone/localizador/ComoLlegar;Lcl/santander/smartphone/localizador/ComoLlegar$ClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    invoke-direct {p0}, Lcl/santander/smartphone/localizador/ComoLlegar;->getModoRuta()I

    move-result v0

    iput v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->drivingMode:I

    .line 194
    iget v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->drivingMode:I

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->bt_drive:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 200
    :goto_0
    sget-object v0, Lcl/santander/smartphone/Main;->mapa:Lcom/google/android/maps/MapView;

    iput-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapa:Lcom/google/android/maps/MapView;

    .line 204
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->bt_walk:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 121
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/ComoLlegar;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 126
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->fmg:Landroid/support/v4/app/FragmentManager;

    .line 128
    const/4 v0, 0x2

    iget-object v1, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0500ec

    invoke-virtual {p0, v2}, Lcl/santander/smartphone/localizador/ComoLlegar;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0}, Lcl/santander/smartphone/localizador/ComoLlegar;->initComponents()V

    .line 134
    invoke-virtual {p0, v3}, Lcl/santander/smartphone/localizador/ComoLlegar;->setHasOptionsMenu(Z)V

    .line 138
    invoke-direct {p0}, Lcl/santander/smartphone/localizador/ComoLlegar;->cargaMapa()V

    .line 140
    sput-boolean v3, Lcl/santander/smartphone/Global;->fromDirections:Z

    .line 146
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/localizador/ComoLlegar;->setRetainInstance(Z)V

    .line 103
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    const/4 v1, 0x1

    .line 462
    const/high16 v0, 0x7f0d0000

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 464
    invoke-static {}, Lcl/santander/smartphone/Global;->getInstance()Lcl/santander/smartphone/Global;

    move-result-object v0

    iget-boolean v0, v0, Lcl/santander/smartphone/Global;->m_bUserLogged:Z

    if-nez v0, :cond_0

    .line 466
    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 473
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 474
    return-void

    .line 470
    :cond_0
    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->getItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 113
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f03004a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 12
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v11, 0x0

    const/16 v1, 0x8

    const/4 v3, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 478
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 557
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 481
    :sswitch_0
    new-instance v7, Lcl/santander/smartphone/SettingsDialog;

    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-direct {v7, v0, v10, v11}, Lcl/santander/smartphone/SettingsDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 482
    .local v7, "sd":Lcl/santander/smartphone/SettingsDialog;
    invoke-virtual {v7}, Lcl/santander/smartphone/SettingsDialog;->show()V

    goto :goto_0

    .line 485
    .end local v7    # "sd":Lcl/santander/smartphone/SettingsDialog;
    :sswitch_1
    new-instance v6, Lcl/santander/smartphone/localizador/ComoLlegar$3;

    invoke-direct {v6, p0}, Lcl/santander/smartphone/localizador/ComoLlegar$3;-><init>(Lcl/santander/smartphone/localizador/ComoLlegar;)V

    .line 531
    .local v6, "ok":Ljava/lang/Runnable;
    new-array v4, v3, [Ljava/lang/String;

    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    .line 532
    .local v4, "buttons":[Ljava/lang/String;
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-object v1, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v5}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f050012

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v5}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getNombre_usuario()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v5}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0500c4

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Runnable;

    aput-object v6, v5, v9

    aput-object v11, v5, v10

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 536
    .end local v4    # "buttons":[Ljava/lang/String;
    .end local v6    # "ok":Ljava/lang/Runnable;
    :sswitch_2
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->ly_empezar_ruta:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 539
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->ly_info_first:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 540
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->ly_info_end:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 541
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->ly_indicaciones:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->ly_empezar_ruta:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 544
    invoke-direct {p0}, Lcl/santander/smartphone/localizador/ComoLlegar;->centraMapa()V

    .line 545
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapManager:Lcl/santander/santanderCL/famtec/android/maps/Maps;

    invoke-virtual {v0}, Lcl/santander/santanderCL/famtec/android/maps/Maps;->cancelShowIndicationPoint()V

    goto/16 :goto_0

    .line 550
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 551
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->mapa:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->backup_overlays:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 552
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto/16 :goto_0

    .line 478
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_2
        0x7f06038b -> :sswitch_0
        0x7f06038c -> :sswitch_1
    .end sparse-switch
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    .line 562
    new-instance v7, Lcl/santander/smartphone/localizador/ComoLlegar$4;

    invoke-direct {v7, p0}, Lcl/santander/smartphone/localizador/ComoLlegar$4;-><init>(Lcl/santander/smartphone/localizador/ComoLlegar;)V

    .line 572
    .local v7, "ok":Ljava/lang/Runnable;
    new-array v4, v3, [Ljava/lang/String;

    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/ComoLlegar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 573
    .local v4, "buttons":[Ljava/lang/String;
    iget-object v0, p0, Lcl/santander/smartphone/localizador/ComoLlegar;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/ComoLlegar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050167

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/localizador/ComoLlegar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f050168

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Runnable;

    aput-object v7, v5, v8

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v6

    .line 575
    .local v6, "d":Landroid/app/Dialog;
    invoke-static {}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->getInstance()Lcl/santander/santanderCL/ws/security/SecurityHeader;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcl/santander/santanderCL/ws/security/SecurityHeader;->setDialog(Landroid/app/Dialog;)V

    .line 578
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 579
    return-void
.end method
