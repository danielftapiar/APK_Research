.class public Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "InversionesDepositosCobrarConfirmar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$CustomTextWatcher;
    }
.end annotation


# instance fields
.field bt_confirmar:Landroid/widget/Button;

.field cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

.field private datos_deposito:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;

.field deposito_cobrar:Lcl/santander/santanderCL/data/response/ItemIPF;

.field et_coord1:Landroid/widget/EditText;

.field et_coord2:Landroid/widget/EditText;

.field et_coord3:Landroid/widget/EditText;

.field et_email:Landroid/widget/EditText;

.field m_View:Landroid/view/View;

.field private pageAdapterOrigen:Lcl/santander/smartphone/ProductosPageAdapter;

.field sf:Lcom/actionbarsherlock/app/SherlockFragment;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;

.field tarj_coord1:Ljava/lang/String;

.field tarj_coord2:Ljava/lang/String;

.field tarj_coord3:Ljava/lang/String;

.field tv_cobrar_label:Landroid/widget/TextView;

.field tv_coord1:Landroid/widget/TextView;

.field tv_coord2:Landroid/widget/TextView;

.field tv_coord3:Landroid/widget/TextView;

.field tv_fecha_inversion:Landroid/widget/TextView;

.field tv_fecha_vencimiento:Landroid/widget/TextView;

.field tv_instrucciones:Landroid/widget/TextView;

.field tv_invertido_label:Landroid/widget/TextView;

.field tv_moneda:Landroid/widget/TextView;

.field tv_monto_cobrar:Landroid/widget/TextView;

.field tv_monto_invertido:Landroid/widget/TextView;

.field tv_num_deposito:Landroid/widget/TextView;

.field tv_plazo:Landroid/widget/TextView;

.field tv_tasa:Landroid/widget/TextView;

.field tv_tipo_deposito:Landroid/widget/TextView;

.field vp_cuentas:Landroid/support/v4/view/ViewPager;

.field vpi_cuentas:Lcom/viewpagerindicator/CirclePageIndicator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcl/santander/santanderCL/data/response/ItemIPF;)V
    .locals 0
    .param p1, "itemIPF"    # Lcl/santander/santanderCL/data/response/ItemIPF;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 106
    iput-object p1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->deposito_cobrar:Lcl/santander/santanderCL/data/response/ItemIPF;

    .line 107
    return-void
.end method

.method private AceptarCobro_RecargaDesafio()V
    .locals 15

    .prologue
    .line 237
    new-instance v14, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$2;

    invoke-direct {v14, p0}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$2;-><init>(Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;)V

    .line 244
    .local v14, "run":Ljava/lang/Runnable;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 246
    .local v4, "s":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    sget-object v1, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v1}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->deposito_cobrar:Lcl/santander/santanderCL/data/response/ItemIPF;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/ItemIPF;->getNumeroOperacion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcl/santander/smartphone/ServicesManager;->DAP_AceptarCobro(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;

    move-result-object v13

    .line 250
    .local v13, "resp":Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;
    if-eqz v13, :cond_0

    .line 252
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->getCoordenada1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->tarj_coord1:Ljava/lang/String;

    .line 253
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->getCoordenada2()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->tarj_coord2:Ljava/lang/String;

    .line 254
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->getCoordenada3()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->tarj_coord3:Ljava/lang/String;

    .line 256
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->getListaDepositos()Lcl/santander/santanderCL/data/MatrizProductos;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    .line 258
    iput-object v13, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->datos_deposito:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;

    .line 260
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->rellenaDatos()V

    .line 294
    .end local v13    # "resp":Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;
    :goto_0
    return-void

    .line 264
    .restart local v13    # "resp":Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->getResources()Landroid/content/res/Resources;

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

    .line 267
    .end local v13    # "resp":Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;
    :catch_0
    move-exception v12

    .line 268
    .local v12, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->getResources()Landroid/content/res/Resources;

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

    .line 270
    .end local v12    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v12

    .line 271
    .local v12, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->getResources()Landroid/content/res/Resources;

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

    .line 273
    .end local v12    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v12

    .line 274
    .local v12, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v11, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$3;

    invoke-direct {v11, p0}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$3;-><init>(Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;)V

    .line 287
    .local v11, "cert":Ljava/lang/Runnable;
    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    .line 288
    .local v9, "s_cert":[Ljava/lang/String;
    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    iget-object v5, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->getResources()Landroid/content/res/Resources;

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

    .line 291
    :cond_1
    iget-object v5, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->getResources()Landroid/content/res/Resources;

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

.method private Confirmar()V
    .locals 26

    .prologue
    .line 349
    new-instance v25, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$4;

    invoke-direct/range {v25 .. v26}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$4;-><init>(Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;)V

    .line 357
    .local v25, "run":Ljava/lang/Runnable;
    const/4 v2, 0x1

    new-array v14, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v2

    .line 358
    .local v14, "s":[Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->getCoords(I)Ljava/lang/String;

    move-result-object v5

    .line 359
    .local v5, "c1":Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->getCoords(I)Ljava/lang/String;

    move-result-object v6

    .line 360
    .local v6, "c2":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->getCoords(I)Ljava/lang/String;

    move-result-object v7

    .line 361
    .local v7, "c3":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->et_email:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    .line 366
    .local v9, "email":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    sget-object v3, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v3}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->deposito_cobrar:Lcl/santander/santanderCL/data/response/ItemIPF;

    invoke-virtual {v4}, Lcl/santander/santanderCL/data/response/ItemIPF;->getNumeroOperacion()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->vp_cuentas:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v10}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v10

    invoke-virtual {v8, v10}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v8

    invoke-virtual {v8}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContrato()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v2 .. v9}, Lcl/santander/smartphone/ServicesManager;->DAP_ConfirmarCobro(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;

    move-result-object v24

    .line 369
    .local v24, "resp":Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;
    if-eqz v24, :cond_0

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v23

    .line 373
    .local v23, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f060062

    new-instance v3, Lcl/santander/smartphone/InversionesDepositosCobrarReport;

    move-object/from16 v0, v24

    invoke-direct {v3, v0, v9}, Lcl/santander/smartphone/InversionesDepositosCobrarReport;-><init>(Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 374
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 375
    invoke-virtual/range {v23 .. v23}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 411
    .end local v23    # "ft":Landroid/support/v4/app/FragmentTransaction;
    .end local v24    # "resp":Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;
    :goto_0
    return-void

    .line 380
    .restart local v24    # "resp":Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05015a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->getResources()Landroid/content/res/Resources;

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

    .line 385
    .end local v24    # "resp":Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;
    :catch_0
    move-exception v22

    .line 386
    .local v22, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->getResources()Landroid/content/res/Resources;

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

    .line 388
    .end local v22    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v22

    .line 389
    .local v22, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->getResources()Landroid/content/res/Resources;

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

    .line 391
    .end local v22    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v22

    .line 392
    .local v22, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v21, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$5;-><init>(Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;)V

    .line 405
    .local v21, "cert":Ljava/lang/Runnable;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0501c6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v19, v2

    .line 406
    .local v19, "s_cert":[Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 407
    move-object/from16 v0, p0

    iget-object v15, v0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->getResources()Landroid/content/res/Resources;

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

    .line 409
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->getResources()Landroid/content/res/Resources;

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

.method static synthetic access$0(Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;)V
    .locals 0

    .prologue
    .line 346
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->Confirmar()V

    return-void
.end method

.method static synthetic access$1(Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;)V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->AceptarCobro_RecargaDesafio()V

    return-void
.end method

.method private initComponents()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 147
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060172

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->tv_coord1:Landroid/widget/TextView;

    .line 148
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060173

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->tv_coord2:Landroid/widget/TextView;

    .line 149
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060174

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->tv_coord3:Landroid/widget/TextView;

    .line 151
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060171

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->tv_instrucciones:Landroid/widget/TextView;

    .line 152
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060166

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->tv_fecha_vencimiento:Landroid/widget/TextView;

    .line 153
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060165

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->tv_fecha_inversion:Landroid/widget/TextView;

    .line 154
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060168

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->tv_monto_cobrar:Landroid/widget/TextView;

    .line 155
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060163

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->tv_plazo:Landroid/widget/TextView;

    .line 156
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060164

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->tv_tasa:Landroid/widget/TextView;

    .line 157
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06015f

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->tv_tipo_deposito:Landroid/widget/TextView;

    .line 158
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060160

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->tv_moneda:Landroid/widget/TextView;

    .line 159
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060162

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->tv_monto_invertido:Landroid/widget/TextView;

    .line 160
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06015e

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->tv_num_deposito:Landroid/widget/TextView;

    .line 161
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060161

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->tv_invertido_label:Landroid/widget/TextView;

    .line 162
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060167

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->tv_cobrar_label:Landroid/widget/TextView;

    .line 165
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06016e

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->et_email:Landroid/widget/EditText;

    .line 167
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060178

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->bt_confirmar:Landroid/widget/Button;

    .line 169
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06016a

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->vp_cuentas:Landroid/support/v4/view/ViewPager;

    .line 170
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06016b

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/CirclePageIndicator;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->vpi_cuentas:Lcom/viewpagerindicator/CirclePageIndicator;

    .line 173
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->vpi_cuentas:Lcom/viewpagerindicator/CirclePageIndicator;

    const v1, -0xaaaaab

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setFillColor(I)V

    .line 174
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->vpi_cuentas:Lcom/viewpagerindicator/CirclePageIndicator;

    const v1, -0x222223

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setPageColor(I)V

    .line 178
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->bt_confirmar:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 179
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->bt_confirmar:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$1;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$1;-><init>(Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06016f

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->et_coord1:Landroid/widget/EditText;

    .line 188
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->et_coord1:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 189
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->et_coord1:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 190
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->et_coord1:Landroid/widget/EditText;

    new-instance v1, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$CustomTextWatcher;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$CustomTextWatcher;-><init>(Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 191
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060175

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->et_coord2:Landroid/widget/EditText;

    .line 192
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->et_coord2:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 193
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->et_coord2:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 194
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->et_coord2:Landroid/widget/EditText;

    new-instance v1, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$CustomTextWatcher;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$CustomTextWatcher;-><init>(Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 195
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060176

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->et_coord3:Landroid/widget/EditText;

    .line 196
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->et_coord3:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 197
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->et_coord3:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 198
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->et_coord3:Landroid/widget/EditText;

    new-instance v1, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$CustomTextWatcher;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar$CustomTextWatcher;-><init>(Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 203
    return-void
.end method

.method private rellenaDatos()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 303
    new-instance v0, Lcl/santander/smartphone/ProductosPageAdapter;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-object v2, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-direct {v0, v1, v2}, Lcl/santander/smartphone/ProductosPageAdapter;-><init>(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcl/santander/santanderCL/data/MatrizProductos;)V

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->pageAdapterOrigen:Lcl/santander/smartphone/ProductosPageAdapter;

    .line 305
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->vp_cuentas:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->pageAdapterOrigen:Lcl/santander/smartphone/ProductosPageAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 307
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->vpi_cuentas:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->vp_cuentas:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 310
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->tv_tipo_deposito:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->datos_deposito:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->getDescripcionDeposito()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->tv_monto_cobrar:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->datos_deposito:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->getMontoACobrar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->tv_plazo:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->datos_deposito:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->getPlazo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->tv_fecha_vencimiento:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->datos_deposito:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->getFechaVencimiento()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->tv_fecha_inversion:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->datos_deposito:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->getFechaInversion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->tv_tasa:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->datos_deposito:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->getTasaInteres()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->tv_moneda:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->datos_deposito:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->getDescripcionMoneda()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->tv_monto_invertido:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->datos_deposito:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->getMontoInversion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->tv_num_deposito:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->datos_deposito:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->getNumeroDeposito()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->tv_cobrar_label:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f050180

    invoke-virtual {p0, v2}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->datos_deposito:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->getSimboloTipoReajuste()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->tv_invertido_label:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f05018a

    invoke-virtual {p0, v2}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->datos_deposito:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->getSimboloTipoReajuste()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->tv_instrucciones:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f050070

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 327
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->datos_deposito:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->getNumeroTarjeta()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 328
    iget-object v2, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f050071

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 326
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->tv_coord1:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->tarj_coord1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->tv_coord2:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->tarj_coord2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->tv_coord3:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->tarj_coord3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->datos_deposito:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;

    invoke-virtual {v0}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoAceptarResponse;->getBis57()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    new-array v4, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    const v1, 0x7f05002d

    invoke-virtual {p0, v1}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 337
    .local v4, "s":[Ljava/lang/String;
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f05013c

    invoke-virtual {p0, v1}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0501bd

    invoke-virtual {p0, v2}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 340
    .end local v4    # "s":[Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public cambiafoco()V
    .locals 3

    .prologue
    .line 460
    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->et_coord1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 461
    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->et_coord2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->et_coord2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 463
    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->et_coord3:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 464
    :cond_2
    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->et_coord3:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 466
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->et_coord3:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 467
    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->bt_confirmar:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 468
    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->m_View:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method public getCoords(I)Ljava/lang/String;
    .locals 3
    .param p1, "_coord"    # I

    .prologue
    .line 207
    const-string v0, ""

    .line 208
    .local v0, "resultado":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 227
    :goto_0
    return-object v0

    .line 210
    :pswitch_0
    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->et_coord1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->et_coord1:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 214
    :pswitch_1
    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->et_coord2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->et_coord2:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 218
    :pswitch_2
    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->et_coord3:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->et_coord3:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->bt_confirmar:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 208
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
    .line 121
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 124
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 125
    const/4 v0, 0x2

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050171

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->setHasOptionsMenu(Z)V

    .line 132
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->m_View:Landroid/view/View;

    invoke-static {v0, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 135
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->initComponents()V

    .line 138
    sget-boolean v0, Lcl/santander/smartphone/Global;->volverSaldos:Z

    if-nez v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->AceptarCobro_RecargaDesafio()V

    .line 142
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 114
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 116
    :goto_0
    return-object v0

    .line 115
    :cond_0
    const v0, 0x7f030039

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->m_View:Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->m_View:Landroid/view/View;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 415
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 421
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 418
    :pswitch_0
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarConfirmar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 415
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
