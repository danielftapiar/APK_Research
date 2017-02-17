.class public Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "InversionesAccionesVentaSolicitud.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$TIPOS_PRECIO;
    }
.end annotation


# instance fields
.field bt_continuar:Landroid/widget/Button;

.field private carteraSeleccionada:Lcl/santander/santanderCL/data/response/ItemCartera;

.field private cartera_acciones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemCartera;",
            ">;"
        }
    .end annotation
.end field

.field private datos_venta_solicitud:Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;

.field et_cantidad_acciones:Landroid/widget/EditText;

.field et_monto_limite:Landroid/widget/EditText;

.field ly_cantidad_acciones:Landroid/widget/LinearLayout;

.field ly_continuar:Landroid/widget/LinearLayout;

.field ly_datos_accion:Landroid/widget/LinearLayout;

.field ly_input_precio_limite:Landroid/widget/LinearLayout;

.field ly_monto_final_venta:Landroid/widget/LinearLayout;

.field ly_numero_dias:Landroid/widget/LinearLayout;

.field ly_tipo_accion:Landroid/widget/LinearLayout;

.field ly_tipo_precio:Landroid/widget/LinearLayout;

.field m_View:Landroid/view/View;

.field private numero_dias:I

.field private precioDB:D

.field private precioFinal:D

.field sf:Lcom/actionbarsherlock/app/SherlockFragment;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;

.field sp_numero_dias:Landroid/widget/Spinner;

.field sp_tipo_accion:Landroid/widget/Spinner;

.field sp_tipo_precio:Landroid/widget/Spinner;

.field tipo_precio:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$TIPOS_PRECIO;

.field tv_cantidad:Landroid/widget/TextView;

.field tv_monto_estimado_venta:Landroid/widget/TextView;

.field tv_monto_final_venta:Landroid/widget/TextView;

.field tv_precio_actual:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method private SolicitaVentaAcciones()V
    .locals 15

    .prologue
    .line 123
    new-instance v14, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$1;

    invoke-direct {v14, p0}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$1;-><init>(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;)V

    .line 131
    .local v14, "run":Ljava/lang/Runnable;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 136
    .local v4, "s":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    sget-object v1, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v1}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcl/santander/smartphone/ServicesManager;->AccionesVentaSolicitud(Landroid/app/Activity;Ljava/lang/String;)Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;

    move-result-object v13

    .line 138
    .local v13, "resp":Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;
    if-eqz v13, :cond_0

    .line 142
    iput-object v13, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->datos_venta_solicitud:Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;

    .line 143
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;->getCartera()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->cartera_acciones:Ljava/util/ArrayList;

    .line 145
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->loadSpinnerAcciones()V

    .line 181
    .end local v13    # "resp":Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;
    :goto_0
    return-void

    .line 150
    .restart local v13    # "resp":Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->getResources()Landroid/content/res/Resources;

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

    .line 155
    .end local v13    # "resp":Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;
    :catch_0
    move-exception v12

    .line 156
    .local v12, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->getResources()Landroid/content/res/Resources;

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

    .line 158
    .end local v12    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v12

    .line 159
    .local v12, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->getResources()Landroid/content/res/Resources;

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

    .line 161
    .end local v12    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v12

    .line 162
    .local v12, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v11, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$2;

    invoke-direct {v11, p0}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$2;-><init>(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;)V

    .line 175
    .local v11, "cert":Ljava/lang/Runnable;
    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    .line 176
    .local v9, "s_cert":[Ljava/lang/String;
    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v5, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->getResources()Landroid/content/res/Resources;

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

    .line 179
    :cond_1
    iget-object v5, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->getResources()Landroid/content/res/Resources;

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

.method static synthetic access$0(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;)Z
    .locals 1

    .prologue
    .line 232
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->comprobarDatos()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;)Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->datos_venta_solicitud:Lcl/santander/santanderCL/response/AccionesVentaSolicitudResponse;

    return-object v0
.end method

.method static synthetic access$10(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;)D
    .locals 2

    .prologue
    .line 414
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->calculaPrecioFinal()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$11(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;D)V
    .locals 0

    .prologue
    .line 80
    iput-wide p1, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->precioFinal:D

    return-void
.end method

.method static synthetic access$12(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;)V
    .locals 0

    .prologue
    .line 450
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->rellenaPrecioFinal()V

    return-void
.end method

.method static synthetic access$13(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;I)V
    .locals 0

    .prologue
    .line 79
    iput p1, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->numero_dias:I

    return-void
.end method

.method static synthetic access$2(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;)Lcl/santander/santanderCL/data/response/ItemCartera;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->carteraSeleccionada:Lcl/santander/santanderCL/data/response/ItemCartera;

    return-object v0
.end method

.method static synthetic access$3(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;)D
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->precioDB:D

    return-wide v0
.end method

.method static synthetic access$4(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;)D
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->precioFinal:D

    return-wide v0
.end method

.method static synthetic access$5(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;)I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->numero_dias:I

    return v0
.end method

.method static synthetic access$6(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->cartera_acciones:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;Lcl/santander/santanderCL/data/response/ItemCartera;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->carteraSeleccionada:Lcl/santander/santanderCL/data/response/ItemCartera;

    return-void
.end method

.method static synthetic access$8(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;)V
    .locals 0

    .prologue
    .line 482
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->rellenaDatosAccion()V

    return-void
.end method

.method static synthetic access$9(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;)V
    .locals 0

    .prologue
    .line 312
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->loadSpinnerPrecios()V

    return-void
.end method

.method private calculaPrecioFinal()D
    .locals 11

    .prologue
    .line 419
    :try_start_0
    iget-object v7, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->et_cantidad_acciones:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "cantidad":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 422
    .local v1, "cantidadLN":J
    const-string v4, ""

    .line 423
    .local v4, "precio":Ljava/lang/String;
    iget-object v7, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->tipo_precio:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$TIPOS_PRECIO;

    sget-object v8, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$TIPOS_PRECIO;->L:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$TIPOS_PRECIO;

    if-ne v7, v8, :cond_0

    .line 425
    iget-object v7, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->et_monto_limite:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 430
    :goto_0
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->precioDB:D

    .line 432
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 433
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    iput-wide v7, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->precioDB:D

    .line 437
    :goto_1
    iget-wide v7, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->precioDB:D

    long-to-double v9, v1

    mul-double v5, v7, v9

    .line 443
    .end local v0    # "cantidad":Ljava/lang/String;
    .end local v1    # "cantidadLN":J
    .end local v4    # "precio":Ljava/lang/String;
    .local v5, "preciofinal":D
    :goto_2
    return-wide v5

    .line 428
    .end local v5    # "preciofinal":D
    .restart local v0    # "cantidad":Ljava/lang/String;
    .restart local v1    # "cantidadLN":J
    .restart local v4    # "precio":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->carteraSeleccionada:Lcl/santander/santanderCL/data/response/ItemCartera;

    invoke-virtual {v7}, Lcl/santander/santanderCL/data/response/ItemCartera;->getPrecioMercado()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 435
    :cond_1
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->precioDB:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 439
    .end local v0    # "cantidad":Ljava/lang/String;
    .end local v1    # "cantidadLN":J
    .end local v4    # "precio":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 441
    .local v3, "e":Ljava/lang/Exception;
    const-wide/16 v5, 0x0

    .restart local v5    # "preciofinal":D
    goto :goto_2
.end method

.method private comprobarDatos()Z
    .locals 12

    .prologue
    const/4 v3, 0x1

    .line 234
    const/4 v8, 0x1

    .line 236
    .local v8, "ok":Z
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->tipo_precio:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$TIPOS_PRECIO;

    sget-object v1, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$TIPOS_PRECIO;->L:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$TIPOS_PRECIO;

    invoke-virtual {v0, v1}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$TIPOS_PRECIO;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->et_monto_limite:Landroid/widget/EditText;

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

    .line 238
    const/4 v8, 0x0

    .line 252
    :cond_0
    :goto_0
    if-nez v8, :cond_1

    .line 254
    new-array v4, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    const v1, 0x7f05002d

    invoke-virtual {p0, v1}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 256
    .local v4, "s":[Ljava/lang/String;
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f05015a

    invoke-virtual {p0, v1}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0501c8

    invoke-virtual {p0, v2}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 260
    .end local v4    # "s":[Ljava/lang/String;
    :cond_1
    return v8

    .line 241
    :cond_2
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->et_monto_limite:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 243
    .local v9, "valor":Ljava/lang/String;
    :try_start_0
    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 244
    .local v6, "d":Ljava/lang/Double;
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    const-wide/16 v10, 0x0

    cmpl-double v0, v0, v10

    if-nez v0, :cond_0

    .line 245
    const/4 v8, 0x0

    goto :goto_0

    .line 246
    .end local v6    # "d":Ljava/lang/Double;
    :catch_0
    move-exception v7

    .line 248
    .local v7, "e":Ljava/lang/Exception;
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private initComponents()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060124

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->ly_cantidad_acciones:Landroid/widget/LinearLayout;

    .line 189
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06012f

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->ly_continuar:Landroid/widget/LinearLayout;

    .line 190
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060129

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->ly_input_precio_limite:Landroid/widget/LinearLayout;

    .line 191
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06012d

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->ly_numero_dias:Landroid/widget/LinearLayout;

    .line 192
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06011f

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->ly_tipo_accion:Landroid/widget/LinearLayout;

    .line 193
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060127

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->ly_tipo_precio:Landroid/widget/LinearLayout;

    .line 194
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060121

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->ly_datos_accion:Landroid/widget/LinearLayout;

    .line 195
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06012b

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->ly_monto_final_venta:Landroid/widget/LinearLayout;

    .line 198
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060123

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->tv_cantidad:Landroid/widget/TextView;

    .line 199
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060126

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->tv_monto_estimado_venta:Landroid/widget/TextView;

    .line 200
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06012c

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->tv_monto_final_venta:Landroid/widget/TextView;

    .line 201
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060122

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->tv_precio_actual:Landroid/widget/TextView;

    .line 203
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060125

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->et_cantidad_acciones:Landroid/widget/EditText;

    .line 204
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06012a

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->et_monto_limite:Landroid/widget/EditText;

    .line 206
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060130

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->bt_continuar:Landroid/widget/Button;

    .line 209
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060120

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sp_tipo_accion:Landroid/widget/Spinner;

    .line 210
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060128

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sp_tipo_precio:Landroid/widget/Spinner;

    .line 211
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06012e

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sp_numero_dias:Landroid/widget/Spinner;

    .line 215
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->bt_continuar:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$3;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$3;-><init>(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    return-void
.end method

.method private loadSpinnerAcciones()V
    .locals 6

    .prologue
    const v5, 0x7f030064

    .line 265
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v3, "valores":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v4, 0x7f05018c

    invoke-virtual {p0, v4}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->cartera_acciones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 274
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v4}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 275
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 276
    iget-object v4, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sp_tipo_accion:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 280
    iget-object v4, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sp_tipo_accion:Landroid/widget/Spinner;

    new-instance v5, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$4;

    invoke-direct {v5, p0}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$4;-><init>(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 309
    return-void

    .line 270
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_0
    iget-object v4, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->cartera_acciones:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcl/santander/santanderCL/data/response/ItemCartera;

    invoke-virtual {v4}, Lcl/santander/santanderCL/data/response/ItemCartera;->getCuentaNemoScreen()Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "aux":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private loadSpinnerDias()V
    .locals 5

    .prologue
    const v4, 0x7f030064

    .line 376
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 377
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 378
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sp_numero_dias:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 382
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sp_numero_dias:Landroid/widget/Spinner;

    new-instance v2, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$6;

    invoke-direct {v2, p0}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$6;-><init>(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 407
    return-void
.end method

.method private loadSpinnerPrecios()V
    .locals 5

    .prologue
    const v4, 0x7f030064

    .line 317
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 318
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 319
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sp_tipo_precio:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 323
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sp_tipo_precio:Landroid/widget/Spinner;

    new-instance v2, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$5;

    invoke-direct {v2, p0}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$5;-><init>(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 368
    return-void
.end method

.method private rellenaDatosAccion()V
    .locals 3

    .prologue
    .line 484
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->tv_precio_actual:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->carteraSeleccionada:Lcl/santander/santanderCL/data/response/ItemCartera;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemCartera;->getPrecioMercadoScreen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->tv_cantidad:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->carteraSeleccionada:Lcl/santander/santanderCL/data/response/ItemCartera;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemCartera;->getCuentaCantidadScreen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->tv_monto_estimado_venta:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->carteraSeleccionada:Lcl/santander/santanderCL/data/response/ItemCartera;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/ItemCartera;->getCarteraValorizadaMercadoScreen()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " (Incluye Comisiones y considera precio l\u00edmite o precio actual referencial informado)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    return-void
.end method

.method private rellenaPrecioFinal()V
    .locals 2

    .prologue
    .line 452
    new-instance v0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$7;

    invoke-direct {v0, p0}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$7;-><init>(Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;)V

    .line 472
    .local v0, "textWatch":Landroid/text/TextWatcher;
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->et_monto_limite:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 473
    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->et_cantidad_acciones:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 476
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->loadSpinnerDias()V

    .line 477
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 100
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 101
    const/4 v0, 0x2

    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05016f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->setHasOptionsMenu(Z)V

    .line 108
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->m_View:Landroid/view/View;

    invoke-static {v0, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 111
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->initComponents()V

    .line 114
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->SolicitaVentaAcciones()V

    .line 117
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    .line 91
    :cond_0
    const v0, 0x7f030035

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->m_View:Landroid/view/View;

    .line 92
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->m_View:Landroid/view/View;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 491
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 497
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 494
    :pswitch_0
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 491
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
