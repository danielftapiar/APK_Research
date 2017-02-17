.class public Lcl/santander/smartphone/InversionesDepositosReport;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "InversionesDepositosReport.java"


# instance fields
.field bt_volver_saldos:Landroid/widget/Button;

.field cuentaSeleccionada:Lcl/santander/santanderCL/data/response/ItemProducto;

.field datosInversion:Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;

.field datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

.field email:Ljava/lang/String;

.field m_View:Landroid/view/View;

.field sf:Lcom/actionbarsherlock/app/SherlockFragment;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;

.field tv_comprobante:Landroid/widget/TextView;

.field tv_cuenta_cargo:Landroid/widget/TextView;

.field tv_fecha_inversion:Landroid/widget/TextView;

.field tv_fecha_vencimiento:Landroid/widget/TextView;

.field tv_info_report:Landroid/widget/TextView;

.field tv_intereses_ganar:Landroid/widget/TextView;

.field tv_label_cobrar:Landroid/widget/TextView;

.field tv_label_intereses:Landroid/widget/TextView;

.field tv_monto_cobrar:Landroid/widget/TextView;

.field tv_monto_invertido:Landroid/widget/TextView;

.field tv_nombre:Landroid/widget/TextView;

.field tv_numero_deposito:Landroid/widget/TextView;

.field tv_plazo:Landroid/widget/TextView;

.field tv_rut:Landroid/widget/TextView;

.field tv_tasa_interes:Landroid/widget/TextView;

.field tv_tipo_deposito:Landroid/widget/TextView;

.field tv_tipo_reajuste:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcl/santander/santanderCL/data/DatosSimularDeposito;Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;Lcl/santander/santanderCL/data/response/ItemProducto;Ljava/lang/String;)V
    .locals 0
    .param p1, "datosSimulacion2"    # Lcl/santander/santanderCL/data/DatosSimularDeposito;
    .param p2, "resp"    # Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;
    .param p3, "itemProducto"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .param p4, "email"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 53
    iput-object p1, p0, Lcl/santander/smartphone/InversionesDepositosReport;->datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    .line 54
    iput-object p2, p0, Lcl/santander/smartphone/InversionesDepositosReport;->datosInversion:Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;

    .line 55
    iput-object p3, p0, Lcl/santander/smartphone/InversionesDepositosReport;->cuentaSeleccionada:Lcl/santander/santanderCL/data/response/ItemProducto;

    .line 56
    iput-object p4, p0, Lcl/santander/smartphone/InversionesDepositosReport;->email:Ljava/lang/String;

    .line 57
    return-void
.end method

.method private initComponents()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601b9

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->tv_cuenta_cargo:Landroid/widget/TextView;

    .line 93
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601c3

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->tv_fecha_inversion:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601c4

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->tv_fecha_vencimiento:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601c8

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->tv_info_report:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601c2

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->tv_intereses_ganar:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601c0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->tv_monto_cobrar:Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601be

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->tv_monto_invertido:Landroid/widget/TextView;

    .line 99
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601b8

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->tv_nombre:Landroid/widget/TextView;

    .line 100
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601b6

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->tv_numero_deposito:Landroid/widget/TextView;

    .line 101
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601bc

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->tv_plazo:Landroid/widget/TextView;

    .line 102
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601b7

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->tv_rut:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601c6

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->tv_tasa_interes:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601ba

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->tv_tipo_deposito:Landroid/widget/TextView;

    .line 105
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601bb

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->tv_tipo_reajuste:Landroid/widget/TextView;

    .line 106
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601bf

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->tv_label_cobrar:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601c1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->tv_label_intereses:Landroid/widget/TextView;

    .line 108
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601b5

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->tv_comprobante:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0601c9

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->bt_volver_saldos:Landroid/widget/Button;

    .line 113
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->bt_volver_saldos:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/InversionesDepositosReport$1;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/InversionesDepositosReport$1;-><init>(Lcl/santander/smartphone/InversionesDepositosReport;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    return-void
.end method

.method private rellenaDatos()V
    .locals 4

    .prologue
    .line 137
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->tv_cuenta_cargo:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosReport;->cuentaSeleccionada:Lcl/santander/santanderCL/data/response/ItemProducto;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getDescripcion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->tv_fecha_inversion:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosReport;->datosInversion:Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->getFechaAlta()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->tv_fecha_vencimiento:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosReport;->datosInversion:Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->getFechaProxVencimiento()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->tv_intereses_ganar:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosReport;->datosInversion:Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->getInteresesPendienteScreen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->tv_monto_cobrar:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosReport;->datosInversion:Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->getSaldoAPagarScreen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->tv_monto_invertido:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosReport;->datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->getMontoAInvertirScreen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->tv_nombre:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosReport;->datosInversion:Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->getNombreCliente()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->tv_numero_deposito:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosReport;->datosInversion:Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->getNumeroDeposito()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->tv_plazo:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosReport;->datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->getPlazo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->tv_rut:Landroid/widget/TextView;

    sget-object v1, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v1}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/Utils;->parseRUT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->tv_tasa_interes:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosReport;->datosInversion:Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->getInteresesEfectivoScreen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->tv_tipo_deposito:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosReport;->datosInversion:Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->getTipoDeposito()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->tv_tipo_reajuste:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosReport;->datosInversion:Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->getDivisa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->tv_label_cobrar:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f050180

    invoke-virtual {p0, v2}, Lcl/santander/smartphone/InversionesDepositosReport;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/InversionesDepositosReport;->datosInversion:Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->getSignoMoneda()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->tv_label_intereses:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f050181

    invoke-virtual {p0, v2}, Lcl/santander/smartphone/InversionesDepositosReport;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/InversionesDepositosReport;->datosInversion:Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/Inversion_DepositoAPlazoConfirmarResponse;->getSignoMoneda()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->tv_info_report:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosReport;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050077

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/InversionesDepositosReport;->email:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosReport;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050078

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->datosSimulacion:Lcl/santander/santanderCL/data/DatosSimularDeposito;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/DatosSimularDeposito;->isIndicadorInversion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->tv_comprobante:Landroid/widget/TextView;

    const v1, 0x7f050187

    invoke-virtual {p0, v1}, Lcl/santander/smartphone/InversionesDepositosReport;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->tv_comprobante:Landroid/widget/TextView;

    const v1, 0x7f0501cc

    invoke-virtual {p0, v1}, Lcl/santander/smartphone/InversionesDepositosReport;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 69
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosReport;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 72
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 73
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosReport;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050172

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, v3}, Lcl/santander/smartphone/InversionesDepositosReport;->setHasOptionsMenu(Z)V

    .line 80
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosReport;->m_View:Landroid/view/View;

    invoke-static {v0, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 82
    sput-boolean v3, Lcl/santander/smartphone/Global;->NOBACK:Z

    .line 83
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesDepositosReport;->initComponents()V

    .line 85
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesDepositosReport;->rellenaDatos()V

    .line 87
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 64
    :goto_0
    return-object v0

    .line 63
    :cond_0
    const v0, 0x7f03003e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->m_View:Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->m_View:Landroid/view/View;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 165
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 176
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 168
    :pswitch_0
    const/4 v0, 0x0

    sput-boolean v0, Lcl/santander/smartphone/Global;->NOBACK:Z

    .line 169
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 170
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 171
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 172
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 173
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
