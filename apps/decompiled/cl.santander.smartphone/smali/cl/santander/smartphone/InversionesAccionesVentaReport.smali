.class public Lcl/santander/smartphone/InversionesAccionesVentaReport;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "InversionesAccionesVentaReport.java"


# instance fields
.field private accion:Ljava/lang/String;

.field bt_volver_saldos:Landroid/widget/Button;

.field private cantidadAcciones:Ljava/lang/String;

.field private cuentaAbono:Ljava/lang/String;

.field m_View:Landroid/view/View;

.field private montoRecibir:D

.field private montoVender:D

.field private precioDB:D

.field sf:Lcom/actionbarsherlock/app/SherlockFragment;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;

.field private tipoPrecio:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$TIPOS_PRECIO;

.field tv_accion:Landroid/widget/TextView;

.field tv_cantidad_acciones:Landroid/widget/TextView;

.field tv_cuenta_abono:Landroid/widget/TextView;

.field tv_monto_recibir:Landroid/widget/TextView;

.field tv_monto_vender:Landroid/widget/TextView;

.field tv_nombre:Landroid/widget/TextView;

.field tv_precio:Landroid/widget/TextView;

.field tv_rut:Landroid/widget/TextView;

.field tv_tipo_precio:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(DDDLjava/lang/String;Ljava/lang/String;Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$TIPOS_PRECIO;Ljava/lang/String;)V
    .locals 0
    .param p1, "precioDB"    # D
    .param p3, "precioFinal"    # D
    .param p5, "recibirFinal"    # D
    .param p7, "cantidadAcciones"    # Ljava/lang/String;
    .param p8, "cuentaNemoScreen"    # Ljava/lang/String;
    .param p9, "tipo_precio"    # Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$TIPOS_PRECIO;
    .param p10, "numeroContratoScreen"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 90
    iput-wide p3, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->montoVender:D

    .line 91
    iput-wide p5, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->montoRecibir:D

    .line 92
    iput-object p7, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->cantidadAcciones:Ljava/lang/String;

    .line 93
    iput-object p8, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->accion:Ljava/lang/String;

    .line 94
    iput-object p9, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->tipoPrecio:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$TIPOS_PRECIO;

    .line 95
    iput-object p10, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->cuentaAbono:Ljava/lang/String;

    .line 96
    iput-wide p1, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->precioDB:D

    .line 97
    return-void
.end method

.method private initComponents()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060133

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->tv_accion:Landroid/widget/TextView;

    .line 135
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060134

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->tv_cantidad_acciones:Landroid/widget/TextView;

    .line 136
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06013a

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->tv_cuenta_abono:Landroid/widget/TextView;

    .line 137
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060135

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->tv_monto_recibir:Landroid/widget/TextView;

    .line 138
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060132

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->tv_monto_vender:Landroid/widget/TextView;

    .line 139
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060139

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->tv_nombre:Landroid/widget/TextView;

    .line 140
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060138

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->tv_rut:Landroid/widget/TextView;

    .line 141
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060136

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->tv_tipo_precio:Landroid/widget/TextView;

    .line 142
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060137

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->tv_precio:Landroid/widget/TextView;

    .line 144
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06013c

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->bt_volver_saldos:Landroid/widget/Button;

    .line 147
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->bt_volver_saldos:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/InversionesAccionesVentaReport$1;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/InversionesAccionesVentaReport$1;-><init>(Lcl/santander/smartphone/InversionesAccionesVentaReport;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    return-void
.end method

.method private rellenaDatos()V
    .locals 8

    .prologue
    const v7, 0x7f0c0004

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 171
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->tv_accion:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->accion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->tv_cantidad_acciones:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->cantidadAcciones:Ljava/lang/String;

    invoke-static {v1, v5}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->tv_cuenta_abono:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->cuentaAbono:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->tv_monto_recibir:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->montoRecibir:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    invoke-static {v2, v3, v5}, Lcl/santander/santanderCL/utils/Utils;->parseImporteConDivisa(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

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

    .line 175
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->tv_monto_vender:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->montoVender:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    invoke-static {v1, v2, v5}, Lcl/santander/santanderCL/utils/Utils;->parseImporteConDivisa(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->tv_precio:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->precioDB:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    invoke-static {v1, v2, v6}, Lcl/santander/santanderCL/utils/Utils;->parseImporteConDivisa(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->tv_nombre:Landroid/widget/TextView;

    sget-object v1, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v1}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getNombre_usuario()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->tv_rut:Landroid/widget/TextView;

    sget-object v1, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v1}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/Utils;->parseRUT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->tipoPrecio:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$TIPOS_PRECIO;

    sget-object v1, Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$TIPOS_PRECIO;->L:Lcl/santander/smartphone/InversionesAccionesVentaSolicitud$TIPOS_PRECIO;

    if-ne v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->tv_tipo_precio:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesVentaReport;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->tv_tipo_precio:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesVentaReport;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 110
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesVentaReport;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 113
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 114
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesVentaReport;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050172

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0, v3}, Lcl/santander/smartphone/InversionesAccionesVentaReport;->setHasOptionsMenu(Z)V

    .line 121
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->m_View:Landroid/view/View;

    invoke-static {v0, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 123
    sput-boolean v3, Lcl/santander/smartphone/Global;->NOBACK:Z

    .line 124
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesAccionesVentaReport;->initComponents()V

    .line 126
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesAccionesVentaReport;->rellenaDatos()V

    .line 129
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
    const v0, 0x7f030036

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->m_View:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->m_View:Landroid/view/View;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 190
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 201
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 193
    :pswitch_0
    const/4 v0, 0x0

    sput-boolean v0, Lcl/santander/smartphone/Global;->NOBACK:Z

    .line 194
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 195
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 196
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 197
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 198
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesVentaReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
