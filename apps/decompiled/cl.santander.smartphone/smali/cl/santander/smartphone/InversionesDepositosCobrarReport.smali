.class public Lcl/santander/smartphone/InversionesDepositosCobrarReport;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "InversionesDepositosCobrarReport.java"


# instance fields
.field bt_volver_saldos:Landroid/widget/Button;

.field datos_cobro:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;

.field email:Ljava/lang/String;

.field m_View:Landroid/view/View;

.field sf:Lcom/actionbarsherlock/app/SherlockFragment;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;

.field tv_cuenta_abono:Landroid/widget/TextView;

.field tv_fecha_cobro:Landroid/widget/TextView;

.field tv_fecha_inversion:Landroid/widget/TextView;

.field tv_info_report:Landroid/widget/TextView;

.field tv_intereses_ganados:Landroid/widget/TextView;

.field tv_label_cobrado:Landroid/widget/TextView;

.field tv_label_intereses:Landroid/widget/TextView;

.field tv_label_invertido:Landroid/widget/TextView;

.field tv_monto_cobrado:Landroid/widget/TextView;

.field tv_monto_invertido:Landroid/widget/TextView;

.field tv_nombre:Landroid/widget/TextView;

.field tv_numero_deposito:Landroid/widget/TextView;

.field tv_plazo:Landroid/widget/TextView;

.field tv_rut:Landroid/widget/TextView;

.field tv_tasa_interes:Landroid/widget/TextView;

.field tv_tipo_deposito:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;Ljava/lang/String;)V
    .locals 0
    .param p1, "resp"    # Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;
    .param p2, "mail"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 81
    iput-object p1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->datos_cobro:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;

    .line 82
    iput-object p2, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->email:Ljava/lang/String;

    .line 83
    return-void
.end method

.method private initComponents()V
    .locals 3

    .prologue
    const v2, 0x7f06017f

    .line 123
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06017c

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->tv_numero_deposito:Landroid/widget/TextView;

    .line 124
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->tv_cuenta_abono:Landroid/widget/TextView;

    .line 125
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06017d

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->tv_rut:Landroid/widget/TextView;

    .line 126
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06017e

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->tv_nombre:Landroid/widget/TextView;

    .line 127
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->tv_cuenta_abono:Landroid/widget/TextView;

    .line 128
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060180

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->tv_tipo_deposito:Landroid/widget/TextView;

    .line 129
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060181

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->tv_plazo:Landroid/widget/TextView;

    .line 130
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060182

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->tv_tasa_interes:Landroid/widget/TextView;

    .line 131
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060184

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->tv_monto_invertido:Landroid/widget/TextView;

    .line 132
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060186

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->tv_monto_cobrado:Landroid/widget/TextView;

    .line 133
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060188

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->tv_intereses_ganados:Landroid/widget/TextView;

    .line 134
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06018a

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->tv_fecha_inversion:Landroid/widget/TextView;

    .line 135
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06018c

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->tv_fecha_cobro:Landroid/widget/TextView;

    .line 136
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06018e

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->tv_info_report:Landroid/widget/TextView;

    .line 137
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060185

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->tv_label_cobrado:Landroid/widget/TextView;

    .line 138
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060187

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->tv_label_intereses:Landroid/widget/TextView;

    .line 139
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060183

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->tv_label_invertido:Landroid/widget/TextView;

    .line 143
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060190

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->bt_volver_saldos:Landroid/widget/Button;

    .line 146
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->bt_volver_saldos:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/InversionesDepositosCobrarReport$1;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/InversionesDepositosCobrarReport$1;-><init>(Lcl/santander/smartphone/InversionesDepositosCobrarReport;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    return-void
.end method

.method private rellenaDatos()V
    .locals 4

    .prologue
    .line 171
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->tv_numero_deposito:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->datos_cobro:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->getNumeroDeposito()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->tv_rut:Landroid/widget/TextView;

    sget-object v1, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v1}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/Utils;->parseRUT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->tv_nombre:Landroid/widget/TextView;

    sget-object v1, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v1}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getNombre_usuario()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->tv_cuenta_abono:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->datos_cobro:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->getCuentaAbono()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->tv_tipo_deposito:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->datos_cobro:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->getDescripcionTipoDeposito()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->tv_plazo:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->datos_cobro:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->getPlazo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->tv_tasa_interes:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->datos_cobro:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->getTasaInteres()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->tv_monto_invertido:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->datos_cobro:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->getMontoInvertido()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->tv_label_invertido:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f05018a

    invoke-virtual {p0, v2}, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->datos_cobro:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->getSimboloTipoReajuste()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->tv_monto_cobrado:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->datos_cobro:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->getMontoCobrado()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->tv_label_cobrado:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f0501ba

    invoke-virtual {p0, v2}, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->datos_cobro:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->getSimboloTipoReajuste()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->tv_intereses_ganados:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->datos_cobro:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->getInteresesGanados()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->tv_label_intereses:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f0501bb

    invoke-virtual {p0, v2}, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->datos_cobro:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;

    invoke-virtual {v2}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->getSimboloTipoReajuste()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->tv_fecha_inversion:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->datos_cobro:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->getFechaInversion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->tv_fecha_cobro:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->datos_cobro:Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoConfirmarResponse;->getFechaCobro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->tv_info_report:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050174

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->email:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 96
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 99
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 100
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050172

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, v3}, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->setHasOptionsMenu(Z)V

    .line 107
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->m_View:Landroid/view/View;

    invoke-static {v0, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 109
    sput-boolean v3, Lcl/santander/smartphone/Global;->NOBACK:Z

    .line 110
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->initComponents()V

    .line 112
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->rellenaDatos()V

    .line 115
    sput-boolean v3, Lcl/santander/smartphone/Global;->volverSaldos:Z

    .line 118
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 91
    :goto_0
    return-object v0

    .line 90
    :cond_0
    const v0, 0x7f03003b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->m_View:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->m_View:Landroid/view/View;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 196
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 207
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 199
    :pswitch_0
    const/4 v0, 0x0

    sput-boolean v0, Lcl/santander/smartphone/Global;->NOBACK:Z

    .line 200
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 201
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 202
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 203
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 204
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrarReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
