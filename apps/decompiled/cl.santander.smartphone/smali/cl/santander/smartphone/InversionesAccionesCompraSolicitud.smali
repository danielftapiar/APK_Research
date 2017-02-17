.class public Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "InversionesAccionesCompraSolicitud.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$TIPOS_PRECIO;
    }
.end annotation


# static fields
.field public static final CANTIDAD:I = 0x2

.field public static final MONTO:I = 0x1


# instance fields
.field private accionSeleccionada:Lcl/santander/santanderCL/data/response/ItemAccionCompra;

.field private acciones_disponibles:Lcl/santander/santanderCL/data/MatrizAccionesCompra;

.field bt_continuar:Landroid/widget/Button;

.field bt_tipo_accion:Landroid/widget/Button;

.field private clienteClasificado:Ljava/lang/String;

.field private cuenta_custodia:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field et_cantidad_acciones:Landroid/widget/EditText;

.field et_monto_acciones:Landroid/widget/EditText;

.field et_monto_limite:Landroid/widget/EditText;

.field ly_cantidad:Landroid/widget/LinearLayout;

.field ly_continuar:Landroid/widget/LinearLayout;

.field ly_datos_accion:Landroid/widget/LinearLayout;

.field ly_input_precio_limite:Landroid/widget/LinearLayout;

.field ly_monto:Landroid/widget/LinearLayout;

.field ly_monto_o_cantidad:Landroid/widget/LinearLayout;

.field ly_numero_dias:Landroid/widget/LinearLayout;

.field ly_tipo_accion:Landroid/widget/LinearLayout;

.field ly_tipo_precio:Landroid/widget/LinearLayout;

.field m_View:Landroid/view/View;

.field private monto_o_cantidad:I

.field private numero_dias:I

.field sf:Lcom/actionbarsherlock/app/SherlockFragment;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;

.field sp_monto_o_cantidad:Landroid/widget/Spinner;

.field sp_numero_dias:Landroid/widget/Spinner;

.field sp_tipo_precio:Landroid/widget/Spinner;

.field private telf:Ljava/lang/String;

.field tipo_precio:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$TIPOS_PRECIO;

.field tv_precio_actual:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method private SolicitaAccionesACompra()V
    .locals 15

    .prologue
    .line 139
    new-instance v14, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$1;

    invoke-direct {v14, p0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$1;-><init>(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;)V

    .line 147
    .local v14, "run":Ljava/lang/Runnable;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 152
    .local v4, "s":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    sget-object v1, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v1}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcl/santander/smartphone/ServicesManager;->AccionesCompraObtener(Landroid/app/Activity;Ljava/lang/String;)Lcl/santander/santanderCL/response/AccionesCompraObtieneResponse;

    move-result-object v13

    .line 154
    .local v13, "resp":Lcl/santander/santanderCL/response/AccionesCompraObtieneResponse;
    if-eqz v13, :cond_0

    .line 158
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/AccionesCompraObtieneResponse;->getAcciones()Lcl/santander/santanderCL/data/MatrizAccionesCompra;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->acciones_disponibles:Lcl/santander/santanderCL/data/MatrizAccionesCompra;

    .line 160
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/AccionesCompraObtieneResponse;->getCuentaCustodia()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->cuenta_custodia:Ljava/lang/String;

    .line 161
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/AccionesCompraObtieneResponse;->getClienteClasificado()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->clienteClasificado:Ljava/lang/String;

    .line 162
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/AccionesCompraObtieneResponse;->getMail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->email:Ljava/lang/String;

    .line 163
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/AccionesCompraObtieneResponse;->getTelefono()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->telf:Ljava/lang/String;

    .line 164
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->loadSpinnerAcciones()V

    .line 200
    .end local v13    # "resp":Lcl/santander/santanderCL/response/AccionesCompraObtieneResponse;
    :goto_0
    return-void

    .line 169
    .restart local v13    # "resp":Lcl/santander/santanderCL/response/AccionesCompraObtieneResponse;
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->getResources()Landroid/content/res/Resources;

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

    .line 174
    .end local v13    # "resp":Lcl/santander/santanderCL/response/AccionesCompraObtieneResponse;
    :catch_0
    move-exception v12

    .line 175
    .local v12, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->getResources()Landroid/content/res/Resources;

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

    .line 177
    .end local v12    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v12

    .line 178
    .local v12, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->getResources()Landroid/content/res/Resources;

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

    .line 180
    .end local v12    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v12

    .line 181
    .local v12, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v11, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$2;

    invoke-direct {v11, p0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$2;-><init>(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;)V

    .line 194
    .local v11, "cert":Ljava/lang/Runnable;
    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    .line 195
    .local v9, "s_cert":[Ljava/lang/String;
    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    iget-object v5, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->getResources()Landroid/content/res/Resources;

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

    .line 198
    :cond_1
    iget-object v5, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->getResources()Landroid/content/res/Resources;

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

.method private TieneRiesgo()V
    .locals 17

    .prologue
    .line 288
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 293
    .local v5, "s":[Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    sget-object v2, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v2}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->clienteClasificado:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->accionSeleccionada:Lcl/santander/santanderCL/data/response/ItemAccionCompra;

    invoke-virtual {v4}, Lcl/santander/santanderCL/data/response/ItemAccionCompra;->getNombreAccion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcl/santander/smartphone/ServicesManager;->AccionesCompraRiesgo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcl/santander/santanderCL/response/AccionesCompraRiesgoResponse;

    move-result-object v16

    .line 295
    .local v16, "resp":Lcl/santander/santanderCL/response/AccionesCompraRiesgoResponse;
    if-eqz v16, :cond_1

    .line 299
    new-instance v15, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$4;-><init>(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;)V

    .line 322
    .local v15, "go":Ljava/lang/Runnable;
    invoke-virtual/range {v16 .. v16}, Lcl/santander/santanderCL/response/AccionesCompraRiesgoResponse;->isTieneRiesgo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    new-instance v12, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$5;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$5;-><init>(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;)V

    .line 331
    .local v12, "back":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v2, 0x7f05013c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f050175

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Runnable;

    const/4 v7, 0x0

    aput-object v15, v6, v7

    const/4 v7, 0x1

    aput-object v12, v6, v7

    invoke-static/range {v1 .. v6}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 377
    .end local v12    # "back":Ljava/lang/Runnable;
    .end local v15    # "go":Ljava/lang/Runnable;
    .end local v16    # "resp":Lcl/santander/santanderCL/response/AccionesCompraRiesgoResponse;
    :goto_0
    return-void

    .line 337
    .restart local v15    # "go":Ljava/lang/Runnable;
    .restart local v16    # "resp":Lcl/santander/santanderCL/response/AccionesCompraRiesgoResponse;
    :cond_0
    invoke-interface {v15}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 351
    .end local v15    # "go":Ljava/lang/Runnable;
    .end local v16    # "resp":Lcl/santander/santanderCL/response/AccionesCompraRiesgoResponse;
    :catch_0
    move-exception v14

    .line 352
    .local v14, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05015b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 346
    .end local v14    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    .restart local v16    # "resp":Lcl/santander/santanderCL/response/AccionesCompraRiesgoResponse;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05015a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0500c0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 354
    .end local v16    # "resp":Lcl/santander/santanderCL/response/AccionesCompraRiesgoResponse;
    :catch_1
    move-exception v14

    .line 355
    .local v14, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05015c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Lcl/santander/santanderCL/exceptions/InfoException;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v3

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/Info;->getMsgUsuario()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 357
    .end local v14    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v14

    .line 358
    .local v14, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v13, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$6;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$6;-><init>(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;)V

    .line 371
    .local v13, "cert":Ljava/lang/Runnable;
    const/4 v1, 0x1

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v1

    .line 372
    .local v10, "s_cert":[Ljava/lang/String;
    invoke-virtual {v14}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 373
    move-object/from16 v0, p0

    iget-object v6, v0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/Runnable;

    const/4 v1, 0x0

    aput-object v13, v11, v1

    invoke-static/range {v6 .. v11}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 375
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/Runnable;

    const/4 v1, 0x0

    aput-object v13, v11, v1

    invoke-static/range {v6 .. v11}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method static synthetic access$0(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;)Z
    .locals 1

    .prologue
    .line 249
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->comprobarDatos()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;)V
    .locals 0

    .prologue
    .line 284
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->TieneRiesgo()V

    return-void
.end method

.method static synthetic access$10(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;)V
    .locals 0

    .prologue
    .line 499
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->loadSpinnerDias()V

    return-void
.end method

.method static synthetic access$11(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;I)V
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->numero_dias:I

    return-void
.end method

.method static synthetic access$12(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;I)V
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->monto_o_cantidad:I

    return-void
.end method

.method static synthetic access$13(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;)V
    .locals 0

    .prologue
    .line 430
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->loadSpinnerPrecios()V

    return-void
.end method

.method static synthetic access$2(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;)I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->monto_o_cantidad:I

    return v0
.end method

.method static synthetic access$3(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;)Lcl/santander/santanderCL/data/response/ItemAccionCompra;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->accionSeleccionada:Lcl/santander/santanderCL/data/response/ItemAccionCompra;

    return-object v0
.end method

.method static synthetic access$4(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->cuenta_custodia:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;)I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->numero_dias:I

    return v0
.end method

.method static synthetic access$6(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->email:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->telf:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;Lcl/santander/santanderCL/data/response/ItemAccionCompra;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->accionSeleccionada:Lcl/santander/santanderCL/data/response/ItemAccionCompra;

    return-void
.end method

.method static synthetic access$9(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;)V
    .locals 0

    .prologue
    .line 382
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->rellenaDatosAccion()V

    return-void
.end method

.method private comprobarDatos()Z
    .locals 12

    .prologue
    const/4 v3, 0x1

    .line 251
    const/4 v8, 0x1

    .line 253
    .local v8, "ok":Z
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->tipo_precio:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$TIPOS_PRECIO;

    sget-object v1, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$TIPOS_PRECIO;->L:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$TIPOS_PRECIO;

    invoke-virtual {v0, v1}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$TIPOS_PRECIO;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->et_monto_limite:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 255
    const/4 v8, 0x0

    .line 269
    :cond_0
    :goto_0
    if-nez v8, :cond_1

    .line 271
    new-array v4, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    const v1, 0x7f05002d

    invoke-virtual {p0, v1}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 273
    .local v4, "s":[Ljava/lang/String;
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f05015a

    invoke-virtual {p0, v1}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0501c8

    invoke-virtual {p0, v2}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 277
    .end local v4    # "s":[Ljava/lang/String;
    :cond_1
    return v8

    .line 258
    :cond_2
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->et_monto_limite:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 260
    .local v9, "valor":Ljava/lang/String;
    :try_start_0
    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 261
    .local v6, "d":Ljava/lang/Double;
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    const-wide/16 v10, 0x0

    cmpl-double v0, v0, v10

    if-nez v0, :cond_0

    .line 262
    const/4 v8, 0x0

    goto :goto_0

    .line 263
    .end local v6    # "d":Ljava/lang/Double;
    :catch_0
    move-exception v7

    .line 265
    .local v7, "e":Ljava/lang/Exception;
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private initComponents()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600e2

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->ly_cantidad:Landroid/widget/LinearLayout;

    .line 209
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600ed

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->ly_continuar:Landroid/widget/LinearLayout;

    .line 210
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600db

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->ly_datos_accion:Landroid/widget/LinearLayout;

    .line 211
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600e7

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->ly_input_precio_limite:Landroid/widget/LinearLayout;

    .line 212
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600df

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->ly_monto:Landroid/widget/LinearLayout;

    .line 213
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600dd

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->ly_monto_o_cantidad:Landroid/widget/LinearLayout;

    .line 214
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600ea

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->ly_numero_dias:Landroid/widget/LinearLayout;

    .line 215
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600d8

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->ly_tipo_accion:Landroid/widget/LinearLayout;

    .line 216
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600e4

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->ly_tipo_precio:Landroid/widget/LinearLayout;

    .line 218
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600dc

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->tv_precio_actual:Landroid/widget/TextView;

    .line 220
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600e3

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->et_cantidad_acciones:Landroid/widget/EditText;

    .line 221
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600e1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->et_monto_acciones:Landroid/widget/EditText;

    .line 222
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600e9

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->et_monto_limite:Landroid/widget/EditText;

    .line 224
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600da

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->bt_tipo_accion:Landroid/widget/Button;

    .line 225
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600ee

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->bt_continuar:Landroid/widget/Button;

    .line 227
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600de

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sp_monto_o_cantidad:Landroid/widget/Spinner;

    .line 228
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600ec

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sp_numero_dias:Landroid/widget/Spinner;

    .line 229
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600e6

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sp_tipo_precio:Landroid/widget/Spinner;

    .line 235
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->bt_continuar:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$3;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$3;-><init>(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    return-void
.end method

.method private loadSpinnerAcciones()V
    .locals 6

    .prologue
    .line 403
    new-instance v0, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;

    iget-object v2, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->acciones_disponibles:Lcl/santander/santanderCL/data/MatrizAccionesCompra;

    invoke-direct {v0, v2, v3, v4, v5}, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;Lcl/santander/santanderCL/data/MatrizAccionesCompra;)V

    .line 404
    .local v0, "clacd":Lcl/santander/smartphone/CustomListaAccionesCompraDialog;
    new-instance v1, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$7;

    invoke-direct {v1, p0, v0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$7;-><init>(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;Lcl/santander/smartphone/CustomListaAccionesCompraDialog;)V

    .line 414
    .local v1, "run":Ljava/lang/Runnable;
    invoke-virtual {v0, v1}, Lcl/santander/smartphone/CustomListaAccionesCompraDialog;->setRunnable(Ljava/lang/Runnable;)V

    .line 416
    iget-object v2, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->bt_tipo_accion:Landroid/widget/Button;

    new-instance v3, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$8;

    invoke-direct {v3, p0, v0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$8;-><init>(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;Lcl/santander/smartphone/CustomListaAccionesCompraDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    return-void
.end method

.method private loadSpinnerDias()V
    .locals 5

    .prologue
    const v4, 0x7f030064

    .line 504
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 505
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 506
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sp_numero_dias:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 510
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sp_numero_dias:Landroid/widget/Spinner;

    new-instance v2, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$10;

    invoke-direct {v2, p0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$10;-><init>(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 535
    return-void
.end method

.method private loadSpinnerMontoCantidad()V
    .locals 5

    .prologue
    const v4, 0x7f030064

    .line 549
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 550
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 551
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sp_monto_o_cantidad:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 555
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sp_monto_o_cantidad:Landroid/widget/Spinner;

    new-instance v2, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$11;

    invoke-direct {v2, p0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$11;-><init>(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 603
    return-void
.end method

.method private loadSpinnerPrecios()V
    .locals 6

    .prologue
    const v5, 0x7f030064

    const/4 v4, 0x1

    .line 435
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 436
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 437
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sp_tipo_precio:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 441
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sp_tipo_precio:Landroid/widget/Spinner;

    new-instance v2, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$9;

    invoke-direct {v2, p0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$9;-><init>(Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 482
    iget v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->monto_o_cantidad:I

    if-ne v1, v4, :cond_0

    .line 484
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sp_tipo_precio:Landroid/widget/Spinner;

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 485
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sp_tipo_precio:Landroid/widget/Spinner;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 493
    :goto_0
    return-void

    .line 489
    :cond_0
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sp_tipo_precio:Landroid/widget/Spinner;

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_0
.end method

.method private rellenaDatosAccion()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 384
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->ly_datos_accion:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->tv_precio_actual:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->accionSeleccionada:Lcl/santander/santanderCL/data/response/ItemAccionCompra;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemAccionCompra;->getPrecioActualScreen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->bt_tipo_accion:Landroid/widget/Button;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->accionSeleccionada:Lcl/santander/santanderCL/data/response/ItemAccionCompra;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemAccionCompra;->getNombreAccion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->ly_monto_o_cantidad:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 389
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->loadSpinnerMontoCantidad()V

    .line 391
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 113
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 114
    const/4 v0, 0x2

    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05016f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 115
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->setHasOptionsMenu(Z)V

    .line 121
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->m_View:Landroid/view/View;

    invoke-static {v0, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 124
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->initComponents()V

    .line 127
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->SolicitaAccionesACompra()V

    .line 130
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 105
    :goto_0
    return-object v0

    .line 104
    :cond_0
    const v0, 0x7f030032

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->m_View:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->m_View:Landroid/view/View;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 609
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 615
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 612
    :pswitch_0
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 609
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
