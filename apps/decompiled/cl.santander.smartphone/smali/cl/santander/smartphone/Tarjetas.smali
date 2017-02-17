.class public Lcl/santander/smartphone/Tarjetas;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "Tarjetas.java"


# instance fields
.field bt_estadoCuentas:Landroid/widget/Button;

.field bt_transferencia:Landroid/widget/Button;

.field bt_ultimosMovs:Landroid/widget/Button;

.field id:I

.field ll_estadocuenta:Landroid/widget/LinearLayout;

.field pageAdapter:Lcl/santander/smartphone/ProductosPageAdapter;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;

.field tarjetas:Lcl/santander/santanderCL/data/MatrizProductos;

.field vp_pager:Landroid/support/v4/view/ViewPager;

.field vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 44
    sget-object v0, Lcl/santander/smartphone/Global;->grupos:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/data/MatrizProductos;

    iput-object v0, p0, Lcl/santander/smartphone/Tarjetas;->tarjetas:Lcl/santander/santanderCL/data/MatrizProductos;

    .line 45
    iput p1, p0, Lcl/santander/smartphone/Tarjetas;->id:I

    .line 46
    iget-object v0, p0, Lcl/santander/smartphone/Tarjetas;->tarjetas:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v0, p1}, Lcl/santander/santanderCL/data/MatrizProductos;->get(I)Lcl/santander/santanderCL/data/response/ItemProducto;

    move-result-object v0

    sput-object v0, Lcl/santander/smartphone/Global;->tarjetaEstadoCuentaVer:Lcl/santander/santanderCL/data/response/ItemProducto;

    .line 47
    return-void
.end method

.method private DeletePDF()V
    .locals 3

    .prologue
    .line 174
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/sancl.pdf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 176
    return-void
.end method

.method static synthetic access$0(Lcl/santander/smartphone/Tarjetas;)V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Lcl/santander/smartphone/Tarjetas;->DeletePDF()V

    return-void
.end method


# virtual methods
.method public initPageAdapter()V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcl/santander/smartphone/Tarjetas;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602e8

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/CirclePageIndicator;

    iput-object v0, p0, Lcl/santander/smartphone/Tarjetas;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    .line 78
    iget-object v0, p0, Lcl/santander/smartphone/Tarjetas;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602e7

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcl/santander/smartphone/Tarjetas;->vp_pager:Landroid/support/v4/view/ViewPager;

    .line 79
    new-instance v0, Lcl/santander/smartphone/ProductosPageAdapter;

    iget-object v1, p0, Lcl/santander/smartphone/Tarjetas;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-object v2, p0, Lcl/santander/smartphone/Tarjetas;->tarjetas:Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-direct {v0, v1, v2}, Lcl/santander/smartphone/ProductosPageAdapter;-><init>(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcl/santander/santanderCL/data/MatrizProductos;)V

    iput-object v0, p0, Lcl/santander/smartphone/Tarjetas;->pageAdapter:Lcl/santander/smartphone/ProductosPageAdapter;

    .line 80
    iget-object v0, p0, Lcl/santander/smartphone/Tarjetas;->vp_pager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcl/santander/smartphone/Tarjetas;->pageAdapter:Lcl/santander/smartphone/ProductosPageAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 81
    iget-object v0, p0, Lcl/santander/smartphone/Tarjetas;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v1, p0, Lcl/santander/smartphone/Tarjetas;->vp_pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 82
    iget-object v0, p0, Lcl/santander/smartphone/Tarjetas;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    const v1, -0xaaaaab

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setFillColor(I)V

    .line 83
    iget-object v0, p0, Lcl/santander/smartphone/Tarjetas;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    const v1, -0x222223

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setPageColor(I)V

    .line 84
    iget-object v0, p0, Lcl/santander/smartphone/Tarjetas;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    iget v1, p0, Lcl/santander/smartphone/Tarjetas;->id:I

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setCurrentItem(I)V

    .line 85
    iget-object v0, p0, Lcl/santander/smartphone/Tarjetas;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    new-instance v1, Lcl/santander/smartphone/Tarjetas$1;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/Tarjetas$1;-><init>(Lcl/santander/smartphone/Tarjetas;)V

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 105
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcl/santander/smartphone/Tarjetas;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/Tarjetas;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 113
    iget-object v0, p0, Lcl/santander/smartphone/Tarjetas;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/Tarjetas;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 114
    const/4 v0, 0x2

    iget-object v1, p0, Lcl/santander/smartphone/Tarjetas;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/Tarjetas;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 115
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/Tarjetas;->setHasOptionsMenu(Z)V

    .line 116
    invoke-virtual {p0}, Lcl/santander/smartphone/Tarjetas;->initPageAdapter()V

    .line 118
    iget-object v0, p0, Lcl/santander/smartphone/Tarjetas;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602ed

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/Tarjetas;->bt_transferencia:Landroid/widget/Button;

    .line 119
    iget-object v0, p0, Lcl/santander/smartphone/Tarjetas;->bt_transferencia:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/Tarjetas$2;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/Tarjetas$2;-><init>(Lcl/santander/smartphone/Tarjetas;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcl/santander/smartphone/Tarjetas;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602ea

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/Tarjetas;->bt_ultimosMovs:Landroid/widget/Button;

    .line 130
    iget-object v0, p0, Lcl/santander/smartphone/Tarjetas;->bt_ultimosMovs:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/Tarjetas$3;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/Tarjetas$3;-><init>(Lcl/santander/smartphone/Tarjetas;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcl/santander/smartphone/Tarjetas;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0602eb

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/Tarjetas;->bt_estadoCuentas:Landroid/widget/Button;

    .line 141
    iget-object v0, p0, Lcl/santander/smartphone/Tarjetas;->bt_estadoCuentas:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/Tarjetas$4;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/Tarjetas$4;-><init>(Lcl/santander/smartphone/Tarjetas;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget v0, p0, Lcl/santander/smartphone/Tarjetas;->id:I

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/Tarjetas;->updateButtonsLocked(I)V

    .line 157
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
    const v0, 0x7f030068

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 161
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 167
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 164
    :pswitch_0
    iget-object v0, p0, Lcl/santander/smartphone/Tarjetas;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Lcl/santander/smartphone/Tarjetas;->DeletePDF()V

    .line 204
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 205
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Lcl/santander/smartphone/Tarjetas;->DeletePDF()V

    .line 197
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onStart()V

    .line 198
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 182
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcl/santander/smartphone/Tarjetas$5;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/Tarjetas$5;-><init>(Lcl/santander/smartphone/Tarjetas;)V

    .line 189
    const-wide/16 v2, 0xbb8

    .line 182
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 190
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onStop()V

    .line 191
    return-void
.end method

.method public updateButtonsLocked(I)V
    .locals 8
    .param p1, "_index"    # I

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 52
    iget-object v3, p0, Lcl/santander/smartphone/Tarjetas;->bt_transferencia:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 54
    iget-object v3, p0, Lcl/santander/smartphone/Tarjetas;->tarjetas:Lcl/santander/santanderCL/data/MatrizProductos;

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

    .line 56
    :cond_0
    iget-object v3, p0, Lcl/santander/smartphone/Tarjetas;->bt_transferencia:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setVisibility(I)V

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
    sget-object v3, Lcl/santander/smartphone/Global;->grupos:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcl/santander/santanderCL/data/MatrizProductos;

    invoke-virtual {v3}, Lcl/santander/santanderCL/data/MatrizProductos;->size()I

    move-result v0

    .line 64
    .local v0, "numcuentas":I
    if-nez v2, :cond_2

    add-int v3, v2, v1

    add-int/2addr v3, v0

    if-gt v3, v6, :cond_2

    .line 65
    iget-object v3, p0, Lcl/santander/smartphone/Tarjetas;->bt_transferencia:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 67
    :cond_2
    return-void
.end method
