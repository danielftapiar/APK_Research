.class public Lcl/santander/smartphone/CreditoConsumo_Step3;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "CreditoConsumo_Step3.java"


# instance fields
.field private celular:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private fragmentoPadre:Lcl/santander/smartphone/CreditoConsumo;

.field private m_View:Landroid/view/View;

.field private monto:Ljava/lang/String;

.field private plazo:Ljava/lang/String;

.field private sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field private sfm:Landroid/support/v4/app/FragmentManager;

.field private tv_resumen_celular:Landroid/widget/TextView;

.field private tv_resumen_email:Landroid/widget/TextView;

.field private tv_resumen_monto:Landroid/widget/TextView;

.field private tv_resumen_nombre:Landroid/widget/TextView;

.field private tv_resumen_plazo:Landroid/widget/TextView;

.field private tv_resumen_rut:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcl/santander/smartphone/CreditoConsumo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "fragmento"    # Lcl/santander/smartphone/CreditoConsumo;
    .param p2, "monto"    # Ljava/lang/String;
    .param p3, "plazo"    # Ljava/lang/String;
    .param p4, "celular"    # Ljava/lang/String;
    .param p5, "email"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 46
    iput-object p1, p0, Lcl/santander/smartphone/CreditoConsumo_Step3;->fragmentoPadre:Lcl/santander/smartphone/CreditoConsumo;

    .line 47
    const/4 v0, 0x1

    sput-boolean v0, Lcl/santander/smartphone/Global;->NOBACK:Z

    .line 49
    iput-object p2, p0, Lcl/santander/smartphone/CreditoConsumo_Step3;->monto:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcl/santander/smartphone/CreditoConsumo_Step3;->plazo:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcl/santander/smartphone/CreditoConsumo_Step3;->celular:Ljava/lang/String;

    .line 52
    iput-object p5, p0, Lcl/santander/smartphone/CreditoConsumo_Step3;->email:Ljava/lang/String;

    .line 53
    return-void
.end method

.method private initComponents()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step3;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060077

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step3;->tv_resumen_monto:Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step3;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060079

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step3;->tv_resumen_plazo:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step3;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06007f

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step3;->tv_resumen_email:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step3;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06007e

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step3;->tv_resumen_celular:Landroid/widget/TextView;

    .line 93
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step3;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06007b

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step3;->tv_resumen_rut:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step3;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06007d

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step3;->tv_resumen_nombre:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step3;->tv_resumen_monto:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/CreditoConsumo_Step3;->monto:Ljava/lang/String;

    sget-object v2, Lcl/santander/santanderCL/utils/Constant;->DIVISA:Ljava/lang/String;

    invoke-static {v1, v2}, Lcl/santander/santanderCL/utils/Utils;->parseImporte(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step3;->tv_resumen_plazo:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/CreditoConsumo_Step3;->plazo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step3;->tv_resumen_email:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/CreditoConsumo_Step3;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step3;->tv_resumen_celular:Landroid/widget/TextView;

    iget-object v1, p0, Lcl/santander/smartphone/CreditoConsumo_Step3;->celular:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step3;->tv_resumen_rut:Landroid/widget/TextView;

    sget-object v1, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v1}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/Utils;->parseRUT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step3;->tv_resumen_nombre:Landroid/widget/TextView;

    sget-object v1, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v1}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getNombre_usuario()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 66
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcl/santander/smartphone/CreditoConsumo_Step3;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step3;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 71
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step3;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step3;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 73
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step3;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcl/santander/smartphone/CreditoConsumo_Step3;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, v3}, Lcl/santander/smartphone/CreditoConsumo_Step3;->setHasOptionsMenu(Z)V

    .line 76
    invoke-direct {p0}, Lcl/santander/smartphone/CreditoConsumo_Step3;->initComponents()V

    .line 78
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step3;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/CreditoConsumo_Step3;->m_View:Landroid/view/View;

    invoke-static {v0, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 82
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0

    .line 59
    :cond_0
    const v0, 0x7f03001f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step3;->m_View:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step3;->m_View:Landroid/view/View;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 107
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 113
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 110
    :pswitch_0
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step3;->fragmentoPadre:Lcl/santander/smartphone/CreditoConsumo;

    iget-object v0, v0, Lcl/santander/smartphone/CreditoConsumo;->bt_Next:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
