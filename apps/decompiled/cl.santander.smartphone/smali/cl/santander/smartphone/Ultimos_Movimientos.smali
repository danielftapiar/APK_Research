.class public Lcl/santander/smartphone/Ultimos_Movimientos;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "Ultimos_Movimientos.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/santander/smartphone/Ultimos_Movimientos$RefreshDataTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/actionbarsherlock/app/SherlockFragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/support/v4/view/ViewPager$OnPageChangeListener;"
    }
.end annotation


# static fields
.field public static final FILTER_ABONOS:I = 0x1

.field public static final FILTER_CARGOS:I = 0x2

.field public static final FILTER_ERROR:I = -0x1

.field public static final FILTER_TODOS:I = 0x0

.field public static final TIPO_CUENTAS:I = 0x0

.field public static final TIPO_LINEAS:I = 0x1

.field public static final TIPO_TARJETAS:I = 0x2


# instance fields
.field private _mDesde:Ljava/util/Date;

.field private _mHasta:Ljava/util/Date;

.field _movAll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemMovimiento;",
            ">;"
        }
    .end annotation
.end field

.field _movFiltrados:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemMovimiento;",
            ">;"
        }
    .end annotation
.end field

.field adapterUltimosMovs:Lcl/santander/smartphone/AdapterUltimosMovimientos;

.field bt_abonos:Landroid/widget/Button;

.field bt_cargos:Landroid/widget/Button;

.field bt_fecha:Landroid/widget/Button;

.field bt_todos:Landroid/widget/Button;

.field cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

.field private empty:Landroid/widget/LinearLayout;

.field id:I

.field private list:Landroid/widget/LinearLayout;

.field m_ListMovimientos:Landroid/widget/ListView;

.field m_TabButtons:[Landroid/widget/Button;

.field m_View:Landroid/view/View;

.field m_iFilterSelect:I

.field m_tipo_cuenta:I

.field mapa_cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemProducto;",
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemMovimiento;",
            ">;>;"
        }
    .end annotation
.end field

.field pageAdapter:Lcl/santander/smartphone/ProductosPageAdapter;

.field private refreshTask:Lcl/santander/smartphone/Ultimos_Movimientos$RefreshDataTask;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;

.field vp_pager:Landroid/support/v4/view/ViewPager;

.field vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_TabButtons:[Landroid/widget/Button;

    .line 87
    return-void
.end method

.method public constructor <init>(Lcl/santander/santanderCL/data/MatrizProductos;II)V
    .locals 1
    .param p1, "cuentas"    # Lcl/santander/santanderCL/data/MatrizProductos;
    .param p2, "id"    # I
    .param p3, "tipo_cuenta"    # I

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_TabButtons:[Landroid/widget/Button;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->mapa_cache:Ljava/util/HashMap;

    .line 91
    iput-object p1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    .line 92
    iput p2, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->id:I

    .line 93
    iput p3, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_tipo_cuenta:I

    .line 94
    return-void
.end method

.method static synthetic access$0(Lcl/santander/smartphone/Ultimos_Movimientos;Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/util/Date;Ljava/util/Date;Z)V
    .locals 0

    .prologue
    .line 418
    invoke-direct {p0, p1, p2, p3, p4}, Lcl/santander/smartphone/Ultimos_Movimientos;->cargaMovimientosCuenta(Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/util/Date;Ljava/util/Date;Z)V

    return-void
.end method

.method static synthetic access$1(Lcl/santander/smartphone/Ultimos_Movimientos;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->list:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$10(Lcl/santander/smartphone/Ultimos_Movimientos;Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->_mHasta:Ljava/util/Date;

    return-void
.end method

.method static synthetic access$11(Lcl/santander/smartphone/Ultimos_Movimientos;)Ljava/util/Date;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->_mHasta:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$2(Lcl/santander/smartphone/Ultimos_Movimientos;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->empty:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcl/santander/smartphone/Ultimos_Movimientos;)V
    .locals 0

    .prologue
    .line 520
    invoke-direct {p0}, Lcl/santander/smartphone/Ultimos_Movimientos;->filtradoFecha()V

    return-void
.end method

.method static synthetic access$4(Lcl/santander/smartphone/Ultimos_Movimientos;Lcl/santander/smartphone/Ultimos_Movimientos$RefreshDataTask;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->refreshTask:Lcl/santander/smartphone/Ultimos_Movimientos$RefreshDataTask;

    return-void
.end method

.method static synthetic access$5(Lcl/santander/smartphone/Ultimos_Movimientos;)Lcl/santander/smartphone/Ultimos_Movimientos$RefreshDataTask;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->refreshTask:Lcl/santander/smartphone/Ultimos_Movimientos$RefreshDataTask;

    return-object v0
.end method

.method static synthetic access$6(Lcl/santander/smartphone/Ultimos_Movimientos;Ljava/util/Date;)Z
    .locals 1

    .prologue
    .line 507
    invoke-direct {p0, p1}, Lcl/santander/smartphone/Ultimos_Movimientos;->validaDesde(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7(Lcl/santander/smartphone/Ultimos_Movimientos;Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 557
    invoke-direct {p0, p1}, Lcl/santander/smartphone/Ultimos_Movimientos;->filtrado(Ljava/util/Date;)V

    return-void
.end method

.method static synthetic access$8(Lcl/santander/smartphone/Ultimos_Movimientos;)Ljava/util/Date;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->_mDesde:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$9(Lcl/santander/smartphone/Ultimos_Movimientos;Ljava/util/Date;Ljava/util/Date;)Z
    .locals 1

    .prologue
    .line 512
    invoke-direct {p0, p1, p2}, Lcl/santander/smartphone/Ultimos_Movimientos;->validaHasta(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method private cargaMovimientosCuenta(Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/util/Date;Ljava/util/Date;Z)V
    .locals 17
    .param p1, "cuenta"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .param p2, "desde"    # Ljava/util/Date;
    .param p3, "hasta"    # Ljava/util/Date;
    .param p4, "showPD"    # Z

    .prologue
    .line 421
    const/4 v4, 0x1

    new-array v15, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcl/santander/smartphone/Ultimos_Movimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v5}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f05002d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v15, v4

    .line 423
    .local v15, "s":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 425
    .local v13, "movs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcl/santander/santanderCL/data/response/ItemMovimiento;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/Ultimos_Movimientos;->mapa_cache:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 427
    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/Ultimos_Movimientos;->mapa_cache:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/ArrayList;

    move-object v13, v0

    .line 448
    :goto_0
    if-eqz v13, :cond_6

    .line 450
    move-object/from16 v0, p0

    iput-object v13, v0, Lcl/santander/smartphone/Ultimos_Movimientos;->_movAll:Ljava/util/ArrayList;

    .line 452
    move-object/from16 v0, p0

    iget v12, v0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_iFilterSelect:I

    .line 453
    .local v12, "filtro_aux":I
    const/4 v4, -0x2

    move-object/from16 v0, p0

    iput v4, v0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_iFilterSelect:I

    .line 454
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v12, v1}, Lcl/santander/smartphone/Ultimos_Movimientos;->filtraMovimientosCuenta(IZ)V

    .line 491
    .end local v12    # "filtro_aux":I
    :goto_1
    return-void

    .line 431
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_tipo_cuenta:I

    if-nez v4, :cond_3

    .line 432
    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/Ultimos_Movimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v4, v0, v1, v2, v3}, Lcl/santander/smartphone/ServicesManager;->MovimientosCuenta(Landroid/app/Activity;Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/util/Date;Ljava/util/Date;Z)Ljava/util/ArrayList;

    move-result-object v13

    .line 445
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/Ultimos_Movimientos;->mapa_cache:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 462
    :catch_0
    move-exception v11

    .line 463
    .local v11, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    if-eqz p4, :cond_2

    .line 464
    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/Ultimos_Movimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/Ultimos_Movimientos;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f05015b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object v8, v15

    invoke-static/range {v4 .. v9}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 465
    :cond_2
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v4, v1}, Lcl/santander/smartphone/Ultimos_Movimientos;->filtraMovimientosCuenta(IZ)V

    goto :goto_1

    .line 433
    .end local v11    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget v4, v0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_tipo_cuenta:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 435
    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/Ultimos_Movimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v4, v0, v1}, Lcl/santander/smartphone/ServicesManager;->MovimientosLinea(Landroid/app/Activity;Lcl/santander/santanderCL/data/response/ItemProducto;Z)Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;

    move-result-object v14

    .line 436
    .local v14, "resp":Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;
    if-eqz v14, :cond_4

    .line 437
    invoke-virtual {v14}, Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;->getMovimientos()Ljava/util/ArrayList;

    move-result-object v13

    goto :goto_2

    .line 439
    :cond_4
    const/4 v13, 0x0

    goto :goto_2

    .line 441
    .end local v14    # "resp":Lcl/santander/santanderCL/response/MovimientosLineaCreditoResponse;
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_tipo_cuenta:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 443
    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/Ultimos_Movimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Lcl/santander/santanderCL/data/response/ItemProducto;->isNacional()Z

    move-result v8

    move-object/from16 v5, p1

    move/from16 v9, p4

    invoke-static/range {v4 .. v9}, Lcl/santander/smartphone/ServicesManager;->MovimientosTarjetas(Landroid/app/Activity;Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/util/Date;Ljava/util/Date;ZZ)Ljava/util/ArrayList;

    move-result-object v13

    goto :goto_2

    .line 458
    :cond_6
    if-eqz p4, :cond_7

    .line 459
    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/Ultimos_Movimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/Ultimos_Movimientos;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f05015a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/Ultimos_Movimientos;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0500c0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object v8, v15

    invoke-static/range {v4 .. v9}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 460
    :cond_7
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v4, v1}, Lcl/santander/smartphone/Ultimos_Movimientos;->filtraMovimientosCuenta(IZ)V
    :try_end_1
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_1

    .line 466
    :catch_1
    move-exception v11

    .line 467
    .local v11, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    if-eqz p4, :cond_8

    .line 468
    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/Ultimos_Movimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/Ultimos_Movimientos;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f05015c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcl/santander/santanderCL/exceptions/InfoException;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v6

    invoke-virtual {v6}, Lcl/santander/santanderCL/data/response/Info;->getMsgUsuario()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object v8, v15

    invoke-static/range {v4 .. v9}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 469
    :cond_8
    const/4 v4, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v4, v1}, Lcl/santander/smartphone/Ultimos_Movimientos;->filtraMovimientosCuenta(IZ)V

    goto/16 :goto_1

    .line 471
    .end local v11    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v11

    .line 472
    .local v11, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v10, Lcl/santander/smartphone/Ultimos_Movimientos$6;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcl/santander/smartphone/Ultimos_Movimientos$6;-><init>(Lcl/santander/smartphone/Ultimos_Movimientos;)V

    .line 485
    .local v10, "cert":Ljava/lang/Runnable;
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/Ultimos_Movimientos;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0501c6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    .line 486
    .local v8, "s_cert":[Ljava/lang/String;
    invoke-virtual {v11}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 487
    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/Ultimos_Movimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/Ultimos_Movimientos;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0501c4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/Ultimos_Movimientos;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0501c5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Runnable;

    const/16 v16, 0x0

    aput-object v10, v9, v16

    invoke-static/range {v4 .. v9}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1

    .line 489
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/Ultimos_Movimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/Ultimos_Movimientos;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0501c2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/Ultimos_Movimientos;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0501c3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Runnable;

    const/16 v16, 0x0

    aput-object v10, v9, v16

    invoke-static/range {v4 .. v9}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1
.end method

.method private filtraMovimientosCuenta(IZ)V
    .locals 7
    .param p1, "filtro"    # I
    .param p2, "showPD"    # Z

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 320
    iget v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_iFilterSelect:I

    if-eq v1, p1, :cond_1

    .line 322
    packed-switch p1, :pswitch_data_0

    .line 397
    :cond_0
    :goto_0
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_ListMovimientos:Landroid/widget/ListView;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 398
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_ListMovimientos:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setSelection(I)V

    .line 403
    :cond_1
    if-eqz p2, :cond_f

    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_ListMovimientos:Landroid/widget/ListView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->adapterUltimosMovs:Lcl/santander/smartphone/AdapterUltimosMovimientos;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->adapterUltimosMovs:Lcl/santander/smartphone/AdapterUltimosMovimientos;

    invoke-virtual {v1}, Lcl/santander/smartphone/AdapterUltimosMovimientos;->getCount()I

    move-result v1

    if-nez v1, :cond_f

    .line 407
    :cond_2
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->list:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 408
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->empty:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 416
    :cond_3
    :goto_1
    return-void

    .line 325
    :pswitch_0
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->adapterUltimosMovs:Lcl/santander/smartphone/AdapterUltimosMovimientos;

    if-eqz v1, :cond_5

    .line 327
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->adapterUltimosMovs:Lcl/santander/smartphone/AdapterUltimosMovimientos;

    iget-object v2, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->_movAll:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcl/santander/smartphone/AdapterUltimosMovimientos;->setMovimientos(Ljava/util/ArrayList;)V

    .line 328
    if-eqz p2, :cond_4

    .line 329
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->adapterUltimosMovs:Lcl/santander/smartphone/AdapterUltimosMovimientos;

    invoke-virtual {v1}, Lcl/santander/smartphone/AdapterUltimosMovimientos;->notifyDataSetChanged()V

    .line 338
    :cond_4
    :goto_2
    iput v4, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_iFilterSelect:I

    goto :goto_0

    .line 335
    :cond_5
    new-instance v1, Lcl/santander/smartphone/AdapterUltimosMovimientos;

    iget-object v2, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->_movAll:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcl/santander/smartphone/AdapterUltimosMovimientos;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->adapterUltimosMovs:Lcl/santander/smartphone/AdapterUltimosMovimientos;

    .line 336
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_ListMovimientos:Landroid/widget/ListView;

    iget-object v2, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->adapterUltimosMovs:Lcl/santander/smartphone/AdapterUltimosMovimientos;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2

    .line 341
    :pswitch_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->_movFiltrados:Ljava/util/ArrayList;

    .line 342
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->_movAll:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_7

    .line 346
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->adapterUltimosMovs:Lcl/santander/smartphone/AdapterUltimosMovimientos;

    if-eqz v1, :cond_9

    .line 348
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->adapterUltimosMovs:Lcl/santander/smartphone/AdapterUltimosMovimientos;

    iget-object v2, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->_movFiltrados:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcl/santander/smartphone/AdapterUltimosMovimientos;->setMovimientos(Ljava/util/ArrayList;)V

    .line 349
    if-eqz p2, :cond_6

    .line 350
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->adapterUltimosMovs:Lcl/santander/smartphone/AdapterUltimosMovimientos;

    invoke-virtual {v1}, Lcl/santander/smartphone/AdapterUltimosMovimientos;->notifyDataSetChanged()V

    .line 357
    :cond_6
    :goto_4
    iput v5, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_iFilterSelect:I

    goto :goto_0

    .line 343
    :cond_7
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->_movAll:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcl/santander/santanderCL/data/response/ItemMovimiento;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemMovimiento;->getImporteScreen()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 344
    iget-object v2, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->_movFiltrados:Ljava/util/ArrayList;

    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->_movAll:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcl/santander/santanderCL/data/response/ItemMovimiento;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 354
    :cond_9
    new-instance v1, Lcl/santander/smartphone/AdapterUltimosMovimientos;

    iget-object v2, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->_movFiltrados:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcl/santander/smartphone/AdapterUltimosMovimientos;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->adapterUltimosMovs:Lcl/santander/smartphone/AdapterUltimosMovimientos;

    .line 355
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_ListMovimientos:Landroid/widget/ListView;

    iget-object v2, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->adapterUltimosMovs:Lcl/santander/smartphone/AdapterUltimosMovimientos;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_4

    .line 360
    .end local v0    # "i":I
    :pswitch_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->_movFiltrados:Ljava/util/ArrayList;

    .line 361
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->_movAll:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_b

    .line 364
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->adapterUltimosMovs:Lcl/santander/smartphone/AdapterUltimosMovimientos;

    if-eqz v1, :cond_d

    .line 366
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->adapterUltimosMovs:Lcl/santander/smartphone/AdapterUltimosMovimientos;

    iget-object v2, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->_movFiltrados:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcl/santander/smartphone/AdapterUltimosMovimientos;->setMovimientos(Ljava/util/ArrayList;)V

    .line 367
    if-eqz p2, :cond_a

    .line 368
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->adapterUltimosMovs:Lcl/santander/smartphone/AdapterUltimosMovimientos;

    invoke-virtual {v1}, Lcl/santander/smartphone/AdapterUltimosMovimientos;->notifyDataSetChanged()V

    .line 375
    :cond_a
    :goto_6
    const/4 v1, 0x2

    iput v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_iFilterSelect:I

    goto/16 :goto_0

    .line 362
    :cond_b
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->_movAll:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcl/santander/santanderCL/data/response/ItemMovimiento;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemMovimiento;->getImporteScreen()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 363
    iget-object v2, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->_movFiltrados:Ljava/util/ArrayList;

    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->_movAll:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcl/santander/santanderCL/data/response/ItemMovimiento;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 372
    :cond_d
    new-instance v1, Lcl/santander/smartphone/AdapterUltimosMovimientos;

    iget-object v2, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->_movFiltrados:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcl/santander/smartphone/AdapterUltimosMovimientos;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->adapterUltimosMovs:Lcl/santander/smartphone/AdapterUltimosMovimientos;

    .line 373
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_ListMovimientos:Landroid/widget/ListView;

    iget-object v2, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->adapterUltimosMovs:Lcl/santander/smartphone/AdapterUltimosMovimientos;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_6

    .line 379
    .end local v0    # "i":I
    :pswitch_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->_movAll:Ljava/util/ArrayList;

    .line 380
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->adapterUltimosMovs:Lcl/santander/smartphone/AdapterUltimosMovimientos;

    if-eqz v1, :cond_e

    .line 382
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->adapterUltimosMovs:Lcl/santander/smartphone/AdapterUltimosMovimientos;

    iget-object v2, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->_movAll:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcl/santander/smartphone/AdapterUltimosMovimientos;->setMovimientos(Ljava/util/ArrayList;)V

    .line 383
    if-eqz p2, :cond_0

    .line 384
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->adapterUltimosMovs:Lcl/santander/smartphone/AdapterUltimosMovimientos;

    invoke-virtual {v1}, Lcl/santander/smartphone/AdapterUltimosMovimientos;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 390
    :cond_e
    new-instance v1, Lcl/santander/smartphone/AdapterUltimosMovimientos;

    iget-object v2, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->_movAll:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcl/santander/smartphone/AdapterUltimosMovimientos;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->adapterUltimosMovs:Lcl/santander/smartphone/AdapterUltimosMovimientos;

    .line 391
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_ListMovimientos:Landroid/widget/ListView;

    iget-object v2, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->adapterUltimosMovs:Lcl/santander/smartphone/AdapterUltimosMovimientos;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 410
    :cond_f
    if-eqz p2, :cond_3

    .line 413
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->list:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 414
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->empty:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 322
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private filtrado(Ljava/util/Date;)V
    .locals 4
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    const/4 v3, 0x1

    .line 559
    iput-object p1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->_mDesde:Ljava/util/Date;

    .line 561
    new-instance v0, Lcl/santander/smartphone/CustomDatePickerDialog;

    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 562
    new-instance v2, Lcl/santander/smartphone/Ultimos_Movimientos$9;

    invoke-direct {v2, p0}, Lcl/santander/smartphone/Ultimos_Movimientos$9;-><init>(Lcl/santander/smartphone/Ultimos_Movimientos;)V

    .line 561
    invoke-direct {v0, v1, v3, v2, v3}, Lcl/santander/smartphone/CustomDatePickerDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;I)V

    .line 572
    .local v0, "dp":Lcl/santander/smartphone/CustomDatePickerDialog;
    new-instance v1, Lcl/santander/smartphone/Ultimos_Movimientos$10;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/Ultimos_Movimientos$10;-><init>(Lcl/santander/smartphone/Ultimos_Movimientos;)V

    .line 571
    invoke-virtual {v0, v1}, Lcl/santander/smartphone/CustomDatePickerDialog;->setCancelListener(Ljava/lang/Runnable;)V

    .line 581
    new-instance v1, Lcl/santander/smartphone/Ultimos_Movimientos$11;

    invoke-direct {v1, p0, v0}, Lcl/santander/smartphone/Ultimos_Movimientos$11;-><init>(Lcl/santander/smartphone/Ultimos_Movimientos;Lcl/santander/smartphone/CustomDatePickerDialog;)V

    .line 580
    invoke-virtual {v0, v1}, Lcl/santander/smartphone/CustomDatePickerDialog;->setOkListener(Ljava/lang/Runnable;)V

    .line 602
    new-instance v1, Lcl/santander/smartphone/Ultimos_Movimientos$12;

    invoke-direct {v1, p0, v0}, Lcl/santander/smartphone/Ultimos_Movimientos$12;-><init>(Lcl/santander/smartphone/Ultimos_Movimientos;Lcl/santander/smartphone/CustomDatePickerDialog;)V

    .line 601
    invoke-virtual {v0, v1}, Lcl/santander/smartphone/CustomDatePickerDialog;->setUltimosListener(Ljava/lang/Runnable;)V

    .line 614
    invoke-virtual {v0}, Lcl/santander/smartphone/CustomDatePickerDialog;->show()V

    .line 616
    return-void
.end method

.method private filtradoFecha()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 522
    new-instance v0, Lcl/santander/smartphone/CustomDatePickerDialog;

    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Lcl/santander/smartphone/CustomDatePickerDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;I)V

    .line 523
    .local v0, "dp":Lcl/santander/smartphone/CustomDatePickerDialog;
    invoke-virtual {v0, v4}, Lcl/santander/smartphone/CustomDatePickerDialog;->setCancelListener(Ljava/lang/Runnable;)V

    .line 525
    new-instance v1, Lcl/santander/smartphone/Ultimos_Movimientos$7;

    invoke-direct {v1, p0, v0}, Lcl/santander/smartphone/Ultimos_Movimientos$7;-><init>(Lcl/santander/smartphone/Ultimos_Movimientos;Lcl/santander/smartphone/CustomDatePickerDialog;)V

    .line 524
    invoke-virtual {v0, v1}, Lcl/santander/smartphone/CustomDatePickerDialog;->setOkListener(Ljava/lang/Runnable;)V

    .line 541
    new-instance v1, Lcl/santander/smartphone/Ultimos_Movimientos$8;

    invoke-direct {v1, p0, v0}, Lcl/santander/smartphone/Ultimos_Movimientos$8;-><init>(Lcl/santander/smartphone/Ultimos_Movimientos;Lcl/santander/smartphone/CustomDatePickerDialog;)V

    .line 540
    invoke-virtual {v0, v1}, Lcl/santander/smartphone/CustomDatePickerDialog;->setUltimosListener(Ljava/lang/Runnable;)V

    .line 552
    invoke-virtual {v0}, Lcl/santander/smartphone/CustomDatePickerDialog;->show()V

    .line 554
    return-void
.end method

.method private getFechaLimite()Ljava/util/Date;
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 497
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "dd/MM/yyyy"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 498
    .local v2, "hoy":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 499
    .local v1, "dataTemp":[Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 500
    .local v0, "c":Ljava/util/Calendar;
    aget-object v3, v1, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/Calendar;->set(III)V

    .line 501
    const/4 v3, -0x3

    invoke-virtual {v0, v6, v3}, Ljava/util/Calendar;->add(II)V

    .line 503
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    return-object v3
.end method

.method private validaDesde(Ljava/util/Date;)Z
    .locals 2
    .param p1, "desde"    # Ljava/util/Date;

    .prologue
    .line 509
    invoke-direct {p0}, Lcl/santander/smartphone/Ultimos_Movimientos;->getFechaLimite()Ljava/util/Date;

    move-result-object v0

    .line 510
    .local v0, "limiteHasta":Ljava/util/Date;
    invoke-virtual {v0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private validaHasta(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 2
    .param p1, "desde"    # Ljava/util/Date;
    .param p2, "hasta"    # Ljava/util/Date;

    .prologue
    .line 514
    invoke-direct {p0}, Lcl/santander/smartphone/Ultimos_Movimientos;->getFechaLimite()Ljava/util/Date;

    move-result-object v0

    .line 516
    .local v0, "limiteHasta":Ljava/util/Date;
    invoke-virtual {v0, p2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, p2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public initPageAdapter()V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06035c

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/CirclePageIndicator;

    iput-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    .line 106
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06035b

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->vp_pager:Landroid/support/v4/view/ViewPager;

    .line 107
    new-instance v0, Lcl/santander/smartphone/ProductosPageAdapter;

    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-object v2, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-direct {v0, v1, v2}, Lcl/santander/smartphone/ProductosPageAdapter;-><init>(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcl/santander/santanderCL/data/MatrizProductos;)V

    iput-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->pageAdapter:Lcl/santander/smartphone/ProductosPageAdapter;

    .line 108
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->vp_pager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->pageAdapter:Lcl/santander/smartphone/ProductosPageAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 109
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->vp_pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 110
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    const v1, -0xaaaaab

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setFillColor(I)V

    .line 111
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    const v1, -0x222223

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setPageColor(I)V

    .line 112
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    iget v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->id:I

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setCurrentItem(I)V

    .line 113
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {v0, p0}, Lcom/viewpagerindicator/CirclePageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 114
    return-void
.end method

.method public initTabButtons()V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_TabButtons:[Landroid/widget/Button;

    const/4 v1, 0x0

    iget-object v2, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->bt_todos:Landroid/widget/Button;

    aput-object v2, v0, v1

    .line 135
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_TabButtons:[Landroid/widget/Button;

    const/4 v1, 0x1

    iget-object v2, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->bt_abonos:Landroid/widget/Button;

    aput-object v2, v0, v1

    .line 136
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_TabButtons:[Landroid/widget/Button;

    const/4 v1, 0x2

    iget-object v2, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->bt_cargos:Landroid/widget/Button;

    aput-object v2, v0, v1

    .line 137
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x7f06035e

    const/16 v5, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x2

    .line 160
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 161
    invoke-virtual {p0}, Lcl/santander/smartphone/Ultimos_Movimientos;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 162
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 166
    iget v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_tipo_cuenta:I

    if-nez v1, :cond_3

    .line 167
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/Ultimos_Movimientos;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 173
    :cond_0
    :goto_0
    invoke-virtual {p0, v6}, Lcl/santander/smartphone/Ultimos_Movimientos;->setHasOptionsMenu(Z)V

    .line 174
    invoke-virtual {p0}, Lcl/santander/smartphone/Ultimos_Movimientos;->initPageAdapter()V

    .line 175
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_View:Landroid/view/View;

    invoke-static {v1, v2}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 177
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v2, 0x7f060363

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->list:Landroid/widget/LinearLayout;

    .line 178
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v2, 0x7f060365

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->empty:Landroid/widget/LinearLayout;

    .line 180
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v2, 0x7f06035f

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->bt_fecha:Landroid/widget/Button;

    .line 181
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->bt_fecha:Landroid/widget/Button;

    new-instance v2, Lcl/santander/smartphone/Ultimos_Movimientos$1;

    invoke-direct {v2, p0}, Lcl/santander/smartphone/Ultimos_Movimientos$1;-><init>(Lcl/santander/smartphone/Ultimos_Movimientos;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_tipo_cuenta:I

    if-ne v1, v6, :cond_1

    .line 192
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1, v8}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 193
    .local v0, "ll_buscar":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 197
    .end local v0    # "ll_buscar":Landroid/widget/LinearLayout;
    :cond_1
    iget v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_tipo_cuenta:I

    if-ne v1, v4, :cond_2

    .line 199
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1, v8}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 200
    .restart local v0    # "ll_buscar":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 204
    .end local v0    # "ll_buscar":Landroid/widget/LinearLayout;
    :cond_2
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v2, 0x7f060360

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->bt_todos:Landroid/widget/Button;

    .line 205
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->bt_todos:Landroid/widget/Button;

    new-instance v2, Lcl/santander/smartphone/Ultimos_Movimientos$2;

    invoke-direct {v2, p0}, Lcl/santander/smartphone/Ultimos_Movimientos$2;-><init>(Lcl/santander/smartphone/Ultimos_Movimientos;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v2, 0x7f060361

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->bt_abonos:Landroid/widget/Button;

    .line 214
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->bt_abonos:Landroid/widget/Button;

    new-instance v2, Lcl/santander/smartphone/Ultimos_Movimientos$3;

    invoke-direct {v2, p0}, Lcl/santander/smartphone/Ultimos_Movimientos$3;-><init>(Lcl/santander/smartphone/Ultimos_Movimientos;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v2, 0x7f060362

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->bt_cargos:Landroid/widget/Button;

    .line 224
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->bt_cargos:Landroid/widget/Button;

    new-instance v2, Lcl/santander/smartphone/Ultimos_Movimientos$4;

    invoke-direct {v2, p0}, Lcl/santander/smartphone/Ultimos_Movimientos$4;-><init>(Lcl/santander/smartphone/Ultimos_Movimientos;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    invoke-virtual {p0}, Lcl/santander/smartphone/Ultimos_Movimientos;->initTabButtons()V

    .line 232
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcl/santander/smartphone/Ultimos_Movimientos;->setActiveTabButton(I)V

    .line 234
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v2, 0x7f060364

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_ListMovimientos:Landroid/widget/ListView;

    .line 242
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_ListMovimientos:Landroid/widget/ListView;

    check-cast v1, Lcom/markupartist/android/widget/PullToRefreshListView;

    new-instance v2, Lcl/santander/smartphone/Ultimos_Movimientos$5;

    invoke-direct {v2, p0}, Lcl/santander/smartphone/Ultimos_Movimientos$5;-><init>(Lcl/santander/smartphone/Ultimos_Movimientos;)V

    invoke-virtual {v1, v2}, Lcom/markupartist/android/widget/PullToRefreshListView;->setOnRefreshListener(Lcom/markupartist/android/widget/PullToRefreshListView$OnRefreshListener;)V

    .line 250
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_ListMovimientos:Landroid/widget/ListView;

    check-cast v1, Lcom/markupartist/android/widget/PullToRefreshListView;

    .line 251
    const v2, 0x7f050163

    invoke-virtual {p0, v2}, Lcl/santander/smartphone/Ultimos_Movimientos;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f050164

    invoke-virtual {p0, v3}, Lcl/santander/smartphone/Ultimos_Movimientos;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f050165

    invoke-virtual {p0, v4}, Lcl/santander/smartphone/Ultimos_Movimientos;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f050166

    invoke-virtual {p0, v5}, Lcl/santander/smartphone/Ultimos_Movimientos;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 250
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/markupartist/android/widget/PullToRefreshListView;->setTexts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_ListMovimientos:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 259
    iput-object v7, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->adapterUltimosMovs:Lcl/santander/smartphone/AdapterUltimosMovimientos;

    .line 260
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    iget v2, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->id:I

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v1

    invoke-direct {p0, v1, v7, v7, v6}, Lcl/santander/smartphone/Ultimos_Movimientos;->cargaMovimientosCuenta(Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/util/Date;Ljava/util/Date;Z)V

    .line 262
    return-void

    .line 168
    :cond_3
    iget v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_tipo_cuenta:I

    if-ne v1, v6, :cond_4

    .line 169
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/Ultimos_Movimientos;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500dd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 170
    :cond_4
    iget v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_tipo_cuenta:I

    if-ne v1, v4, :cond_0

    .line 171
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/Ultimos_Movimientos;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 101
    :goto_0
    return-object v0

    .line 100
    :cond_0
    const v0, 0x7f030073

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_View:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_View:Landroid/view/View;

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "ide"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x0

    const v5, 0x7f060062

    .line 632
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->adapterUltimosMovs:Lcl/santander/smartphone/AdapterUltimosMovimientos;

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {v1, v2}, Lcl/santander/smartphone/AdapterUltimosMovimientos;->getItem(I)Lcl/santander/santanderCL/data/response/ItemMovimiento;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemMovimiento;->getTipo()Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;->SECCION:Lcl/santander/santanderCL/utils/Constant$TIPO_MOVIMIENTO;

    if-eq v1, v2, :cond_0

    .line 634
    iget v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_tipo_cuenta:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 635
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 636
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    new-instance v1, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;

    iget-object v2, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    iget v3, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->id:I

    invoke-virtual {v2, v3}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v2

    iget-object v3, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->adapterUltimosMovs:Lcl/santander/smartphone/AdapterUltimosMovimientos;

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {v3, v4}, Lcl/santander/smartphone/AdapterUltimosMovimientos;->getItem(I)Lcl/santander/santanderCL/data/response/ItemMovimiento;

    move-result-object v3

    iget v4, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_tipo_cuenta:I

    invoke-direct {v1, v2, v3, v4}, Lcl/santander/smartphone/DetalleUltimosMovimientosTarjeta;-><init>(Lcl/santander/santanderCL/data/response/ItemProducto;Lcl/santander/santanderCL/data/response/ItemMovimiento;I)V

    invoke-virtual {v0, v5, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 637
    invoke-virtual {v0, v6}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 638
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 646
    .end local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 641
    .restart local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    new-instance v1, Lcl/santander/smartphone/DetalleUltimosMovimientos;

    iget-object v2, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    iget v3, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->id:I

    invoke-virtual {v2, v3}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v2

    iget-object v3, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->adapterUltimosMovs:Lcl/santander/smartphone/AdapterUltimosMovimientos;

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {v3, v4}, Lcl/santander/smartphone/AdapterUltimosMovimientos;->getItem(I)Lcl/santander/santanderCL/data/response/ItemMovimiento;

    move-result-object v3

    iget v4, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_tipo_cuenta:I

    invoke-direct {v1, v2, v3, v4}, Lcl/santander/smartphone/DetalleUltimosMovimientos;-><init>(Lcl/santander/santanderCL/data/response/ItemProducto;Lcl/santander/santanderCL/data/response/ItemMovimiento;I)V

    invoke-virtual {v0, v5, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 642
    invoke-virtual {v0, v6}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 643
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 622
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 628
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 625
    :pswitch_0
    iget-object v0, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 622
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 651
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 656
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "pos"    # I

    .prologue
    const/4 v3, 0x0

    .line 662
    :try_start_0
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->refreshTask:Lcl/santander/smartphone/Ultimos_Movimientos$RefreshDataTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->refreshTask:Lcl/santander/smartphone/Ultimos_Movimientos$RefreshDataTask;

    invoke-virtual {v1}, Lcl/santander/smartphone/Ultimos_Movimientos$RefreshDataTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 664
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-static {v1}, Lcl/santander/smartphone/ServicesManager;->showProgress(Landroid/app/Activity;)V

    .line 665
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->refreshTask:Lcl/santander/smartphone/Ultimos_Movimientos$RefreshDataTask;

    invoke-virtual {v1}, Lcl/santander/smartphone/Ultimos_Movimientos$RefreshDataTask;->get()Ljava/lang/Object;

    .line 666
    invoke-static {}, Lcl/santander/smartphone/ServicesManager;->cancelProgress()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 677
    :cond_0
    :goto_0
    iput p1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->id:I

    .line 678
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    iget v2, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->id:I

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v3, v3, v2}, Lcl/santander/smartphone/Ultimos_Movimientos;->cargaMovimientosCuenta(Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/util/Date;Ljava/util/Date;Z)V

    .line 680
    return-void

    .line 669
    :catch_0
    move-exception v0

    .line 671
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 672
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 674
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 145
    sput-object v0, Lcl/santander/smartphone/Global;->documentoVisto:Lcl/santander/santanderCL/data/response/ItemCheque;

    .line 146
    sput-object v0, Lcl/santander/smartphone/Global;->cuentaChequeVer:Lcl/santander/santanderCL/data/response/ItemProducto;

    .line 147
    sput-object v0, Lcl/santander/smartphone/Global;->itemChequeVer:Lcl/santander/santanderCL/data/response/ItemChequeAsociado;

    .line 148
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 149
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 155
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onStart()V

    .line 156
    return-void
.end method

.method public setActiveTabButton(I)V
    .locals 4
    .param p1, "_opc"    # I

    .prologue
    const/4 v3, 0x1

    .line 117
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_TabButtons:[Landroid/widget/Button;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 122
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_TabButtons:[Landroid/widget/Button;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 128
    invoke-direct {p0, p1, v3}, Lcl/santander/smartphone/Ultimos_Movimientos;->filtraMovimientosCuenta(IZ)V

    .line 130
    return-void

    .line 119
    :cond_0
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_TabButtons:[Landroid/widget/Button;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_1
    if-ne p1, v0, :cond_2

    .line 125
    iget-object v1, p0, Lcl/santander/smartphone/Ultimos_Movimientos;->m_TabButtons:[Landroid/widget/Button;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 122
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
