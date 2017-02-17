.class public Lcl/santander/smartphone/Inversiones;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "Inversiones.java"


# instance fields
.field fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field fm:Landroid/support/v4/app/FragmentManager;

.field private id:I

.field private inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;

.field pageAdapter:Lcl/santander/smartphone/InversionesPageAdapter;

.field root:Landroid/view/View;

.field vp_cuentas:Landroid/support/v4/view/ViewPager;

.field vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcl/santander/santanderCL/data/MatrizInversiones;I)V
    .locals 0
    .param p1, "_inv"    # Lcl/santander/santanderCL/data/MatrizInversiones;
    .param p2, "idSelected"    # I

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 63
    iput-object p1, p0, Lcl/santander/smartphone/Inversiones;->inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;

    .line 64
    iput p2, p0, Lcl/santander/smartphone/Inversiones;->id:I

    .line 65
    return-void
.end method

.method private initComponents()V
    .locals 3

    .prologue
    .line 111
    invoke-virtual {p0}, Lcl/santander/smartphone/Inversiones;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/Inversiones;->root:Landroid/view/View;

    .line 114
    iget-object v0, p0, Lcl/santander/smartphone/Inversiones;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600d3

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcl/santander/smartphone/Inversiones;->vp_cuentas:Landroid/support/v4/view/ViewPager;

    .line 115
    iget-object v0, p0, Lcl/santander/smartphone/Inversiones;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f0600d4

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/CirclePageIndicator;

    iput-object v0, p0, Lcl/santander/smartphone/Inversiones;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    .line 118
    new-instance v0, Lcl/santander/smartphone/InversionesPageAdapter;

    iget-object v1, p0, Lcl/santander/smartphone/Inversiones;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-object v2, p0, Lcl/santander/smartphone/Inversiones;->inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;

    invoke-direct {v0, v1, v2}, Lcl/santander/smartphone/InversionesPageAdapter;-><init>(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcl/santander/santanderCL/data/MatrizInversiones;)V

    iput-object v0, p0, Lcl/santander/smartphone/Inversiones;->pageAdapter:Lcl/santander/smartphone/InversionesPageAdapter;

    .line 122
    iget-object v0, p0, Lcl/santander/smartphone/Inversiones;->vp_cuentas:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcl/santander/smartphone/Inversiones;->pageAdapter:Lcl/santander/smartphone/InversionesPageAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 125
    iget-object v0, p0, Lcl/santander/smartphone/Inversiones;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v1, p0, Lcl/santander/smartphone/Inversiones;->vp_cuentas:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 126
    iget-object v0, p0, Lcl/santander/smartphone/Inversiones;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    const v1, -0xaaaaab

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setFillColor(I)V

    .line 127
    iget-object v0, p0, Lcl/santander/smartphone/Inversiones;->vpi_indicator:Lcom/viewpagerindicator/CirclePageIndicator;

    const v1, -0x222223

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setPageColor(I)V

    .line 130
    iget-object v0, p0, Lcl/santander/smartphone/Inversiones;->vp_cuentas:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcl/santander/smartphone/Inversiones;->id:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 135
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x2

    .line 79
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcl/santander/smartphone/Inversiones;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/Inversiones;->root:Landroid/view/View;

    .line 83
    invoke-virtual {p0}, Lcl/santander/smartphone/Inversiones;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/Inversiones;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 84
    iget-object v0, p0, Lcl/santander/smartphone/Inversiones;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/Inversiones;->fm:Landroid/support/v4/app/FragmentManager;

    .line 86
    iget-object v0, p0, Lcl/santander/smartphone/Inversiones;->inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizInversiones;->getGrupo()Lcl/santander/santanderCL/utils/Constant$GRUPO;

    move-result-object v0

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$GRUPO;->INVERSIONES_FONDOS_MUTUOS:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/utils/Constant$GRUPO;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcl/santander/smartphone/Inversiones;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0500ed

    invoke-virtual {p0, v1}, Lcl/santander/smartphone/Inversiones;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 99
    :cond_0
    :goto_0
    iget-object v0, p0, Lcl/santander/smartphone/Inversiones;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/Inversiones;->root:Landroid/view/View;

    invoke-static {v0, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/Inversiones;->setHasOptionsMenu(Z)V

    .line 102
    invoke-direct {p0}, Lcl/santander/smartphone/Inversiones;->initComponents()V

    .line 104
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcl/santander/smartphone/Inversiones;->inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizInversiones;->getGrupo()Lcl/santander/santanderCL/utils/Constant$GRUPO;

    move-result-object v0

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$GRUPO;->INVERSIONES_AHR:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/utils/Constant$GRUPO;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcl/santander/smartphone/Inversiones;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0500ee

    invoke-virtual {p0, v1}, Lcl/santander/smartphone/Inversiones;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_2
    iget-object v0, p0, Lcl/santander/smartphone/Inversiones;->inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizInversiones;->getGrupo()Lcl/santander/santanderCL/utils/Constant$GRUPO;

    move-result-object v0

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$GRUPO;->INVERSIONES_DEP:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/utils/Constant$GRUPO;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    iget-object v0, p0, Lcl/santander/smartphone/Inversiones;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0500ef

    invoke-virtual {p0, v1}, Lcl/santander/smartphone/Inversiones;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_3
    iget-object v0, p0, Lcl/santander/smartphone/Inversiones;->inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizInversiones;->getGrupo()Lcl/santander/santanderCL/utils/Constant$GRUPO;

    move-result-object v0

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$GRUPO;->INVERSIONES_APV:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/utils/Constant$GRUPO;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 93
    iget-object v0, p0, Lcl/santander/smartphone/Inversiones;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0500f0

    invoke-virtual {p0, v1}, Lcl/santander/smartphone/Inversiones;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_4
    iget-object v0, p0, Lcl/santander/smartphone/Inversiones;->inversiones:Lcl/santander/santanderCL/data/MatrizInversiones;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/MatrizInversiones;->getGrupo()Lcl/santander/santanderCL/utils/Constant$GRUPO;

    move-result-object v0

    sget-object v1, Lcl/santander/santanderCL/utils/Constant$GRUPO;->ACCIONES:Lcl/santander/santanderCL/utils/Constant$GRUPO;

    invoke-virtual {v0, v1}, Lcl/santander/santanderCL/utils/Constant$GRUPO;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcl/santander/smartphone/Inversiones;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0500f1

    invoke-virtual {p0, v1}, Lcl/santander/smartphone/Inversiones;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f030030

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 139
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 145
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 142
    :pswitch_0
    iget-object v0, p0, Lcl/santander/smartphone/Inversiones;->fa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
