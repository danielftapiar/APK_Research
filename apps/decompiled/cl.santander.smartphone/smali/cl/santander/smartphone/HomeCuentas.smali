.class public Lcl/santander/smartphone/HomeCuentas;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "HomeCuentas.java"


# instance fields
.field fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field fm:Landroid/support/v4/app/FragmentManager;

.field private id:I

.field pageAdapter:Lcl/santander/smartphone/ProductosPageAdapter;

.field root:Landroid/view/View;

.field vp_cuentas:Landroid/support/v4/view/ViewPager;

.field vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 55
    return-void
.end method

.method static synthetic access$0(Lcl/santander/smartphone/HomeCuentas;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcl/santander/smartphone/HomeCuentas;->id:I

    return v0
.end method

.method static synthetic access$1(Lcl/santander/smartphone/HomeCuentas;I)V
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcl/santander/smartphone/HomeCuentas;->id:I

    return-void
.end method

.method private initComponents()V
    .locals 4

    .prologue
    .line 85
    invoke-virtual {p0}, Lcl/santander/smartphone/HomeCuentas;->getView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/smartphone/HomeCuentas;->root:Landroid/view/View;

    .line 88
    iget-object v1, p0, Lcl/santander/smartphone/HomeCuentas;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v2, 0x7f06009a

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcl/santander/smartphone/HomeCuentas;->vp_cuentas:Landroid/support/v4/view/ViewPager;

    .line 89
    iget-object v1, p0, Lcl/santander/smartphone/HomeCuentas;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v2, 0x7f06009b

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/viewpagerindicator/CirclePageIndicator;

    iput-object v1, p0, Lcl/santander/smartphone/HomeCuentas;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    .line 92
    new-instance v1, Lcl/santander/smartphone/ProductosPageAdapter;

    iget-object v2, p0, Lcl/santander/smartphone/HomeCuentas;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-static {}, Lcl/santander/smartphone/Utils;->unificarProductos()Lcl/santander/santanderCL/data/MatrizProductos;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcl/santander/smartphone/ProductosPageAdapter;-><init>(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcl/santander/santanderCL/data/MatrizProductos;)V

    iput-object v1, p0, Lcl/santander/smartphone/HomeCuentas;->pageAdapter:Lcl/santander/smartphone/ProductosPageAdapter;

    .line 94
    new-instance v0, Lcl/santander/smartphone/HomeCuentas$1;

    invoke-direct {v0, p0}, Lcl/santander/smartphone/HomeCuentas$1;-><init>(Lcl/santander/smartphone/HomeCuentas;)V

    .line 106
    .local v0, "run":Ljava/lang/Runnable;
    iget-object v1, p0, Lcl/santander/smartphone/HomeCuentas;->pageAdapter:Lcl/santander/smartphone/ProductosPageAdapter;

    invoke-virtual {v1, v0}, Lcl/santander/smartphone/ProductosPageAdapter;->setClickListener(Ljava/lang/Runnable;)V

    .line 108
    iget-object v1, p0, Lcl/santander/smartphone/HomeCuentas;->vp_cuentas:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcl/santander/smartphone/HomeCuentas;->pageAdapter:Lcl/santander/smartphone/ProductosPageAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 111
    iget-object v1, p0, Lcl/santander/smartphone/HomeCuentas;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v2, p0, Lcl/santander/smartphone/HomeCuentas;->vp_cuentas:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 112
    iget-object v1, p0, Lcl/santander/smartphone/HomeCuentas;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    const v2, -0xaaaaab

    invoke-virtual {v1, v2}, Lcom/viewpagerindicator/CirclePageIndicator;->setFillColor(I)V

    .line 113
    iget-object v1, p0, Lcl/santander/smartphone/HomeCuentas;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    const v2, -0x222223

    invoke-virtual {v1, v2}, Lcom/viewpagerindicator/CirclePageIndicator;->setPageColor(I)V

    .line 114
    iget-object v1, p0, Lcl/santander/smartphone/HomeCuentas;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    new-instance v2, Lcl/santander/smartphone/HomeCuentas$2;

    invoke-direct {v2, p0}, Lcl/santander/smartphone/HomeCuentas$2;-><init>(Lcl/santander/smartphone/HomeCuentas;)V

    invoke-virtual {v1, v2}, Lcom/viewpagerindicator/CirclePageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 138
    iget-object v1, p0, Lcl/santander/smartphone/HomeCuentas;->vp_cuentas:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcl/santander/smartphone/HomeCuentas;->id:I

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 143
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcl/santander/smartphone/HomeCuentas;->id:I

    .line 73
    invoke-virtual {p0}, Lcl/santander/smartphone/HomeCuentas;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/HomeCuentas;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 74
    iget-object v0, p0, Lcl/santander/smartphone/HomeCuentas;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/HomeCuentas;->fm:Landroid/support/v4/app/FragmentManager;

    .line 76
    invoke-direct {p0}, Lcl/santander/smartphone/HomeCuentas;->initComponents()V

    .line 78
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f030026

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method
