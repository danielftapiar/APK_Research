.class public Lcl/santander/smartphone/Transferencias;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "Transferencias.java"


# static fields
.field public static final ORIGEN_CUENTAS:I = 0x0

.field public static final ORIGEN_LINEA_CREDITO:I = 0x2

.field public static final ORIGEN_TARJETAS:I = 0x1

.field public static final TRANSFERENCIA_ATERCEROS:I = 0x1

.field public static final TRANSFERENCIA_ENTREMISPRODUCTOS:I = 0x0

.field public static final TRANSFERENCIA_SUPERGIROS:I = 0x2


# instance fields
.field private banco:Ljava/lang/String;

.field bt_aceptar:Landroid/widget/Button;

.field bt_misProductos:Landroid/widget/Button;

.field bt_supergiros:Landroid/widget/Button;

.field bt_terceros:Landroid/widget/Button;

.field private coordenada1:Ljava/lang/String;

.field private coordenada2:Ljava/lang/String;

.field private coordenada3:Ljava/lang/String;

.field private cuenta:Ljava/lang/String;

.field cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

.field private email:Ljava/lang/String;

.field fg_entremisproductos:Lcl/santander/smartphone/TransferEntremisproductos;

.field id:I

.field indexOrigen:I

.field limitesTransferencias:Lcl/santander/santanderCL/data/LimitesTransferencias;

.field lineascredito:Lcl/santander/santanderCL/data/MatrizProductos;

.field m_TabButtons:[Landroid/widget/Button;

.field m_View:Landroid/view/View;

.field private monto:Ljava/lang/String;

.field private montoInteger:I

.field private nomcliente:Ljava/lang/String;

.field private nompersona:Ljava/lang/String;

.field private numcuentas:I

.field private numeroTarjeta:Ljava/lang/String;

.field private numlineascredito:I

.field private numtarjetas:I

.field pageAdapterOrigen:Lcl/santander/smartphone/ProductosPageAdapter;

.field private productoDestinatario:Ljava/lang/String;

.field productosDestino:Lcl/santander/santanderCL/data/MatrizProductos;

.field productosOrigen:Lcl/santander/santanderCL/data/MatrizProductos;

.field private rutDest:Ljava/lang/String;

.field private rutDestScreen:Ljava/lang/String;

.field private rutOri:Ljava/lang/String;

.field private rutOriScreen:Ljava/lang/String;

.field private segmento:Ljava/lang/String;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;

.field tarjetas:Lcl/santander/santanderCL/data/MatrizProductos;

.field private tipoOrigen:I

.field tipoTransferencia:I

.field private tipocuenta:Ljava/lang/String;

.field transferencias_productos:Lcl/santander/smartphone/TransferEntremisproductos;

.field transferencias_supergiros:Lcl/santander/smartphone/TransferSupergiros;

.field transferencias_terceros:Lcl/santander/smartphone/TransferTerceros;

.field vp_pager_origen:Landroid/support/v4/view/ViewPager;

.field vpi_indicator_origen:Lcom/viewpagerindicator/CirclePageIndicator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->m_TabButtons:[Landroid/widget/Button;

    .line 90
    return-void
.end method

.method constructor <init>(II)V
    .locals 9
    .param p1, "origen"    # I
    .param p2, "id"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 91
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 50
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/widget/Button;

    iput-object v5, p0, Lcl/santander/smartphone/Transferencias;->m_TabButtons:[Landroid/widget/Button;

    .line 96
    iput p1, p0, Lcl/santander/smartphone/Transferencias;->tipoOrigen:I

    .line 97
    sget-object v5, Lcl/santander/smartphone/Global;->grupos:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/data/MatrizProductos;

    .line 98
    .local v0, "cuentas_aux":Lcl/santander/santanderCL/data/MatrizProductos;
    sget-object v5, Lcl/santander/smartphone/Global;->grupos:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcl/santander/santanderCL/data/MatrizProductos;

    .line 99
    .local v4, "tarjetas_aux":Lcl/santander/santanderCL/data/MatrizProductos;
    sget-object v5, Lcl/santander/smartphone/Global;->grupos:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcl/santander/santanderCL/data/MatrizProductos;

    .line 102
    .local v2, "lineascredito_aux":Lcl/santander/santanderCL/data/MatrizProductos;
    invoke-static {v0, v6}, Lcl/santander/smartphone/Utils;->getFilterProducts(Lcl/santander/santanderCL/data/MatrizProductos;I)Lcl/santander/santanderCL/data/MatrizProductos;

    move-result-object v5

    iput-object v5, p0, Lcl/santander/smartphone/Transferencias;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    .line 103
    invoke-static {v4, v6}, Lcl/santander/smartphone/Utils;->getFilterProducts(Lcl/santander/santanderCL/data/MatrizProductos;I)Lcl/santander/santanderCL/data/MatrizProductos;

    move-result-object v5

    iput-object v5, p0, Lcl/santander/smartphone/Transferencias;->tarjetas:Lcl/santander/santanderCL/data/MatrizProductos;

    .line 104
    invoke-static {v2, v6}, Lcl/santander/smartphone/Utils;->getFilterProducts(Lcl/santander/santanderCL/data/MatrizProductos;I)Lcl/santander/santanderCL/data/MatrizProductos;

    move-result-object v5

    iput-object v5, p0, Lcl/santander/smartphone/Transferencias;->lineascredito:Lcl/santander/santanderCL/data/MatrizProductos;

    .line 107
    iget-object v5, p0, Lcl/santander/smartphone/Transferencias;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v5}, Lcl/santander/santanderCL/data/MatrizProductos;->size()I

    move-result v5

    iput v5, p0, Lcl/santander/smartphone/Transferencias;->numcuentas:I

    .line 108
    iget-object v5, p0, Lcl/santander/smartphone/Transferencias;->tarjetas:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v5}, Lcl/santander/santanderCL/data/MatrizProductos;->size()I

    move-result v5

    iput v5, p0, Lcl/santander/smartphone/Transferencias;->numtarjetas:I

    .line 109
    iget-object v5, p0, Lcl/santander/smartphone/Transferencias;->lineascredito:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v5}, Lcl/santander/santanderCL/data/MatrizProductos;->size()I

    move-result v5

    iput v5, p0, Lcl/santander/smartphone/Transferencias;->numlineascredito:I

    .line 114
    if-nez p1, :cond_3

    .line 116
    invoke-virtual {v0, p2}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v5

    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContrato()Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "s":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcl/santander/smartphone/Transferencias;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v5}, Lcl/santander/santanderCL/data/MatrizProductos;->size()I

    move-result v5

    if-lt v1, v5, :cond_1

    .line 145
    .end local v1    # "i":I
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    return-void

    .line 120
    .restart local v1    # "i":I
    .restart local v3    # "s":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcl/santander/smartphone/Transferencias;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v5, v1}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v5

    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContrato()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 121
    iput v1, p0, Lcl/santander/smartphone/Transferencias;->indexOrigen:I

    .line 118
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    .end local v1    # "i":I
    .end local v3    # "s":Ljava/lang/String;
    :cond_3
    if-ne p1, v7, :cond_5

    .line 126
    invoke-virtual {v4, p2}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v5

    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContrato()Ljava/lang/String;

    move-result-object v3

    .line 128
    .restart local v3    # "s":Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v5, p0, Lcl/santander/smartphone/Transferencias;->tarjetas:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v5}, Lcl/santander/santanderCL/data/MatrizProductos;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 130
    iget-object v5, p0, Lcl/santander/smartphone/Transferencias;->tarjetas:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v5, v1}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v5

    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContrato()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 131
    iput v1, p0, Lcl/santander/smartphone/Transferencias;->indexOrigen:I

    .line 128
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 134
    .end local v1    # "i":I
    .end local v3    # "s":Ljava/lang/String;
    :cond_5
    if-ne p1, v8, :cond_0

    .line 136
    invoke-virtual {v2, p2}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v5

    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContrato()Ljava/lang/String;

    move-result-object v3

    .line 138
    .restart local v3    # "s":Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v5, p0, Lcl/santander/smartphone/Transferencias;->lineascredito:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v5}, Lcl/santander/santanderCL/data/MatrizProductos;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 140
    iget-object v5, p0, Lcl/santander/smartphone/Transferencias;->lineascredito:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v5, v1}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v5

    invoke-virtual {v5}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContrato()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 141
    iput v1, p0, Lcl/santander/smartphone/Transferencias;->indexOrigen:I

    .line 138
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method static synthetic access$0(Lcl/santander/smartphone/Transferencias;)I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcl/santander/smartphone/Transferencias;->tipoOrigen:I

    return v0
.end method

.method private initializeTerceros()Z
    .locals 15

    .prologue
    const/4 v6, 0x0

    const/4 v14, 0x0

    const/4 v8, 0x1

    .line 540
    new-array v4, v8, [Ljava/lang/String;

    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v14

    .line 544
    .local v4, "s":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    sget-object v1, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v1}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcl/santander/smartphone/ServicesManager;->transf_terceros_inicio(Landroid/app/Activity;Ljava/lang/String;)Lcl/santander/santanderCL/response/Transf_Terceros_InicioResponse;

    move-result-object v13

    .line 547
    .local v13, "tut":Lcl/santander/santanderCL/response/Transf_Terceros_InicioResponse;
    if-eqz v13, :cond_0

    .line 549
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/Transf_Terceros_InicioResponse;->getLimitesTransferencias()Lcl/santander/santanderCL/data/LimitesTransferencias;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->limitesTransferencias:Lcl/santander/santanderCL/data/LimitesTransferencias;

    .line 585
    .end local v13    # "tut":Lcl/santander/santanderCL/response/Transf_Terceros_InicioResponse;
    :goto_0
    return v8

    .line 554
    .restart local v13    # "tut":Lcl/santander/santanderCL/response/Transf_Terceros_InicioResponse;
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/Transferencias;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/Transferencias;->getResources()Landroid/content/res/Resources;

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

    .line 555
    goto :goto_0

    .line 557
    .end local v13    # "tut":Lcl/santander/santanderCL/response/Transf_Terceros_InicioResponse;
    :catch_0
    move-exception v12

    .line 558
    .local v12, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/Transferencias;->getResources()Landroid/content/res/Resources;

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

    .line 585
    goto :goto_0

    .line 560
    :catch_1
    move-exception v12

    .line 561
    .local v12, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/Transferencias;->getResources()Landroid/content/res/Resources;

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

    .line 564
    .end local v12    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v12

    .line 565
    .local v12, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v11, Lcl/santander/smartphone/Transferencias$7;

    invoke-direct {v11, p0}, Lcl/santander/smartphone/Transferencias$7;-><init>(Lcl/santander/smartphone/Transferencias;)V

    .line 578
    .local v11, "cert":Ljava/lang/Runnable;
    new-array v9, v8, [Ljava/lang/String;

    invoke-virtual {p0}, Lcl/santander/smartphone/Transferencias;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v14

    .line 579
    .local v9, "s_cert":[Ljava/lang/String;
    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 580
    iget-object v5, p0, Lcl/santander/smartphone/Transferencias;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/Transferencias;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/Transferencias;->getResources()Landroid/content/res/Resources;

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

    .line 582
    :cond_1
    iget-object v5, p0, Lcl/santander/smartphone/Transferencias;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/Transferencias;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/Transferencias;->getResources()Landroid/content/res/Resources;

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

.method private supergiroIngreso()Z
    .locals 15

    .prologue
    .line 444
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcl/santander/smartphone/Transferencias;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 450
    .local v4, "s":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->transferencias_supergiros:Lcl/santander/smartphone/TransferSupergiros;

    invoke-virtual {v0}, Lcl/santander/smartphone/TransferSupergiros;->getMonto()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v13

    .line 457
    .local v13, "montoInt":I
    :goto_0
    :try_start_1
    rem-int/lit16 v0, v13, 0x1388

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/Transferencias;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/Transferencias;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05008f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 460
    const/4 v0, 0x0

    .line 530
    .end local v13    # "montoInt":I
    :goto_1
    return v0

    .line 452
    :catch_0
    move-exception v12

    .line 454
    .local v12, "e":Ljava/lang/Exception;
    const/4 v13, 0x0

    .restart local v13    # "montoInt":I
    goto :goto_0

    .line 462
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_0
    const/16 v0, 0x1388

    if-lt v13, v0, :cond_1

    const v0, 0x30d40

    if-le v13, v0, :cond_2

    .line 464
    :cond_1
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/Transferencias;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/Transferencias;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05008e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 465
    const/4 v0, 0x0

    goto :goto_1

    .line 468
    :cond_2
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-object v1, p0, Lcl/santander/smartphone/Transferencias;->productosOrigen:Lcl/santander/santanderCL/data/MatrizProductos;

    iget-object v2, p0, Lcl/santander/smartphone/Transferencias;->vp_pager_origen:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v1

    sget-object v2, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v2}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcl/santander/smartphone/Transferencias;->transferencias_supergiros:Lcl/santander/smartphone/TransferSupergiros;

    invoke-virtual {v3}, Lcl/santander/smartphone/TransferSupergiros;->getRut()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v13}, Lcl/santander/smartphone/ServicesManager;->supergiroIngreso(Landroid/app/Activity;Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/lang/String;Ljava/lang/String;I)Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;

    move-result-object v14

    .line 470
    .local v14, "sgi":Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;
    if-eqz v14, :cond_3

    .line 472
    invoke-virtual {v14}, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->getNumeroTarjeta()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->numeroTarjeta:Ljava/lang/String;

    .line 473
    invoke-virtual {v14}, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->getCoordenada1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->coordenada1:Ljava/lang/String;

    .line 474
    invoke-virtual {v14}, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->getCoordenada2()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->coordenada2:Ljava/lang/String;

    .line 475
    invoke-virtual {v14}, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->getCoordenada3()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->coordenada3:Ljava/lang/String;

    .line 476
    invoke-virtual {v14}, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->getSegmento()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->segmento:Ljava/lang/String;

    .line 477
    invoke-virtual {v14}, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->getNombrePersona()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->nompersona:Ljava/lang/String;

    .line 478
    invoke-virtual {v14}, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->getTipoCuenta()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->tipocuenta:Ljava/lang/String;

    .line 479
    invoke-virtual {v14}, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->getCuenta()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->cuenta:Ljava/lang/String;

    .line 480
    invoke-virtual {v14}, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->getBanco()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->banco:Ljava/lang/String;

    .line 481
    invoke-virtual {v14}, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->getMontoScreen()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->monto:Ljava/lang/String;
    :try_end_1
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_1 .. :try_end_1} :catch_4

    .line 484
    :try_start_2
    invoke-virtual {v14}, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->getMonto()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcl/santander/smartphone/Transferencias;->montoInteger:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_2 .. :try_end_2} :catch_4

    .line 490
    :goto_2
    :try_start_3
    invoke-virtual {v14}, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->getRutDestinoScreen()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->rutDestScreen:Ljava/lang/String;

    .line 491
    invoke-virtual {v14}, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->getRutDestino()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->rutDest:Ljava/lang/String;

    .line 492
    invoke-virtual {v14}, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->getRutOrigenScreen()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->rutOriScreen:Ljava/lang/String;

    .line 493
    invoke-virtual {v14}, Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;->getRutOrigen()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->rutOri:Ljava/lang/String;

    .line 495
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 486
    :catch_1
    move-exception v12

    .line 488
    .restart local v12    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    iput v0, p0, Lcl/santander/smartphone/Transferencias;->montoInteger:I
    :try_end_3
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_2

    .line 502
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v13    # "montoInt":I
    .end local v14    # "sgi":Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;
    :catch_2
    move-exception v12

    .line 503
    .local v12, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/Transferencias;->getResources()Landroid/content/res/Resources;

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

    .line 530
    .end local v12    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :goto_3
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 499
    .restart local v13    # "montoInt":I
    .restart local v14    # "sgi":Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;
    :cond_3
    :try_start_4
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/Transferencias;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/Transferencias;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_4
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_4 .. :try_end_4} :catch_4

    .line 500
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 505
    .end local v13    # "montoInt":I
    .end local v14    # "sgi":Lcl/santander/santanderCL/response/Transf_Supergiro_IngresoResponse;
    :catch_3
    move-exception v12

    .line 506
    .local v12, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/Transferencias;->getResources()Landroid/content/res/Resources;

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

    goto :goto_3

    .line 509
    .end local v12    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_4
    move-exception v12

    .line 510
    .local v12, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v11, Lcl/santander/smartphone/Transferencias$6;

    invoke-direct {v11, p0}, Lcl/santander/smartphone/Transferencias$6;-><init>(Lcl/santander/smartphone/Transferencias;)V

    .line 523
    .local v11, "cert":Ljava/lang/Runnable;
    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcl/santander/smartphone/Transferencias;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    .line 524
    .local v9, "s_cert":[Ljava/lang/String;
    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 525
    iget-object v5, p0, Lcl/santander/smartphone/Transferencias;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/Transferencias;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/Transferencias;->getResources()Landroid/content/res/Resources;

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

    goto/16 :goto_3

    .line 527
    :cond_4
    iget-object v5, p0, Lcl/santander/smartphone/Transferencias;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/Transferencias;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/Transferencias;->getResources()Landroid/content/res/Resources;

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

    goto/16 :goto_3
.end method

.method private verificaTerceros()Z
    .locals 13

    .prologue
    .line 593
    const/4 v0, 0x1

    new-array v11, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcl/santander/smartphone/Transferencias;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v0

    .line 599
    .local v11, "s":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->transferencias_terceros:Lcl/santander/smartphone/TransferTerceros;

    invoke-virtual {v0}, Lcl/santander/smartphone/TransferTerceros;->getMonto()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v8

    .line 606
    .local v8, "montoInt":I
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    sget-object v1, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v1}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/Transferencias;->productosOrigen:Lcl/santander/santanderCL/data/MatrizProductos;

    iget-object v3, p0, Lcl/santander/smartphone/Transferencias;->vp_pager_origen:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v2, v3}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v2

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContrato()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcl/santander/smartphone/Transferencias;->productosOrigen:Lcl/santander/santanderCL/data/MatrizProductos;

    iget-object v5, p0, Lcl/santander/smartphone/Transferencias;->vp_pager_origen:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v5

    invoke-virtual {v3, v5}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v3

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemProducto;->getProducto()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcl/santander/smartphone/Transferencias;->transferencias_terceros:Lcl/santander/smartphone/TransferTerceros;

    invoke-virtual {v5}, Lcl/santander/smartphone/TransferTerceros;->getRut()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcl/santander/smartphone/Transferencias;->transferencias_terceros:Lcl/santander/smartphone/TransferTerceros;

    invoke-virtual {v5}, Lcl/santander/smartphone/TransferTerceros;->getCuenta()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcl/santander/smartphone/Transferencias;->transferencias_terceros:Lcl/santander/smartphone/TransferTerceros;

    invoke-virtual {v6}, Lcl/santander/smartphone/TransferTerceros;->getCodBanco()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcl/santander/smartphone/Transferencias;->transferencias_terceros:Lcl/santander/smartphone/TransferTerceros;

    invoke-virtual {v7}, Lcl/santander/smartphone/TransferTerceros;->getCodTipoCuenta()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v8}, Lcl/santander/smartphone/ServicesManager;->transf_terceros_verifica(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;

    move-result-object v12

    .line 608
    .local v12, "vr":Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;
    if-eqz v12, :cond_0

    .line 610
    invoke-virtual {v12}, Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;->getCoordenada1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->coordenada1:Ljava/lang/String;

    .line 611
    invoke-virtual {v12}, Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;->getCoordenada2()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->coordenada2:Ljava/lang/String;

    .line 612
    invoke-virtual {v12}, Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;->getCoordenada3()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->coordenada3:Ljava/lang/String;

    .line 613
    invoke-virtual {v12}, Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;->getEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->email:Ljava/lang/String;

    .line 614
    invoke-virtual {v12}, Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;->getNombreCliente()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->nomcliente:Ljava/lang/String;

    .line 615
    invoke-virtual {v12}, Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;->getNombreDestinatario()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->nompersona:Ljava/lang/String;

    .line 616
    invoke-virtual {v12}, Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;->getNumeroTarjeta()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->numeroTarjeta:Ljava/lang/String;

    .line 617
    invoke-virtual {v12}, Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;->getProductoDestinatario()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->productoDestinatario:Ljava/lang/String;

    .line 620
    const/4 v0, 0x1

    .line 655
    .end local v8    # "montoInt":I
    .end local v12    # "vr":Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;
    :goto_1
    return v0

    .line 601
    :catch_0
    move-exception v10

    .line 603
    .local v10, "e":Ljava/lang/Exception;
    const/4 v8, 0x0

    .restart local v8    # "montoInt":I
    goto :goto_0

    .line 624
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v12    # "vr":Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/Transferencias;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/Transferencias;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v4, v11

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_1 .. :try_end_1} :catch_3

    .line 625
    const/4 v0, 0x0

    goto :goto_1

    .line 627
    .end local v8    # "montoInt":I
    .end local v12    # "vr":Lcl/santander/santanderCL/response/Transf_Terceros_VerificaResponse;
    :catch_1
    move-exception v10

    .line 628
    .local v10, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/Transferencias;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v4, v11

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 655
    .end local v10    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 630
    :catch_2
    move-exception v10

    .line 631
    .local v10, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/Transferencias;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcl/santander/santanderCL/exceptions/InfoException;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/Info;->getMsgUsuario()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v4, v11

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_2

    .line 634
    .end local v10    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_3
    move-exception v10

    .line 635
    .local v10, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v9, Lcl/santander/smartphone/Transferencias$8;

    invoke-direct {v9, p0}, Lcl/santander/smartphone/Transferencias$8;-><init>(Lcl/santander/smartphone/Transferencias;)V

    .line 648
    .local v9, "cert":Ljava/lang/Runnable;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcl/santander/smartphone/Transferencias;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 649
    .local v4, "s_cert":[Ljava/lang/String;
    invoke-virtual {v10}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 650
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/Transferencias;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/Transferencias;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Runnable;

    const/4 v6, 0x0

    aput-object v9, v5, v6

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_2

    .line 652
    :cond_1
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/Transferencias;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/Transferencias;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Runnable;

    const/4 v6, 0x0

    aput-object v9, v5, v6

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_2
.end method


# virtual methods
.method public initComponents()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 162
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06034d

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->bt_misProductos:Landroid/widget/Button;

    .line 163
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06034e

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->bt_terceros:Landroid/widget/Button;

    .line 164
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06034f

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->bt_supergiros:Landroid/widget/Button;

    .line 166
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->m_TabButtons:[Landroid/widget/Button;

    iget-object v1, p0, Lcl/santander/smartphone/Transferencias;->bt_misProductos:Landroid/widget/Button;

    aput-object v1, v0, v3

    .line 167
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->m_TabButtons:[Landroid/widget/Button;

    iget-object v1, p0, Lcl/santander/smartphone/Transferencias;->bt_terceros:Landroid/widget/Button;

    aput-object v1, v0, v4

    .line 168
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->m_TabButtons:[Landroid/widget/Button;

    iget-object v1, p0, Lcl/santander/smartphone/Transferencias;->bt_supergiros:Landroid/widget/Button;

    aput-object v1, v0, v5

    .line 172
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->bt_misProductos:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/Transferencias$1;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/Transferencias$1;-><init>(Lcl/santander/smartphone/Transferencias;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->bt_terceros:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/Transferencias$2;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/Transferencias$2;-><init>(Lcl/santander/smartphone/Transferencias;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->bt_supergiros:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/Transferencias$3;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/Transferencias$3;-><init>(Lcl/santander/smartphone/Transferencias;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060351

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->bt_aceptar:Landroid/widget/Button;

    .line 199
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->bt_aceptar:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/Transferencias$4;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/Transferencias$4;-><init>(Lcl/santander/smartphone/Transferencias;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    new-instance v0, Lcl/santander/smartphone/TransferEntremisproductos;

    iget-object v1, p0, Lcl/santander/smartphone/Transferencias;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-direct {v0, v1}, Lcl/santander/smartphone/TransferEntremisproductos;-><init>(Lcom/actionbarsherlock/app/SherlockFragmentActivity;)V

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->transferencias_productos:Lcl/santander/smartphone/TransferEntremisproductos;

    .line 208
    new-instance v0, Lcl/santander/smartphone/TransferTerceros;

    iget-object v1, p0, Lcl/santander/smartphone/Transferencias;->bt_aceptar:Landroid/widget/Button;

    invoke-direct {v0, v1}, Lcl/santander/smartphone/TransferTerceros;-><init>(Landroid/widget/Button;)V

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->transferencias_terceros:Lcl/santander/smartphone/TransferTerceros;

    .line 209
    new-instance v0, Lcl/santander/smartphone/TransferSupergiros;

    invoke-direct {v0}, Lcl/santander/smartphone/TransferSupergiros;-><init>()V

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->transferencias_supergiros:Lcl/santander/smartphone/TransferSupergiros;

    .line 211
    iget v0, p0, Lcl/santander/smartphone/Transferencias;->tipoOrigen:I

    if-nez v0, :cond_4

    .line 215
    iget v0, p0, Lcl/santander/smartphone/Transferencias;->numcuentas:I

    if-gt v0, v4, :cond_0

    iget v0, p0, Lcl/santander/smartphone/Transferencias;->numtarjetas:I

    iget v1, p0, Lcl/santander/smartphone/Transferencias;->numlineascredito:I

    add-int/2addr v0, v1

    if-lez v0, :cond_3

    .line 217
    :cond_0
    iput v3, p0, Lcl/santander/smartphone/Transferencias;->tipoTransferencia:I

    .line 224
    :goto_0
    iget v0, p0, Lcl/santander/smartphone/Transferencias;->indexOrigen:I

    iput v0, p0, Lcl/santander/smartphone/Transferencias;->id:I

    .line 244
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcl/santander/smartphone/Transferencias;->setProductosOrigen()V

    .line 246
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06034c

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/CirclePageIndicator;

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->vpi_indicator_origen:Lcom/viewpagerindicator/CirclePageIndicator;

    .line 247
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06034b

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->vp_pager_origen:Landroid/support/v4/view/ViewPager;

    .line 249
    new-instance v0, Lcl/santander/smartphone/ProductosPageAdapter;

    iget-object v1, p0, Lcl/santander/smartphone/Transferencias;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-object v2, p0, Lcl/santander/smartphone/Transferencias;->productosOrigen:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-direct {v0, v1, v2}, Lcl/santander/smartphone/ProductosPageAdapter;-><init>(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcl/santander/santanderCL/data/MatrizProductos;)V

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->pageAdapterOrigen:Lcl/santander/smartphone/ProductosPageAdapter;

    .line 251
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->vp_pager_origen:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcl/santander/smartphone/Transferencias;->pageAdapterOrigen:Lcl/santander/smartphone/ProductosPageAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 253
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->vpi_indicator_origen:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v1, p0, Lcl/santander/smartphone/Transferencias;->vp_pager_origen:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 254
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->vpi_indicator_origen:Lcom/viewpagerindicator/CirclePageIndicator;

    const v1, -0xaaaaab

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setFillColor(I)V

    .line 255
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->vpi_indicator_origen:Lcom/viewpagerindicator/CirclePageIndicator;

    const v1, -0x222223

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setPageColor(I)V

    .line 257
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->vpi_indicator_origen:Lcom/viewpagerindicator/CirclePageIndicator;

    iget v1, p0, Lcl/santander/smartphone/Transferencias;->id:I

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setCurrentItem(I)V

    .line 260
    sget-object v0, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v0}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getPerfil()Lcl/santander/santanderCL/utils/Constant$PERFIL;

    move-result-object v0

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$PERFIL;->PERFIL2:Lcl/santander/santanderCL/utils/Constant$PERFIL;

    if-ne v0, v1, :cond_2

    .line 262
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->m_TabButtons:[Landroid/widget/Button;

    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 263
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->m_TabButtons:[Landroid/widget/Button;

    aget-object v0, v0, v5

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 265
    :cond_2
    iget v0, p0, Lcl/santander/smartphone/Transferencias;->tipoTransferencia:I

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/Transferencias;->setActiveTabButton(I)V

    .line 268
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->vpi_indicator_origen:Lcom/viewpagerindicator/CirclePageIndicator;

    new-instance v1, Lcl/santander/smartphone/Transferencias$5;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/Transferencias$5;-><init>(Lcl/santander/smartphone/Transferencias;)V

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 294
    return-void

    .line 221
    :cond_3
    iput v4, p0, Lcl/santander/smartphone/Transferencias;->tipoTransferencia:I

    .line 222
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->bt_misProductos:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 227
    :cond_4
    iget v0, p0, Lcl/santander/smartphone/Transferencias;->tipoOrigen:I

    if-ne v0, v4, :cond_5

    .line 229
    iput v3, p0, Lcl/santander/smartphone/Transferencias;->tipoTransferencia:I

    .line 230
    iget v0, p0, Lcl/santander/smartphone/Transferencias;->indexOrigen:I

    iput v0, p0, Lcl/santander/smartphone/Transferencias;->id:I

    .line 231
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->bt_supergiros:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 232
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->bt_terceros:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    .line 235
    :cond_5
    iget v0, p0, Lcl/santander/smartphone/Transferencias;->tipoOrigen:I

    if-ne v0, v5, :cond_1

    .line 237
    iput v3, p0, Lcl/santander/smartphone/Transferencias;->tipoTransferencia:I

    .line 238
    iget v0, p0, Lcl/santander/smartphone/Transferencias;->indexOrigen:I

    iput v0, p0, Lcl/santander/smartphone/Transferencias;->id:I

    .line 239
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->bt_supergiros:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 240
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->bt_terceros:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 663
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 664
    invoke-virtual {p0}, Lcl/santander/smartphone/Transferencias;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 665
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 666
    const/4 v0, 0x2

    iget-object v1, p0, Lcl/santander/smartphone/Transferencias;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0500f2

    invoke-virtual {p0, v2}, Lcl/santander/smartphone/Transferencias;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 667
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/Transferencias;->setHasOptionsMenu(Z)V

    .line 669
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/Transferencias;->m_View:Landroid/view/View;

    invoke-static {v0, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 670
    invoke-virtual {p0}, Lcl/santander/smartphone/Transferencias;->initComponents()V

    .line 672
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/Transferencias;->setTransferType(I)V

    .line 673
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 150
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 152
    :goto_0
    return-object v0

    .line 151
    :cond_0
    const v0, 0x7f03006f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->m_View:Landroid/view/View;

    .line 152
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->m_View:Landroid/view/View;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 676
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 683
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 680
    :pswitch_0
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 676
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public setActiveTabButton(I)V
    .locals 6
    .param p1, "_opc"    # I

    .prologue
    const/4 v5, 0x0

    const/high16 v4, -0x1000000

    .line 298
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcl/santander/smartphone/Transferencias;->m_TabButtons:[Landroid/widget/Button;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 315
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcl/santander/smartphone/Transferencias;->m_TabButtons:[Landroid/widget/Button;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 323
    :goto_2
    return-void

    .line 300
    :cond_0
    iget-object v1, p0, Lcl/santander/smartphone/Transferencias;->m_TabButtons:[Landroid/widget/Button;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 302
    iget-object v1, p0, Lcl/santander/smartphone/Transferencias;->m_TabButtons:[Landroid/widget/Button;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcl/santander/smartphone/Transferencias;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02008b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 303
    iget-object v1, p0, Lcl/santander/smartphone/Transferencias;->m_TabButtons:[Landroid/widget/Button;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 304
    iget-object v1, p0, Lcl/santander/smartphone/Transferencias;->m_TabButtons:[Landroid/widget/Button;

    aget-object v1, v1, v0

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 298
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    :cond_1
    iget-object v1, p0, Lcl/santander/smartphone/Transferencias;->m_TabButtons:[Landroid/widget/Button;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcl/santander/smartphone/Transferencias;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02008c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 309
    iget-object v1, p0, Lcl/santander/smartphone/Transferencias;->m_TabButtons:[Landroid/widget/Button;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 310
    iget-object v1, p0, Lcl/santander/smartphone/Transferencias;->m_TabButtons:[Landroid/widget/Button;

    aget-object v1, v1, v0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    .line 316
    :cond_2
    if-ne p1, v0, :cond_3

    .line 317
    iget-object v1, p0, Lcl/santander/smartphone/Transferencias;->m_TabButtons:[Landroid/widget/Button;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcl/santander/smartphone/Transferencias;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02008d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 318
    iget-object v1, p0, Lcl/santander/smartphone/Transferencias;->m_TabButtons:[Landroid/widget/Button;

    aget-object v1, v1, v0

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 319
    iget-object v1, p0, Lcl/santander/smartphone/Transferencias;->m_TabButtons:[Landroid/widget/Button;

    aget-object v1, v1, v0

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 315
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setProductosOrigen()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 327
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->productosOrigen:Lcl/santander/santanderCL/data/MatrizProductos;

    if-eqz v0, :cond_0

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->productosOrigen:Lcl/santander/santanderCL/data/MatrizProductos;

    .line 330
    :cond_0
    new-instance v0, Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-direct {v0}, Lcl/santander/santanderCL/data/MatrizProductos;-><init>()V

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->productosOrigen:Lcl/santander/santanderCL/data/MatrizProductos;

    .line 331
    iget v0, p0, Lcl/santander/smartphone/Transferencias;->tipoTransferencia:I

    if-nez v0, :cond_5

    .line 334
    iget v0, p0, Lcl/santander/smartphone/Transferencias;->tipoOrigen:I

    if-nez v0, :cond_3

    .line 336
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->productosOrigen:Lcl/santander/santanderCL/data/MatrizProductos;

    .line 349
    :cond_1
    :goto_0
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->transferencias_productos:Lcl/santander/smartphone/TransferEntremisproductos;

    iget-object v1, p0, Lcl/santander/smartphone/Transferencias;->productosOrigen:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v0, v1}, Lcl/santander/smartphone/TransferEntremisproductos;->setProductosOrigen(Lcl/santander/santanderCL/data/MatrizProductos;)V

    .line 362
    :cond_2
    :goto_1
    return-void

    .line 339
    :cond_3
    iget v0, p0, Lcl/santander/smartphone/Transferencias;->tipoOrigen:I

    if-ne v0, v1, :cond_4

    .line 341
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->tarjetas:Lcl/santander/santanderCL/data/MatrizProductos;

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->productosOrigen:Lcl/santander/santanderCL/data/MatrizProductos;

    goto :goto_0

    .line 344
    :cond_4
    iget v0, p0, Lcl/santander/smartphone/Transferencias;->tipoOrigen:I

    if-ne v0, v2, :cond_1

    .line 346
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->lineascredito:Lcl/santander/santanderCL/data/MatrizProductos;

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->productosOrigen:Lcl/santander/santanderCL/data/MatrizProductos;

    goto :goto_0

    .line 353
    :cond_5
    iget v0, p0, Lcl/santander/smartphone/Transferencias;->tipoTransferencia:I

    if-ne v0, v1, :cond_6

    .line 355
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->productosOrigen:Lcl/santander/santanderCL/data/MatrizProductos;

    goto :goto_1

    .line 358
    :cond_6
    iget v0, p0, Lcl/santander/smartphone/Transferencias;->tipoTransferencia:I

    if-ne v0, v2, :cond_2

    .line 360
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    iput-object v0, p0, Lcl/santander/smartphone/Transferencias;->productosOrigen:Lcl/santander/santanderCL/data/MatrizProductos;

    goto :goto_1
.end method

.method public setTransferType(I)V
    .locals 8
    .param p1, "_type"    # I

    .prologue
    const/4 v1, 0x1

    const v7, 0x7f060350

    .line 367
    packed-switch p1, :pswitch_data_0

    .line 395
    :goto_0
    iput p1, p0, Lcl/santander/smartphone/Transferencias;->tipoTransferencia:I

    .line 396
    iget v0, p0, Lcl/santander/smartphone/Transferencias;->tipoTransferencia:I

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/Transferencias;->setActiveTabButton(I)V

    .line 397
    return-void

    .line 369
    :pswitch_0
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->bt_aceptar:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 370
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->transferencias_productos:Lcl/santander/smartphone/TransferEntremisproductos;

    iget-object v1, p0, Lcl/santander/smartphone/Transferencias;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    iget-object v2, p0, Lcl/santander/smartphone/Transferencias;->tarjetas:Lcl/santander/santanderCL/data/MatrizProductos;

    iget-object v3, p0, Lcl/santander/smartphone/Transferencias;->lineascredito:Lcl/santander/santanderCL/data/MatrizProductos;

    iget v4, p0, Lcl/santander/smartphone/Transferencias;->tipoOrigen:I

    iget-object v5, p0, Lcl/santander/smartphone/Transferencias;->vp_pager_origen:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcl/santander/smartphone/TransferEntremisproductos;->setProductosDestino(Lcl/santander/santanderCL/data/MatrizProductos;Lcl/santander/santanderCL/data/MatrizProductos;Lcl/santander/santanderCL/data/MatrizProductos;II)V

    .line 371
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    .line 372
    .local v6, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->transferencias_productos:Lcl/santander/smartphone/TransferEntremisproductos;

    invoke-virtual {v6, v7, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 373
    invoke-virtual {v6}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 378
    .end local v6    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :pswitch_1
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->bt_aceptar:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 379
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    .line 380
    .restart local v6    # "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->transferencias_terceros:Lcl/santander/smartphone/TransferTerceros;

    invoke-virtual {v6, v7, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 381
    invoke-virtual {v6}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 386
    .end local v6    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :pswitch_2
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->bt_aceptar:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 387
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    .line 388
    .restart local v6    # "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v0, p0, Lcl/santander/smartphone/Transferencias;->transferencias_supergiros:Lcl/santander/smartphone/TransferSupergiros;

    invoke-virtual {v6, v7, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 389
    invoke-virtual {v6}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 367
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public startTransfer(I)V
    .locals 21
    .param p1, "_type"    # I

    .prologue
    .line 401
    packed-switch p1, :pswitch_data_0

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 403
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/Transferencias;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v19

    .line 404
    .local v19, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f060062

    new-instance v3, Lcl/santander/smartphone/TransferEntremisproductosConfirm;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/Transferencias;->productosOrigen:Lcl/santander/santanderCL/data/MatrizProductos;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcl/santander/smartphone/Transferencias;->vp_pager_origen:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v5

    invoke-virtual {v4, v5}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcl/santander/smartphone/Transferencias;->transferencias_productos:Lcl/santander/smartphone/TransferEntremisproductos;

    invoke-virtual {v5}, Lcl/santander/smartphone/TransferEntremisproductos;->getProductoSeleccionado()Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcl/santander/smartphone/Transferencias;->transferencias_productos:Lcl/santander/smartphone/TransferEntremisproductos;

    invoke-virtual {v6}, Lcl/santander/smartphone/TransferEntremisproductos;->getMonto()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcl/santander/smartphone/TransferEntremisproductosConfirm;-><init>(Lcl/santander/santanderCL/data/response/ItemProducto;Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 405
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 406
    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 410
    .end local v19    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcl/santander/smartphone/Transferencias;->initializeTerceros()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lcl/santander/smartphone/Transferencias;->verificaTerceros()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/Transferencias;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v19

    .line 414
    .restart local v19    # "ft":Landroid/support/v4/app/FragmentTransaction;
    const v20, 0x7f060062

    new-instance v2, Lcl/santander/smartphone/TransferTercerosConfirm;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/santander/smartphone/Transferencias;->productosOrigen:Lcl/santander/santanderCL/data/MatrizProductos;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/Transferencias;->vp_pager_origen:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-virtual {v3, v4}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/Transferencias;->transferencias_terceros:Lcl/santander/smartphone/TransferTerceros;

    invoke-virtual {v4}, Lcl/santander/smartphone/TransferTerceros;->getRut()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcl/santander/smartphone/Transferencias;->transferencias_terceros:Lcl/santander/smartphone/TransferTerceros;

    invoke-virtual {v5}, Lcl/santander/smartphone/TransferTerceros;->getNombre()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcl/santander/smartphone/Transferencias;->transferencias_terceros:Lcl/santander/smartphone/TransferTerceros;

    invoke-virtual {v6}, Lcl/santander/smartphone/TransferTerceros;->getCuenta()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcl/santander/smartphone/Transferencias;->transferencias_terceros:Lcl/santander/smartphone/TransferTerceros;

    invoke-virtual {v7}, Lcl/santander/smartphone/TransferTerceros;->getMonto()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcl/santander/smartphone/Transferencias;->productoDestinatario:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcl/santander/smartphone/Transferencias;->coordenada1:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcl/santander/smartphone/Transferencias;->coordenada2:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcl/santander/smartphone/Transferencias;->coordenada3:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcl/santander/smartphone/Transferencias;->email:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcl/santander/smartphone/Transferencias;->numeroTarjeta:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcl/santander/smartphone/Transferencias;->transferencias_terceros:Lcl/santander/smartphone/TransferTerceros;

    invoke-virtual {v14}, Lcl/santander/smartphone/TransferTerceros;->getNameBanco()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcl/santander/smartphone/Transferencias;->transferencias_terceros:Lcl/santander/smartphone/TransferTerceros;

    invoke-virtual {v15}, Lcl/santander/smartphone/TransferTerceros;->getNameTipoCuenta()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/Transferencias;->transferencias_terceros:Lcl/santander/smartphone/TransferTerceros;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcl/santander/smartphone/TransferTerceros;->getCodBanco()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/Transferencias;->transferencias_terceros:Lcl/santander/smartphone/TransferTerceros;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcl/santander/smartphone/TransferTerceros;->getCodTipoCuenta()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/Transferencias;->limitesTransferencias:Lcl/santander/santanderCL/data/LimitesTransferencias;

    move-object/from16 v18, v0

    invoke-direct/range {v2 .. v18}, Lcl/santander/smartphone/TransferTercerosConfirm;-><init>(Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcl/santander/santanderCL/data/LimitesTransferencias;)V

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 415
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 416
    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    .line 422
    .end local v19    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcl/santander/smartphone/Transferencias;->supergiroIngreso()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcl/santander/smartphone/Transferencias;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v19

    .line 425
    .restart local v19    # "ft":Landroid/support/v4/app/FragmentTransaction;
    const v20, 0x7f060062

    new-instance v2, Lcl/santander/smartphone/TransferSupergirosConfirm;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcl/santander/smartphone/Transferencias;->productosOrigen:Lcl/santander/santanderCL/data/MatrizProductos;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/Transferencias;->vp_pager_origen:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-virtual {v3, v4}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcl/santander/smartphone/Transferencias;->monto:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcl/santander/smartphone/Transferencias;->montoInteger:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcl/santander/smartphone/Transferencias;->rutOri:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcl/santander/smartphone/Transferencias;->rutOriScreen:Ljava/lang/String;

    .line 426
    move-object/from16 v0, p0

    iget-object v8, v0, Lcl/santander/smartphone/Transferencias;->rutDest:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcl/santander/smartphone/Transferencias;->rutDestScreen:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcl/santander/smartphone/Transferencias;->numeroTarjeta:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcl/santander/smartphone/Transferencias;->coordenada1:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcl/santander/smartphone/Transferencias;->coordenada2:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcl/santander/smartphone/Transferencias;->coordenada3:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcl/santander/smartphone/Transferencias;->segmento:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcl/santander/smartphone/Transferencias;->nompersona:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/Transferencias;->tipocuenta:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/Transferencias;->cuenta:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcl/santander/smartphone/Transferencias;->banco:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-direct/range {v2 .. v18}, Lcl/santander/smartphone/TransferSupergirosConfirm;-><init>(Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 427
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 428
    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    .line 401
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
