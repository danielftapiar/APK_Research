.class public Lcl/santander/smartphone/Home;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "Home.java"


# instance fields
.field bt_at_cliente:Landroid/widget/Button;

.field bt_indicadores:Landroid/widget/Button;

.field root:Landroid/view/View;

.field sf:Lcom/actionbarsherlock/app/SherlockFragment;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method private initComponents()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcl/santander/smartphone/Home;->root:Landroid/view/View;

    const v1, 0x7f060098

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/Home;->bt_indicadores:Landroid/widget/Button;

    .line 82
    iget-object v0, p0, Lcl/santander/smartphone/Home;->bt_indicadores:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/Home$1;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/Home$1;-><init>(Lcl/santander/smartphone/Home;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcl/santander/smartphone/Home;->root:Landroid/view/View;

    const v1, 0x7f060099

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/Home;->bt_at_cliente:Landroid/widget/Button;

    .line 96
    iget-object v0, p0, Lcl/santander/smartphone/Home;->bt_at_cliente:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/Home$2;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/Home$2;-><init>(Lcl/santander/smartphone/Home;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f060095

    .line 39
    invoke-virtual {p0}, Lcl/santander/smartphone/Home;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v4

    iput-object v4, p0, Lcl/santander/smartphone/Home;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 41
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcl/santander/smartphone/Home;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 44
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 46
    .local v3, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcl/santander/smartphone/Home;->getView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcl/santander/smartphone/Home;->root:Landroid/view/View;

    .line 48
    iput-object p0, p0, Lcl/santander/smartphone/Home;->sf:Lcom/actionbarsherlock/app/SherlockFragment;

    .line 53
    new-instance v1, Lcl/santander/smartphone/HomeMap;

    invoke-direct {v1}, Lcl/santander/smartphone/HomeMap;-><init>()V

    .line 55
    .local v1, "fragmentMedio":Lcl/santander/smartphone/HomeMap;
    invoke-static {}, Lcl/santander/smartphone/Global;->getInstance()Lcl/santander/smartphone/Global;

    move-result-object v4

    iget-boolean v4, v4, Lcl/santander/smartphone/Global;->m_bUserLogged:Z

    if-eqz v4, :cond_0

    .line 57
    new-instance v2, Lcl/santander/smartphone/HomeCuentas;

    invoke-direct {v2}, Lcl/santander/smartphone/HomeCuentas;-><init>()V

    .line 58
    .local v2, "fragmentSuperior":Lcl/santander/smartphone/HomeCuentas;
    invoke-virtual {v3, v5, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 65
    .end local v2    # "fragmentSuperior":Lcl/santander/smartphone/HomeCuentas;
    :goto_0
    const v4, 0x7f060096

    invoke-virtual {v3, v4, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 66
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 67
    invoke-virtual {p0}, Lcl/santander/smartphone/Home;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v4

    iput-object v4, p0, Lcl/santander/smartphone/Home;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 68
    iget-object v4, p0, Lcl/santander/smartphone/Home;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v4}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    iput-object v4, p0, Lcl/santander/smartphone/Home;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 70
    const/4 v4, 0x0

    iget-object v5, p0, Lcl/santander/smartphone/Home;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v5}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v5

    const-string v6, ""

    invoke-static {v4, v5, v6}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 71
    iget-object v4, p0, Lcl/santander/smartphone/Home;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-object v5, p0, Lcl/santander/smartphone/Home;->root:Landroid/view/View;

    invoke-static {v4, v5}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 74
    invoke-direct {p0}, Lcl/santander/smartphone/Home;->initComponents()V

    .line 76
    return-void

    .line 62
    :cond_0
    new-instance v2, Lcl/santander/smartphone/HomeLogin;

    invoke-direct {v2}, Lcl/santander/smartphone/HomeLogin;-><init>()V

    .line 63
    .local v2, "fragmentSuperior":Lcl/santander/smartphone/HomeLogin;
    invoke-virtual {v3, v5, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f030025

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 125
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroyView()V

    .line 126
    return-void
.end method
