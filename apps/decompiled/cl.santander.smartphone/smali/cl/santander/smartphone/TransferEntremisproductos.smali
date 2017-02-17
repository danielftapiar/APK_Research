.class public Lcl/santander/smartphone/TransferEntremisproductos;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "TransferEntremisproductos.java"


# instance fields
.field et_monto:Landroid/widget/EditText;

.field m_View:Landroid/view/View;

.field pageAdapterDestino:Lcl/santander/smartphone/ProductosPageAdapter;

.field productosDestino:Lcl/santander/santanderCL/data/MatrizProductos;

.field productosOrigen:Lcl/santander/santanderCL/data/MatrizProductos;

.field sf:Lcom/actionbarsherlock/app/SherlockFragment;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;

.field vp_pager_destino:Landroid/support/v4/view/ViewPager;

.field vpi_indicator_destino:Lcom/viewpagerindicator/CirclePageIndicator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/actionbarsherlock/app/SherlockFragmentActivity;)V
    .locals 0
    .param p1, "sfa2"    # Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 42
    iput-object p1, p0, Lcl/santander/smartphone/TransferEntremisproductos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 43
    return-void
.end method


# virtual methods
.method public getMonto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductos;->et_monto:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductoSeleccionado()Lcl/santander/santanderCL/data/response/ItemProducto;
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductos;->productosDestino:Lcl/santander/santanderCL/data/MatrizProductos;

    iget-object v1, p0, Lcl/santander/smartphone/TransferEntremisproductos;->vp_pager_destino:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v0

    return-object v0
.end method

.method public initComponents()V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602ef

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/CirclePageIndicator;

    iput-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductos;->vpi_indicator_destino:Lcom/viewpagerindicator/CirclePageIndicator;

    .line 70
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602ee

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductos;->vp_pager_destino:Landroid/support/v4/view/ViewPager;

    .line 72
    new-instance v0, Lcl/santander/smartphone/ProductosPageAdapter;

    iget-object v1, p0, Lcl/santander/smartphone/TransferEntremisproductos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-object v2, p0, Lcl/santander/smartphone/TransferEntremisproductos;->productosDestino:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-direct {v0, v1, v2}, Lcl/santander/smartphone/ProductosPageAdapter;-><init>(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcl/santander/santanderCL/data/MatrizProductos;)V

    iput-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductos;->pageAdapterDestino:Lcl/santander/smartphone/ProductosPageAdapter;

    .line 74
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductos;->vp_pager_destino:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcl/santander/smartphone/TransferEntremisproductos;->pageAdapterDestino:Lcl/santander/smartphone/ProductosPageAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 76
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductos;->vpi_indicator_destino:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v1, p0, Lcl/santander/smartphone/TransferEntremisproductos;->vp_pager_destino:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 77
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductos;->vpi_indicator_destino:Lcom/viewpagerindicator/CirclePageIndicator;

    const v1, -0xaaaaab

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setFillColor(I)V

    .line 78
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductos;->vpi_indicator_destino:Lcom/viewpagerindicator/CirclePageIndicator;

    const v1, -0x222223

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setPageColor(I)V

    .line 80
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602f0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductos;->et_monto:Landroid/widget/EditText;

    .line 82
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 58
    iput-object p0, p0, Lcl/santander/smartphone/TransferEntremisproductos;->sf:Lcom/actionbarsherlock/app/SherlockFragment;

    .line 59
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferEntremisproductos;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 60
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductos;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 62
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/TransferEntremisproductos;->m_View:Landroid/view/View;

    invoke-static {v0, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 63
    invoke-virtual {p0}, Lcl/santander/smartphone/TransferEntremisproductos;->initComponents()V

    .line 64
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    .line 50
    :cond_0
    const v0, 0x7f030069

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductos;->m_View:Landroid/view/View;

    .line 51
    iget-object v0, p0, Lcl/santander/smartphone/TransferEntremisproductos;->m_View:Landroid/view/View;

    goto :goto_0
.end method

.method public setProductosDestino(Lcl/santander/santanderCL/data/MatrizProductos;Lcl/santander/santanderCL/data/MatrizProductos;Lcl/santander/santanderCL/data/MatrizProductos;II)V
    .locals 4
    .param p1, "cuentas"    # Lcl/santander/santanderCL/data/MatrizProductos;
    .param p2, "tarjetas"    # Lcl/santander/santanderCL/data/MatrizProductos;
    .param p3, "lineascredito"    # Lcl/santander/santanderCL/data/MatrizProductos;
    .param p4, "origenTransferencia"    # I
    .param p5, "index"    # I

    .prologue
    .line 94
    iget-object v1, p0, Lcl/santander/smartphone/TransferEntremisproductos;->productosDestino:Lcl/santander/santanderCL/data/MatrizProductos;

    if-eqz v1, :cond_0

    .line 95
    const/4 v1, 0x0

    iput-object v1, p0, Lcl/santander/smartphone/TransferEntremisproductos;->productosDestino:Lcl/santander/santanderCL/data/MatrizProductos;

    .line 97
    :cond_0
    invoke-static {}, Lcl/santander/smartphone/Utils;->unificarProductos()Lcl/santander/santanderCL/data/MatrizProductos;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/smartphone/TransferEntremisproductos;->productosDestino:Lcl/santander/santanderCL/data/MatrizProductos;

    .line 99
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcl/santander/smartphone/TransferEntremisproductos;->productosDestino:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/MatrizProductos;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 108
    if-nez p4, :cond_5

    .line 109
    iget-object v1, p0, Lcl/santander/smartphone/TransferEntremisproductos;->productosDestino:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v1, p5}, Lcl/santander/santanderCL/data/MatrizProductos;->remove(I)V

    .line 119
    :cond_1
    :goto_1
    new-instance v1, Lcl/santander/smartphone/ProductosPageAdapter;

    iget-object v2, p0, Lcl/santander/smartphone/TransferEntremisproductos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-object v3, p0, Lcl/santander/smartphone/TransferEntremisproductos;->productosDestino:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-direct {v1, v2, v3}, Lcl/santander/smartphone/ProductosPageAdapter;-><init>(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcl/santander/santanderCL/data/MatrizProductos;)V

    iput-object v1, p0, Lcl/santander/smartphone/TransferEntremisproductos;->pageAdapterDestino:Lcl/santander/smartphone/ProductosPageAdapter;

    .line 121
    iget-object v1, p0, Lcl/santander/smartphone/TransferEntremisproductos;->vp_pager_destino:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_2

    .line 123
    iget-object v1, p0, Lcl/santander/smartphone/TransferEntremisproductos;->vp_pager_destino:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcl/santander/smartphone/TransferEntremisproductos;->pageAdapterDestino:Lcl/santander/smartphone/ProductosPageAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 124
    iget-object v1, p0, Lcl/santander/smartphone/TransferEntremisproductos;->vp_pager_destino:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 127
    :cond_2
    return-void

    .line 101
    :cond_3
    iget-object v1, p0, Lcl/santander/smartphone/TransferEntremisproductos;->productosDestino:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v1, v0}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v1

    invoke-virtual {v1}, Lcl/santander/santanderCL/data/response/ItemProducto;->getCodigoMoneda()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 103
    iget-object v1, p0, Lcl/santander/smartphone/TransferEntremisproductos;->productosDestino:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v1, v0}, Lcl/santander/santanderCL/data/MatrizProductos;->remove(I)V

    .line 99
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_5
    const/4 v1, 0x2

    if-ne p4, v1, :cond_6

    .line 112
    iget-object v1, p0, Lcl/santander/smartphone/TransferEntremisproductos;->productosDestino:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {p1}, Lcl/santander/santanderCL/data/MatrizProductos;->size()I

    move-result v2

    add-int/2addr v2, p5

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/data/MatrizProductos;->remove(I)V

    goto :goto_1

    .line 114
    :cond_6
    const/4 v1, 0x1

    if-ne p4, v1, :cond_1

    .line 115
    iget-object v1, p0, Lcl/santander/smartphone/TransferEntremisproductos;->productosDestino:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {p1}, Lcl/santander/santanderCL/data/MatrizProductos;->size()I

    move-result v2

    invoke-virtual {p3}, Lcl/santander/santanderCL/data/MatrizProductos;->size()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, p5

    invoke-virtual {v1, v2}, Lcl/santander/santanderCL/data/MatrizProductos;->remove(I)V

    goto :goto_1
.end method

.method public setProductosOrigen(Lcl/santander/santanderCL/data/MatrizProductos;)V
    .locals 0
    .param p1, "origen"    # Lcl/santander/santanderCL/data/MatrizProductos;

    .prologue
    .line 86
    iput-object p1, p0, Lcl/santander/smartphone/TransferEntremisproductos;->productosOrigen:Lcl/santander/santanderCL/data/MatrizProductos;

    .line 87
    return-void
.end method
