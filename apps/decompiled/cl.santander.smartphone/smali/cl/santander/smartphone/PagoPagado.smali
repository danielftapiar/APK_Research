.class public Lcl/santander/smartphone/PagoPagado;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "PagoPagado.java"


# instance fields
.field bt_Volver:Landroid/widget/Button;

.field c_seleccionada:I

.field cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

.field m_ItemSuscripcion:Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

.field m_View:Landroid/view/View;

.field pageAdapter:Lcl/santander/smartphone/ProductosPageAdapter;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;

.field tv_desc:Landroid/widget/TextView;

.field tv_empresa:Landroid/widget/TextView;

.field tv_idcliente:Landroid/widget/TextView;

.field vp_pager:Landroid/support/v4/view/ViewPager;

.field vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcl/santander/santanderCL/data/MatrizProductos;Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;I)V
    .locals 0
    .param p1, "cuentas"    # Lcl/santander/santanderCL/data/MatrizProductos;
    .param p2, "_ItemSuscripcion"    # Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;
    .param p3, "c_seleccionada"    # I

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 48
    iput-object p1, p0, Lcl/santander/smartphone/PagoPagado;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    .line 49
    iput-object p2, p0, Lcl/santander/smartphone/PagoPagado;->m_ItemSuscripcion:Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

    .line 50
    iput p3, p0, Lcl/santander/smartphone/PagoPagado;->c_seleccionada:I

    .line 51
    return-void
.end method


# virtual methods
.method public initPageAdapter()V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcl/santander/smartphone/PagoPagado;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060279

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/CirclePageIndicator;

    iput-object v0, p0, Lcl/santander/smartphone/PagoPagado;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    .line 63
    iget-object v0, p0, Lcl/santander/smartphone/PagoPagado;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060278

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcl/santander/smartphone/PagoPagado;->vp_pager:Landroid/support/v4/view/ViewPager;

    .line 64
    new-instance v0, Lcl/santander/smartphone/ProductosPageAdapter;

    iget-object v1, p0, Lcl/santander/smartphone/PagoPagado;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-object v2, p0, Lcl/santander/smartphone/PagoPagado;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-direct {v0, v1, v2}, Lcl/santander/smartphone/ProductosPageAdapter;-><init>(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcl/santander/santanderCL/data/MatrizProductos;)V

    iput-object v0, p0, Lcl/santander/smartphone/PagoPagado;->pageAdapter:Lcl/santander/smartphone/ProductosPageAdapter;

    .line 65
    iget-object v0, p0, Lcl/santander/smartphone/PagoPagado;->vp_pager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcl/santander/smartphone/PagoPagado;->pageAdapter:Lcl/santander/smartphone/ProductosPageAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 66
    iget-object v0, p0, Lcl/santander/smartphone/PagoPagado;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v1, p0, Lcl/santander/smartphone/PagoPagado;->vp_pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 67
    iget-object v0, p0, Lcl/santander/smartphone/PagoPagado;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    const v1, -0xaaaaab

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setFillColor(I)V

    .line 68
    iget-object v0, p0, Lcl/santander/smartphone/PagoPagado;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    const v1, -0x222223

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setPageColor(I)V

    .line 69
    iget-object v0, p0, Lcl/santander/smartphone/PagoPagado;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    iget v1, p0, Lcl/santander/smartphone/PagoPagado;->c_seleccionada:I

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setCurrentItem(I)V

    .line 70
    return-void
.end method

.method public initScreen()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcl/santander/smartphone/PagoPagado;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06027a

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/PagoPagado;->tv_empresa:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcl/santander/smartphone/PagoPagado;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06027b

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/PagoPagado;->tv_desc:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcl/santander/smartphone/PagoPagado;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06027d

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/PagoPagado;->tv_idcliente:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcl/santander/smartphone/PagoPagado;->tv_empresa:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/PagoPagado;->m_ItemSuscripcion:Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->getEmpresa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcl/santander/smartphone/PagoPagado;->tv_desc:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/PagoPagado;->m_ItemSuscripcion:Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->getDescripcion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcl/santander/smartphone/PagoPagado;->tv_idcliente:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/PagoPagado;->m_ItemSuscripcion:Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemDetalleSuscripcion;->getIdCliente()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcl/santander/smartphone/PagoPagado;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/PagoPagado;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 87
    iget-object v0, p0, Lcl/santander/smartphone/PagoPagado;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/PagoPagado;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 88
    iget-object v0, p0, Lcl/santander/smartphone/PagoPagado;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/PagoPagado;->m_View:Landroid/view/View;

    invoke-static {v0, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 89
    invoke-virtual {p0}, Lcl/santander/smartphone/PagoPagado;->initPageAdapter()V

    .line 90
    invoke-virtual {p0}, Lcl/santander/smartphone/PagoPagado;->initScreen()V

    .line 91
    iget-object v0, p0, Lcl/santander/smartphone/PagoPagado;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06027f

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/PagoPagado;->bt_Volver:Landroid/widget/Button;

    .line 92
    iget-object v0, p0, Lcl/santander/smartphone/PagoPagado;->bt_Volver:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/PagoPagado$1;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/PagoPagado$1;-><init>(Lcl/santander/smartphone/PagoPagado;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
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
    const v0, 0x7f030053

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/PagoPagado;->m_View:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcl/santander/smartphone/PagoPagado;->m_View:Landroid/view/View;

    goto :goto_0
.end method
