.class public abstract Lcl/santander/smartphone/localizador/FragmentoInterno;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "FragmentoInterno.java"


# instance fields
.field protected handlerBubble:Landroid/os/Handler;

.field protected listaOficinas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemPOI;",
            ">;"
        }
    .end annotation
.end field

.field protected posicionActual:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 40
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
    .line 41
    .local p2, "ofis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/santander/santanderCL/data/response/ItemPOI;>;"
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 44
    iput-object p1, p0, Lcl/santander/smartphone/localizador/FragmentoInterno;->posicionActual:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    .line 45
    iput-object p2, p0, Lcl/santander/smartphone/localizador/FragmentoInterno;->listaOficinas:Ljava/util/ArrayList;

    .line 46
    return-void
.end method


# virtual methods
.method protected IncluirPois()V
    .locals 21

    .prologue
    .line 77
    sget-object v5, Lcl/santander/smartphone/Main;->mapa:Lcom/google/android/maps/MapView;

    .line 80
    .local v5, "mapa":Lcom/google/android/maps/MapView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/localizador/FragmentoInterno;->listaOficinas:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 82
    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/localizador/FragmentoInterno;->listaOficinas:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 84
    .local v10, "cantidad":I
    if-nez v10, :cond_1

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/localizador/FragmentoInterno;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v4

    const-string v6, "NO HAY POIS CERCANOS"

    const/4 v7, 0x1

    invoke-static {v4, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 152
    .end local v10    # "cantidad":I
    :cond_0
    :goto_0
    return-void

    .line 90
    .restart local v10    # "cantidad":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/localizador/FragmentoInterno;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0200e5

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 92
    .local v3, "marker":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 93
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 92
    invoke-virtual {v3, v4, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 96
    invoke-virtual {v5}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v11

    .line 100
    .local v11, "capas":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/localizador/FragmentoInterno;->getBubleOverlay()Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/localizador/FragmentoInterno;->getBubleOverlay()Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;

    move-result-object v4

    invoke-virtual {v4}, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->removeBubble()V

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/localizador/FragmentoInterno;->getBubleOverlay()Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 107
    :cond_2
    new-instance v2, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/localizador/FragmentoInterno;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcl/santander/smartphone/localizador/FragmentoInterno;->handlerBubble:Landroid/os/Handler;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/localizador/FragmentoInterno;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v17, 0x7f020098

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;-><init>(Landroid/graphics/drawable/Drawable;Lcom/google/android/maps/MapActivity;Lcom/google/android/maps/MapView;ZLandroid/os/Handler;Landroid/graphics/drawable/Drawable;)V

    .line 110
    .local v2, "overlay":Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;
    new-array v13, v10, [Landroid/graphics/drawable/Drawable;

    .line 112
    .local v13, "iconos":[Landroid/graphics/drawable/Drawable;
    new-array v15, v10, [Ljava/lang/String;

    .line 114
    .local v15, "texts":[Ljava/lang/String;
    new-array v14, v10, [Lcom/google/android/maps/GeoPoint;

    .line 116
    .local v14, "points":[Lcom/google/android/maps/GeoPoint;
    new-array v0, v10, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 118
    .local v16, "values":[Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 120
    .local v9, "calendar":Ljava/util/Calendar;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-lt v12, v10, :cond_3

    .line 136
    invoke-virtual {v2, v14}, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->setPoints([Lcom/google/android/maps/GeoPoint;)V

    .line 137
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->setOficinas([Ljava/lang/String;)V

    .line 138
    invoke-virtual {v2, v13}, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->setIconos([Landroid/graphics/drawable/Drawable;)V

    .line 139
    invoke-virtual {v2, v15}, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->setTexts([Ljava/lang/String;)V

    .line 140
    invoke-virtual {v2}, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;->iniciaOverlay()V

    .line 142
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-virtual {v5}, Lcom/google/android/maps/MapView;->postInvalidate()V

    goto :goto_0

    .line 122
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/localizador/FragmentoInterno;->listaOficinas:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-virtual {v4}, Lcl/santander/santanderCL/data/response/ItemPOI;->getIcono()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/localizador/FragmentoInterno;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v4, v6}, Lcl/santander/smartphone/Utils;->reesCalarPOI(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v13, v12

    .line 128
    new-instance v6, Lcom/google/android/maps/GeoPoint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/localizador/FragmentoInterno;->listaOficinas:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-virtual {v4}, Lcl/santander/santanderCL/data/response/ItemPOI;->getLatitud()D

    move-result-wide v7

    const-wide v17, 0x412e848000000000L    # 1000000.0

    mul-double v7, v7, v17

    double-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/localizador/FragmentoInterno;->listaOficinas:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-virtual {v4}, Lcl/santander/santanderCL/data/response/ItemPOI;->getLongitud()D

    move-result-wide v17

    const-wide v19, 0x412e848000000000L    # 1000000.0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v4, v0

    invoke-direct {v6, v7, v4}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    aput-object v6, v14, v12

    .line 130
    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/localizador/FragmentoInterno;->listaOficinas:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-virtual {v4}, Lcl/santander/santanderCL/data/response/ItemPOI;->getNombre()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v15, v12

    .line 132
    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/localizador/FragmentoInterno;->listaOficinas:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcl/santander/santanderCL/data/response/ItemPOI;

    invoke-virtual {v4}, Lcl/santander/santanderCL/data/response/ItemPOI;->getDireccion()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v16, v12

    .line 120
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1
.end method

.method protected getBubleOverlay()Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;
    .locals 7

    .prologue
    .line 56
    sget-object v4, Lcl/santander/smartphone/Main;->mapa:Lcom/google/android/maps/MapView;

    .line 57
    .local v4, "mapa":Lcom/google/android/maps/MapView;
    const/4 v5, 0x0

    .line 58
    .local v5, "overlay":Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;
    invoke-virtual {v4}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    .line 60
    .local v1, "capas":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    const/4 v2, 0x0

    .line 61
    .local v2, "encontrado":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    if-eqz v2, :cond_1

    .line 69
    :cond_0
    if-eqz v2, :cond_2

    .line 73
    .end local v5    # "overlay":Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;
    :goto_1
    return-object v5

    .line 63
    .restart local v5    # "overlay":Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;
    :cond_1
    :try_start_0
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcl/santander/santanderCL/famtec/android/maps/PointsBubblesOverlay;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    const/4 v2, 0x1

    .line 61
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 73
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 66
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/content/Intent;

    .prologue
    .line 51
    return-void
.end method

.method protected verDetalle(I)V
    .locals 17
    .param p1, "indicePoi"    # I

    .prologue
    .line 156
    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/localizador/FragmentoInterno;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    .line 157
    .local v1, "sfa":Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/localizador/FragmentoInterno;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    .line 158
    .local v5, "s":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 160
    .local v13, "detalle":Lcl/santander/santanderCL/data/response/ItemOferta;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/localizador/FragmentoInterno;->listaOficinas:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/localizador/FragmentoInterno;->listaOficinas:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcl/santander/santanderCL/data/response/ItemPOI;

    .line 163
    .local v16, "poi":Lcl/santander/santanderCL/data/response/ItemPOI;
    invoke-virtual/range {v16 .. v16}, Lcl/santander/santanderCL/data/response/ItemPOI;->getTipo()Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    move-result-object v2

    sget-object v3, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;->IMPERDIBLE:Lcl/santander/santanderCL/utils/Constant$TIPO_POI;

    invoke-virtual {v2, v3}, Lcl/santander/santanderCL/utils/Constant$TIPO_POI;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Lcl/santander/santanderCL/data/response/ItemPOI;->getOferta()Lcl/santander/santanderCL/data/response/ItemImperdible;

    move-result-object v2

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/ItemImperdible;->getIdComercio()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcl/santander/smartphone/ServicesManager;->getDetallePOI(Landroid/app/Activity;Ljava/lang/String;)Lcl/santander/santanderCL/data/response/ItemOferta;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v13

    .line 194
    :cond_0
    :goto_0
    new-instance v15, Landroid/content/Intent;

    const-class v2, Lcl/santander/smartphone/localizador/DetalleActivity;

    invoke-direct {v15, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 195
    .local v15, "intent":Landroid/content/Intent;
    sput-object v16, Lcl/santander/smartphone/Global;->poi_seleccionado:Lcl/santander/santanderCL/data/response/ItemPOI;

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/localizador/FragmentoInterno;->posicionActual:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    sput-object v2, Lcl/santander/smartphone/Global;->pos_seleccionado:Luk/co/santander/santanderUK/famtec/android/kernel/GeoPosition;

    .line 197
    sput-object v13, Lcl/santander/smartphone/Global;->oferta_seleccionado:Lcl/santander/santanderCL/data/response/ItemOferta;

    .line 198
    const/high16 v2, 0x10000

    invoke-virtual {v15, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 201
    const/4 v2, 0x6

    invoke-virtual {v1, v15, v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 208
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v16    # "poi":Lcl/santander/santanderCL/data/response/ItemPOI;
    :cond_1
    :goto_1
    return-void

    .line 168
    .restart local v16    # "poi":Lcl/santander/santanderCL/data/response/ItemPOI;
    :catch_0
    move-exception v14

    .line 169
    .local v14, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    const v2, 0x7f05015b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcl/santander/smartphone/localizador/FragmentoInterno;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 171
    .end local v14    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v14

    .line 172
    .local v14, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    const v2, 0x7f05015c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcl/santander/smartphone/localizador/FragmentoInterno;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Lcl/santander/santanderCL/exceptions/InfoException;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v3

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/Info;->getMsgUsuario()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 175
    .end local v14    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v14

    .line 176
    .local v14, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v12, Lcl/santander/smartphone/localizador/FragmentoInterno$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v1}, Lcl/santander/smartphone/localizador/FragmentoInterno$1;-><init>(Lcl/santander/smartphone/localizador/FragmentoInterno;Lcom/actionbarsherlock/app/SherlockFragmentActivity;)V

    .line 185
    .local v12, "cert":Ljava/lang/Runnable;
    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/localizador/FragmentoInterno;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0501c6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v2

    .line 186
    .local v10, "s_cert":[Ljava/lang/String;
    invoke-virtual {v14}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/localizador/FragmentoInterno;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/localizador/FragmentoInterno;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v2, 0x1

    new-array v11, v2, [Ljava/lang/Runnable;

    const/4 v2, 0x0

    aput-object v12, v11, v2

    move-object v6, v1

    invoke-static/range {v6 .. v11}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 189
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/localizador/FragmentoInterno;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/localizador/FragmentoInterno;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v2, 0x1

    new-array v11, v2, [Ljava/lang/Runnable;

    const/4 v2, 0x0

    aput-object v12, v11, v2

    move-object v6, v1

    invoke-static/range {v6 .. v11}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method
