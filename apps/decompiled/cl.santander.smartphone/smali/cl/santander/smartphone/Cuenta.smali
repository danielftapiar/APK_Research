.class public Lcl/santander/smartphone/Cuenta;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "Cuenta.java"


# instance fields
.field bt_pagoOnline:Landroid/widget/Button;

.field bt_recarga:Landroid/widget/Button;

.field bt_transferencia:Landroid/widget/Button;

.field bt_ultimosMovs:Landroid/widget/Button;

.field cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

.field id:I

.field pageAdapter:Lcl/santander/smartphone/ProductosPageAdapter;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;

.field vp_pager:Landroid/support/v4/view/ViewPager;

.field vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 38
    sget-object v0, Lcl/santander/smartphone/Global;->grupos:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/data/MatrizProductos;

    iput-object v0, p0, Lcl/santander/smartphone/Cuenta;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    .line 39
    iput p1, p0, Lcl/santander/smartphone/Cuenta;->id:I

    .line 40
    return-void
.end method


# virtual methods
.method public initPageAdapter()V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcl/santander/smartphone/Cuenta;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060081

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/CirclePageIndicator;

    iput-object v0, p0, Lcl/santander/smartphone/Cuenta;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    .line 78
    iget-object v0, p0, Lcl/santander/smartphone/Cuenta;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060080

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcl/santander/smartphone/Cuenta;->vp_pager:Landroid/support/v4/view/ViewPager;

    .line 79
    new-instance v0, Lcl/santander/smartphone/ProductosPageAdapter;

    iget-object v1, p0, Lcl/santander/smartphone/Cuenta;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-object v2, p0, Lcl/santander/smartphone/Cuenta;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-direct {v0, v1, v2}, Lcl/santander/smartphone/ProductosPageAdapter;-><init>(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcl/santander/santanderCL/data/MatrizProductos;)V

    iput-object v0, p0, Lcl/santander/smartphone/Cuenta;->pageAdapter:Lcl/santander/smartphone/ProductosPageAdapter;

    .line 80
    iget-object v0, p0, Lcl/santander/smartphone/Cuenta;->vp_pager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcl/santander/smartphone/Cuenta;->pageAdapter:Lcl/santander/smartphone/ProductosPageAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 81
    iget-object v0, p0, Lcl/santander/smartphone/Cuenta;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v1, p0, Lcl/santander/smartphone/Cuenta;->vp_pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 82
    iget-object v0, p0, Lcl/santander/smartphone/Cuenta;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    const v1, -0xaaaaab

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setFillColor(I)V

    .line 83
    iget-object v0, p0, Lcl/santander/smartphone/Cuenta;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    const v1, -0x222223

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setPageColor(I)V

    .line 84
    iget-object v0, p0, Lcl/santander/smartphone/Cuenta;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    iget v1, p0, Lcl/santander/smartphone/Cuenta;->id:I

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setCurrentItem(I)V

    .line 85
    iget-object v0, p0, Lcl/santander/smartphone/Cuenta;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    new-instance v1, Lcl/santander/smartphone/Cuenta$1;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/Cuenta$1;-><init>(Lcl/santander/smartphone/Cuenta;)V

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 104
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lcl/santander/smartphone/Cuenta;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/Cuenta;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 112
    iget-object v0, p0, Lcl/santander/smartphone/Cuenta;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/Cuenta;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 113
    const/4 v0, 0x2

    iget-object v1, p0, Lcl/santander/smartphone/Cuenta;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/Cuenta;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 114
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/Cuenta;->setHasOptionsMenu(Z)V

    .line 115
    invoke-virtual {p0}, Lcl/santander/smartphone/Cuenta;->initPageAdapter()V

    .line 117
    iget-object v0, p0, Lcl/santander/smartphone/Cuenta;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060082

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/Cuenta;->bt_ultimosMovs:Landroid/widget/Button;

    .line 118
    iget-object v0, p0, Lcl/santander/smartphone/Cuenta;->bt_ultimosMovs:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/Cuenta$2;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/Cuenta$2;-><init>(Lcl/santander/smartphone/Cuenta;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcl/santander/smartphone/Cuenta;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060083

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/Cuenta;->bt_transferencia:Landroid/widget/Button;

    .line 129
    iget-object v0, p0, Lcl/santander/smartphone/Cuenta;->bt_transferencia:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/Cuenta$3;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/Cuenta$3;-><init>(Lcl/santander/smartphone/Cuenta;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcl/santander/smartphone/Cuenta;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060084

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/Cuenta;->bt_pagoOnline:Landroid/widget/Button;

    .line 140
    iget-object v0, p0, Lcl/santander/smartphone/Cuenta;->bt_pagoOnline:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/Cuenta$4;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/Cuenta$4;-><init>(Lcl/santander/smartphone/Cuenta;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcl/santander/smartphone/Cuenta;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060085

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/Cuenta;->bt_recarga:Landroid/widget/Button;

    .line 153
    iget-object v0, p0, Lcl/santander/smartphone/Cuenta;->bt_recarga:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/Cuenta$5;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/Cuenta$5;-><init>(Lcl/santander/smartphone/Cuenta;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget v0, p0, Lcl/santander/smartphone/Cuenta;->id:I

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/Cuenta;->updateButtonsLocked(I)V

    .line 167
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f030020

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 171
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 177
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 174
    :pswitch_0
    iget-object v0, p0, Lcl/santander/smartphone/Cuenta;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public updateButtonsLocked(I)V
    .locals 7
    .param p1, "_index"    # I

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 46
    iget-object v3, p0, Lcl/santander/smartphone/Cuenta;->bt_ultimosMovs:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 47
    iget-object v3, p0, Lcl/santander/smartphone/Cuenta;->bt_transferencia:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 48
    iget-object v3, p0, Lcl/santander/smartphone/Cuenta;->bt_pagoOnline:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 49
    iget-object v3, p0, Lcl/santander/smartphone/Cuenta;->bt_recarga:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 52
    iget-object v3, p0, Lcl/santander/smartphone/Cuenta;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v3, p1}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v3

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/response/ItemProducto;->getCodigoMoneda()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v3}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getPerfil()Lcl/santander/santanderCL/utils/Constant$PERFIL;

    move-result-object v3

    sget-object v4, Lcl/santander/santanderCL/utils/Constant$PERFIL;->PERFIL3:Lcl/santander/santanderCL/utils/Constant$PERFIL;

    if-ne v3, v4, :cond_1

    .line 54
    :cond_0
    iget-object v3, p0, Lcl/santander/smartphone/Cuenta;->bt_transferencia:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 55
    iget-object v3, p0, Lcl/santander/smartphone/Cuenta;->bt_pagoOnline:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 56
    iget-object v3, p0, Lcl/santander/smartphone/Cuenta;->bt_recarga:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 61
    :cond_1
    sget-object v3, Lcl/santander/smartphone/Global;->grupos:Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/MatrizProductos;->size()I

    move-result v2

    .line 62
    .local v2, "numtarjetas":I
    sget-object v3, Lcl/santander/smartphone/Global;->grupos:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/MatrizProductos;->size()I

    move-result v1

    .line 63
    .local v1, "numlineas":I
    iget-object v3, p0, Lcl/santander/smartphone/Cuenta;->cuentas:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/MatrizProductos;->size()I

    move-result v0

    .line 64
    .local v0, "numcuentas":I
    sget-object v3, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v3}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getPerfil()Lcl/santander/santanderCL/utils/Constant$PERFIL;

    move-result-object v3

    sget-object v4, Lcl/santander/santanderCL/utils/Constant$PERFIL;->PERFIL2:Lcl/santander/santanderCL/utils/Constant$PERFIL;

    if-ne v3, v4, :cond_2

    if-gt v0, v6, :cond_2

    .line 65
    iget-object v3, p0, Lcl/santander/smartphone/Cuenta;->bt_transferencia:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 67
    :cond_2
    return-void
.end method
