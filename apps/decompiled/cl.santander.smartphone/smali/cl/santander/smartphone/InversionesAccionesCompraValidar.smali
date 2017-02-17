.class public Lcl/santander/smartphone/InversionesAccionesCompraValidar;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "InversionesAccionesCompraValidar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/santander/smartphone/InversionesAccionesCompraValidar$CustomTextWatcher;
    }
.end annotation


# instance fields
.field private accionSeleccionada:Lcl/santander/santanderCL/data/response/ItemAccionCompra;

.field bt_confirmar:Landroid/widget/Button;

.field bt_terminos:Landroid/widget/Button;

.field cantidad_comprar:Ljava/lang/String;

.field cb_terminos_condiciones:Landroid/widget/CheckBox;

.field private celular:Ljava/lang/String;

.field private comision:Ljava/lang/String;

.field condiciones_aceptadas:Z

.field private cuentaCustodia:Ljava/lang/String;

.field private cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

.field private derechos:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field et_coord1:Landroid/widget/EditText;

.field et_coord2:Landroid/widget/EditText;

.field et_coord3:Landroid/widget/EditText;

.field et_email:Landroid/widget/EditText;

.field et_telefono:Landroid/widget/EditText;

.field private gTotal:I

.field private gastos:Ljava/lang/String;

.field private input:Landroid/view/inputmethod/InputMethodManager;

.field limite_precio:Ljava/lang/String;

.field m_View:Landroid/view/View;

.field monto_comprar:Ljava/lang/String;

.field monto_o_cantidad:I

.field private monto_total_comprar:D

.field numeroDias:I

.field private pageAdapterOrigen:Lcl/santander/smartphone/ProductosPageAdapter;

.field sf:Lcom/actionbarsherlock/app/SherlockFragment;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;

.field tarj_coord1:Ljava/lang/String;

.field tarj_coord2:Ljava/lang/String;

.field tarj_coord3:Ljava/lang/String;

.field private tarjeta:Ljava/lang/String;

.field tipo_precio:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$TIPOS_PRECIO;

.field tv_cantidad_acciones:Landroid/widget/TextView;

.field tv_comision_corredora:Landroid/widget/TextView;

.field tv_coord1:Landroid/widget/TextView;

.field tv_coord2:Landroid/widget/TextView;

.field tv_coord3:Landroid/widget/TextView;

.field tv_derecho_bolsa:Landroid/widget/TextView;

.field tv_gasto_total:Landroid/widget/TextView;

.field tv_instrucciones:Landroid/widget/TextView;

.field tv_monto_comprar:Landroid/widget/TextView;

.field tv_monto_pagar:Landroid/widget/TextView;

.field tv_precio:Landroid/widget/TextView;

.field tv_tipo_precio:Landroid/widget/TextView;

.field tv_valor:Landroid/widget/TextView;

.field vp_cuentas:Landroid/support/v4/view/ViewPager;

.field vpi_cuentas:Lcom/viewpagerindicator/CirclePageIndicator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcl/santander/santanderCL/data/response/ItemAccionCompra;Ljava/lang/String;ILcl/santander/smartphone/InversionesAccionesCompraSolicitud$TIPOS_PRECIO;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "accionSeleccionada"    # Lcl/santander/santanderCL/data/response/ItemAccionCompra;
    .param p2, "cuenta_custodia2"    # Ljava/lang/String;
    .param p3, "monto_o_cantidad2"    # I
    .param p4, "tipo_precio2"    # Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$TIPOS_PRECIO;
    .param p5, "numero_dias"    # I
    .param p6, "monto_acciones"    # Ljava/lang/String;
    .param p7, "limite"    # Ljava/lang/String;
    .param p8, "mail"    # Ljava/lang/String;
    .param p9, "telf"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 141
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 144
    iput-object p1, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->accionSeleccionada:Lcl/santander/santanderCL/data/response/ItemAccionCompra;

    .line 145
    iput-object p2, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->cuentaCustodia:Ljava/lang/String;

    .line 147
    iput-object p8, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->email:Ljava/lang/String;

    .line 148
    iput-object p9, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->celular:Ljava/lang/String;

    .line 151
    iput p3, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->monto_o_cantidad:I

    .line 153
    iget v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->monto_o_cantidad:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 155
    iput-object p6, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->monto_comprar:Ljava/lang/String;

    .line 156
    iput-object v2, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->cantidad_comprar:Ljava/lang/String;

    .line 165
    :goto_0
    iput-object p4, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tipo_precio:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$TIPOS_PRECIO;

    .line 167
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tipo_precio:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$TIPOS_PRECIO;

    sget-object v1, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$TIPOS_PRECIO;->L:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$TIPOS_PRECIO;

    if-ne v0, v1, :cond_1

    .line 168
    iput-object p7, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->limite_precio:Ljava/lang/String;

    .line 172
    :goto_1
    iput p5, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->numeroDias:I

    .line 174
    return-void

    .line 160
    :cond_0
    iput-object p6, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->cantidad_comprar:Ljava/lang/String;

    .line 161
    iput-object v2, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->monto_comprar:Ljava/lang/String;

    goto :goto_0

    .line 170
    :cond_1
    iput-object v2, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->limite_precio:Ljava/lang/String;

    goto :goto_1
.end method

.method private Confirmar()V
    .locals 35

    .prologue
    .line 642
    new-instance v33, Lcl/santander/smartphone/InversionesAccionesCompraValidar$6;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcl/santander/smartphone/InversionesAccionesCompraValidar$6;-><init>(Lcl/santander/smartphone/InversionesAccionesCompraValidar;)V

    .line 650
    .local v33, "run":Ljava/lang/Runnable;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v34, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v34, v2

    .line 651
    .local v34, "s":[Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->getCoords(I)Ljava/lang/String;

    move-result-object v14

    .line 652
    .local v14, "c1":Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->getCoords(I)Ljava/lang/String;

    move-result-object v15

    .line 653
    .local v15, "c2":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->getCoords(I)Ljava/lang/String;

    move-result-object v16

    .line 654
    .local v16, "c3":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->et_email:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v18

    .line 655
    .local v18, "email":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->et_telefono:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v17

    .line 660
    .local v17, "telefono":Ljava/lang/String;
    :try_start_0
    const-string v6, ""

    .line 661
    .local v6, "precio":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tipo_precio:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$TIPOS_PRECIO;

    sget-object v3, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$TIPOS_PRECIO;->L:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$TIPOS_PRECIO;

    if-ne v2, v3, :cond_0

    .line 662
    move-object/from16 v0, p0

    iget-object v6, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->limite_precio:Ljava/lang/String;

    .line 667
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->cuentaCustodia:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->accionSeleccionada:Lcl/santander/santanderCL/data/response/ItemAccionCompra;

    invoke-virtual {v4}, Lcl/santander/santanderCL/data/response/ItemAccionCompra;->getNombreAccion()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->cantidad_comprar:Ljava/lang/String;

    .line 668
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->monto_total_comprar:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->monto_total_comprar:D

    move-object/from16 v0, p0

    iget v12, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->gTotal:I

    int-to-double v12, v12

    add-double/2addr v9, v12

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 669
    move-object/from16 v0, p0

    iget-object v9, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->accionSeleccionada:Lcl/santander/santanderCL/data/response/ItemAccionCompra;

    invoke-virtual {v9}, Lcl/santander/santanderCL/data/response/ItemAccionCompra;->getPrecioActual()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tipo_precio:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$TIPOS_PRECIO;

    invoke-virtual {v10}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$TIPOS_PRECIO;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->vp_cuentas:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v13}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v13

    invoke-virtual {v12, v13}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v12

    invoke-virtual {v12}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContrato()Ljava/lang/String;

    move-result-object v11

    .line 670
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v13, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->numeroDias:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v13}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v13

    .line 666
    invoke-static/range {v2 .. v18}, Lcl/santander/smartphone/ServicesManager;->AccionesCompraValidar(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcl/santander/santanderCL/response/AccionesCompraValidaResponse;

    move-result-object v32

    .line 674
    .local v32, "resp":Lcl/santander/santanderCL/response/AccionesCompraValidaResponse;
    if-eqz v32, :cond_1

    .line 677
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v31

    .line 678
    .local v31, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f060062

    new-instance v19, Lcl/santander/smartphone/InversionesAccionesCompraReport;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->monto_total_comprar:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->monto_total_comprar:D

    move-object/from16 v0, p0

    iget v5, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->gTotal:I

    int-to-double v7, v5

    add-double v22, v3, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->cantidad_comprar:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->vp_cuentas:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-virtual {v3, v4}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v3

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContratoScreen()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->accionSeleccionada:Lcl/santander/santanderCL/data/response/ItemAccionCompra;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tipo_precio:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$TIPOS_PRECIO;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->limite_precio:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-direct/range {v19 .. v28}, Lcl/santander/smartphone/InversionesAccionesCompraReport;-><init>(DDLjava/lang/String;Ljava/lang/String;Lcl/santander/santanderCL/data/response/ItemAccionCompra;Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$TIPOS_PRECIO;Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 679
    const/4 v2, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 680
    invoke-virtual/range {v31 .. v31}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 716
    .end local v6    # "precio":Ljava/lang/String;
    .end local v31    # "ft":Landroid/support/v4/app/FragmentTransaction;
    .end local v32    # "resp":Lcl/santander/santanderCL/response/AccionesCompraValidaResponse;
    :goto_1
    return-void

    .line 664
    .restart local v6    # "precio":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->accionSeleccionada:Lcl/santander/santanderCL/data/response/ItemAccionCompra;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/ItemAccionCompra;->getPrecioActual()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 685
    .restart local v32    # "resp":Lcl/santander/santanderCL/response/AccionesCompraValidaResponse;
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05015a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v2, 0x1

    new-array v12, v2, [Ljava/lang/Runnable;

    const/4 v2, 0x0

    aput-object v33, v12, v2

    move-object/from16 v11, v34

    invoke-static/range {v7 .. v12}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 690
    .end local v6    # "precio":Ljava/lang/String;
    .end local v32    # "resp":Lcl/santander/santanderCL/response/AccionesCompraValidaResponse;
    :catch_0
    move-exception v30

    .line 691
    .local v30, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05015b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v30 .. v30}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v2, 0x1

    new-array v12, v2, [Ljava/lang/Runnable;

    const/4 v2, 0x0

    aput-object v33, v12, v2

    move-object/from16 v11, v34

    invoke-static/range {v7 .. v12}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 693
    .end local v30    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v30

    .line 694
    .local v30, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05015c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v30 .. v30}, Lcl/santander/santanderCL/exceptions/InfoException;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/Info;->getMsgUsuario()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v2, 0x1

    new-array v12, v2, [Ljava/lang/Runnable;

    const/4 v2, 0x0

    aput-object v33, v12, v2

    move-object/from16 v11, v34

    invoke-static/range {v7 .. v12}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1

    .line 696
    .end local v30    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v30

    .line 697
    .local v30, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v29, Lcl/santander/smartphone/InversionesAccionesCompraValidar$7;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcl/santander/smartphone/InversionesAccionesCompraValidar$7;-><init>(Lcl/santander/smartphone/InversionesAccionesCompraValidar;)V

    .line 710
    .local v29, "cert":Ljava/lang/Runnable;
    const/4 v2, 0x1

    new-array v11, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0501c6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v2

    .line 711
    .local v11, "s_cert":[Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 712
    move-object/from16 v0, p0

    iget-object v7, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v2, 0x1

    new-array v12, v2, [Ljava/lang/Runnable;

    const/4 v2, 0x0

    aput-object v29, v12, v2

    invoke-static/range {v7 .. v12}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1

    .line 714
    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v2, 0x1

    new-array v12, v2, [Ljava/lang/Runnable;

    const/4 v2, 0x0

    aput-object v29, v12, v2

    invoke-static/range {v7 .. v12}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1
.end method

.method private Validar_RecargaDesafio()V
    .locals 15

    .prologue
    .line 336
    new-instance v14, Lcl/santander/smartphone/InversionesAccionesCompraValidar$4;

    invoke-direct {v14, p0}, Lcl/santander/smartphone/InversionesAccionesCompraValidar$4;-><init>(Lcl/santander/smartphone/InversionesAccionesCompraValidar;)V

    .line 344
    .local v14, "run":Ljava/lang/Runnable;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 349
    .local v4, "s":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    sget-object v1, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v1}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->cuentaCustodia:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcl/santander/smartphone/ServicesManager;->AccionesCompraConfirma(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;

    move-result-object v13

    .line 350
    .local v13, "resp":Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;
    if-eqz v13, :cond_0

    .line 352
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;->getAcciones()Lcl/santander/santanderCL/data/MatrizProductos;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    .line 353
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;->getCoordenada1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tarj_coord1:Ljava/lang/String;

    .line 354
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;->getCoordenada2()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tarj_coord2:Ljava/lang/String;

    .line 355
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;->getCoordenada3()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tarj_coord3:Ljava/lang/String;

    .line 356
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;->getDerechos()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->derechos:Ljava/lang/String;

    .line 357
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;->getGastos()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->gastos:Ljava/lang/String;

    .line 358
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;->getComision()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->comision:Ljava/lang/String;

    .line 359
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;->getNumeroTarjeta()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tarjeta:Ljava/lang/String;

    .line 362
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->rellenaDatos()V

    .line 398
    .end local v13    # "resp":Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;
    :goto_0
    return-void

    .line 367
    .restart local v13    # "resp":Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->getResources()Landroid/content/res/Resources;

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

    .line 372
    .end local v13    # "resp":Lcl/santander/santanderCL/response/AccionesCompraConfirmarResponse;
    :catch_0
    move-exception v12

    .line 373
    .local v12, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->getResources()Landroid/content/res/Resources;

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

    .line 375
    .end local v12    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v12

    .line 376
    .local v12, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->getResources()Landroid/content/res/Resources;

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

    .line 378
    .end local v12    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v12

    .line 379
    .local v12, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v11, Lcl/santander/smartphone/InversionesAccionesCompraValidar$5;

    invoke-direct {v11, p0}, Lcl/santander/smartphone/InversionesAccionesCompraValidar$5;-><init>(Lcl/santander/smartphone/InversionesAccionesCompraValidar;)V

    .line 392
    .local v11, "cert":Ljava/lang/Runnable;
    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    .line 393
    .local v9, "s_cert":[Ljava/lang/String;
    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    iget-object v5, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->getResources()Landroid/content/res/Resources;

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

    .line 396
    :cond_1
    iget-object v5, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->getResources()Landroid/content/res/Resources;

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

.method static synthetic access$0(Lcl/santander/smartphone/InversionesAccionesCompraValidar;)V
    .locals 0

    .prologue
    .line 640
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->Confirmar()V

    return-void
.end method

.method static synthetic access$1(Lcl/santander/smartphone/InversionesAccionesCompraValidar;)V
    .locals 0

    .prologue
    .line 334
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->Validar_RecargaDesafio()V

    return-void
.end method

.method private initComponents()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 213
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060117

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tv_coord1:Landroid/widget/TextView;

    .line 214
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060118

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tv_coord2:Landroid/widget/TextView;

    .line 215
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060119

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tv_coord3:Landroid/widget/TextView;

    .line 218
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060102

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tv_cantidad_acciones:Landroid/widget/TextView;

    .line 219
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060105

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tv_comision_corredora:Landroid/widget/TextView;

    .line 220
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060106

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tv_derecho_bolsa:Landroid/widget/TextView;

    .line 221
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060108

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tv_gasto_total:Landroid/widget/TextView;

    .line 222
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060101

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tv_monto_comprar:Landroid/widget/TextView;

    .line 223
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06010a

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tv_monto_pagar:Landroid/widget/TextView;

    .line 224
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060103

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tv_tipo_precio:Landroid/widget/TextView;

    .line 225
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600ff

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tv_valor:Landroid/widget/TextView;

    .line 226
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060116

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tv_instrucciones:Landroid/widget/TextView;

    .line 227
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060104

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tv_precio:Landroid/widget/TextView;

    .line 229
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060112

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->et_email:Landroid/widget/EditText;

    .line 230
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060114

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->et_telefono:Landroid/widget/EditText;

    .line 232
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06011e

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->bt_confirmar:Landroid/widget/Button;

    .line 233
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060110

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->bt_terminos:Landroid/widget/Button;

    .line 236
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06010c

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->vp_cuentas:Landroid/support/v4/view/ViewPager;

    .line 237
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06010d

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/CirclePageIndicator;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->vpi_cuentas:Lcom/viewpagerindicator/CirclePageIndicator;

    .line 239
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06010f

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->cb_terminos_condiciones:Landroid/widget/CheckBox;

    .line 242
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->cb_terminos_condiciones:Landroid/widget/CheckBox;

    new-instance v1, Lcl/santander/smartphone/InversionesAccionesCompraValidar$1;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/InversionesAccionesCompraValidar$1;-><init>(Lcl/santander/smartphone/InversionesAccionesCompraValidar;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 253
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->vpi_cuentas:Lcom/viewpagerindicator/CirclePageIndicator;

    const v1, -0xaaaaab

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setFillColor(I)V

    .line 254
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->vpi_cuentas:Lcom/viewpagerindicator/CirclePageIndicator;

    const v1, -0x222223

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setPageColor(I)V

    .line 257
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->bt_terminos:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/InversionesAccionesCompraValidar$2;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/InversionesAccionesCompraValidar$2;-><init>(Lcl/santander/smartphone/InversionesAccionesCompraValidar;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->bt_confirmar:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 277
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->bt_confirmar:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/InversionesAccionesCompraValidar$3;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/InversionesAccionesCompraValidar$3;-><init>(Lcl/santander/smartphone/InversionesAccionesCompraValidar;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06011a

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->et_coord1:Landroid/widget/EditText;

    .line 286
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->et_coord1:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 287
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->et_coord1:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 288
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->et_coord1:Landroid/widget/EditText;

    new-instance v1, Lcl/santander/smartphone/InversionesAccionesCompraValidar$CustomTextWatcher;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/InversionesAccionesCompraValidar$CustomTextWatcher;-><init>(Lcl/santander/smartphone/InversionesAccionesCompraValidar;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 289
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06011b

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->et_coord2:Landroid/widget/EditText;

    .line 290
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->et_coord2:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 291
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->et_coord2:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 292
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->et_coord2:Landroid/widget/EditText;

    new-instance v1, Lcl/santander/smartphone/InversionesAccionesCompraValidar$CustomTextWatcher;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/InversionesAccionesCompraValidar$CustomTextWatcher;-><init>(Lcl/santander/smartphone/InversionesAccionesCompraValidar;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 293
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06011c

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->et_coord3:Landroid/widget/EditText;

    .line 294
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->et_coord3:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 295
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->et_coord3:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 296
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->et_coord3:Landroid/widget/EditText;

    new-instance v1, Lcl/santander/smartphone/InversionesAccionesCompraValidar$CustomTextWatcher;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/InversionesAccionesCompraValidar$CustomTextWatcher;-><init>(Lcl/santander/smartphone/InversionesAccionesCompraValidar;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 299
    return-void
.end method

.method private rellenaDatos()V
    .locals 26

    .prologue
    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tv_valor:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->accionSeleccionada:Lcl/santander/santanderCL/data/response/ItemAccionCompra;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcl/santander/santanderCL/data/response/ItemAccionCompra;->getNombreAccion()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->monto_comprar:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->monto_comprar:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 416
    :cond_0
    const-string v19, "0"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->monto_comprar:Ljava/lang/String;

    .line 418
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->limite_precio:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->limite_precio:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 419
    :cond_2
    const-string v19, "0"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->limite_precio:Ljava/lang/String;

    .line 420
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->cantidad_comprar:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->cantidad_comprar:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 421
    :cond_4
    const-string v19, "0"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->cantidad_comprar:Ljava/lang/String;

    .line 423
    :cond_5
    const-wide/16 v13, 0x0

    .line 424
    .local v13, "mnt_compraLN":D
    const-wide/16 v17, 0x0

    .line 425
    .local v17, "mnt_mercadoDB":D
    const-wide/16 v15, 0x0

    .line 426
    .local v15, "mnt_limiteLN":D
    const-wide/16 v6, 0x0

    .line 431
    .local v6, "cant_compraLN":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->monto_comprar:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->accionSeleccionada:Lcl/santander/santanderCL/data/response/ItemAccionCompra;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcl/santander/santanderCL/data/response/ItemAccionCompra;->getPrecioActual()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v17

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->limite_precio:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->cantidad_comprar:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 445
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->monto_o_cantidad:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 451
    :try_start_1
    move-object/from16 v0, p0

    iput-wide v13, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->monto_total_comprar:D

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tv_monto_comprar:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->monto_total_comprar:D

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget-object v21, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    invoke-static/range {v20 .. v21}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 462
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tv_precio:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->limite_precio:Ljava/lang/String;

    move-object/from16 v20, v0

    sget-object v21, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    const/16 v22, 0x2

    invoke-static/range {v20 .. v22}, Lcl/santander/santanderCL/utils/Utils;->parseImporteConDivisa(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 533
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->monto_o_cantidad:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tv_cantidad_acciones:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->cantidad_comprar:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tv_coord1:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tarj_coord1:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tv_coord2:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tarj_coord2:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tv_coord3:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tarj_coord3:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tipo_precio:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$TIPOS_PRECIO;

    move-object/from16 v19, v0

    sget-object v20, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$TIPOS_PRECIO;->L:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$TIPOS_PRECIO;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tv_tipo_precio:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0c0005

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    aget-object v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    :goto_4
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->gTotal:I

    .line 580
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->comision:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 582
    .local v8, "com":D
    move-object/from16 v0, p0

    iget v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->gTotal:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->monto_total_comprar:D

    move-wide/from16 v20, v0

    mul-double v20, v20, v8

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->gTotal:I

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tv_comision_corredora:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->monto_total_comprar:D

    move-wide/from16 v21, v0

    mul-double v21, v21, v8

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget-object v21, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    invoke-static/range {v20 .. v21}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 595
    .end local v8    # "com":D
    :goto_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->derechos:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 597
    .local v10, "der":D
    move-object/from16 v0, p0

    iget v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->gTotal:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->monto_total_comprar:D

    move-wide/from16 v20, v0

    mul-double v20, v20, v10

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->gTotal:I

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tv_derecho_bolsa:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->monto_total_comprar:D

    move-wide/from16 v21, v0

    mul-double v21, v21, v10

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget-object v21, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    invoke-static/range {v20 .. v21}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 607
    .end local v10    # "der":D
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tv_gasto_total:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->gTotal:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget-object v21, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    invoke-static/range {v20 .. v21}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tv_monto_pagar:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->monto_total_comprar:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->gTotal:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    add-double v22, v22, v24

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    sget-object v22, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    invoke-static/range {v21 .. v22}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, " (Incluye Comisiones y considera precio l\u00edmite o precio actual referencial informado)"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    new-instance v19, Lcl/santander/smartphone/ProductosPageAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    move-object/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Lcl/santander/smartphone/ProductosPageAdapter;-><init>(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcl/santander/santanderCL/data/MatrizProductos;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->pageAdapterOrigen:Lcl/santander/smartphone/ProductosPageAdapter;

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->vp_cuentas:Landroid/support/v4/view/ViewPager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->pageAdapterOrigen:Lcl/santander/smartphone/ProductosPageAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->vpi_cuentas:Lcom/viewpagerindicator/CirclePageIndicator;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->vp_cuentas:Landroid/support/v4/view/ViewPager;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->et_email:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->email:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->et_telefono:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->celular:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tv_instrucciones:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f050070

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 630
    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tarjeta:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f050071

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 629
    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    return-void

    .line 439
    :catch_0
    move-exception v12

    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 453
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v12

    .line 455
    .restart local v12    # "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tv_monto_comprar:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string v20, "-"

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 463
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v12

    .line 465
    .restart local v12    # "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tv_precio:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string v20, "-"

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 476
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tipo_precio:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$TIPOS_PRECIO;

    move-object/from16 v19, v0

    sget-object v20, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$TIPOS_PRECIO;->L:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$TIPOS_PRECIO;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 481
    long-to-double v0, v6

    move-wide/from16 v19, v0

    mul-double v19, v19, v15

    move-wide/from16 v0, v19

    double-to-long v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    long-to-double v0, v0

    move-wide/from16 v19, v0

    :try_start_5
    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->monto_total_comprar:D

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tv_monto_comprar:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->monto_total_comprar:D

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget-object v21, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    invoke-static/range {v20 .. v21}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 493
    :goto_7
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tv_precio:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->limite_precio:Ljava/lang/String;

    move-object/from16 v20, v0

    sget-object v21, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    const/16 v22, 0x2

    invoke-static/range {v20 .. v22}, Lcl/santander/santanderCL/utils/Utils;->parseImporteConDivisa(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_2

    .line 494
    :catch_3
    move-exception v12

    .line 496
    .restart local v12    # "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tv_precio:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string v20, "-"

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 484
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v12

    .line 486
    .restart local v12    # "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tv_monto_comprar:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string v20, "-"

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 507
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_7
    long-to-double v0, v6

    move-wide/from16 v19, v0

    mul-double v19, v19, v17

    move-wide/from16 v0, v19

    double-to-long v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    long-to-double v0, v0

    move-wide/from16 v19, v0

    :try_start_7
    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->monto_total_comprar:D

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tv_monto_comprar:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->monto_total_comprar:D

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget-object v21, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    invoke-static/range {v20 .. v21}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 520
    :goto_8
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tv_precio:Landroid/widget/TextView;

    move-object/from16 v19, v0

    sget-object v20, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    const/16 v21, 0x2

    move-wide/from16 v0, v17

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcl/santander/santanderCL/utils/Utils;->parseImporteConDivisa(DLjava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_2

    .line 521
    :catch_5
    move-exception v12

    .line 523
    .restart local v12    # "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tv_precio:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string v20, "-"

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 511
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v12

    .line 513
    .restart local v12    # "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tv_monto_comprar:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string v20, "-"

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 539
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tipo_precio:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$TIPOS_PRECIO;

    move-object/from16 v19, v0

    sget-object v20, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$TIPOS_PRECIO;->L:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$TIPOS_PRECIO;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 542
    const-wide/16 v4, 0x0

    .line 543
    .local v4, "cant":J
    const-wide/16 v19, 0x0

    cmpl-double v19, v15, v19

    if-eqz v19, :cond_9

    .line 544
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->monto_total_comprar:D

    move-wide/from16 v19, v0

    div-double v19, v19, v15

    move-wide/from16 v0, v19

    double-to-long v4, v0

    .line 546
    :cond_9
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->cantidad_comprar:Ljava/lang/String;

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tv_cantidad_acciones:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->cantidad_comprar:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 553
    .end local v4    # "cant":J
    :cond_a
    const-wide/16 v4, 0x0

    .line 554
    .restart local v4    # "cant":J
    const-wide/16 v19, 0x0

    cmpl-double v19, v17, v19

    if-eqz v19, :cond_b

    .line 555
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->monto_total_comprar:D

    move-wide/from16 v19, v0

    div-double v19, v19, v17

    move-wide/from16 v0, v19

    double-to-long v4, v0

    .line 556
    :cond_b
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->cantidad_comprar:Ljava/lang/String;

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tv_cantidad_acciones:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->cantidad_comprar:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 573
    .end local v4    # "cant":J
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tv_tipo_precio:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0c0005

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x2

    aget-object v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 585
    :catch_7
    move-exception v12

    .line 587
    .restart local v12    # "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tv_comision_corredora:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string v20, "-"

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 600
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v12

    .line 602
    .restart local v12    # "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->tv_derecho_bolsa:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string v20, "-"

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6
.end method


# virtual methods
.method public cambiafoco()V
    .locals 3

    .prologue
    .line 766
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->et_coord1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 767
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->et_coord2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 777
    :cond_0
    :goto_0
    return-void

    .line 768
    :cond_1
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->et_coord2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 769
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->et_coord3:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 770
    :cond_2
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->et_coord3:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 771
    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 772
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->et_coord3:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 773
    iget-boolean v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->condiciones_aceptadas:Z

    if-eqz v1, :cond_3

    .line 774
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->bt_confirmar:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 775
    :cond_3
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->m_View:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method public getCoords(I)Ljava/lang/String;
    .locals 3
    .param p1, "_coord"    # I

    .prologue
    .line 302
    const-string v0, ""

    .line 303
    .local v0, "resultado":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 321
    :goto_0
    return-object v0

    .line 305
    :pswitch_0
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->et_coord1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->et_coord1:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 309
    :pswitch_1
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->et_coord2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->et_coord2:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 313
    :pswitch_2
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->et_coord3:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->et_coord3:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->bt_confirmar:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 303
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
    .line 189
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 191
    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 192
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 193
    const/4 v0, 0x2

    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050171

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 194
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->setHasOptionsMenu(Z)V

    .line 200
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->m_View:Landroid/view/View;

    invoke-static {v0, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 203
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->initComponents()V

    .line 205
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->Validar_RecargaDesafio()V

    .line 207
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 182
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 184
    :goto_0
    return-object v0

    .line 183
    :cond_0
    const v0, 0x7f030034

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->m_View:Landroid/view/View;

    .line 184
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->m_View:Landroid/view/View;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 720
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 726
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 723
    :pswitch_0
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraValidar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 720
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
