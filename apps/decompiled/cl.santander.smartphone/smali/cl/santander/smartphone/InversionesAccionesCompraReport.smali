.class public Lcl/santander/smartphone/InversionesAccionesCompraReport;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "InversionesAccionesCompraReport.java"


# instance fields
.field private accionSeleccionada:Lcl/santander/santanderCL/data/response/ItemAccionCompra;

.field bt_volver_saldos:Landroid/widget/Button;

.field private cantidad_acciones:Ljava/lang/String;

.field private cuentaCargo:Ljava/lang/String;

.field private limite_precio:Ljava/lang/String;

.field m_View:Landroid/view/View;

.field private monto_estimado_comprar:Ljava/lang/String;

.field private monto_invertido:Ljava/lang/String;

.field sf:Lcom/actionbarsherlock/app/SherlockFragment;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;

.field private tipo_precio:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$TIPOS_PRECIO;

.field tv_accion:Landroid/widget/TextView;

.field tv_cantidad:Landroid/widget/TextView;

.field tv_cuenta_cargo:Landroid/widget/TextView;

.field tv_monto_comprar:Landroid/widget/TextView;

.field tv_monto_invertido:Landroid/widget/TextView;

.field tv_nombre:Landroid/widget/TextView;

.field tv_rut:Landroid/widget/TextView;

.field tv_tipo_precio:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(DDLjava/lang/String;Ljava/lang/String;Lcl/santander/santanderCL/data/response/ItemAccionCompra;Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$TIPOS_PRECIO;Ljava/lang/String;)V
    .locals 3
    .param p1, "monto_total_comprar"    # D
    .param p3, "d"    # D
    .param p5, "cantidad_comprar"    # Ljava/lang/String;
    .param p6, "numeroContratoScreen"    # Ljava/lang/String;
    .param p7, "accionSeleccionada"    # Lcl/santander/santanderCL/data/response/ItemAccionCompra;
    .param p8, "tipo_precio"    # Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$TIPOS_PRECIO;
    .param p9, "limite_precio"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    invoke-static {v0, v1}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->monto_estimado_comprar:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    invoke-static {v1, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " (Incluye Comisiones y considera precio l\u00edmite o precio actual referencial informado)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->monto_invertido:Ljava/lang/String;

    .line 105
    iput-object p5, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->cantidad_acciones:Ljava/lang/String;

    .line 106
    iput-object p6, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->cuentaCargo:Ljava/lang/String;

    .line 107
    iput-object p7, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->accionSeleccionada:Lcl/santander/santanderCL/data/response/ItemAccionCompra;

    .line 108
    iput-object p8, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->tipo_precio:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$TIPOS_PRECIO;

    .line 109
    iput-object p9, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->limite_precio:Ljava/lang/String;

    .line 110
    return-void
.end method

.method private initComponents()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600f2

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->tv_accion:Landroid/widget/TextView;

    .line 148
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600f3

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->tv_cantidad:Landroid/widget/TextView;

    .line 149
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600fa

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->tv_cuenta_cargo:Landroid/widget/TextView;

    .line 150
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600f0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->tv_monto_comprar:Landroid/widget/TextView;

    .line 151
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600f4

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->tv_monto_invertido:Landroid/widget/TextView;

    .line 152
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600f8

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->tv_nombre:Landroid/widget/TextView;

    .line 153
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600f7

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->tv_rut:Landroid/widget/TextView;

    .line 154
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600f5

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->tv_tipo_precio:Landroid/widget/TextView;

    .line 159
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600fe

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->bt_volver_saldos:Landroid/widget/Button;

    .line 162
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->bt_volver_saldos:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/InversionesAccionesCompraReport$1;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/InversionesAccionesCompraReport$1;-><init>(Lcl/santander/smartphone/InversionesAccionesCompraReport;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    return-void
.end method

.method private rellenaDatos()V
    .locals 5

    .prologue
    .line 187
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->tv_accion:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->accionSeleccionada:Lcl/santander/santanderCL/data/response/ItemAccionCompra;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemAccionCompra;->getNombreAccion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->tv_cantidad:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->cantidad_acciones:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->tv_cuenta_cargo:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->cuentaCargo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->tv_monto_comprar:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->monto_estimado_comprar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->tv_monto_invertido:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->monto_invertido:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->tv_nombre:Landroid/widget/TextView;

    sget-object v1, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v1}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getNombre_usuario()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->tv_rut:Landroid/widget/TextView;

    sget-object v1, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v1}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/Utils;->parseRUT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->tipo_precio:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$TIPOS_PRECIO;

    sget-object v1, Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$TIPOS_PRECIO;->L:Lcl/santander/smartphone/InversionesAccionesCompraSolicitud$TIPOS_PRECIO;

    if-ne v0, v1, :cond_0

    .line 197
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->tv_tipo_precio:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A Precio Limite "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->limite_precio:Ljava/lang/String;

    sget-object v3, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcl/santander/santanderCL/utils/Utils;->parseImporteConDivisa(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 198
    const-string v2, " (Precio Actual Referencial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->accionSeleccionada:Lcl/santander/santanderCL/data/response/ItemAccionCompra;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/ItemAccionCompra;->getPrecioActualScreen()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->tv_tipo_precio:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A Precio de mercado (Precio Actual Referencial: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->accionSeleccionada:Lcl/santander/santanderCL/data/response/ItemAccionCompra;

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/ItemAccionCompra;->getPrecioActualScreen()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    .line 124
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesCompraReport;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 127
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 128
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesAccionesCompraReport;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050172

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, v3}, Lcl/santander/smartphone/InversionesAccionesCompraReport;->setHasOptionsMenu(Z)V

    .line 135
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->m_View:Landroid/view/View;

    invoke-static {v0, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 137
    sput-boolean v3, Lcl/santander/smartphone/Global;->NOBACK:Z

    .line 138
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesAccionesCompraReport;->initComponents()V

    .line 140
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesAccionesCompraReport;->rellenaDatos()V

    .line 143
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 117
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 119
    :goto_0
    return-object v0

    .line 118
    :cond_0
    const v0, 0x7f030033

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->m_View:Landroid/view/View;

    .line 119
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->m_View:Landroid/view/View;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 207
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 218
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 210
    :pswitch_0
    const/4 v0, 0x0

    sput-boolean v0, Lcl/santander/smartphone/Global;->NOBACK:Z

    .line 211
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 212
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 213
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 214
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 215
    iget-object v0, p0, Lcl/santander/smartphone/InversionesAccionesCompraReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
