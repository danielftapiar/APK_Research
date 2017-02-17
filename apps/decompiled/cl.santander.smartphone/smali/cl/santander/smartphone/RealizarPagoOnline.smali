.class public Lcl/santander/smartphone/RealizarPagoOnline;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "RealizarPagoOnline.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field c_seleccionada:I

.field cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

.field m_BtPagar:Landroid/widget/Button;

.field m_CuentaPago:Lcl/santander/santanderCL/data/response/ItemProducto;

.field m_ItemDetalleSuscripcion:Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

.field m_ItemSuscripcion:Lcl/santander/santanderCL/data/response/ItemSuscripcion;

.field m_View:Landroid/view/View;

.field pageAdapter:Lcl/santander/smartphone/ProductosPageAdapter;

.field private puede_pagar:Z

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;

.field tv_cant_pagar:Landroid/widget/TextView;

.field tv_desc:Landroid/widget/TextView;

.field tv_empresa:Landroid/widget/TextView;

.field tv_fecha_pago:Landroid/widget/TextView;

.field tv_fechav:Landroid/widget/TextView;

.field tv_idcliente:Landroid/widget/TextView;

.field tv_pago_mensaje:Landroid/widget/TextView;

.field vp_pager:Landroid/support/v4/view/ViewPager;

.field vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcl/santander/santanderCL/data/MatrizProductos;Lcl/santander/santanderCL/data/response/ItemSuscripcion;Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;I)V
    .locals 0
    .param p1, "cuentas"    # Lcl/santander/santanderCL/data/MatrizProductos;
    .param p2, "_itemSusc"    # Lcl/santander/santanderCL/data/response/ItemSuscripcion;
    .param p3, "_itemDetalle"    # Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;
    .param p4, "c_seleccionada"    # I

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 60
    iput-object p1, p0, Lcl/santander/smartphone/RealizarPagoOnline;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    .line 61
    iput-object p2, p0, Lcl/santander/smartphone/RealizarPagoOnline;->m_ItemSuscripcion:Lcl/santander/santanderCL/data/response/ItemSuscripcion;

    .line 62
    iput-object p3, p0, Lcl/santander/smartphone/RealizarPagoOnline;->m_ItemDetalleSuscripcion:Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

    .line 63
    iput p4, p0, Lcl/santander/smartphone/RealizarPagoOnline;->c_seleccionada:I

    .line 64
    return-void
.end method


# virtual methods
.method public initPageAdapter()V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060296

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/CirclePageIndicator;

    iput-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    .line 76
    iget-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060295

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->vp_pager:Landroid/support/v4/view/ViewPager;

    .line 77
    new-instance v0, Lcl/santander/smartphone/ProductosPageAdapter;

    iget-object v1, p0, Lcl/santander/smartphone/RealizarPagoOnline;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-object v2, p0, Lcl/santander/smartphone/RealizarPagoOnline;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-direct {v0, v1, v2}, Lcl/santander/smartphone/ProductosPageAdapter;-><init>(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcl/santander/santanderCL/data/MatrizProductos;)V

    iput-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->pageAdapter:Lcl/santander/smartphone/ProductosPageAdapter;

    .line 78
    iget-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->vp_pager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcl/santander/smartphone/RealizarPagoOnline;->pageAdapter:Lcl/santander/smartphone/ProductosPageAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 79
    iget-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v1, p0, Lcl/santander/smartphone/RealizarPagoOnline;->vp_pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 80
    iget-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    const v1, -0xaaaaab

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setFillColor(I)V

    .line 81
    iget-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    const v1, -0x222223

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setPageColor(I)V

    .line 82
    iget-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    iget v1, p0, Lcl/santander/smartphone/RealizarPagoOnline;->c_seleccionada:I

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setCurrentItem(I)V

    .line 83
    iget-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {v0, p0}, Lcom/viewpagerindicator/CirclePageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 84
    return-void
.end method

.method public initScreen()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060297

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->tv_empresa:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060298

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->tv_desc:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060299

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->tv_idcliente:Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06029a

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->tv_fecha_pago:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06029b

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->tv_cant_pagar:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06029c

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->tv_fechav:Landroid/widget/TextView;

    .line 93
    iget-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06029d

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->tv_pago_mensaje:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->tv_empresa:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/RealizarPagoOnline;->m_ItemDetalleSuscripcion:Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->getEmpresa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->tv_desc:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/RealizarPagoOnline;->m_ItemDetalleSuscripcion:Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->getDescripcion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->tv_idcliente:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/RealizarPagoOnline;->m_ItemDetalleSuscripcion:Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->getIdCliente()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->tv_fecha_pago:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/RealizarPagoOnline;->m_ItemDetalleSuscripcion:Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->getFechaPago()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->tv_cant_pagar:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/RealizarPagoOnline;->m_ItemDetalleSuscripcion:Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->getMontoScreen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->tv_fechav:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/RealizarPagoOnline;->m_ItemDetalleSuscripcion:Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->getFechaVencimiento()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->tv_pago_mensaje:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/RealizarPagoOnline;->m_ItemDetalleSuscripcion:Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->getMensaje()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->m_ItemDetalleSuscripcion:Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->getMensaje()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->puede_pagar:Z

    .line 106
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 112
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 114
    iput-boolean v3, p0, Lcl/santander/smartphone/RealizarPagoOnline;->puede_pagar:Z

    .line 115
    invoke-virtual {p0}, Lcl/santander/smartphone/RealizarPagoOnline;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 116
    iget-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 117
    const/4 v0, 0x2

    iget-object v1, p0, Lcl/santander/smartphone/RealizarPagoOnline;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0500e7

    invoke-virtual {p0, v2}, Lcl/santander/smartphone/RealizarPagoOnline;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, v3}, Lcl/santander/smartphone/RealizarPagoOnline;->setHasOptionsMenu(Z)V

    .line 120
    iget-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/RealizarPagoOnline;->m_View:Landroid/view/View;

    invoke-static {v0, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 121
    invoke-virtual {p0}, Lcl/santander/smartphone/RealizarPagoOnline;->initPageAdapter()V

    .line 122
    invoke-virtual {p0}, Lcl/santander/smartphone/RealizarPagoOnline;->initScreen()V

    .line 123
    iget-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06029e

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->m_BtPagar:Landroid/widget/Button;

    .line 124
    iget-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->m_BtPagar:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/RealizarPagoOnline$1;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/RealizarPagoOnline$1;-><init>(Lcl/santander/smartphone/RealizarPagoOnline;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-boolean v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->puede_pagar:Z

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->m_BtPagar:Landroid/widget/Button;

    const v1, 0x7f05007a

    invoke-virtual {p0, v1}, Lcl/santander/smartphone/RealizarPagoOnline;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->m_BtPagar:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/RealizarPagoOnline$2;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/RealizarPagoOnline$2;-><init>(Lcl/santander/smartphone/RealizarPagoOnline;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 71
    :goto_0
    return-object v0

    .line 70
    :cond_0
    const v0, 0x7f030059

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->m_View:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->m_View:Landroid/view/View;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 150
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 156
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 153
    :pswitch_0
    iget-object v0, p0, Lcl/santander/smartphone/RealizarPagoOnline;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 162
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 167
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 170
    iput p1, p0, Lcl/santander/smartphone/RealizarPagoOnline;->c_seleccionada:I

    .line 171
    return-void
.end method
