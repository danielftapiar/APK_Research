.class public Lcl/santander/smartphone/InversionesDepositosConfirmar;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "InversionesDepositosConfirmar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/santander/smartphone/InversionesDepositosConfirmar$CustomTextWatcher;
    }
.end annotation


# instance fields
.field bt_confirmar:Landroid/widget/Button;

.field cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

.field datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

.field et_coord1:Landroid/widget/EditText;

.field et_coord2:Landroid/widget/EditText;

.field et_coord3:Landroid/widget/EditText;

.field et_email:Landroid/widget/EditText;

.field fecha_inversion:Ljava/lang/String;

.field m_View:Landroid/view/View;

.field numero_tarjeta:Ljava/lang/String;

.field private pageAdapterOrigen:Lcl/santander/smartphone/ProductosPageAdapter;

.field sf:Lcom/actionbarsherlock/app/SherlockFragment;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;

.field tarj_coord1:Ljava/lang/String;

.field tarj_coord2:Ljava/lang/String;

.field tarj_coord3:Ljava/lang/String;

.field tv_coord1:Landroid/widget/TextView;

.field tv_coord2:Landroid/widget/TextView;

.field tv_coord3:Landroid/widget/TextView;

.field tv_fecha_inversion:Landroid/widget/TextView;

.field tv_fecha_vencimiento:Landroid/widget/TextView;

.field tv_instrucciones:Landroid/widget/TextView;

.field tv_intereses:Landroid/widget/TextView;

.field tv_label_cobrar:Landroid/widget/TextView;

.field tv_label_intereses:Landroid/widget/TextView;

.field tv_monto_cobrar:Landroid/widget/TextView;

.field tv_monto_invertir:Landroid/widget/TextView;

.field tv_plazo:Landroid/widget/TextView;

.field tv_tasa:Landroid/widget/TextView;

.field tv_tasa_texto:Landroid/widget/TextView;

.field tv_tipo_deposito:Landroid/widget/TextView;

.field tv_tipo_reajuste:Landroid/widget/TextView;

.field vp_cuentas:Landroid/support/v4/view/ViewPager;

.field vpi_cuentas:Lcom/viewpagerindicator/CirclePageIndicator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcl/santander/santanderCL/data/DatosSimularDeposito;Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;)V
    .locals 1
    .param p1, "datosSimulacion2"    # Lcl/santander/santanderCL/data/DatosSimularDeposito;
    .param p2, "resp"    # Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 103
    iput-object p1, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    .line 104
    invoke-virtual {p2}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;->getCoordenada1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->tarj_coord1:Ljava/lang/String;

    .line 105
    invoke-virtual {p2}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;->getCoordenada2()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->tarj_coord2:Ljava/lang/String;

    .line 106
    invoke-virtual {p2}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;->getCoordenada3()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->tarj_coord3:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->isIndicadorInversion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p2}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;->getFechaInversion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->fecha_inversion:Ljava/lang/String;

    .line 112
    :goto_0
    invoke-virtual {p2}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;->getNumeroTarjera()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->numero_tarjeta:Ljava/lang/String;

    .line 114
    invoke-virtual {p2}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;->getCaptaciones()Lcl/santander/santanderCL/data/MatrizProductos;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    .line 117
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->getDescripcionFechaInversion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->fecha_inversion:Ljava/lang/String;

    goto :goto_0
.end method

.method private Confirmar()V
    .locals 26

    .prologue
    .line 340
    new-instance v25, Lcl/santander/smartphone/InversionesDepositosConfirmar$4;

    invoke-direct/range {v25 .. v26}, Lcl/santander/smartphone/InversionesDepositosConfirmar$4;-><init>(Lcl/santander/smartphone/InversionesDepositosConfirmar;)V

    .line 348
    .local v25, "run":Ljava/lang/Runnable;
    const/4 v2, 0x1

    new-array v14, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v2

    .line 349
    .local v14, "s":[Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcl/santander/smartphone/InversionesDepositosConfirmar;->getCoords(I)Ljava/lang/String;

    move-result-object v6

    .line 350
    .local v6, "c1":Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcl/santander/smartphone/InversionesDepositosConfirmar;->getCoords(I)Ljava/lang/String;

    move-result-object v7

    .line 351
    .local v7, "c2":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcl/santander/smartphone/InversionesDepositosConfirmar;->getCoords(I)Ljava/lang/String;

    move-result-object v8

    .line 352
    .local v8, "c3":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->et_email:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    .line 356
    .local v9, "email":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    sget-object v3, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v3}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->vp_cuentas:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v10}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v10

    invoke-virtual {v5, v10}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v5

    invoke-static/range {v2 .. v9}, Lcl/santander/smartphone/ServicesManager;->ConfirmarDepositoPlazo(Landroid/app/Activity;Ljava/lang/String;Lcl/santander/santanderCL/data/DatosSimularDeposito;Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;

    move-result-object v24

    .line 359
    .local v24, "resp":Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;
    if-eqz v24, :cond_0

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v23

    .line 363
    .local v23, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f060062

    new-instance v3, Lcl/santander/smartphone/InversionesDepositosReport;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->vp_cuentas:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v10}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v10

    invoke-virtual {v5, v10}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-direct {v3, v4, v0, v5, v9}, Lcl/santander/smartphone/InversionesDepositosReport;-><init>(Lcl/santander/santanderCL/data/DatosSimularDeposito;Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 364
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 365
    invoke-virtual/range {v23 .. v23}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 401
    .end local v23    # "ft":Landroid/support/v4/app/FragmentTransaction;
    .end local v24    # "resp":Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;
    :goto_0
    return-void

    .line 370
    .restart local v24    # "resp":Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesDepositosConfirmar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05015a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesDepositosConfirmar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v2, 0x1

    new-array v15, v2, [Ljava/lang/Runnable;

    const/4 v2, 0x0

    aput-object v25, v15, v2

    invoke-static/range {v10 .. v15}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 375
    .end local v24    # "resp":Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;
    :catch_0
    move-exception v22

    .line 376
    .local v22, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesDepositosConfirmar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05015b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v22 .. v22}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v2, 0x1

    new-array v15, v2, [Ljava/lang/Runnable;

    const/4 v2, 0x0

    aput-object v25, v15, v2

    invoke-static/range {v10 .. v15}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 378
    .end local v22    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v22

    .line 379
    .local v22, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesDepositosConfirmar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05015c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v22 .. v22}, Lcl/santander/santanderCL/exceptions/InfoException;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/Info;->getMsgUsuario()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v2, 0x1

    new-array v15, v2, [Ljava/lang/Runnable;

    const/4 v2, 0x0

    aput-object v25, v15, v2

    invoke-static/range {v10 .. v15}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 381
    .end local v22    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v22

    .line 382
    .local v22, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v21, Lcl/santander/smartphone/InversionesDepositosConfirmar$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcl/santander/smartphone/InversionesDepositosConfirmar$5;-><init>(Lcl/santander/smartphone/InversionesDepositosConfirmar;)V

    .line 395
    .local v21, "cert":Ljava/lang/Runnable;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesDepositosConfirmar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0501c6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v19, v2

    .line 396
    .local v19, "s_cert":[Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 397
    move-object/from16 v0, p0

    iget-object v15, v0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesDepositosConfirmar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesDepositosConfirmar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Runnable;

    move-object/from16 v20, v0

    const/4 v2, 0x0

    aput-object v21, v20, v2

    invoke-static/range {v15 .. v20}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 399
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesDepositosConfirmar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesDepositosConfirmar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Runnable;

    move-object/from16 v20, v0

    const/4 v2, 0x0

    aput-object v21, v20, v2

    invoke-static/range {v15 .. v20}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method private RecargaDesafioCoordenadas()V
    .locals 15

    .prologue
    .line 249
    new-instance v14, Lcl/santander/smartphone/InversionesDepositosConfirmar$2;

    invoke-direct {v14, p0}, Lcl/santander/smartphone/InversionesDepositosConfirmar$2;-><init>(Lcl/santander/smartphone/InversionesDepositosConfirmar;)V

    .line 256
    .local v14, "run":Ljava/lang/Runnable;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 258
    .local v4, "s":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    sget-object v1, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v1}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    invoke-static {v0, v1, v2}, Lcl/santander/smartphone/ServicesManager;->AceptarDepositoPlazo(Landroid/app/Activity;Ljava/lang/String;Lcl/santander/santanderCL/data/DatosSimularDeposito;)Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;

    move-result-object v13

    .line 262
    .local v13, "resp":Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;
    if-eqz v13, :cond_1

    .line 264
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;->getCoordenada1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->tarj_coord1:Ljava/lang/String;

    .line 265
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;->getCoordenada2()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->tarj_coord2:Ljava/lang/String;

    .line 266
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;->getCoordenada3()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->tarj_coord3:Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->isIndicadorInversion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;->getFechaInversion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->fecha_inversion:Ljava/lang/String;

    .line 271
    :goto_0
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;->getNumeroTarjera()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->numero_tarjeta:Ljava/lang/String;

    .line 272
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->fecha_inversion:Ljava/lang/String;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->numero_tarjeta:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcl/santander/smartphone/InversionesDepositosConfirmar;->rellenaDatos(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .end local v13    # "resp":Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;
    :goto_1
    return-void

    .line 270
    .restart local v13    # "resp":Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->getDescripcionFechaInversion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->fecha_inversion:Ljava/lang/String;
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 279
    .end local v13    # "resp":Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;
    :catch_0
    move-exception v12

    .line 280
    .local v12, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosConfirmar;->getResources()Landroid/content/res/Resources;

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

    goto :goto_1

    .line 276
    .end local v12    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    .restart local v13    # "resp":Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosConfirmar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosConfirmar;->getResources()Landroid/content/res/Resources;

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
    :try_end_1
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 282
    .end local v13    # "resp":Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;
    :catch_1
    move-exception v12

    .line 283
    .local v12, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosConfirmar;->getResources()Landroid/content/res/Resources;

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

    goto :goto_1

    .line 285
    .end local v12    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v12

    .line 286
    .local v12, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v11, Lcl/santander/smartphone/InversionesDepositosConfirmar$3;

    invoke-direct {v11, p0}, Lcl/santander/smartphone/InversionesDepositosConfirmar$3;-><init>(Lcl/santander/smartphone/InversionesDepositosConfirmar;)V

    .line 299
    .local v11, "cert":Ljava/lang/Runnable;
    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosConfirmar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    .line 300
    .local v9, "s_cert":[Ljava/lang/String;
    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 301
    iget-object v5, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosConfirmar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosConfirmar;->getResources()Landroid/content/res/Resources;

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

    goto/16 :goto_1

    .line 303
    :cond_2
    iget-object v5, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosConfirmar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosConfirmar;->getResources()Landroid/content/res/Resources;

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

    goto/16 :goto_1
.end method

.method static synthetic access$0(Lcl/santander/smartphone/InversionesDepositosConfirmar;)V
    .locals 0

    .prologue
    .line 337
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesDepositosConfirmar;->Confirmar()V

    return-void
.end method

.method static synthetic access$1(Lcl/santander/smartphone/InversionesDepositosConfirmar;)V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesDepositosConfirmar;->RecargaDesafioCoordenadas()V

    return-void
.end method

.method private initComponents()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 152
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601a3

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->tv_coord1:Landroid/widget/TextView;

    .line 153
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601a4

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->tv_coord2:Landroid/widget/TextView;

    .line 154
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601a5

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->tv_coord3:Landroid/widget/TextView;

    .line 156
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601a2

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->tv_instrucciones:Landroid/widget/TextView;

    .line 157
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06019b

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->tv_fecha_vencimiento:Landroid/widget/TextView;

    .line 158
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06019c

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->tv_fecha_inversion:Landroid/widget/TextView;

    .line 159
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06019a

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->tv_intereses:Landroid/widget/TextView;

    .line 160
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060198

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->tv_monto_cobrar:Landroid/widget/TextView;

    .line 161
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060193

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->tv_monto_invertir:Landroid/widget/TextView;

    .line 162
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060194

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->tv_plazo:Landroid/widget/TextView;

    .line 163
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060196

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->tv_tasa:Landroid/widget/TextView;

    .line 164
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060191

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->tv_tipo_deposito:Landroid/widget/TextView;

    .line 165
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060192

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->tv_tipo_reajuste:Landroid/widget/TextView;

    .line 166
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060197

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->tv_label_cobrar:Landroid/widget/TextView;

    .line 167
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060199

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->tv_label_intereses:Landroid/widget/TextView;

    .line 168
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060195

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->tv_tasa_texto:Landroid/widget/TextView;

    .line 171
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06019e

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->et_email:Landroid/widget/EditText;

    .line 173
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601a8

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->bt_confirmar:Landroid/widget/Button;

    .line 175
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601a0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->vp_cuentas:Landroid/support/v4/view/ViewPager;

    .line 176
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601a1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/CirclePageIndicator;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->vpi_cuentas:Lcom/viewpagerindicator/CirclePageIndicator;

    .line 179
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->vpi_cuentas:Lcom/viewpagerindicator/CirclePageIndicator;

    const v1, -0xaaaaab

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setFillColor(I)V

    .line 180
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->vpi_cuentas:Lcom/viewpagerindicator/CirclePageIndicator;

    const v1, -0x222223

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setPageColor(I)V

    .line 183
    new-instance v0, Lcl/santander/smartphone/ProductosPageAdapter;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-object v2, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-direct {v0, v1, v2}, Lcl/santander/smartphone/ProductosPageAdapter;-><init>(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcl/santander/santanderCL/data/MatrizProductos;)V

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->pageAdapterOrigen:Lcl/santander/smartphone/ProductosPageAdapter;

    .line 185
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->vp_cuentas:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->pageAdapterOrigen:Lcl/santander/smartphone/ProductosPageAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 187
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->vpi_cuentas:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->vp_cuentas:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 189
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->getTipoAjustes()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->tv_tasa_texto:Landroid/widget/TextView;

    const v1, 0x7f05017f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 193
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->bt_confirmar:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 194
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->bt_confirmar:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/InversionesDepositosConfirmar$1;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/InversionesDepositosConfirmar$1;-><init>(Lcl/santander/smartphone/InversionesDepositosConfirmar;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06019f

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->et_coord1:Landroid/widget/EditText;

    .line 203
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->et_coord1:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 204
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->et_coord1:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 205
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->et_coord1:Landroid/widget/EditText;

    new-instance v1, Lcl/santander/smartphone/InversionesDepositosConfirmar$CustomTextWatcher;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/InversionesDepositosConfirmar$CustomTextWatcher;-><init>(Lcl/santander/smartphone/InversionesDepositosConfirmar;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 206
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601a6

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->et_coord2:Landroid/widget/EditText;

    .line 207
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->et_coord2:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 208
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->et_coord2:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 209
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->et_coord2:Landroid/widget/EditText;

    new-instance v1, Lcl/santander/smartphone/InversionesDepositosConfirmar$CustomTextWatcher;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/InversionesDepositosConfirmar$CustomTextWatcher;-><init>(Lcl/santander/smartphone/InversionesDepositosConfirmar;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 210
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601a7

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->et_coord3:Landroid/widget/EditText;

    .line 211
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->et_coord3:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 212
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->et_coord3:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 213
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->et_coord3:Landroid/widget/EditText;

    new-instance v1, Lcl/santander/smartphone/InversionesDepositosConfirmar$CustomTextWatcher;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/InversionesDepositosConfirmar$CustomTextWatcher;-><init>(Lcl/santander/smartphone/InversionesDepositosConfirmar;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 218
    return-void
.end method

.method private rellenaDatos(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "fecha_inv"    # Ljava/lang/String;
    .param p2, "numeroTarjeta"    # Ljava/lang/String;

    .prologue
    .line 314
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->tv_tipo_deposito:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->getDescripcion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->tv_tipo_reajuste:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->getTipoAjustes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->tv_monto_invertir:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->getMontoAInvertirScreen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->tv_monto_cobrar:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->getMontoACobrar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->tv_plazo:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->getPlazo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->tv_fecha_vencimiento:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->getFechaVencimiento()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->tv_fecha_inversion:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->tv_tasa:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->getTasaInteres()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->tv_intereses:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->getInteresesAGanar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->tv_label_cobrar:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f050180

    invoke-virtual {p0, v2}, Lcl/santander/smartphone/InversionesDepositosConfirmar;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->getSignoMoneda()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->tv_label_intereses:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f050181

    invoke-virtual {p0, v2}, Lcl/santander/smartphone/InversionesDepositosConfirmar;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->getSignoMoneda()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->tv_instrucciones:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050070

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 329
    iget-object v2, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050071

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 327
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->tv_coord1:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->tarj_coord1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->tv_coord2:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->tarj_coord2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->tv_coord3:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->tarj_coord3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    return-void
.end method


# virtual methods
.method public cambiafoco()V
    .locals 3

    .prologue
    .line 451
    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->et_coord1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 452
    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->et_coord2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->et_coord2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 454
    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->et_coord3:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 455
    :cond_2
    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->et_coord3:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosConfirmar;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 457
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->et_coord3:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 458
    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->bt_confirmar:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 459
    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->m_View:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method public getCoords(I)Ljava/lang/String;
    .locals 3
    .param p1, "_coord"    # I

    .prologue
    .line 222
    const-string v0, ""

    .line 223
    .local v0, "resultado":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 241
    :goto_0
    return-object v0

    .line 225
    :pswitch_0
    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->et_coord1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->et_coord1:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 229
    :pswitch_1
    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->et_coord2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->et_coord2:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 233
    :pswitch_2
    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->et_coord3:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->et_coord3:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->bt_confirmar:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 223
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
    .line 129
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosConfirmar;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 132
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 133
    const/4 v0, 0x2

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosConfirmar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050171

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/InversionesDepositosConfirmar;->setHasOptionsMenu(Z)V

    .line 140
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->m_View:Landroid/view/View;

    invoke-static {v0, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 143
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesDepositosConfirmar;->initComponents()V

    .line 145
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->fecha_inversion:Ljava/lang/String;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->numero_tarjeta:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcl/santander/smartphone/InversionesDepositosConfirmar;->rellenaDatos(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 122
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 124
    :goto_0
    return-object v0

    .line 123
    :cond_0
    const v0, 0x7f03003c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->m_View:Landroid/view/View;

    .line 124
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->m_View:Landroid/view/View;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 405
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 411
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 408
    :pswitch_0
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 405
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
