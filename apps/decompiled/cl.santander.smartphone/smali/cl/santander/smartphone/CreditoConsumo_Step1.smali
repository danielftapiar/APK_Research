.class public Lcl/santander/smartphone/CreditoConsumo_Step1;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "CreditoConsumo_Step1.java"


# instance fields
.field et_credito_consumo_monto:Landroid/widget/EditText;

.field et_credito_consumo_plazo:Landroid/widget/EditText;

.field fragmentoPadre:Lcl/santander/smartphone/CreditoConsumo;

.field m_View:Landroid/view/View;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcl/santander/smartphone/CreditoConsumo;)V
    .locals 0
    .param p1, "fragmento"    # Lcl/santander/smartphone/CreditoConsumo;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 43
    iput-object p1, p0, Lcl/santander/smartphone/CreditoConsumo_Step1;->fragmentoPadre:Lcl/santander/smartphone/CreditoConsumo;

    .line 45
    return-void
.end method

.method private initComponents()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step1;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06006c

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step1;->et_credito_consumo_monto:Landroid/widget/EditText;

    .line 80
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step1;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06006e

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step1;->et_credito_consumo_plazo:Landroid/widget/EditText;

    .line 82
    return-void
.end method


# virtual methods
.method public getMonto()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step1;->et_credito_consumo_monto:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlazo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step1;->et_credito_consumo_plazo:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 60
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step1;->fragmentoPadre:Lcl/santander/smartphone/CreditoConsumo;

    invoke-virtual {v0, p0}, Lcl/santander/smartphone/CreditoConsumo;->refreshStep(Lcl/santander/smartphone/CreditoConsumo_Step1;)V

    .line 62
    invoke-virtual {p0}, Lcl/santander/smartphone/CreditoConsumo_Step1;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step1;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 63
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step1;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step1;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 65
    const/4 v0, 0x2

    iget-object v1, p0, Lcl/santander/smartphone/CreditoConsumo_Step1;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/CreditoConsumo_Step1;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500d9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/CreditoConsumo_Step1;->setHasOptionsMenu(Z)V

    .line 68
    invoke-direct {p0}, Lcl/santander/smartphone/CreditoConsumo_Step1;->initComponents()V

    .line 70
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step1;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/CreditoConsumo_Step1;->m_View:Landroid/view/View;

    invoke-static {v0, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 74
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 52
    :goto_0
    return-object v0

    .line 51
    :cond_0
    const v0, 0x7f03001d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step1;->m_View:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step1;->m_View:Landroid/view/View;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 95
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 101
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 98
    :pswitch_0
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step1;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
