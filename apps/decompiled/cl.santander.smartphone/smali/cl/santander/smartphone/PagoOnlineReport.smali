.class public Lcl/santander/smartphone/PagoOnlineReport;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "PagoOnlineReport.java"


# instance fields
.field bt_Volver:Landroid/widget/Button;

.field m_ItemDetalle:Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

.field m_ItemProducto:Lcl/santander/santanderCL/data/response/ItemProducto;

.field m_PaymentResponse:Lcl/santander/santanderCL/response/PagoSuscripcionResponse;

.field m_View:Landroid/view/View;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;

.field tv_IdCliente:Landroid/widget/TextView;

.field tv_consulta:Landroid/widget/TextView;

.field tv_cuentac:Landroid/widget/TextView;

.field tv_descripcion:Landroid/widget/TextView;

.field tv_email:Landroid/widget/TextView;

.field tv_empresa:Landroid/widget/TextView;

.field tv_fecha:Landroid/widget/TextView;

.field tv_hora:Landroid/widget/TextView;

.field tv_monto:Landroid/widget/TextView;

.field tv_nombre:Landroid/widget/TextView;

.field tv_transaccion:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;Lcl/santander/santanderCL/data/response/ItemProducto;Lcl/santander/santanderCL/response/PagoSuscripcionResponse;)V
    .locals 1
    .param p1, "_itemDetalle"    # Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;
    .param p2, "_itemProducto"    # Lcl/santander/santanderCL/data/response/ItemProducto;
    .param p3, "_resp"    # Lcl/santander/santanderCL/response/PagoSuscripcionResponse;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 46
    iput-object p1, p0, Lcl/santander/smartphone/PagoOnlineReport;->m_ItemDetalle:Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

    .line 47
    iput-object p2, p0, Lcl/santander/smartphone/PagoOnlineReport;->m_ItemProducto:Lcl/santander/santanderCL/data/response/ItemProducto;

    .line 48
    iput-object p3, p0, Lcl/santander/smartphone/PagoOnlineReport;->m_PaymentResponse:Lcl/santander/santanderCL/response/PagoSuscripcionResponse;

    .line 49
    const/4 v0, 0x1

    sput-boolean v0, Lcl/santander/smartphone/Global;->NOBACK:Z

    .line 50
    return-void
.end method


# virtual methods
.method public initScreen()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060262

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->tv_nombre:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060264

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->tv_email:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060266

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->tv_fecha:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060268

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->tv_hora:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06026a

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->tv_consulta:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06026c

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->tv_cuentac:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06026e

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->tv_monto:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060270

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->tv_empresa:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060272

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->tv_descripcion:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060274

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->tv_IdCliente:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060276

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->tv_transaccion:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->m_PaymentResponse:Lcl/santander/santanderCL/response/PagoSuscripcionResponse;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->tv_nombre:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineReport;->m_PaymentResponse:Lcl/santander/santanderCL/response/PagoSuscripcionResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->getNombreCliente()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->tv_email:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineReport;->m_PaymentResponse:Lcl/santander/santanderCL/response/PagoSuscripcionResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->getMail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->tv_fecha:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineReport;->m_PaymentResponse:Lcl/santander/santanderCL/response/PagoSuscripcionResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->getFecha()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->tv_hora:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineReport;->m_PaymentResponse:Lcl/santander/santanderCL/response/PagoSuscripcionResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->getHora()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->tv_consulta:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineReport;->m_PaymentResponse:Lcl/santander/santanderCL/response/PagoSuscripcionResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->getNrFolio()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->tv_monto:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineReport;->m_PaymentResponse:Lcl/santander/santanderCL/response/PagoSuscripcionResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->getMonto()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->tv_descripcion:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineReport;->m_PaymentResponse:Lcl/santander/santanderCL/response/PagoSuscripcionResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->getDescripcion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->tv_transaccion:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineReport;->m_PaymentResponse:Lcl/santander/santanderCL/response/PagoSuscripcionResponse;

    invoke-virtual {v1}, Lcl/santander/santanderCL/response/PagoSuscripcionResponse;->getCodNor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->tv_cuentac:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineReport;->m_ItemProducto:Lcl/santander/santanderCL/data/response/ItemProducto;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getNumeroContratoScreen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->tv_empresa:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineReport;->m_ItemDetalle:Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->getEmpresa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->tv_IdCliente:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineReport;->m_ItemDetalle:Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->getIdCliente()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 97
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcl/santander/smartphone/PagoOnlineReport;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 99
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 101
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0500e9

    invoke-virtual {p0, v1}, Lcl/santander/smartphone/PagoOnlineReport;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0, v2}, Lcl/santander/smartphone/PagoOnlineReport;->setHasOptionsMenu(Z)V

    .line 104
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/PagoOnlineReport;->m_View:Landroid/view/View;

    invoke-static {v0, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 106
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060277

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->bt_Volver:Landroid/widget/Button;

    .line 107
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->bt_Volver:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/PagoOnlineReport$1;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/PagoOnlineReport$1;-><init>(Lcl/santander/smartphone/PagoOnlineReport;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-virtual {p0}, Lcl/santander/smartphone/PagoOnlineReport;->initScreen()V

    .line 121
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 58
    :goto_0
    return-object v0

    .line 57
    :cond_0
    const v0, 0x7f030052

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->m_View:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->m_View:Landroid/view/View;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 136
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 127
    :pswitch_0
    sput-boolean v1, Lcl/santander/smartphone/Global;->m_bCallInitialWSPagoOnline:Z

    .line 128
    sput-boolean v1, Lcl/santander/smartphone/Global;->NOBACK:Z

    .line 129
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 130
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 131
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 132
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 133
    iget-object v0, p0, Lcl/santander/smartphone/PagoOnlineReport;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
