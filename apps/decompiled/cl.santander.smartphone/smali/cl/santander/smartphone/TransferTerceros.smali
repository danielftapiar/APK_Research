.class public Lcl/santander/smartphone/TransferTerceros;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "TransferTerceros.java"


# instance fields
.field bancosdestinatarios:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemBanco;",
            ">;"
        }
    .end annotation
.end field

.field private bt_aceptar:Landroid/widget/Button;

.field bt_destinatarios:Landroid/widget/Button;

.field cud:Lcl/santander/smartphone/CustomUltimosDestinatarios;

.field et_cuenta:Landroid/widget/EditText;

.field et_monto:Landroid/widget/EditText;

.field et_nombre:Landroid/widget/EditText;

.field et_rut:Landroid/widget/EditText;

.field m_View:Landroid/view/View;

.field sf:Lcom/actionbarsherlock/app/SherlockFragment;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;

.field sp_banco:Landroid/widget/Spinner;

.field sp_tipocuenta:Landroid/widget/Spinner;

.field tiposcuentasdestinatarios:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemTipoCuenta;",
            ">;"
        }
    .end annotation
.end field

.field ultimas_transferencias:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemUltTransf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/widget/Button;)V
    .locals 0
    .param p1, "aceptar"    # Landroid/widget/Button;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 68
    iput-object p1, p0, Lcl/santander/smartphone/TransferTerceros;->bt_aceptar:Landroid/widget/Button;

    .line 69
    return-void
.end method

.method static synthetic access$0(Lcl/santander/smartphone/TransferTerceros;)V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Lcl/santander/smartphone/TransferTerceros;->cambiaEstadoBoton()V

    return-void
.end method

.method static synthetic access$1(Lcl/santander/smartphone/TransferTerceros;)Z
    .locals 1

    .prologue
    .line 300
    invoke-direct {p0}, Lcl/santander/smartphone/TransferTerceros;->getUltimosDestinatarios()Z

    move-result v0

    return v0
.end method

.method private cambiaEstadoBoton()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 175
    const/4 v0, 0x1

    .line 176
    .local v0, "resultado":Z
    iget-object v1, p0, Lcl/santander/smartphone/TransferTerceros;->et_cuenta:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    const/4 v0, 0x0

    .line 178
    :cond_0
    iget-object v1, p0, Lcl/santander/smartphone/TransferTerceros;->et_monto:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    const/4 v0, 0x0

    .line 180
    :cond_1
    iget-object v1, p0, Lcl/santander/smartphone/TransferTerceros;->et_nombre:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 181
    const/4 v0, 0x0

    .line 182
    :cond_2
    iget-object v1, p0, Lcl/santander/smartphone/TransferTerceros;->et_rut:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 183
    const/4 v0, 0x0

    .line 184
    :cond_3
    iget-object v1, p0, Lcl/santander/smartphone/TransferTerceros;->sp_banco:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcl/santander/smartphone/TransferTerceros;->sp_banco:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, v3, :cond_5

    .line 185
    :cond_4
    const/4 v0, 0x0

    .line 186
    :cond_5
    iget-object v1, p0, Lcl/santander/smartphone/TransferTerceros;->sp_tipocuenta:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcl/santander/smartphone/TransferTerceros;->sp_tipocuenta:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, v3, :cond_7

    .line 187
    :cond_6
    const/4 v0, 0x0

    .line 189
    :cond_7
    iget-object v1, p0, Lcl/santander/smartphone/TransferTerceros;->bt_aceptar:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 190
    return-void
.end method

.method private getDataBancosCuentas()Z
    .locals 15

    .prologue
    const/4 v6, 0x0

    const/4 v14, 0x0

    const/4 v8, 0x1

    .line 359
    new-array v4, v8, [Ljava/lang/String;

    iget-object v0, p0, Lcl/santander/smartphone/TransferTerceros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v14

    .line 363
    .local v4, "s":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcl/santander/smartphone/TransferTerceros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-static {v0}, Lcl/santander/smartphone/ServicesManager;->transf_terceros_bancostipocuenta(Landroid/app/Activity;)Lcl/santander/santanderCL/response/Transf_Terceros_BancosTipoCuentaResponse;

    move-result-object v13

    .line 366
    .local v13, "tbtc":Lcl/santander/santanderCL/response/Transf_Terceros_BancosTipoCuentaResponse;
    if-eqz v13, :cond_0

    .line 368
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/Transf_Terceros_BancosTipoCuentaResponse;->getBancos()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/TransferTerceros;->bancosdestinatarios:Ljava/util/ArrayList;

    .line 369
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/Transf_Terceros_BancosTipoCuentaResponse;->getTipoCuenta()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/TransferTerceros;->tiposcuentasdestinatarios:Ljava/util/ArrayList;

    .line 406
    .end local v13    # "tbtc":Lcl/santander/santanderCL/response/Transf_Terceros_BancosTipoCuentaResponse;
    :goto_0
    return v8

    .line 375
    .restart local v13    # "tbtc":Lcl/santander/santanderCL/response/Transf_Terceros_BancosTipoCuentaResponse;
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/TransferTerceros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/TransferTerceros;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/TransferTerceros;->getResources()Landroid/content/res/Resources;

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

    move v8, v14

    .line 376
    goto :goto_0

    .line 378
    .end local v13    # "tbtc":Lcl/santander/santanderCL/response/Transf_Terceros_BancosTipoCuentaResponse;
    :catch_0
    move-exception v12

    .line 379
    .local v12, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    iget-object v0, p0, Lcl/santander/smartphone/TransferTerceros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/TransferTerceros;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v2

    move v3, v8

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .end local v12    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :goto_1
    move v8, v14

    .line 406
    goto :goto_0

    .line 381
    :catch_1
    move-exception v12

    .line 382
    .local v12, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    iget-object v0, p0, Lcl/santander/smartphone/TransferTerceros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/TransferTerceros;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/InfoException;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/Info;->getMsgUsuario()Ljava/lang/String;

    move-result-object v2

    move v3, v8

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 385
    .end local v12    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v12

    .line 386
    .local v12, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v11, Lcl/santander/smartphone/TransferTerceros$8;

    invoke-direct {v11, p0}, Lcl/santander/smartphone/TransferTerceros$8;-><init>(Lcl/santander/smartphone/TransferTerceros;)V

    .line 399
    .local v11, "cert":Ljava/lang/Runnable;
    new-array v9, v8, [Ljava/lang/String;

    invoke-virtual {p0}, Lcl/santander/smartphone/TransferTerceros;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v14

    .line 400
    .local v9, "s_cert":[Ljava/lang/String;
    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    iget-object v5, p0, Lcl/santander/smartphone/TransferTerceros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/TransferTerceros;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/TransferTerceros;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v10, v8, [Ljava/lang/Runnable;

    aput-object v11, v10, v14

    invoke-static/range {v5 .. v10}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 403
    :cond_1
    iget-object v5, p0, Lcl/santander/smartphone/TransferTerceros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/TransferTerceros;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/TransferTerceros;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v10, v8, [Ljava/lang/Runnable;

    aput-object v11, v10, v14

    invoke-static/range {v5 .. v10}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1
.end method

.method private getUltimosDestinatarios()Z
    .locals 15

    .prologue
    const/4 v6, 0x0

    const/4 v14, 0x0

    const/4 v8, 0x1

    .line 304
    new-array v4, v8, [Ljava/lang/String;

    iget-object v0, p0, Lcl/santander/smartphone/TransferTerceros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v14

    .line 308
    .local v4, "s":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcl/santander/smartphone/TransferTerceros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    sget-object v1, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v1}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcl/santander/smartphone/ServicesManager;->transf_terceros_ultimas_transf(Landroid/app/Activity;Ljava/lang/String;)Lcl/santander/santanderCL/response/Transf_Terceros_Ultimas_TransfResponse;

    move-result-object v13

    .line 311
    .local v13, "tut":Lcl/santander/santanderCL/response/Transf_Terceros_Ultimas_TransfResponse;
    if-eqz v13, :cond_0

    .line 313
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/Transf_Terceros_Ultimas_TransfResponse;->getUltTransf()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/TransferTerceros;->ultimas_transferencias:Ljava/util/ArrayList;

    .line 349
    .end local v13    # "tut":Lcl/santander/santanderCL/response/Transf_Terceros_Ultimas_TransfResponse;
    :goto_0
    return v8

    .line 318
    .restart local v13    # "tut":Lcl/santander/santanderCL/response/Transf_Terceros_Ultimas_TransfResponse;
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/TransferTerceros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/TransferTerceros;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/TransferTerceros;->getResources()Landroid/content/res/Resources;

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

    move v8, v14

    .line 319
    goto :goto_0

    .line 321
    .end local v13    # "tut":Lcl/santander/santanderCL/response/Transf_Terceros_Ultimas_TransfResponse;
    :catch_0
    move-exception v12

    .line 322
    .local v12, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    iget-object v0, p0, Lcl/santander/smartphone/TransferTerceros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/TransferTerceros;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v2

    move v3, v8

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .end local v12    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :goto_1
    move v8, v14

    .line 349
    goto :goto_0

    .line 324
    :catch_1
    move-exception v12

    .line 325
    .local v12, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    iget-object v0, p0, Lcl/santander/smartphone/TransferTerceros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/TransferTerceros;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/InfoException;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/Info;->getMsgUsuario()Ljava/lang/String;

    move-result-object v2

    move v3, v8

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 328
    .end local v12    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v12

    .line 329
    .local v12, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v11, Lcl/santander/smartphone/TransferTerceros$7;

    invoke-direct {v11, p0}, Lcl/santander/smartphone/TransferTerceros$7;-><init>(Lcl/santander/smartphone/TransferTerceros;)V

    .line 342
    .local v11, "cert":Ljava/lang/Runnable;
    new-array v9, v8, [Ljava/lang/String;

    invoke-virtual {p0}, Lcl/santander/smartphone/TransferTerceros;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v14

    .line 343
    .local v9, "s_cert":[Ljava/lang/String;
    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    iget-object v5, p0, Lcl/santander/smartphone/TransferTerceros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/TransferTerceros;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/TransferTerceros;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v10, v8, [Ljava/lang/Runnable;

    aput-object v11, v10, v14

    invoke-static/range {v5 .. v10}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 346
    :cond_1
    iget-object v5, p0, Lcl/santander/smartphone/TransferTerceros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/TransferTerceros;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/TransferTerceros;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v10, v8, [Ljava/lang/Runnable;

    aput-object v11, v10, v14

    invoke-static/range {v5 .. v10}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1
.end method

.method private initComponents()V
    .locals 3

    .prologue
    .line 100
    iget-object v1, p0, Lcl/santander/smartphone/TransferTerceros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v2, 0x7f060325

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcl/santander/smartphone/TransferTerceros;->et_rut:Landroid/widget/EditText;

    .line 102
    iget-object v1, p0, Lcl/santander/smartphone/TransferTerceros;->et_rut:Landroid/widget/EditText;

    new-instance v2, Lcl/santander/smartphone/TransferTerceros$1;

    invoke-direct {v2, p0}, Lcl/santander/smartphone/TransferTerceros$1;-><init>(Lcl/santander/smartphone/TransferTerceros;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 123
    iget-object v1, p0, Lcl/santander/smartphone/TransferTerceros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v2, 0x7f060326

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcl/santander/smartphone/TransferTerceros;->et_nombre:Landroid/widget/EditText;

    .line 124
    iget-object v1, p0, Lcl/santander/smartphone/TransferTerceros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v2, 0x7f060327

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcl/santander/smartphone/TransferTerceros;->et_cuenta:Landroid/widget/EditText;

    .line 125
    iget-object v1, p0, Lcl/santander/smartphone/TransferTerceros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v2, 0x7f060329

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcl/santander/smartphone/TransferTerceros;->et_monto:Landroid/widget/EditText;

    .line 126
    iget-object v1, p0, Lcl/santander/smartphone/TransferTerceros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v2, 0x7f060322

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcl/santander/smartphone/TransferTerceros;->bt_destinatarios:Landroid/widget/Button;

    .line 127
    iget-object v1, p0, Lcl/santander/smartphone/TransferTerceros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v2, 0x7f060323

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcl/santander/smartphone/TransferTerceros;->sp_banco:Landroid/widget/Spinner;

    .line 128
    iget-object v1, p0, Lcl/santander/smartphone/TransferTerceros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v2, 0x7f060324

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcl/santander/smartphone/TransferTerceros;->sp_tipocuenta:Landroid/widget/Spinner;

    .line 130
    iget-object v1, p0, Lcl/santander/smartphone/TransferTerceros;->et_nombre:Landroid/widget/EditText;

    new-instance v2, Lcl/santander/smartphone/TransferTerceros$2;

    invoke-direct {v2, p0}, Lcl/santander/smartphone/TransferTerceros$2;-><init>(Lcl/santander/smartphone/TransferTerceros;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 153
    new-instance v0, Lcl/santander/smartphone/TransferTerceros$3;

    invoke-direct {v0, p0}, Lcl/santander/smartphone/TransferTerceros$3;-><init>(Lcl/santander/smartphone/TransferTerceros;)V

    .line 168
    .local v0, "tw":Landroid/text/TextWatcher;
    iget-object v1, p0, Lcl/santander/smartphone/TransferTerceros;->et_cuenta:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 169
    iget-object v1, p0, Lcl/santander/smartphone/TransferTerceros;->et_monto:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 171
    return-void
.end method

.method private loadBancosyTiposdeCuentas()V
    .locals 6

    .prologue
    const v5, 0x7f030064

    .line 194
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v2, "spinnerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "Banco"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcl/santander/smartphone/TransferTerceros;->bancosdestinatarios:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 199
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcl/santander/smartphone/TransferTerceros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 200
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 201
    iget-object v3, p0, Lcl/santander/smartphone/TransferTerceros;->sp_banco:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 205
    iget-object v3, p0, Lcl/santander/smartphone/TransferTerceros;->sp_banco:Landroid/widget/Spinner;

    new-instance v4, Lcl/santander/smartphone/TransferTerceros$4;

    invoke-direct {v4, p0}, Lcl/santander/smartphone/TransferTerceros$4;-><init>(Lcl/santander/smartphone/TransferTerceros;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 215
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "spinnerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .restart local v2    # "spinnerArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "Tipo de cuenta"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcl/santander/smartphone/TransferTerceros;->tiposcuentasdestinatarios:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 219
    new-instance v0, Landroid/widget/ArrayAdapter;

    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v3, p0, Lcl/santander/smartphone/TransferTerceros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 220
    .restart local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 221
    iget-object v3, p0, Lcl/santander/smartphone/TransferTerceros;->sp_tipocuenta:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 225
    iget-object v3, p0, Lcl/santander/smartphone/TransferTerceros;->sp_tipocuenta:Landroid/widget/Spinner;

    new-instance v4, Lcl/santander/smartphone/TransferTerceros$5;

    invoke-direct {v4, p0}, Lcl/santander/smartphone/TransferTerceros$5;-><init>(Lcl/santander/smartphone/TransferTerceros;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 234
    return-void

    .line 197
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_0
    iget-object v3, p0, Lcl/santander/smartphone/TransferTerceros;->bancosdestinatarios:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcl/santander/santanderCL/data/response/ItemBanco;

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemBanco;->getNombre()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    .restart local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    iget-object v3, p0, Lcl/santander/smartphone/TransferTerceros;->tiposcuentasdestinatarios:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcl/santander/santanderCL/data/response/ItemTipoCuenta;

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemTipoCuenta;->getNombre()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private loadUltimosDestinatarios()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcl/santander/smartphone/TransferTerceros;->bt_destinatarios:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/TransferTerceros$6;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/TransferTerceros$6;-><init>(Lcl/santander/smartphone/TransferTerceros;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    return-void
.end method


# virtual methods
.method public getCodBanco()Ljava/lang/String;
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcl/santander/smartphone/TransferTerceros;->sp_banco:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Banco"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    const-string v0, ""

    .line 436
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/TransferTerceros;->bancosdestinatarios:Ljava/util/ArrayList;

    iget-object v1, p0, Lcl/santander/smartphone/TransferTerceros;->sp_banco:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/data/response/ItemBanco;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/ItemBanco;->getIdCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCodTipoCuenta()Ljava/lang/String;
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcl/santander/smartphone/TransferTerceros;->sp_tipocuenta:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Tipo de cuenta"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    const-string v0, ""

    .line 450
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/TransferTerceros;->tiposcuentasdestinatarios:Ljava/util/ArrayList;

    iget-object v1, p0, Lcl/santander/smartphone/TransferTerceros;->sp_tipocuenta:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/data/response/ItemTipoCuenta;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/ItemTipoCuenta;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCuenta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcl/santander/smartphone/TransferTerceros;->et_cuenta:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMonto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcl/santander/smartphone/TransferTerceros;->et_monto:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBanco()Ljava/lang/String;
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcl/santander/smartphone/TransferTerceros;->sp_banco:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Banco"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    const-string v0, ""

    .line 443
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/TransferTerceros;->bancosdestinatarios:Ljava/util/ArrayList;

    iget-object v1, p0, Lcl/santander/smartphone/TransferTerceros;->sp_banco:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/data/response/ItemBanco;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/ItemBanco;->getNombre()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNameTipoCuenta()Ljava/lang/String;
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcl/santander/smartphone/TransferTerceros;->sp_tipocuenta:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Tipo de cuenta"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    const-string v0, ""

    .line 457
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/TransferTerceros;->tiposcuentasdestinatarios:Ljava/util/ArrayList;

    iget-object v1, p0, Lcl/santander/smartphone/TransferTerceros;->sp_tipocuenta:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/data/response/ItemTipoCuenta;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/ItemTipoCuenta;->getNombre()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNombre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcl/santander/smartphone/TransferTerceros;->et_nombre:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRut()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcl/santander/smartphone/TransferTerceros;->et_rut:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 83
    iput-object p0, p0, Lcl/santander/smartphone/TransferTerceros;->sf:Lcom/actionbarsherlock/app/SherlockFragment;

    .line 84
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferTerceros;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/TransferTerceros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 85
    iget-object v0, p0, Lcl/santander/smartphone/TransferTerceros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/TransferTerceros;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 87
    iget-object v0, p0, Lcl/santander/smartphone/TransferTerceros;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/TransferTerceros;->m_View:Landroid/view/View;

    invoke-static {v0, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 88
    invoke-direct {p0}, Lcl/santander/smartphone/TransferTerceros;->initComponents()V

    .line 89
    invoke-direct {p0}, Lcl/santander/smartphone/TransferTerceros;->getDataBancosCuentas()Z

    .line 91
    invoke-direct {p0}, Lcl/santander/smartphone/TransferTerceros;->loadBancosyTiposdeCuentas()V

    .line 93
    invoke-direct {p0}, Lcl/santander/smartphone/TransferTerceros;->loadUltimosDestinatarios()V

    .line 95
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 76
    :goto_0
    return-object v0

    .line 75
    :cond_0
    const v0, 0x7f03006d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/TransferTerceros;->m_View:Landroid/view/View;

    .line 76
    iget-object v0, p0, Lcl/santander/smartphone/TransferTerceros;->m_View:Landroid/view/View;

    goto :goto_0
.end method
