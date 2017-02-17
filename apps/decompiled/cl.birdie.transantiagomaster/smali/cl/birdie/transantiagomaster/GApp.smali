.class public Lcl/birdie/transantiagomaster/GApp;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "GApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/birdie/transantiagomaster/GApp$LegClickListener;,
        Lcl/birdie/transantiagomaster/GApp$ServicioClickListener;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$cl$birdie$transantiagomaster$newobjetos$TiempoParadero$Tiempo:[I

.field static iniciado:Z


# instance fields
.field private adViewContainer:Landroid/view/ViewGroup;

.field private admobAdView:Landroid/view/View;

.field private container:Landroid/view/ViewGroup;

.field letreroLayout:Landroid/widget/FrameLayout;

.field mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

.field public mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

.field mostrandoRecorridosParadero:Z


# direct methods
.method private static synthetic $SWITCH_TABLE$cl$birdie$transantiagomaster$newobjetos$TiempoParadero$Tiempo()[I
    .locals 3

    .prologue
    .line 50
    sget-object v0, Lcl/birdie/transantiagomaster/GApp;->$SWITCH_TABLE$cl$birdie$transantiagomaster$newobjetos$TiempoParadero$Tiempo:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;->values()[Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;->TIEMPO_1:Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;->TIEMPO_2:Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcl/birdie/transantiagomaster/GApp;->$SWITCH_TABLE$cl$birdie$transantiagomaster$newobjetos$TiempoParadero$Tiempo:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcl/birdie/transantiagomaster/GApp;->iniciado:Z

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcl/birdie/transantiagomaster/GApp;->mostrandoRecorridosParadero:Z

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcl/birdie/transantiagomaster/GApp;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 754
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->planificacion:Lcl/birdie/transantiagomaster/newobjetos/Plan;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Plan;->itinerarios:[Lcl/birdie/transantiagomaster/newobjetos/Itinerario;

    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget v1, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->itinerarioPlanificacion:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Itinerario;->legs:[Lcl/birdie/transantiagomaster/newobjetos/Leg;

    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget v1, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->legPlanificacion:I

    aget-object v1, v0, v1

    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget v2, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->legPlanificacion:I

    invoke-direct {p0}, Lcl/birdie/transantiagomaster/GApp;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "GApp"

    const-string v1, "error al obtener inflater!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const v3, 0x7f030056

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v5, -0x2

    invoke-direct {v4, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v0, 0x7f0800c4

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const v6, 0x7f06009e

    invoke-virtual {p0, v6}, Lcl/birdie/transantiagomaster/GApp;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08005a

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/newobjetos/Leg;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08012a

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcl/birdie/transantiagomaster/GApp$12;

    invoke-direct {v1, p0}, Lcl/birdie/transantiagomaster/GApp$12;-><init>(Lcl/birdie/transantiagomaster/GApp;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080135

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcl/birdie/transantiagomaster/GApp$13;

    invoke-direct {v1, p0}, Lcl/birdie/transantiagomaster/GApp$13;-><init>(Lcl/birdie/transantiagomaster/GApp;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080136

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcl/birdie/transantiagomaster/GApp$14;

    invoke-direct {v1, p0}, Lcl/birdie/transantiagomaster/GApp$14;-><init>(Lcl/birdie/transantiagomaster/GApp;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->letreroLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/GApp;->desactivarLetrero()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "alpha"

    new-array v1, v7, [F

    fill-array-data v1, :array_0

    invoke-static {v3, v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration$c8c7cc1()Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->letreroLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "rotationX"

    new-array v1, v7, [F

    fill-array-data v1, :array_1

    invoke-static {v3, v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration$c8c7cc1()Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->letreroLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "GApp"

    const-string v1, "lay null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x43870000    # 270.0f
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private static dibujarTiempo(Landroid/view/LayoutInflater;Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;)Landroid/view/View;
    .locals 7
    .param p0, "inf"    # Landroid/view/LayoutInflater;
    .param p1, "svc"    # Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;
    .param p2, "tmp"    # Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;

    .prologue
    const/4 v2, 0x0

    .line 685
    invoke-static {}, Lcl/birdie/transantiagomaster/GApp;->$SWITCH_TABLE$cl$birdie$transantiagomaster$newobjetos$TiempoParadero$Tiempo()[I

    move-result-object v5

    invoke-virtual {p2}, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 710
    :cond_0
    :goto_0
    return-object v2

    .line 687
    :pswitch_0
    iget-object v0, p1, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->distancia1:Ljava/lang/String;

    .line 688
    .local v0, "dist":Ljava/lang/String;
    invoke-virtual {p1, p2}, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->tiempoFormat(Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;)Ljava/lang/String;

    move-result-object v4

    .line 697
    .local v4, "time":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 700
    if-nez v0, :cond_1

    .line 701
    const-string v0, ""

    .line 703
    :cond_1
    const v5, 0x7f030052

    invoke-virtual {p0, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 704
    .local v2, "t":Landroid/view/View;
    const v5, 0x7f080130

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 705
    .local v1, "distancia":Landroid/widget/TextView;
    const v5, 0x7f080131

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 707
    .local v3, "tiempo":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 708
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 691
    .end local v0    # "dist":Ljava/lang/String;
    .end local v1    # "distancia":Landroid/widget/TextView;
    .end local v2    # "t":Landroid/view/View;
    .end local v3    # "tiempo":Landroid/widget/TextView;
    .end local v4    # "time":Ljava/lang/String;
    :pswitch_1
    iget-object v0, p1, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->distancia2:Ljava/lang/String;

    .line 692
    .restart local v0    # "dist":Ljava/lang/String;
    invoke-virtual {p1, p2}, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->tiempoFormat(Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;)Ljava/lang/String;

    move-result-object v4

    .line 693
    .restart local v4    # "time":Ljava/lang/String;
    goto :goto_1

    .line 685
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getInflater()Landroid/view/LayoutInflater;
    .locals 4

    .prologue
    .line 1003
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/GApp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1007
    .local v0, "act":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 1008
    iget-object v2, p0, Lcl/birdie/transantiagomaster/GApp;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v2, :cond_0

    .line 1009
    iget-object v2, p0, Lcl/birdie/transantiagomaster/GApp;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v2}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onGetLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1017
    :goto_0
    return-object v1

    .line 1011
    :cond_0
    const-string v2, "GApp"

    const-string v3, "ni listener ni activity"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    const/4 v1, 0x0

    goto :goto_0

    .line 1015
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .local v1, "inf":Landroid/view/LayoutInflater;
    goto :goto_0
.end method


# virtual methods
.method public final actualizarDatos()V
    .locals 4

    .prologue
    .line 331
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->paraderosPantalla:[Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .line 332
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->bipPantalla:[Lcl/birdie/transantiagomaster/newobjetos/Bip;

    .line 333
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/PantallaDatos;->metroPantalla:[Lcl/birdie/transantiagomaster/newobjetos/Metro;

    .line 331
    iget-object v3, p0, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    invoke-interface {v3, v0, v1, v2}, Lcl/birdie/transantiagomaster/ITSMMapView;->actualizarDatos([Lcl/birdie/transantiagomaster/newobjetos/Paradero;[Lcl/birdie/transantiagomaster/newobjetos/Bip;[Lcl/birdie/transantiagomaster/newobjetos/Metro;)V

    .line 334
    :goto_0
    return-void

    .line 331
    :cond_0
    const-string v0, "GApp"

    const-string v1, "actualizarDatos: mapView null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final anadirPlacemark(Lcl/birdie/transantiagomaster/objetos/BusquedaResult;)V
    .locals 2
    .param p1, "p"    # Lcl/birdie/transantiagomaster/objetos/BusquedaResult;

    .prologue
    .line 528
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    invoke-interface {v0, p1}, Lcl/birdie/transantiagomaster/ITSMMapView;->anadirPlacemark(Lcl/birdie/transantiagomaster/objetos/BusquedaResult;)V

    .line 534
    :goto_0
    return-void

    .line 533
    :cond_0
    const-string v0, "GApp"

    const-string v1, "anadirPlacemark: mapView null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final capasPorZoom()V
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/ITSMMapView;->capasPorZoom()V

    .line 580
    :goto_0
    return-void

    .line 579
    :cond_0
    const-string v0, "GApp"

    const-string v1, "capasPorZoom: gMapView null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final clearItinerarioLayer()V
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/ITSMMapView;->clearItinerarioLayer()V

    .line 552
    :goto_0
    return-void

    .line 551
    :cond_0
    const-string v0, "GApp"

    const-string v1, "clearItinerarioLayer: mapView null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final desactivarLetrero()Z
    .locals 6

    .prologue
    .line 924
    const/4 v0, 0x0

    .line 929
    .local v0, "animar":Z
    iget-object v4, p0, Lcl/birdie/transantiagomaster/GApp;->letreroLayout:Landroid/widget/FrameLayout;

    if-nez v4, :cond_0

    .line 930
    const/4 v4, 0x0

    .line 972
    :goto_0
    return v4

    .line 932
    :cond_0
    iget-object v4, p0, Lcl/birdie/transantiagomaster/GApp;->letreroLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    .local v1, "cnt":I
    if-lez v1, :cond_1

    .line 934
    const/4 v0, 0x1

    .line 935
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v1, :cond_2

    .end local v2    # "i":I
    :cond_1
    move v4, v0

    .line 972
    goto :goto_0

    .line 936
    .restart local v2    # "i":I
    :cond_2
    iget-object v4, p0, Lcl/birdie/transantiagomaster/GApp;->letreroLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 937
    .local v3, "oldv":Landroid/view/View;
    if-eqz v3, :cond_3

    .line 938
    invoke-static {v3}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->alpha$61f44ad5()Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration$601ab2d9()Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v4

    .line 941
    new-instance v5, Lcl/birdie/transantiagomaster/GApp$6;

    invoke-direct {v5, p0, v3}, Lcl/birdie/transantiagomaster/GApp$6;-><init>(Lcl/birdie/transantiagomaster/GApp;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    .line 935
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public final dibujarLetreroBip()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 990
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v0, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->bipActualPosicion:Lcl/birdie/transantiagomaster/newobjetos/Bip;

    .line 991
    .local v0, "b":Lcl/birdie/transantiagomaster/newobjetos/Bip;
    if-eqz v0, :cond_0

    .line 992
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/GApp;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "GApp"

    const-string v2, "error al obtener inflater!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_0
    :goto_0
    return-void

    .line 992
    :cond_1
    const v2, 0x7f03004d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v4, -0x2

    invoke-direct {v3, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v1, 0x7f080059

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const v5, 0x7f0600c3

    invoke-virtual {p0, v5}, Lcl/birdie/transantiagomaster/GApp;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcl/birdie/transantiagomaster/newobjetos/Bip;->cliente:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f08005a

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v4, v0, Lcl/birdie/transantiagomaster/newobjetos/Bip;->direccion:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f08012a

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v4, Lcl/birdie/transantiagomaster/GApp$15;

    invoke-direct {v4, p0}, Lcl/birdie/transantiagomaster/GApp$15;-><init>(Lcl/birdie/transantiagomaster/GApp;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->letreroLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/GApp;->desactivarLetrero()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "alpha"

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v1, v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration$c8c7cc1()Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->letreroLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    const-string v1, "rotationX"

    new-array v4, v6, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v1, v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration$c8c7cc1()Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->letreroLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "GApp"

    const-string v2, "lay null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x43870000    # 270.0f
        0x43b40000    # 360.0f
    .end array-data
.end method

.method public final dibujarLetreroMetro()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    .line 996
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v0, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->metroActualPosicion:Lcl/birdie/transantiagomaster/newobjetos/Metro;

    .line 997
    .local v0, "b":Lcl/birdie/transantiagomaster/newobjetos/Metro;
    if-eqz v0, :cond_0

    .line 998
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/GApp;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v1, "GApp"

    const-string v2, "error al obtener inflater!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_0
    :goto_0
    return-void

    .line 998
    :cond_1
    const v1, 0x7f03004e

    invoke-virtual {v4, v1, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v1, 0x7f08012b

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v6, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v2, 0x7f080059

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const v7, 0x7f0600da

    invoke-virtual {p0, v7}, Lcl/birdie/transantiagomaster/GApp;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, v0, Lcl/birdie/transantiagomaster/newobjetos/Metro;->nombre:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f08012a

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    new-instance v3, Lcl/birdie/transantiagomaster/GApp$16;

    invoke-direct {v3, p0}, Lcl/birdie/transantiagomaster/GApp$16;-><init>(Lcl/birdie/transantiagomaster/GApp;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lcl/birdie/transantiagomaster/newobjetos/Metro;->lineas:[Lcl/birdie/transantiagomaster/newobjetos/MetroLinea;

    if-eqz v2, :cond_2

    iget-object v7, v0, Lcl/birdie/transantiagomaster/newobjetos/Metro;->lineas:[Lcl/birdie/transantiagomaster/newobjetos/MetroLinea;

    array-length v8, v7

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-lt v3, v8, :cond_3

    :cond_2
    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->letreroLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/GApp;->desactivarLetrero()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "alpha"

    new-array v2, v11, [F

    fill-array-data v2, :array_0

    invoke-static {v5, v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration$c8c7cc1()Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->letreroLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_3
    aget-object v9, v7, v3

    const v2, 0x7f03004f

    invoke-virtual {v4, v2, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    const v2, 0x7f08012c

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v9, v9, Lcl/birdie/transantiagomaster/newobjetos/MetroLinea;->linea_nombre:Ljava/lang/String;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v10, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_4
    const-string v1, "rotationX"

    new-array v2, v11, [F

    fill-array-data v2, :array_1

    invoke-static {v5, v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration$c8c7cc1()Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->letreroLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "GApp"

    const-string v2, "lay null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x43870000    # 270.0f
        0x43b40000    # 360.0f
    .end array-data
.end method

.method public final dibujarLetreroParadero()V
    .locals 1

    .prologue
    .line 977
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->paraderoActualPosicion:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    if-eqz v0, :cond_0

    .line 979
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->paraderoActualPosicion:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/GApp;->dibujarParadero(Lcl/birdie/transantiagomaster/newobjetos/Paradero;)V

    .line 980
    :cond_0
    return-void
.end method

.method public final dibujarLetreroPlanificacion()V
    .locals 14

    .prologue
    .line 1192
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->planificacion:Lcl/birdie/transantiagomaster/newobjetos/Plan;

    if-eqz v0, :cond_0

    .line 1193
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->planificacion:Lcl/birdie/transantiagomaster/newobjetos/Plan;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Plan;->itinerarios:[Lcl/birdie/transantiagomaster/newobjetos/Itinerario;

    if-eqz v0, :cond_0

    .line 1194
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->planificacion:Lcl/birdie/transantiagomaster/newobjetos/Plan;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Plan;->itinerarios:[Lcl/birdie/transantiagomaster/newobjetos/Itinerario;

    array-length v0, v0

    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget v1, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->itinerarioPlanificacion:I

    if-gt v0, v1, :cond_1

    .line 1198
    :cond_0
    :goto_0
    return-void

    .line 1197
    :cond_1
    sget-object v0, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->planificacion:Lcl/birdie/transantiagomaster/newobjetos/Plan;

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Plan;->itinerarios:[Lcl/birdie/transantiagomaster/newobjetos/Itinerario;

    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget v1, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->itinerarioPlanificacion:I

    aget-object v3, v0, v1

    invoke-direct {p0}, Lcl/birdie/transantiagomaster/GApp;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    if-nez v6, :cond_2

    const-string v0, "GApp"

    const-string v1, "error al obtener inflater!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const v0, 0x7f030054

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v0, 0x7f080138

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v8, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v1, 0x7f080137

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const v4, 0x7f0600a0

    invoke-virtual {p0, v4}, Lcl/birdie/transantiagomaster/GApp;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget v4, v4, Lcl/birdie/transantiagomaster/PantallaDatos;->itinerarioPlanificacion:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v4, 0x7f06009f

    invoke-virtual {p0, v4}, Lcl/birdie/transantiagomaster/GApp;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/PantallaDatos;->planificacion:Lcl/birdie/transantiagomaster/newobjetos/Plan;

    iget-object v4, v4, Lcl/birdie/transantiagomaster/newobjetos/Plan;->itinerarios:[Lcl/birdie/transantiagomaster/newobjetos/Itinerario;

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcl/birdie/transantiagomaster/GApp$10;

    invoke-direct {v2, p0}, Lcl/birdie/transantiagomaster/GApp$10;-><init>(Lcl/birdie/transantiagomaster/GApp;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f08012a

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Lcl/birdie/transantiagomaster/GApp$11;

    invoke-direct {v2, p0}, Lcl/birdie/transantiagomaster/GApp$11;-><init>(Lcl/birdie/transantiagomaster/GApp;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v3, Lcl/birdie/transantiagomaster/newobjetos/Itinerario;->legs:[Lcl/birdie/transantiagomaster/newobjetos/Leg;

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    iget-object v9, v3, Lcl/birdie/transantiagomaster/newobjetos/Itinerario;->legs:[Lcl/birdie/transantiagomaster/newobjetos/Leg;

    array-length v10, v9

    const/4 v1, 0x0

    move v4, v1

    move v5, v2

    :goto_1
    if-lt v4, v10, :cond_4

    :cond_3
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->letreroLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/GApp;->desactivarLetrero()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v7, v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration$c8c7cc1()Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->letreroLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_4
    aget-object v11, v9, v4

    new-instance v12, Lcl/birdie/transantiagomaster/GApp$LegClickListener;

    invoke-direct {v12, p0, v11, v5}, Lcl/birdie/transantiagomaster/GApp$LegClickListener;-><init>(Lcl/birdie/transantiagomaster/GApp;Lcl/birdie/transantiagomaster/newobjetos/Leg;I)V

    const v1, 0x7f030055

    const/4 v2, 0x0

    invoke-virtual {v6, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f080132

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f080139

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v11}, Lcl/birdie/transantiagomaster/newobjetos/Leg;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_5
    const-string v0, "rotationX"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {v7, v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration$c8c7cc1()Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->letreroLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "GApp"

    const-string v1, "lay null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x43870000    # 270.0f
        0x43b40000    # 360.0f
    .end array-data
.end method

.method public final dibujarLetreroRecorrido()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 983
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v1, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    .line 984
    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->getServicioActual()Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    move-result-object v0

    .line 985
    .local v0, "svc":Lcl/birdie/transantiagomaster/newobjetos/Servicio;
    if-eqz v0, :cond_0

    .line 986
    invoke-direct {p0}, Lcl/birdie/transantiagomaster/GApp;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "GApp"

    const-string v2, "error al obtener inflater!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :cond_0
    :goto_0
    return-void

    .line 986
    :cond_1
    const v2, 0x7f030056

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v4, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v1, 0x7f0800c4

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const v5, 0x7f060085

    invoke-virtual {p0, v5}, Lcl/birdie/transantiagomaster/GApp;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->nombre:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f08005a

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->getGlosaSentido()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f080117

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget-object v2, v2, Lcl/birdie/transantiagomaster/PantallaDatos;->svc:Lcl/birdie/transantiagomaster/handlers/ServiciosController;

    invoke-virtual {v2}, Lcl/birdie/transantiagomaster/handlers/ServiciosController;->getParaderoActual()Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    const v6, 0x7f06007b

    invoke-virtual {p0, v6}, Lcl/birdie/transantiagomaster/GApp;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, v2, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const v2, 0x7f08012a

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    new-instance v5, Lcl/birdie/transantiagomaster/GApp$7;

    invoke-direct {v5, p0}, Lcl/birdie/transantiagomaster/GApp$7;-><init>(Lcl/birdie/transantiagomaster/GApp;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f080135

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    new-instance v5, Lcl/birdie/transantiagomaster/GApp$8;

    invoke-direct {v5, p0, v1}, Lcl/birdie/transantiagomaster/GApp$8;-><init>(Lcl/birdie/transantiagomaster/GApp;Landroid/widget/TextView;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f080136

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    new-instance v5, Lcl/birdie/transantiagomaster/GApp$9;

    invoke-direct {v5, p0, v1}, Lcl/birdie/transantiagomaster/GApp$9;-><init>(Lcl/birdie/transantiagomaster/GApp;Landroid/widget/TextView;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->letreroLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/GApp;->desactivarLetrero()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "alpha"

    new-array v2, v7, [F

    fill-array-data v2, :array_0

    invoke-static {v3, v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration$c8c7cc1()Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->letreroLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "rotationX"

    new-array v2, v7, [F

    fill-array-data v2, :array_1

    invoke-static {v3, v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration$c8c7cc1()Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->letreroLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "GApp"

    const-string v2, "lay null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x43870000    # 270.0f
        0x43b40000    # 360.0f
    .end array-data
.end method

.method public final dibujarLugarMarcado()V
    .locals 2

    .prologue
    .line 595
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla;->lugarMarcadoMapa:Lcl/birdie/toolkit/LatLng;

    if-nez v0, :cond_0

    .line 604
    :goto_0
    return-void

    .line 600
    :cond_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    if-eqz v0, :cond_1

    .line 601
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/ITSMMapView;->dibujarLugarMarcado()V

    goto :goto_0

    .line 603
    :cond_1
    const-string v0, "GApp"

    const-string v1, "dibujarLugarMarcado: gMapView null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final dibujarParadero(Lcl/birdie/transantiagomaster/newobjetos/Paradero;)V
    .locals 23
    .param p1, "p"    # Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .prologue
    .line 763
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v17, "dibujarParadero: "

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    move-object/from16 v17, v0

    :goto_0
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 765
    invoke-direct/range {p0 .. p0}, Lcl/birdie/transantiagomaster/GApp;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 767
    .local v4, "inf":Landroid/view/LayoutInflater;
    if-nez v4, :cond_1

    .line 768
    const-string v17, "GApp"

    const-string v18, "dibujarParadero: error al obtener inflater!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :goto_1
    return-void

    .line 763
    .end local v4    # "inf":Landroid/view/LayoutInflater;
    :cond_0
    const-string v17, "NULL"

    goto :goto_0

    .line 772
    .restart local v4    # "inf":Landroid/view/LayoutInflater;
    :cond_1
    const v17, 0x7f030050

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 773
    .local v16, "v":Landroid/view/View;
    const v17, 0x7f08012d

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 774
    .local v11, "svcs":Landroid/widget/LinearLayout;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 775
    const/16 v17, -0x1

    .line 776
    const/16 v18, -0x2

    .line 774
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v6, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 778
    .local v6, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const v17, 0x7f0800c4

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 779
    new-instance v18, Ljava/lang/StringBuilder;

    const v19, 0x7f06007b

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcl/birdie/transantiagomaster/GApp;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 781
    const v17, 0x7f08005a

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 780
    check-cast v17, Landroid/widget/TextView;

    .line 782
    move-object/from16 v0, p1

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->texto:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 784
    const v17, 0x7f0800f7

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 783
    check-cast v14, Landroid/widget/TextView;

    .line 786
    .local v14, "txtMensaje":Landroid/widget/TextView;
    sget-object v17, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    move-object/from16 v0, v17

    iget v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->paraderoActualTiemposOrigen:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 800
    const-string v7, "error general"

    .line 803
    .local v7, "mensaje":Ljava/lang/String;
    :goto_2
    invoke-virtual {v14, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 805
    const v17, 0x7f08012a

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 806
    new-instance v18, Lcl/birdie/transantiagomaster/GApp$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcl/birdie/transantiagomaster/GApp$5;-><init>(Lcl/birdie/transantiagomaster/GApp;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 821
    move-object/from16 v0, p1

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->servicios:[Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 822
    move-object/from16 v0, p1

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->servicios:[Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    const/16 v17, 0x0

    :goto_3
    move/from16 v0, v17

    move/from16 v1, v19

    if-lt v0, v1, :cond_4

    .line 862
    :cond_2
    sget-object v18, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v18

    .line 863
    :try_start_0
    sget-object v17, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->tiemposParadero:Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 864
    move-object/from16 v0, p1

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->servicios:[Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 865
    sget-object v17, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->tiemposParadero:Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;->paradero:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 867
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    sget-object v17, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->tiemposParadero:Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;->tiempos:[Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v3, v0, :cond_9

    .line 862
    .end local v3    # "i":I
    :cond_3
    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/GApp;->letreroLayout:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    if-eqz v17, :cond_f

    .line 903
    invoke-virtual/range {p0 .. p0}, Lcl/birdie/transantiagomaster/GApp;->desactivarLetrero()Z

    move-result v17

    .line 905
    if-eqz v17, :cond_e

    .line 906
    const-string v17, "alpha"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    fill-array-data v18, :array_0

    invoke-static/range {v16 .. v18}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v17

    .line 907
    invoke-virtual/range {v17 .. v17}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration$c8c7cc1()Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/GApp;->letreroLayout:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 788
    .end local v7    # "mensaje":Ljava/lang/String;
    :pswitch_0
    const-string v7, "obteniendo tiempos, por favor espere..."

    .line 789
    .restart local v7    # "mensaje":Ljava/lang/String;
    goto/16 :goto_2

    .line 791
    .end local v7    # "mensaje":Ljava/lang/String;
    :pswitch_1
    const-string v7, "mostrando tiempos te\u00f3ricos, obteniendo tiempos reales..."

    .line 792
    .restart local v7    # "mensaje":Ljava/lang/String;
    goto/16 :goto_2

    .line 794
    .end local v7    # "mensaje":Ljava/lang/String;
    :pswitch_2
    const-string v7, "mostrando tiempos reales"

    .line 795
    .restart local v7    # "mensaje":Ljava/lang/String;
    goto/16 :goto_2

    .line 797
    .end local v7    # "mensaje":Ljava/lang/String;
    :pswitch_3
    const-string v7, "error al obtener tiempos, por favor reintente"

    .line 798
    .restart local v7    # "mensaje":Ljava/lang/String;
    goto/16 :goto_2

    .line 822
    :cond_4
    aget-object v10, v18, v17

    .line 825
    .local v10, "svc":Lcl/birdie/transantiagomaster/newobjetos/Servicio;
    new-instance v9, Lcl/birdie/transantiagomaster/GApp$ServicioClickListener;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v10}, Lcl/birdie/transantiagomaster/GApp$ServicioClickListener;-><init>(Lcl/birdie/transantiagomaster/GApp;Lcl/birdie/transantiagomaster/newobjetos/Servicio;)V

    .line 828
    .local v9, "sl":Lcl/birdie/transantiagomaster/GApp$ServicioClickListener;
    const v20, 0x7f030051

    const/16 v21, 0x0

    .line 827
    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 829
    .local v8, "s":Landroid/widget/LinearLayout;
    const v20, 0x7f08012e

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 830
    .local v15, "txtServicio":Landroid/widget/TextView;
    const v20, 0x7f08012f

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 831
    .local v13, "txtDestino":Landroid/widget/TextView;
    iget-object v0, v10, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->nombre:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 832
    invoke-virtual {v10}, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->getGlosaSentido()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 834
    invoke-virtual {v11, v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 836
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 838
    sget-object v20, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    monitor-enter v20

    .line 839
    :try_start_1
    sget-object v21, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->tiemposParadero:Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    .line 840
    sget-object v21, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->tiemposParadero:Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;->paradero:Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 842
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    sget-object v21, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->tiemposParadero:Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;->tiempos:[Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-lt v3, v0, :cond_6

    .line 838
    .end local v3    # "i":I
    :cond_5
    monitor-exit v20

    .line 822
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_3

    .line 843
    .restart local v3    # "i":I
    :cond_6
    sget-object v21, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->tiemposParadero:Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;->tiempos:[Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;

    move-object/from16 v21, v0

    aget-object v21, v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->servicio:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    iget-object v0, v10, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->nombre:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 844
    sget-object v21, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->tiemposParadero:Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;->tiempos:[Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;

    move-object/from16 v21, v0

    aget-object v21, v21, v3

    sget-object v22, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;->TIEMPO_1:Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v4, v0, v1}, Lcl/birdie/transantiagomaster/GApp;->dibujarTiempo(Landroid/view/LayoutInflater;Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;)Landroid/view/View;

    move-result-object v12

    .line 845
    .local v12, "tv":Landroid/view/View;
    if-eqz v12, :cond_7

    .line 846
    invoke-virtual {v12, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 847
    invoke-virtual {v11, v12, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 849
    :cond_7
    sget-object v21, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->tiemposParadero:Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;->tiempos:[Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;

    move-object/from16 v21, v0

    aget-object v21, v21, v3

    sget-object v22, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;->TIEMPO_2:Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v4, v0, v1}, Lcl/birdie/transantiagomaster/GApp;->dibujarTiempo(Landroid/view/LayoutInflater;Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;)Landroid/view/View;

    move-result-object v12

    .line 850
    if-eqz v12, :cond_8

    .line 851
    invoke-virtual {v12, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 852
    invoke-virtual {v11, v12, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 842
    .end local v12    # "tv":Landroid/view/View;
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    .line 838
    .end local v3    # "i":I
    :catchall_0
    move-exception v17

    monitor-exit v20

    throw v17

    .line 868
    .end local v8    # "s":Landroid/widget/LinearLayout;
    .end local v9    # "sl":Lcl/birdie/transantiagomaster/GApp$ServicioClickListener;
    .end local v10    # "svc":Lcl/birdie/transantiagomaster/newobjetos/Servicio;
    .end local v13    # "txtDestino":Landroid/widget/TextView;
    .end local v15    # "txtServicio":Landroid/widget/TextView;
    .restart local v3    # "i":I
    :cond_9
    const/4 v2, 0x0

    .line 869
    .local v2, "found":Z
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_6
    :try_start_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->servicios:[Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v5, v0, :cond_c

    .line 875
    :goto_7
    if-nez v2, :cond_b

    .line 876
    const-string v17, "GApp"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "dibujarParadero: dibujando servicio que no est\u00e1 en lista: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v20, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->tiemposParadero:Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;->tiempos:[Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;

    move-object/from16 v20, v0

    aget-object v20, v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->servicio:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    const v17, 0x7f030051

    const/16 v19, 0x0

    .line 877
    move/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 879
    .restart local v8    # "s":Landroid/widget/LinearLayout;
    const v17, 0x7f08012e

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 880
    .restart local v15    # "txtServicio":Landroid/widget/TextView;
    const v17, 0x7f08012f

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 881
    .restart local v13    # "txtDestino":Landroid/widget/TextView;
    sget-object v17, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->tiemposParadero:Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;->tiempos:[Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;

    move-object/from16 v17, v0

    aget-object v17, v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->servicio:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 882
    sget-object v17, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->tiemposParadero:Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;->tiempos:[Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;

    move-object/from16 v17, v0

    aget-object v17, v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->trip_headsign:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 884
    invoke-virtual {v11, v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 886
    sget-object v17, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->tiemposParadero:Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;->tiempos:[Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;

    move-object/from16 v17, v0

    aget-object v17, v17, v3

    sget-object v19, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;->TIEMPO_1:Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v4, v0, v1}, Lcl/birdie/transantiagomaster/GApp;->dibujarTiempo(Landroid/view/LayoutInflater;Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;)Landroid/view/View;

    move-result-object v12

    .line 887
    .restart local v12    # "tv":Landroid/view/View;
    if-eqz v12, :cond_a

    .line 888
    invoke-virtual {v11, v12, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 891
    :cond_a
    sget-object v17, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->tiemposParadero:Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;->tiempos:[Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;

    move-object/from16 v17, v0

    aget-object v17, v17, v3

    sget-object v19, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;->TIEMPO_2:Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v4, v0, v1}, Lcl/birdie/transantiagomaster/GApp;->dibujarTiempo(Landroid/view/LayoutInflater;Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero$Tiempo;)Landroid/view/View;

    move-result-object v12

    .line 892
    if-eqz v12, :cond_b

    .line 893
    invoke-virtual {v11, v12, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 867
    .end local v8    # "s":Landroid/widget/LinearLayout;
    .end local v12    # "tv":Landroid/view/View;
    .end local v13    # "txtDestino":Landroid/widget/TextView;
    .end local v15    # "txtServicio":Landroid/widget/TextView;
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 870
    :cond_c
    sget-object v17, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcl/birdie/transantiagomaster/PantallaDatos;->tiemposParadero:Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcl/birdie/transantiagomaster/handlers/TiemposParaderoHandler;->tiempos:[Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;

    move-object/from16 v17, v0

    aget-object v17, v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/TiempoParadero;->servicio:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->servicios:[Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    move-object/from16 v19, v0

    aget-object v19, v19, v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->nombre:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v17

    if-eqz v17, :cond_d

    .line 871
    const/4 v2, 0x1

    .line 872
    goto/16 :goto_7

    .line 869
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6

    .line 862
    .end local v2    # "found":Z
    .end local v3    # "i":I
    .end local v5    # "j":I
    :catchall_1
    move-exception v17

    monitor-exit v18

    throw v17

    .line 912
    :cond_e
    const-string v17, "rotationX"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    fill-array-data v18, :array_1

    invoke-static/range {v16 .. v18}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v17

    .line 913
    invoke-virtual/range {v17 .. v17}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration$c8c7cc1()Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/birdie/transantiagomaster/GApp;->letreroLayout:Landroid/widget/FrameLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 919
    :cond_f
    const-string v17, "GApp"

    const-string v18, "dibujarParadero: lay null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 786
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 906
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 912
    :array_1
    .array-data 4
        0x43870000    # 270.0f
        0x43b40000    # 360.0f
    .end array-data
.end method

.method public final dibujarUbicacion()V
    .locals 2

    .prologue
    .line 583
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla;->posicionGPS:Lcl/birdie/toolkit/LatLng;

    invoke-virtual {v0}, Lcl/birdie/toolkit/LatLng;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    :goto_0
    return-void

    .line 588
    :cond_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    if-eqz v0, :cond_1

    .line 589
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/ITSMMapView;->llenarUbicacion()V

    goto :goto_0

    .line 591
    :cond_1
    const-string v0, "GApp"

    const-string v1, "dibujarUbicacion: gMapView null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final invalidarMapa()V
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/ITSMMapView;->invalidar()V

    .line 611
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 338
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 341
    if-eqz p1, :cond_1

    .line 342
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    .line 345
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget v1, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->modoNavegacion:I

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onSetModoNavegacion(I)V

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_2

    .line 350
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    .line 351
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget v1, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->modoNavegacion:I

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onSetModoNavegacion(I)V

    .line 353
    :cond_2
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    sget v1, Lcl/birdie/transantiagomaster/Pantalla;->zoomLevel:I

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/ITSMMapView;->seteaZoomLevel(I)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 70
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-object v1, v0

    iput-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    .line 71
    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v1, p0}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onSetGApp(Lcl/birdie/transantiagomaster/GApp;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    return-void

    .line 73
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    const-string v3, " must implement OnArticleSelectedListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 362
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 365
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/GApp;->setHasOptionsMenu(Z)V

    .line 366
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 500
    const-string v1, "GApp"

    const-string v2, "onCreateOptionsMenu"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const v1, 0x7f0e0002

    invoke-virtual {p2, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 505
    const v1, 0x7f080170

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    .line 506
    invoke-interface {v1}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 505
    check-cast v0, Lcom/actionbarsherlock/widget/SearchView;

    .line 508
    .local v0, "searchView":Lcom/actionbarsherlock/widget/SearchView;
    if-eqz v0, :cond_0

    .line 510
    new-instance v1, Lcl/birdie/transantiagomaster/GApp$4;

    invoke-direct {v1, p0}, Lcl/birdie/transantiagomaster/GApp$4;-><init>(Lcl/birdie/transantiagomaster/GApp;)V

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/SearchView;->setOnQueryTextListener(Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V

    .line 525
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 228
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 233
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/GApp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/MainActivity;

    .line 234
    .local v0, "act":Lcl/birdie/transantiagomaster/MainActivity;
    invoke-virtual {v0, p1}, Lcl/birdie/transantiagomaster/MainActivity;->crearMapView$7a1a0ab8(Landroid/view/LayoutInflater;)V

    .line 236
    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/MainActivity;->getMapView()Lcl/birdie/transantiagomaster/ITSMMapView;

    move-result-object v1

    iput-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    .line 238
    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    if-nez v1, :cond_1

    const-string v1, "GApp"

    const-string v2, "crearOverlays: mapView NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :goto_0
    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/MainActivity;->getMapViewContainer()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->container:Landroid/view/ViewGroup;

    .line 262
    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    invoke-static {v1}, Lcl/birdie/transantiagomaster/maps/layers/LayerController;->recrearLayers(Lcl/birdie/transantiagomaster/ITSMMapView;)V

    .line 263
    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    invoke-static {}, Lcl/birdie/transantiagomaster/maps/layers/LayerController;->actualizarDatos$25a2cf1e()V

    .line 269
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-boolean v1, v1, Lcl/birdie/params/Preferencias;->botones_zoom:Z

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    invoke-interface {v1}, Lcl/birdie/transantiagomaster/ITSMMapView;->seteaControlesZoom$1385ff()V

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/GApp;->refrescarOverlays()V

    .line 278
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/GApp;->actualizarDatos()V

    .line 282
    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->container:Landroid/view/ViewGroup;

    .line 283
    const v2, 0x7f0800d9

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 282
    check-cast v1, Landroid/widget/ImageView;

    .line 284
    new-instance v2, Lcl/birdie/transantiagomaster/GApp$1;

    invoke-direct {v2, p0}, Lcl/birdie/transantiagomaster/GApp$1;-><init>(Lcl/birdie/transantiagomaster/GApp;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->container:Landroid/view/ViewGroup;

    .line 292
    const v2, 0x7f0800d8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 291
    check-cast v1, Landroid/widget/ImageView;

    .line 293
    new-instance v2, Lcl/birdie/transantiagomaster/GApp$2;

    invoke-direct {v2, p0}, Lcl/birdie/transantiagomaster/GApp$2;-><init>(Lcl/birdie/transantiagomaster/GApp;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->container:Landroid/view/ViewGroup;

    .line 302
    const v2, 0x7f0800d7

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 301
    iput-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->letreroLayout:Landroid/widget/FrameLayout;

    .line 304
    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->container:Landroid/view/ViewGroup;

    return-object v1

    .line 238
    :cond_1
    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/GApp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-interface {v1, v2}, Lcl/birdie/transantiagomaster/ITSMMapView;->crearOverlays(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->admobAdView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->admobAdView:Landroid/view/View;

    check-cast v0, Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->admobAdView:Landroid/view/View;

    .line 100
    :cond_0
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroy()V

    .line 101
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 105
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroyView()V

    .line 122
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/GApp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/MainActivity;

    .line 123
    .local v0, "mapActivity":Lcl/birdie/transantiagomaster/MainActivity;
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/MainActivity;->destroyMapView()V

    .line 129
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    .line 130
    return-void

    .line 126
    :cond_0
    const-string v1, "GApp"

    const-string v2, "onDestroyView: activity NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDetach()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    .line 83
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 456
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 467
    :cond_0
    :goto_0
    return v1

    .line 462
    :pswitch_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onShowBarraDerecha()V

    goto :goto_0

    .line 456
    nop

    :pswitch_data_0
    .packed-switch 0x7f080171
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 436
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    if-eqz v0, :cond_0

    .line 439
    sget-object v1, Lcl/birdie/transantiagomaster/Pantalla;->gMapCenter:Lcl/birdie/toolkit/LatLng;

    monitor-enter v1

    .line 440
    :try_start_0
    sget-object v0, Lcl/birdie/transantiagomaster/Pantalla;->gMapCenter:Lcl/birdie/toolkit/LatLng;

    .line 441
    new-instance v2, Lcl/birdie/toolkit/LatLng;

    iget-object v3, p0, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    invoke-interface {v3}, Lcl/birdie/transantiagomaster/ITSMMapView;->obtieneMapCenter()Lcl/birdie/toolkit/LatLng;

    move-result-object v3

    invoke-direct {v2, v3}, Lcl/birdie/toolkit/LatLng;-><init>(Lcl/birdie/toolkit/LatLng;)V

    invoke-virtual {v0, v2}, Lcl/birdie/toolkit/LatLng;->copy(Lcl/birdie/toolkit/LatLng;)V

    .line 439
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/ITSMMapView;->obtieneZoomLevel()I

    move-result v0

    sput v0, Lcl/birdie/transantiagomaster/Pantalla;->zoomLevel:I

    .line 446
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 447
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->admobAdView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 448
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->admobAdView:Landroid/view/View;

    check-cast v0, Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->pause()V

    .line 451
    :cond_1
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 452
    return-void

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/16 v3, 0x9

    .line 379
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 389
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_0

    .line 390
    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->admobAdView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 391
    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->admobAdView:Landroid/view/View;

    check-cast v1, Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->resume()V

    .line 398
    :cond_0
    :goto_0
    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    invoke-interface {v1}, Lcl/birdie/transantiagomaster/ITSMMapView;->refrescaLayout()V

    .line 401
    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v1, :cond_1

    .line 402
    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    .line 403
    sget-object v2, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget v2, v2, Lcl/birdie/transantiagomaster/PantallaDatos;->modoNavegacion:I

    invoke-interface {v1, v2}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onSetModoNavegacion(I)V

    .line 404
    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onActivarAds()V

    .line 407
    :cond_1
    sget-object v2, Lcl/birdie/transantiagomaster/Pantalla;->gMapCenter:Lcl/birdie/toolkit/LatLng;

    monitor-enter v2

    .line 408
    :try_start_0
    sget-object v1, Lcl/birdie/transantiagomaster/Pantalla;->gMapCenter:Lcl/birdie/toolkit/LatLng;

    if-eqz v1, :cond_2

    .line 409
    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v1, :cond_2

    .line 410
    const-string v1, "GApp"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onResume: seteando centro a "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 411
    sget-object v4, Lcl/birdie/transantiagomaster/Pantalla;->gMapCenter:Lcl/birdie/toolkit/LatLng;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 410
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    sget-object v3, Lcl/birdie/transantiagomaster/Pantalla;->gMapCenter:Lcl/birdie/toolkit/LatLng;

    invoke-interface {v1, v3}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->setCenterLatLng(Lcl/birdie/toolkit/LatLng;)V

    .line 413
    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onMapUpdate(I)V

    .line 414
    sget-object v1, Lcl/birdie/transantiagomaster/Pantalla;->threadBusqueda:Lcl/birdie/transantiagomaster/ThreadBusqueda;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/ThreadBusqueda;->resetTimer()V

    .line 407
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    invoke-static {}, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->mostrarChangelog()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 421
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/GApp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 422
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f060048

    invoke-virtual {p0, v1}, Lcl/birdie/transantiagomaster/GApp;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 423
    const v2, 0x7f06017f

    .line 424
    new-instance v3, Lcl/birdie/transantiagomaster/GApp$3;

    invoke-direct {v3, p0}, Lcl/birdie/transantiagomaster/GApp$3;-><init>(Lcl/birdie/transantiagomaster/GApp;)V

    .line 422
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 430
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 432
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_3
    return-void

    .line 393
    :cond_4
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/GApp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->admobAdView:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->container:Landroid/view/ViewGroup;

    if-nez v1, :cond_5

    const-string v1, "GApp"

    const-string v2, "recrearAdView: container es null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->container:Landroid/view/ViewGroup;

    const v2, 0x7f0800d5

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->adViewContainer:Landroid/view/ViewGroup;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v3, :cond_6

    const-string v1, "GApp"

    const-string v2, "recrearAdView: descartando"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const-string v1, "GApp"

    const-string v2, "recrearAdView: ADMOB"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/GApp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->admobAdView:Landroid/view/View;

    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->admobAdView:Landroid/view/View;

    check-cast v1, Lcom/google/android/gms/ads/AdView;

    const-string v2, "ca-app-pub-0124360635043881/5902761481"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->admobAdView:Landroid/view/View;

    check-cast v1, Lcom/google/android/gms/ads/AdView;

    sget-object v2, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->adViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->adViewContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcl/birdie/transantiagomaster/GApp;->admobAdView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v2

    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->admobAdView:Landroid/view/View;

    check-cast v1, Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto/16 :goto_0

    .line 407
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 485
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 487
    const-string v0, "modoNavegacion"

    .line 488
    sget-object v1, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->datos:Lcl/birdie/transantiagomaster/PantallaDatos;

    iget v1, v1, Lcl/birdie/transantiagomaster/PantallaDatos;->modoNavegacion:I

    .line 487
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 489
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 493
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onStart()V

    .line 494
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    const-string v1, "/Mapa"

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onTrackView(Ljava/lang/String;)V

    .line 496
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 370
    iput-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->admobAdView:Landroid/view/View;

    .line 373
    iput-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->adViewContainer:Landroid/view/ViewGroup;

    .line 374
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onStop()V

    .line 375
    return-void
.end method

.method public final refrescarOverlays()V
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    invoke-interface {v0, p0}, Lcl/birdie/transantiagomaster/ITSMMapView;->refrescarOverlays(Lcl/birdie/transantiagomaster/GApp;)V

    .line 571
    :goto_0
    return-void

    .line 570
    :cond_0
    const-string v0, "GApp"

    const-string v1, "refrescarOverlays: gMapView null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final requestAdLocation(Landroid/location/Location;)V
    .locals 3
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 472
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 473
    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->admobAdView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 477
    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/ads/AdRequest$Builder;->setLocation(Landroid/location/Location;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 478
    .local v0, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    iget-object v1, p0, Lcl/birdie/transantiagomaster/GApp;->admobAdView:Landroid/view/View;

    check-cast v1, Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 481
    .end local v0    # "adRequest":Lcom/google/android/gms/ads/AdRequest;
    :cond_0
    return-void
.end method

.method public final setItinerarioLayer()V
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->mapView:Lcl/birdie/transantiagomaster/ITSMMapView;

    invoke-interface {v0}, Lcl/birdie/transantiagomaster/ITSMMapView;->setItinerarioLayer()V

    .line 562
    :goto_0
    return-void

    .line 561
    :cond_0
    const-string v0, "GApp"

    const-string v1, "setItinerarioLayer: mapView null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final showAds$1385ff()V
    .locals 2

    .prologue
    .line 614
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->container:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 615
    const-string v0, "GApp"

    const-string v1, "showAds: null pointers!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->admobAdView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcl/birdie/transantiagomaster/GApp;->admobAdView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
