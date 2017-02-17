.class public Lcl/santander/smartphone/InversionesAccionesVentaValidar;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "InversionesAccionesVentaValidar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/santander/smartphone/InversionesAccionesVentaValidar$CustomTextWatcher;
    }
.end annotation


# instance fields
.field bt_confirmar:Landroid/widget/Button;

.field bt_terminos:Landroid/widget/Button;

.field cantidadAcciones:Ljava/lang/String;

.field carteraSeleccionada:Lcl/santander/santanderCL/data/response/ItemCartera;

.field cb_terminos_condiciones:Landroid/widget/CheckBox;

.field private celular:Ljava/lang/String;

.field private comision:Ljava/lang/String;

.field condiciones_aceptadas:Z

.field private cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

.field datosVenta:Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;

.field private derechos:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field et_coord1:Landroid/widget/EditText;

.field et_coord2:Landroid/widget/EditText;

.field et_coord3:Landroid/widget/EditText;

.field et_email:Landroid/widget/EditText;

.field et_telefono:Landroid/widget/EditText;

.field private gastos:Ljava/lang/String;

.field private iva:Ljava/lang/String;

.field m_View:Landroid/view/View;

.field numeroDias:I

.field private pageAdapterOrigen:Lcl/santander/smartphone/ProductosPageAdapter;

.field precioDB:D

.field precioFinal:D

.field private recibirFinal:D

.field sf:Lcom/actionbarsherlock/app/SherlockFragment;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;

.field tarj_coord1:Ljava/lang/String;

.field tarj_coord2:Ljava/lang/String;

.field tarj_coord3:Ljava/lang/String;

.field tipo_precio:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$TIPOS_PRECIO;

.field tv_cantidad_acciones:Landroid/widget/TextView;

.field tv_comision_corredora:Landroid/widget/TextView;

.field tv_coord1:Landroid/widget/TextView;

.field tv_coord2:Landroid/widget/TextView;

.field tv_coord3:Landroid/widget/TextView;

.field tv_derecho_bolsa:Landroid/widget/TextView;

.field tv_gasto_total_estimado:Landroid/widget/TextView;

.field tv_instrucciones:Landroid/widget/TextView;

.field tv_iva:Landroid/widget/TextView;

.field tv_monto_estimado_recibir:Landroid/widget/TextView;

.field tv_monto_vender_estimado:Landroid/widget/TextView;

.field tv_precio:Landroid/widget/TextView;

.field tv_tipo_precio:Landroid/widget/TextView;

.field tv_valor:Landroid/widget/TextView;

.field vp_cuentas:Landroid/support/v4/view/ViewPager;

.field vpi_cuentas:Lcom/viewpagerindicator/CirclePageIndicator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;Lcl/santander/santanderCL/data/response/ItemCartera;Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$TIPOS_PRECIO;DDILjava/lang/String;)V
    .locals 1
    .param p1, "datos_venta_solicitud"    # Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;
    .param p2, "carteraSeleccionada"    # Lcl/santander/santanderCL/data/response/ItemCartera;
    .param p3, "tipo_precio"    # Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$TIPOS_PRECIO;
    .param p4, "precioDB2"    # D
    .param p6, "precioFinal2"    # D
    .param p8, "numero_dias"    # I
    .param p9, "cantidad_acciones"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 133
    iput-object p1, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->datosVenta:Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;

    .line 134
    iput-object p2, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->carteraSeleccionada:Lcl/santander/santanderCL/data/response/ItemCartera;

    .line 135
    iput-wide p6, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->precioFinal:D

    .line 136
    iput p8, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->numeroDias:I

    .line 137
    iput-object p9, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->cantidadAcciones:Ljava/lang/String;

    .line 138
    iput-object p3, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tipo_precio:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$TIPOS_PRECIO;

    .line 139
    iput-wide p4, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->precioDB:D

    .line 141
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->datosVenta:Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;

    invoke-virtual {v0}, Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;->getCoordenada1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tarj_coord1:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->datosVenta:Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;

    invoke-virtual {v0}, Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;->getCoordenada2()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tarj_coord2:Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->datosVenta:Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;

    invoke-virtual {v0}, Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;->getCoordenada3()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tarj_coord3:Ljava/lang/String;

    .line 145
    return-void
.end method

.method private Confirmar()V
    .locals 34

    .prologue
    .line 553
    new-instance v32, Lcl/santander/smartphone/InversionesAccionesVentaValidar$8;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcl/santander/smartphone/InversionesAccionesVentaValidar$8;-><init>(Lcl/santander/smartphone/InversionesAccionesVentaValidar;)V

    .line 561
    .local v32, "run":Ljava/lang/Runnable;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v33, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f05002d

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v33, v2

    .line 562
    .local v33, "s":[Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->getCoords(I)Ljava/lang/String;

    move-result-object v4

    .line 563
    .local v4, "c1":Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->getCoords(I)Ljava/lang/String;

    move-result-object v5

    .line 564
    .local v5, "c2":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->getCoords(I)Ljava/lang/String;

    move-result-object v6

    .line 565
    .local v6, "c3":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->et_email:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v16

    .line 566
    .local v16, "email":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->et_telefono:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v15

    .line 571
    .local v15, "telefono":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->vp_cuentas:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v7

    invoke-virtual {v3, v7}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->datosVenta:Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;

    invoke-virtual {v7}, Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;->getCuentaCustodia()Ljava/lang/String;

    move-result-object v7

    .line 572
    move-object/from16 v0, p0

    iget-object v8, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->carteraSeleccionada:Lcl/santander/santanderCL/data/response/ItemCartera;

    invoke-virtual {v8}, Lcl/santander/santanderCL/data/response/ItemCartera;->getCuentaNemo()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->cantidadAcciones:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->precioDB:D

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->recibirFinal:D

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tipo_precio:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$TIPOS_PRECIO;

    invoke-virtual {v12}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$TIPOS_PRECIO;->toString()Ljava/lang/String;

    move-result-object v12

    .line 573
    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v14, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->numeroDias:I

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v14}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v14

    .line 570
    invoke-static/range {v2 .. v16}, Lcl/santander/smartphone/ServicesManager;->AccionesVentaConfirmarr(Landroid/app/Activity;Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcl/santander/santanderCL/response/AccionesVentaConfirmaResponse;

    move-result-object v31

    .line 575
    .local v31, "resp":Lcl/santander/santanderCL/response/AccionesVentaConfirmaResponse;
    if-eqz v31, :cond_0

    .line 578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v30

    .line 579
    .local v30, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f060062

    new-instance v17, Lcl/santander/smartphone/InversionesAccionesVentaReport;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->precioDB:D

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->precioFinal:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->recibirFinal:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->cantidadAcciones:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->carteraSeleccionada:Lcl/santander/santanderCL/data/response/ItemCartera;

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemCartera;->getCuentaNemoScreen()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tipo_precio:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$TIPOS_PRECIO;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->vp_cuentas:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v7

    invoke-virtual {v3, v7}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v3

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContratoScreen()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v17 .. v27}, Lcl/santander/smartphone/InversionesAccionesVentaReport;-><init>(DDDLjava/lang/String;Ljava/lang/String;Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$TIPOS_PRECIO;Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 580
    const/4 v2, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 581
    invoke-virtual/range {v30 .. v30}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 617
    .end local v30    # "ft":Landroid/support/v4/app/FragmentTransaction;
    .end local v31    # "resp":Lcl/santander/santanderCL/response/AccionesVentaConfirmaResponse;
    :goto_0
    return-void

    .line 586
    .restart local v31    # "resp":Lcl/santander/santanderCL/response/AccionesVentaConfirmaResponse;
    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05015a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v2, 0x1

    new-array v12, v2, [Ljava/lang/Runnable;

    const/4 v2, 0x0

    aput-object v32, v12, v2

    move-object/from16 v11, v33

    invoke-static/range {v7 .. v12}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 591
    .end local v31    # "resp":Lcl/santander/santanderCL/response/AccionesVentaConfirmaResponse;
    :catch_0
    move-exception v29

    .line 592
    .local v29, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05015b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v29 .. v29}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v2, 0x1

    new-array v12, v2, [Ljava/lang/Runnable;

    const/4 v2, 0x0

    aput-object v32, v12, v2

    move-object/from16 v11, v33

    invoke-static/range {v7 .. v12}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 594
    .end local v29    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v29

    .line 595
    .local v29, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05015c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v29 .. v29}, Lcl/santander/santanderCL/exceptions/InfoException;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/Info;->getMsgUsuario()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v2, 0x1

    new-array v12, v2, [Ljava/lang/Runnable;

    const/4 v2, 0x0

    aput-object v32, v12, v2

    move-object/from16 v11, v33

    invoke-static/range {v7 .. v12}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 597
    .end local v29    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v29

    .line 598
    .local v29, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v28, Lcl/santander/smartphone/InversionesAccionesVentaValidar$9;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcl/santander/smartphone/InversionesAccionesVentaValidar$9;-><init>(Lcl/santander/smartphone/InversionesAccionesVentaValidar;)V

    .line 611
    .local v28, "cert":Ljava/lang/Runnable;
    const/4 v2, 0x1

    new-array v11, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f0501c6

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v2

    .line 612
    .local v11, "s_cert":[Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 613
    move-object/from16 v0, p0

    iget-object v7, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v2, 0x1

    new-array v12, v2, [Ljava/lang/Runnable;

    const/4 v2, 0x0

    aput-object v28, v12, v2

    invoke-static/range {v7 .. v12}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 615
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v2, 0x1

    new-array v12, v2, [Ljava/lang/Runnable;

    const/4 v2, 0x0

    aput-object v28, v12, v2

    invoke-static/range {v7 .. v12}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method private RecargaDesafioCoordenadas()V
    .locals 15

    .prologue
    .line 299
    new-instance v14, Lcl/santander/smartphone/InversionesAccionesVentaValidar$4;

    invoke-direct {v14, p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar$4;-><init>(Lcl/santander/smartphone/InversionesAccionesVentaValidar;)V

    .line 307
    .local v14, "run":Ljava/lang/Runnable;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 312
    .local v4, "s":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    sget-object v1, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v1}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcl/santander/smartphone/ServicesManager;->AccionesVentaSolicitud(Landroid/app/Activity;Ljava/lang/String;)Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;

    move-result-object v13

    .line 314
    .local v13, "resp":Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;
    if-eqz v13, :cond_0

    .line 318
    iput-object v13, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->datosVenta:Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;

    .line 319
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->datosVenta:Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;

    invoke-virtual {v0}, Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;->getCoordenada1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tarj_coord1:Ljava/lang/String;

    .line 320
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->datosVenta:Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;

    invoke-virtual {v0}, Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;->getCoordenada2()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tarj_coord2:Ljava/lang/String;

    .line 321
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->datosVenta:Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;

    invoke-virtual {v0}, Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;->getCoordenada3()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tarj_coord3:Ljava/lang/String;

    .line 323
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->rellenaDatos()V

    .line 359
    .end local v13    # "resp":Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;
    :goto_0
    return-void

    .line 328
    .restart local v13    # "resp":Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Runnable;

    const/4 v6, 0x0

    aput-object v14, v5, v6

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 333
    .end local v13    # "resp":Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;
    :catch_0
    move-exception v12

    .line 334
    .local v12, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Runnable;

    const/4 v6, 0x0

    aput-object v14, v5, v6

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 336
    .end local v12    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v12

    .line 337
    .local v12, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/InfoException;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/Info;->getMsgUsuario()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Runnable;

    const/4 v6, 0x0

    aput-object v14, v5, v6

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 339
    .end local v12    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v12

    .line 340
    .local v12, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v11, Lcl/santander/smartphone/InversionesAccionesVentaValidar$5;

    invoke-direct {v11, p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar$5;-><init>(Lcl/santander/smartphone/InversionesAccionesVentaValidar;)V

    .line 353
    .local v11, "cert":Ljava/lang/Runnable;
    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    .line 354
    .local v9, "s_cert":[Ljava/lang/String;
    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    iget-object v5, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v0, 0x1

    new-array v10, v0, [Ljava/lang/Runnable;

    const/4 v0, 0x0

    aput-object v11, v10, v0

    invoke-static/range {v5 .. v10}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 357
    :cond_1
    iget-object v5, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v0, 0x1

    new-array v10, v0, [Ljava/lang/Runnable;

    const/4 v0, 0x0

    aput-object v11, v10, v0

    invoke-static/range {v5 .. v10}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method private Validar()V
    .locals 15

    .prologue
    .line 487
    new-instance v14, Lcl/santander/smartphone/InversionesAccionesVentaValidar$6;

    invoke-direct {v14, p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar$6;-><init>(Lcl/santander/smartphone/InversionesAccionesVentaValidar;)V

    .line 495
    .local v14, "run":Ljava/lang/Runnable;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 500
    .local v4, "s":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    sget-object v1, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v1}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->datosVenta:Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;->getCuentaCustodia()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcl/santander/smartphone/ServicesManager;->AccionesVentaValidar(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcl/santander/santanderCL/response/AccionesVentaValidaResponse;

    move-result-object v13

    .line 502
    .local v13, "resp":Lcl/santander/santanderCL/response/AccionesVentaValidaResponse;
    if-eqz v13, :cond_0

    .line 504
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/AccionesVentaValidaResponse;->getEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->email:Ljava/lang/String;

    .line 505
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/AccionesVentaValidaResponse;->getIva()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->iva:Ljava/lang/String;

    .line 506
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/AccionesVentaValidaResponse;->getnComision()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->comision:Ljava/lang/String;

    .line 507
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/AccionesVentaValidaResponse;->getnDerechos()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->derechos:Ljava/lang/String;

    .line 508
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/AccionesVentaValidaResponse;->getnGastos()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->gastos:Ljava/lang/String;

    .line 509
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/AccionesVentaValidaResponse;->getNumCelular()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->celular:Ljava/lang/String;

    .line 510
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/AccionesVentaValidaResponse;->getCaptaciones()Lcl/santander/santanderCL/data/MatrizProductos;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    .line 512
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->rellenaDatos()V

    .line 548
    .end local v13    # "resp":Lcl/santander/santanderCL/response/AccionesVentaValidaResponse;
    :goto_0
    return-void

    .line 517
    .restart local v13    # "resp":Lcl/santander/santanderCL/response/AccionesVentaValidaResponse;
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Runnable;

    const/4 v6, 0x0

    aput-object v14, v5, v6

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 522
    .end local v13    # "resp":Lcl/santander/santanderCL/response/AccionesVentaValidaResponse;
    :catch_0
    move-exception v12

    .line 523
    .local v12, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Runnable;

    const/4 v6, 0x0

    aput-object v14, v5, v6

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 525
    .end local v12    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v12

    .line 526
    .local v12, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/InfoException;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/Info;->getMsgUsuario()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Runnable;

    const/4 v6, 0x0

    aput-object v14, v5, v6

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 528
    .end local v12    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v12

    .line 529
    .local v12, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v11, Lcl/santander/smartphone/InversionesAccionesVentaValidar$7;

    invoke-direct {v11, p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar$7;-><init>(Lcl/santander/smartphone/InversionesAccionesVentaValidar;)V

    .line 542
    .local v11, "cert":Ljava/lang/Runnable;
    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    .line 543
    .local v9, "s_cert":[Ljava/lang/String;
    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    iget-object v5, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v0, 0x1

    new-array v10, v0, [Ljava/lang/Runnable;

    const/4 v0, 0x0

    aput-object v11, v10, v0

    invoke-static/range {v5 .. v10}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 546
    :cond_1
    iget-object v5, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v0, 0x1

    new-array v10, v0, [Ljava/lang/Runnable;

    const/4 v0, 0x0

    aput-object v11, v10, v0

    invoke-static/range {v5 .. v10}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method static synthetic access$0(Lcl/santander/smartphone/InversionesAccionesVentaValidar;)V
    .locals 0

    .prologue
    .line 550
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->Confirmar()V

    return-void
.end method

.method static synthetic access$1(Lcl/santander/smartphone/InversionesAccionesVentaValidar;)V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->RecargaDesafioCoordenadas()V

    return-void
.end method

.method private initComponents()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 181
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060153

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tv_coord1:Landroid/widget/TextView;

    .line 182
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060154

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tv_coord2:Landroid/widget/TextView;

    .line 183
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060155

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tv_coord3:Landroid/widget/TextView;

    .line 185
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060152

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tv_instrucciones:Landroid/widget/TextView;

    .line 187
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06013f

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tv_cantidad_acciones:Landroid/widget/TextView;

    .line 188
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060142

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tv_comision_corredora:Landroid/widget/TextView;

    .line 189
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060143

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tv_derecho_bolsa:Landroid/widget/TextView;

    .line 190
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060145

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tv_gasto_total_estimado:Landroid/widget/TextView;

    .line 191
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060144

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tv_iva:Landroid/widget/TextView;

    .line 192
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060146

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tv_monto_estimado_recibir:Landroid/widget/TextView;

    .line 193
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06013e

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tv_monto_vender_estimado:Landroid/widget/TextView;

    .line 194
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060140

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tv_tipo_precio:Landroid/widget/TextView;

    .line 195
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060141

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tv_precio:Landroid/widget/TextView;

    .line 196
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06013d

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tv_valor:Landroid/widget/TextView;

    .line 198
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06014b

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->et_email:Landroid/widget/EditText;

    .line 199
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06014c

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->et_telefono:Landroid/widget/EditText;

    .line 201
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060159

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->bt_confirmar:Landroid/widget/Button;

    .line 202
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060150

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->bt_terminos:Landroid/widget/Button;

    .line 205
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060148

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->vp_cuentas:Landroid/support/v4/view/ViewPager;

    .line 206
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060149

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/CirclePageIndicator;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->vpi_cuentas:Lcom/viewpagerindicator/CirclePageIndicator;

    .line 208
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06014f

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->cb_terminos_condiciones:Landroid/widget/CheckBox;

    .line 211
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->cb_terminos_condiciones:Landroid/widget/CheckBox;

    new-instance v1, Lcl/santander/smartphone/InversionesAccionesVentaValidar$1;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar$1;-><init>(Lcl/santander/smartphone/InversionesAccionesVentaValidar;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 222
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->vpi_cuentas:Lcom/viewpagerindicator/CirclePageIndicator;

    const v1, -0xaaaaab

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setFillColor(I)V

    .line 223
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->vpi_cuentas:Lcom/viewpagerindicator/CirclePageIndicator;

    const v1, -0x222223

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setPageColor(I)V

    .line 226
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->bt_terminos:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/InversionesAccionesVentaValidar$2;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar$2;-><init>(Lcl/santander/smartphone/InversionesAccionesVentaValidar;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->bt_confirmar:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 245
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->bt_confirmar:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/InversionesAccionesVentaValidar$3;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar$3;-><init>(Lcl/santander/smartphone/InversionesAccionesVentaValidar;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06014d

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->et_coord1:Landroid/widget/EditText;

    .line 254
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->et_coord1:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 255
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->et_coord1:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 256
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->et_coord1:Landroid/widget/EditText;

    new-instance v1, Lcl/santander/smartphone/InversionesAccionesVentaValidar$CustomTextWatcher;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar$CustomTextWatcher;-><init>(Lcl/santander/smartphone/InversionesAccionesVentaValidar;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 257
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060156

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->et_coord2:Landroid/widget/EditText;

    .line 258
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->et_coord2:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 259
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->et_coord2:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 260
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->et_coord2:Landroid/widget/EditText;

    new-instance v1, Lcl/santander/smartphone/InversionesAccionesVentaValidar$CustomTextWatcher;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar$CustomTextWatcher;-><init>(Lcl/santander/smartphone/InversionesAccionesVentaValidar;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 261
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060157

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->et_coord3:Landroid/widget/EditText;

    .line 262
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->et_coord3:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 263
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->et_coord3:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 264
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->et_coord3:Landroid/widget/EditText;

    new-instance v1, Lcl/santander/smartphone/InversionesAccionesVentaValidar$CustomTextWatcher;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar$CustomTextWatcher;-><init>(Lcl/santander/smartphone/InversionesAccionesVentaValidar;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 266
    return-void
.end method

.method private rellenaDatos()V
    .locals 29

    .prologue
    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tv_cantidad_acciones:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->cantidadAcciones:Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tv_coord1:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tarj_coord1:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tv_coord2:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tarj_coord2:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tv_coord3:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tarj_coord3:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tv_valor:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->carteraSeleccionada:Lcl/santander/santanderCL/data/response/ItemCartera;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcl/santander/santanderCL/data/response/ItemCartera;->getCuentaNemoScreen()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tv_monto_vender_estimado:Landroid/widget/TextView;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->precioFinal:D

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    sget-object v27, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Lcl/santander/santanderCL/utils/Utils;->parseImporteConDivisa(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tv_cantidad_acciones:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->cantidadAcciones:Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tipo_precio:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$TIPOS_PRECIO;

    move-object/from16 v25, v0

    sget-object v26, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$TIPOS_PRECIO;->L:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$TIPOS_PRECIO;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tv_tipo_precio:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0c0004

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    aget-object v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tv_precio:Landroid/widget/TextView;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->precioDB:D

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    sget-object v27, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    const/16 v28, 0x2

    invoke-static/range {v26 .. v28}, Lcl/santander/santanderCL/utils/Utils;->parseImporteConDivisa(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    const-wide/16 v11, 0x0

    .line 391
    .local v11, "comisionfinal":D
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->comision:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 392
    .local v8, "comisionLN":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->precioFinal:D

    move-wide/from16 v25, v0

    mul-double v11, v8, v25

    .line 393
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    sget-object v26, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Lcl/santander/santanderCL/utils/Utils;->parseImporteConDivisa(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 394
    .local v10, "comisionSN":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tv_comision_corredora:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    .end local v8    # "comisionLN":D
    .end local v10    # "comisionSN":Ljava/lang/String;
    :goto_1
    const-wide/16 v6, 0x0

    .line 405
    .local v6, "bolsafinal":D
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->derechos:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 406
    .local v3, "bolsaLN":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->precioFinal:D

    move-wide/from16 v25, v0

    mul-double v6, v3, v25

    .line 407
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    sget-object v26, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Lcl/santander/santanderCL/utils/Utils;->parseImporteConDivisa(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 408
    .local v5, "bolsaSN":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tv_derecho_bolsa:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 416
    .end local v3    # "bolsaLN":D
    .end local v5    # "bolsaSN":Ljava/lang/String;
    :goto_2
    const-wide/16 v20, 0x0

    .line 418
    .local v20, "ivafinal":D
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->iva:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v17

    .line 419
    .local v17, "ivaLN":D
    add-double v25, v11, v6

    mul-double v20, v25, v17

    .line 420
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    sget-object v26, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Lcl/santander/santanderCL/utils/Utils;->parseImporteConDivisa(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    .line 421
    .local v19, "ivaSN":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tv_iva:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 430
    .end local v17    # "ivaLN":D
    .end local v19    # "ivaSN":Ljava/lang/String;
    :goto_3
    const-wide/16 v15, 0x0

    .line 434
    .local v15, "gastofinal":D
    add-double v25, v11, v6

    add-double v15, v25, v20

    .line 435
    :try_start_3
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    sget-object v26, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Lcl/santander/santanderCL/utils/Utils;->parseImporteConDivisa(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 436
    .local v14, "gastoSN":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tv_gasto_total_estimado:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 445
    .end local v14    # "gastoSN":Ljava/lang/String;
    :goto_4
    const-wide/16 v23, 0x0

    .line 448
    .local v23, "montofinal":D
    :try_start_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->precioFinal:D

    move-wide/from16 v25, v0

    sub-double v23, v25, v15

    .line 449
    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->recibirFinal:D

    .line 450
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    sget-object v26, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Lcl/santander/santanderCL/utils/Utils;->parseImporteConDivisa(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    .line 451
    .local v22, "montoSN":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tv_monto_estimado_recibir:Landroid/widget/TextView;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, " (Incluye Comisiones y considera precio l\u00edmite o precio actual referencial informado)"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 463
    .end local v22    # "montoSN":Ljava/lang/String;
    :goto_5
    new-instance v25, Lcl/santander/smartphone/ProductosPageAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    move-object/from16 v27, v0

    invoke-direct/range {v25 .. v27}, Lcl/santander/smartphone/ProductosPageAdapter;-><init>(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcl/santander/santanderCL/data/MatrizProductos;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->pageAdapterOrigen:Lcl/santander/smartphone/ProductosPageAdapter;

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->vp_cuentas:Landroid/support/v4/view/ViewPager;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->pageAdapterOrigen:Lcl/santander/smartphone/ProductosPageAdapter;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->vpi_cuentas:Lcom/viewpagerindicator/CirclePageIndicator;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->vp_cuentas:Landroid/support/v4/view/ViewPager;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->et_email:Landroid/widget/EditText;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->email:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->et_telefono:Landroid/widget/EditText;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->celular:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tv_instrucciones:Landroid/widget/TextView;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f050070

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 476
    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->datosVenta:Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;->getNumeroTarjetaScreen()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f050071

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 475
    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    return-void

    .line 383
    .end local v6    # "bolsafinal":D
    .end local v11    # "comisionfinal":D
    .end local v15    # "gastofinal":D
    .end local v20    # "ivafinal":D
    .end local v23    # "montofinal":D
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tv_tipo_precio:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0c0004

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x2

    aget-object v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 396
    .restart local v11    # "comisionfinal":D
    :catch_0
    move-exception v13

    .line 398
    .local v13, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tv_comision_corredora:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const-string v26, "-"

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 410
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v6    # "bolsafinal":D
    :catch_1
    move-exception v13

    .line 412
    .restart local v13    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tv_derecho_bolsa:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const-string v26, "-"

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 423
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v20    # "ivafinal":D
    :catch_2
    move-exception v13

    .line 425
    .restart local v13    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tv_iva:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const-string v26, "-"

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 438
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v15    # "gastofinal":D
    :catch_3
    move-exception v13

    .line 440
    .restart local v13    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tv_gasto_total_estimado:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const-string v26, "-"

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 453
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v23    # "montofinal":D
    :catch_4
    move-exception v13

    .line 455
    .restart local v13    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->tv_monto_estimado_recibir:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const-string v26, "-"

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method


# virtual methods
.method public cambiafoco()V
    .locals 3

    .prologue
    .line 666
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->et_coord1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 667
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->et_coord2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 668
    :cond_1
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->et_coord2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 669
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->et_coord3:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 670
    :cond_2
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->et_coord3:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 671
    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 672
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->et_coord3:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 673
    iget-boolean v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->condiciones_aceptadas:Z

    if-eqz v1, :cond_3

    .line 674
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->bt_confirmar:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 675
    :cond_3
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->m_View:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method public getCoords(I)Ljava/lang/String;
    .locals 3
    .param p1, "_coord"    # I

    .prologue
    .line 268
    const-string v0, ""

    .line 269
    .local v0, "resultado":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 288
    :goto_0
    return-object v0

    .line 271
    :pswitch_0
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->et_coord1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->et_coord1:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 275
    :pswitch_1
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->et_coord2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->et_coord2:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 279
    :pswitch_2
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->et_coord3:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->et_coord3:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->bt_confirmar:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 269
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 161
    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 162
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 163
    const/4 v0, 0x2

    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050171

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->setHasOptionsMenu(Z)V

    .line 170
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->m_View:Landroid/view/View;

    invoke-static {v0, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 173
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->initComponents()V

    .line 175
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->Validar()V

    .line 177
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 152
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 154
    :goto_0
    return-object v0

    .line 153
    :cond_0
    const v0, 0x7f030037

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->m_View:Landroid/view/View;

    .line 154
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->m_View:Landroid/view/View;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 621
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 627
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 624
    :pswitch_0
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 621
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
