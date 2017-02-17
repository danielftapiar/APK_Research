.class public Lcl/santander/smartphone/InversionesDepositosSimular;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "InversionesDepositosSimular.java"


# instance fields
.field ajusteSeleccionado:Lcl/santander/santanderCL/utils/Constant$TIPO_AJUSTE;

.field bt_invertir:Landroid/widget/Button;

.field bt_solicitar:Landroid/widget/Button;

.field bt_volver_simular:Landroid/widget/Button;

.field datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

.field depositoSeleccionado:Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;

.field ll_fecha_inversion:Landroid/widget/LinearLayout;

.field ll_fecha_vencimiento:Landroid/widget/LinearLayout;

.field private m_View:Landroid/view/View;

.field monto:I

.field plazo:I

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;

.field tv_fecha:Landroid/widget/TextView;

.field tv_fecha_inversion:Landroid/widget/TextView;

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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(IILcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;Lcl/santander/santanderCL/utils/Constant$TIPO_AJUSTE;)V
    .locals 0
    .param p1, "montoInt"    # I
    .param p2, "plazoInt"    # I
    .param p3, "depositoSeleccionado2"    # Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;
    .param p4, "ajusteSeleccionado2"    # Lcl/santander/santanderCL/utils/Constant$TIPO_AJUSTE;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 79
    iput p1, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->monto:I

    .line 80
    iput p2, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->plazo:I

    .line 81
    iput-object p3, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->depositoSeleccionado:Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;

    .line 82
    iput-object p4, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->ajusteSeleccionado:Lcl/santander/santanderCL/utils/Constant$TIPO_AJUSTE;

    .line 83
    return-void
.end method

.method private BackAndClean()V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    sput-boolean v0, Lcl/santander/smartphone/Global;->volverSimular:Z

    .line 173
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    .line 174
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    .line 175
    return-void
.end method

.method private Invertir()V
    .locals 15

    .prologue
    .line 254
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 256
    .local v4, "s":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    sget-object v1, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v1}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    invoke-static {v0, v1, v2}, Lcl/santander/smartphone/ServicesManager;->AceptarDepositoPlazo(Landroid/app/Activity;Ljava/lang/String;Lcl/santander/santanderCL/data/DatosSimularDeposito;)Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;

    move-result-object v14

    .line 259
    .local v14, "resp":Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;
    if-eqz v14, :cond_0

    .line 262
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v13

    .line 263
    .local v13, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v0, 0x7f060062

    new-instance v1, Lcl/santander/smartphone/InversionesDepositosConfirmar;

    iget-object v2, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    invoke-direct {v1, v2, v14}, Lcl/santander/smartphone/InversionesDepositosConfirmar;-><init>(Lcl/santander/santanderCL/data/DatosSimularDeposito;Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;)V

    invoke-virtual {v13, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 264
    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 265
    invoke-virtual {v13}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 301
    .end local v13    # "ft":Landroid/support/v4/app/FragmentTransaction;
    .end local v14    # "resp":Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;
    :goto_0
    return-void

    .line 270
    .restart local v14    # "resp":Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosSimular;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosSimular;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 273
    .end local v14    # "resp":Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoAceptarResponse;
    :catch_0
    move-exception v12

    .line 275
    .local v12, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosSimular;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 277
    .end local v12    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v12

    .line 279
    .local v12, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosSimular;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/InfoException;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/Info;->getMsgUsuario()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 281
    .end local v12    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v12

    .line 282
    .local v12, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v11, Lcl/santander/smartphone/InversionesDepositosSimular$7;

    invoke-direct {v11, p0}, Lcl/santander/smartphone/InversionesDepositosSimular$7;-><init>(Lcl/santander/smartphone/InversionesDepositosSimular;)V

    .line 295
    .local v11, "cert":Ljava/lang/Runnable;
    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosSimular;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    .line 296
    .local v9, "s_cert":[Ljava/lang/String;
    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    iget-object v5, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosSimular;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosSimular;->getResources()Landroid/content/res/Resources;

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

    .line 299
    :cond_1
    iget-object v5, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosSimular;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosSimular;->getResources()Landroid/content/res/Resources;

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

.method private Simular()V
    .locals 20

    .prologue
    .line 180
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/santander/smartphone/InversionesDepositosSimular;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v19, v2

    .line 181
    .local v19, "s":[Ljava/lang/String;
    new-instance v18, Lcl/santander/smartphone/InversionesDepositosSimular$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcl/santander/smartphone/InversionesDepositosSimular$4;-><init>(Lcl/santander/smartphone/InversionesDepositosSimular;)V

    .line 190
    .local v18, "run":Ljava/lang/Runnable;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/InversionesDepositosSimular;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    sget-object v3, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v3}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/InversionesDepositosSimular;->depositoSeleccionado:Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcl/santander/smartphone/InversionesDepositosSimular;->ajusteSeleccionado:Lcl/santander/santanderCL/utils/Constant$TIPO_AJUSTE;

    move-object/from16 v0, p0

    iget v6, v0, Lcl/santander/smartphone/InversionesDepositosSimular;->monto:I

    move-object/from16 v0, p0

    iget v7, v0, Lcl/santander/smartphone/InversionesDepositosSimular;->plazo:I

    invoke-static/range {v2 .. v7}, Lcl/santander/smartphone/ServicesManager;->SimularDepositoPlazo(Landroid/app/Activity;Ljava/lang/String;Lcl/santander/santanderCL/utils/Constant$TIPO_DEPOSITO;Lcl/santander/santanderCL/utils/Constant$TIPO_AJUSTE;II)Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;

    move-result-object v17

    .line 194
    .local v17, "resp":Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;
    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;->getDatos()Lcl/santander/santanderCL/data/DatosSimularDeposito;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 196
    invoke-virtual/range {v17 .. v17}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;->getDatos()Lcl/santander/santanderCL/data/DatosSimularDeposito;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcl/santander/smartphone/InversionesDepositosSimular;->datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/InversionesDepositosSimular;->datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->getDescripcion()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/InversionesDepositosSimular;->datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->getTipoAjustes()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/InversionesDepositosSimular;->datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->getMontoAInvertirScreen()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/InversionesDepositosSimular;->datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->getPlazo()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/InversionesDepositosSimular;->datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->getTasaInteres()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/InversionesDepositosSimular;->datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->getMontoACobrar()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/InversionesDepositosSimular;->datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->getInteresesAGanar()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/InversionesDepositosSimular;->datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->getFechaVencimiento()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/InversionesDepositosSimular;->datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->getSignoMoneda()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/InversionesDepositosSimular;->datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->isIndicadorInversion()Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/InversionesDepositosSimular;->datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->getFechaInversion()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/InversionesDepositosSimular;->datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->getDescripcionFechaInversion()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v14}, Lcl/santander/smartphone/InversionesDepositosSimular;->rellenaDatos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 235
    .end local v17    # "resp":Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;
    :goto_0
    return-void

    .line 202
    .restart local v17    # "resp":Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/InversionesDepositosSimular;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesDepositosSimular;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05015a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesDepositosSimular;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0500c0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Runnable;

    const/4 v8, 0x0

    aput-object v18, v7, v8

    move-object/from16 v6, v19

    invoke-static/range {v2 .. v7}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 203
    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const/4 v12, 0x0

    const-string v13, ""

    const-string v14, ""

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v14}, Lcl/santander/smartphone/InversionesDepositosSimular;->rellenaDatos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 207
    .end local v17    # "resp":Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoSimularResponse;
    :catch_0
    move-exception v16

    .line 208
    .local v16, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/InversionesDepositosSimular;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesDepositosSimular;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05015b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Runnable;

    const/4 v8, 0x0

    aput-object v18, v7, v8

    move-object/from16 v6, v19

    invoke-static/range {v2 .. v7}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 209
    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const/4 v12, 0x0

    const-string v13, ""

    const-string v14, ""

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v14}, Lcl/santander/smartphone/InversionesDepositosSimular;->rellenaDatos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 211
    .end local v16    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v16

    .line 212
    .local v16, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/InversionesDepositosSimular;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesDepositosSimular;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05015c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcl/santander/santanderCL/exceptions/InfoException;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v4

    invoke-virtual {v4}, Lcl/santander/santanderCL/data/response/Info;->getMsgUsuario()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Runnable;

    const/4 v8, 0x0

    aput-object v18, v7, v8

    move-object/from16 v6, v19

    invoke-static/range {v2 .. v7}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 213
    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const/4 v12, 0x0

    const-string v13, ""

    const-string v14, ""

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v14}, Lcl/santander/smartphone/InversionesDepositosSimular;->rellenaDatos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 215
    .end local v16    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v16

    .line 216
    .local v16, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v15, Lcl/santander/smartphone/InversionesDepositosSimular$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcl/santander/smartphone/InversionesDepositosSimular$5;-><init>(Lcl/santander/smartphone/InversionesDepositosSimular;)V

    .line 229
    .local v15, "cert":Ljava/lang/Runnable;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesDepositosSimular;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0501c6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 230
    .local v6, "s_cert":[Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/InversionesDepositosSimular;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesDepositosSimular;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0501c4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesDepositosSimular;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0501c5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Runnable;

    const/4 v8, 0x0

    aput-object v15, v7, v8

    invoke-static/range {v2 .. v7}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 233
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/InversionesDepositosSimular;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesDepositosSimular;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0501c2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesDepositosSimular;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0501c3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Runnable;

    const/4 v8, 0x0

    aput-object v15, v7, v8

    invoke-static/range {v2 .. v7}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method private Solicitar()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x2

    .line 239
    new-array v4, v3, [Ljava/lang/String;

    const v0, 0x7f050040

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/InversionesDepositosSimular;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    const v0, 0x7f0500f6

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/InversionesDepositosSimular;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 241
    .local v4, "s":[Ljava/lang/String;
    new-instance v6, Lcl/santander/smartphone/InversionesDepositosSimular$6;

    invoke-direct {v6, p0}, Lcl/santander/smartphone/InversionesDepositosSimular$6;-><init>(Lcl/santander/smartphone/InversionesDepositosSimular;)V

    .line 248
    .local v6, "ok":Ljava/lang/Runnable;
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosSimular;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05013d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosSimular;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0501ca

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    invoke-virtual {v5}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->getDescripcionFechaInversion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\n\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v5, 0x7f0501cb

    invoke-virtual {p0, v5}, Lcl/santander/smartphone/InversionesDepositosSimular;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Runnable;

    aput-object v6, v5, v8

    const/4 v7, 0x0

    aput-object v7, v5, v9

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 250
    return-void
.end method

.method static synthetic access$0(Lcl/santander/smartphone/InversionesDepositosSimular;)V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesDepositosSimular;->BackAndClean()V

    return-void
.end method

.method static synthetic access$1(Lcl/santander/smartphone/InversionesDepositosSimular;)V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesDepositosSimular;->Invertir()V

    return-void
.end method

.method static synthetic access$2(Lcl/santander/smartphone/InversionesDepositosSimular;)V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesDepositosSimular;->Solicitar()V

    return-void
.end method

.method private initComponents()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601d7

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->tv_fecha:Landroid/widget/TextView;

    .line 120
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601d3

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->tv_intereses:Landroid/widget/TextView;

    .line 121
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601d1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->tv_monto_cobrar:Landroid/widget/TextView;

    .line 122
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601cc

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->tv_monto_invertir:Landroid/widget/TextView;

    .line 123
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601cd

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->tv_plazo:Landroid/widget/TextView;

    .line 124
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601cf

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->tv_tasa:Landroid/widget/TextView;

    .line 125
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601ca

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->tv_tipo_deposito:Landroid/widget/TextView;

    .line 126
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601cb

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->tv_tipo_reajuste:Landroid/widget/TextView;

    .line 127
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601d0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->tv_label_cobrar:Landroid/widget/TextView;

    .line 128
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601d2

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->tv_label_intereses:Landroid/widget/TextView;

    .line 129
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601d5

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->tv_fecha_inversion:Landroid/widget/TextView;

    .line 130
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601ce

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->tv_tasa_texto:Landroid/widget/TextView;

    .line 132
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601d4

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->ll_fecha_inversion:Landroid/widget/LinearLayout;

    .line 133
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601d6

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->ll_fecha_vencimiento:Landroid/widget/LinearLayout;

    .line 135
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601d9

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->bt_invertir:Landroid/widget/Button;

    .line 136
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601d8

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->bt_volver_simular:Landroid/widget/Button;

    .line 137
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601da

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->bt_solicitar:Landroid/widget/Button;

    .line 139
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->ajusteSeleccionado:Lcl/santander/santanderCL/utils/Constant$TIPO_AJUSTE;

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$TIPO_AJUSTE;->UDF:Lcl/santander/santanderCL/utils/Constant$TIPO_AJUSTE;

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/utils/Constant$TIPO_AJUSTE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->tv_tasa_texto:Landroid/widget/TextView;

    const v1, 0x7f05017f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->bt_volver_simular:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/InversionesDepositosSimular$1;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/InversionesDepositosSimular$1;-><init>(Lcl/santander/smartphone/InversionesDepositosSimular;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->bt_invertir:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/InversionesDepositosSimular$2;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/InversionesDepositosSimular$2;-><init>(Lcl/santander/smartphone/InversionesDepositosSimular;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->bt_solicitar:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/InversionesDepositosSimular$3;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/InversionesDepositosSimular$3;-><init>(Lcl/santander/smartphone/InversionesDepositosSimular;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    return-void
.end method

.method private rellenaDatos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "tipo_deposito"    # Ljava/lang/String;
    .param p2, "tipo_reajuste"    # Ljava/lang/String;
    .param p3, "monto_invertir"    # Ljava/lang/String;
    .param p4, "plazo"    # Ljava/lang/String;
    .param p5, "tasa"    # Ljava/lang/String;
    .param p6, "monto_cobrar"    # Ljava/lang/String;
    .param p7, "intereses_ganar"    # Ljava/lang/String;
    .param p8, "fecha_venc"    # Ljava/lang/String;
    .param p9, "signoMoneda"    # Ljava/lang/String;
    .param p10, "indicadorInversion"    # Z
    .param p11, "fechaInversion"    # Ljava/lang/String;
    .param p12, "descrFechaInversion"    # Ljava/lang/String;

    .prologue
    .line 305
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->tv_tipo_deposito:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->tv_tipo_reajuste:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->tv_monto_invertir:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->tv_monto_cobrar:Landroid/widget/TextView;

    invoke-virtual {v0, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->tv_plazo:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->tv_fecha:Landroid/widget/TextView;

    invoke-virtual {v0, p8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->tv_tasa:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->tv_intereses:Landroid/widget/TextView;

    invoke-virtual {v0, p7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->tv_label_cobrar:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f050180

    invoke-virtual {p0, v2}, Lcl/santander/smartphone/InversionesDepositosSimular;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->tv_label_intereses:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f050181

    invoke-virtual {p0, v2}, Lcl/santander/smartphone/InversionesDepositosSimular;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    if-nez p10, :cond_0

    .line 318
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->bt_invertir:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->bt_solicitar:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->ll_fecha_inversion:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->tv_fecha_inversion:Landroid/widget/TextView;

    invoke-virtual {v0, p12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->ll_fecha_vencimiento:Landroid/widget/LinearLayout;

    const-string v1, "#ffffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 335
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->bt_invertir:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->bt_solicitar:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->ll_fecha_inversion:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->ll_fecha_vencimiento:Landroid/widget/LinearLayout;

    const-string v1, "#fff0f0f0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosSimular;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 98
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 99
    const/4 v0, 0x2

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosSimular;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050170

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/InversionesDepositosSimular;->setHasOptionsMenu(Z)V

    .line 106
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->m_View:Landroid/view/View;

    invoke-static {v0, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 109
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesDepositosSimular;->initComponents()V

    .line 112
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesDepositosSimular;->Simular()V

    .line 115
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 90
    :goto_0
    return-object v0

    .line 89
    :cond_0
    const v0, 0x7f03003f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->m_View:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->m_View:Landroid/view/View;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 340
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 346
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 343
    :pswitch_0
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosSimular;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 340
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
