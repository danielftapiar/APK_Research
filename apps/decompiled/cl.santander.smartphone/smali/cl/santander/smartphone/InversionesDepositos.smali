.class public Lcl/santander/smartphone/InversionesDepositos;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "InversionesDepositos.java"


# instance fields
.field bt_cobrar:Landroid/widget/Button;

.field bt_invertir:Landroid/widget/Button;

.field m_View:Landroid/view/View;

.field sf:Lcom/actionbarsherlock/app/SherlockFragment;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "childPosition"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 51
    return-void
.end method

.method private initComponents()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06015b

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositos;->bt_invertir:Landroid/widget/Button;

    .line 99
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06015c

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositos;->bt_cobrar:Landroid/widget/Button;

    .line 101
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositos;->bt_invertir:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/InversionesDepositos$1;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/InversionesDepositos$1;-><init>(Lcl/santander/smartphone/InversionesDepositos;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositos;->bt_cobrar:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/InversionesDepositos$2;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/InversionesDepositos$2;-><init>(Lcl/santander/smartphone/InversionesDepositos;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositos;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/smartphone/InversionesDepositos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 66
    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iput-object v1, p0, Lcl/santander/smartphone/InversionesDepositos;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 69
    sget-boolean v1, Lcl/santander/smartphone/Global;->volverSimular:Z

    if-eqz v1, :cond_0

    .line 71
    const/4 v1, 0x0

    sput-boolean v1, Lcl/santander/smartphone/Global;->volverSimular:Z

    .line 73
    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositos;->sfm:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 74
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f060062

    new-instance v2, Lcl/santander/smartphone/InversionesDepositosInvertir;

    invoke-direct {v2}, Lcl/santander/smartphone/InversionesDepositosInvertir;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 75
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 76
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 80
    .end local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    const/4 v1, 0x2

    iget-object v2, p0, Lcl/santander/smartphone/InversionesDepositos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositos;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05016e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 81
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcl/santander/smartphone/InversionesDepositos;->setHasOptionsMenu(Z)V

    .line 87
    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcl/santander/smartphone/InversionesDepositos;->m_View:Landroid/view/View;

    invoke-static {v1, v2}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 90
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesDepositos;->initComponents()V

    .line 94
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    .line 56
    :cond_0
    const v0, 0x7f030038

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositos;->m_View:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositos;->m_View:Landroid/view/View;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 130
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 136
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 133
    :pswitch_0
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositos;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
