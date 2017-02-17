.class public Lcl/santander/smartphone/CreditoConsumo_Step2;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "CreditoConsumo_Step2.java"


# instance fields
.field private et_credito_consumo_celular:Landroid/widget/EditText;

.field private et_credito_consumo_email:Landroid/widget/EditText;

.field private fragmentoPadre:Lcl/santander/smartphone/CreditoConsumo;

.field private m_View:Landroid/view/View;

.field private sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field private sfm:Landroid/support/v4/app/FragmentManager;

.field private tv_nombre_user:Landroid/widget/TextView;

.field private tv_rut_user:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcl/santander/smartphone/CreditoConsumo;)V
    .locals 0
    .param p1, "fragmento"    # Lcl/santander/smartphone/CreditoConsumo;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 48
    iput-object p1, p0, Lcl/santander/smartphone/CreditoConsumo_Step2;->fragmentoPadre:Lcl/santander/smartphone/CreditoConsumo;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcl/santander/smartphone/CreditoConsumo_Step2;)Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step2;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    return-object v0
.end method

.method private initComponents()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step2;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060074

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step2;->et_credito_consumo_celular:Landroid/widget/EditText;

    .line 132
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step2;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060075

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step2;->et_credito_consumo_email:Landroid/widget/EditText;

    .line 133
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step2;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060072

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step2;->tv_nombre_user:Landroid/widget/TextView;

    .line 134
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step2;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060070

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step2;->tv_rut_user:Landroid/widget/TextView;

    .line 136
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step2;->tv_rut_user:Landroid/widget/TextView;

    sget-object v1, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v1}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcl/santander/santanderCL/utils/Utils;->parseRUT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step2;->tv_nombre_user:Landroid/widget/TextView;

    sget-object v1, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v1}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getNombre_usuario()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    return-void
.end method

.method private rellenaDatosCreditoConsumo()V
    .locals 15

    .prologue
    const/4 v6, 0x0

    const/4 v14, 0x0

    const/4 v8, 0x1

    .line 86
    new-array v4, v8, [Ljava/lang/String;

    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step2;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v14

    .line 88
    .local v4, "s":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step2;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    sget-object v1, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v1}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcl/santander/smartphone/ServicesManager;->DatosCreditoConsumo(Landroid/app/Activity;Ljava/lang/String;)Lcl/santander/santanderCL/response/CreditosConsumoDatosResponse;

    move-result-object v13

    .line 90
    .local v13, "resp":Lcl/santander/santanderCL/response/CreditosConsumoDatosResponse;
    if-eqz v13, :cond_0

    .line 92
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step2;->et_credito_consumo_email:Landroid/widget/EditText;

    invoke-virtual {v13}, Lcl/santander/santanderCL/response/CreditosConsumoDatosResponse;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step2;->et_credito_consumo_celular:Landroid/widget/EditText;

    invoke-virtual {v13}, Lcl/santander/santanderCL/response/CreditosConsumoDatosResponse;->getNumTelefono()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 127
    .end local v13    # "resp":Lcl/santander/santanderCL/response/CreditosConsumoDatosResponse;
    :goto_0
    return-void

    .line 97
    .restart local v13    # "resp":Lcl/santander/santanderCL/response/CreditosConsumoDatosResponse;
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step2;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/CreditoConsumo_Step2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/CreditoConsumo_Step2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 100
    .end local v13    # "resp":Lcl/santander/santanderCL/response/CreditosConsumoDatosResponse;
    :catch_0
    move-exception v12

    .line 101
    .local v12, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step2;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/CreditoConsumo_Step2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v2

    move v3, v8

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 103
    .end local v12    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    :catch_1
    move-exception v12

    .line 104
    .local v12, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step2;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/CreditoConsumo_Step2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/InfoException;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/Info;->getMsgUsuario()Ljava/lang/String;

    move-result-object v2

    move v3, v8

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 107
    .end local v12    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    :catch_2
    move-exception v12

    .line 108
    .local v12, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v11, Lcl/santander/smartphone/CreditoConsumo_Step2$1;

    invoke-direct {v11, p0}, Lcl/santander/smartphone/CreditoConsumo_Step2$1;-><init>(Lcl/santander/smartphone/CreditoConsumo_Step2;)V

    .line 121
    .local v11, "cert":Ljava/lang/Runnable;
    new-array v9, v8, [Ljava/lang/String;

    invoke-virtual {p0}, Lcl/santander/smartphone/CreditoConsumo_Step2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v14

    .line 122
    .local v9, "s_cert":[Ljava/lang/String;
    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v5, p0, Lcl/santander/smartphone/CreditoConsumo_Step2;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/CreditoConsumo_Step2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/CreditoConsumo_Step2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v10, v8, [Ljava/lang/Runnable;

    aput-object v11, v10, v14

    invoke-static/range {v5 .. v10}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 125
    :cond_1
    iget-object v5, p0, Lcl/santander/smartphone/CreditoConsumo_Step2;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/CreditoConsumo_Step2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/CreditoConsumo_Step2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v10, v8, [Ljava/lang/Runnable;

    aput-object v11, v10, v14

    invoke-static/range {v5 .. v10}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method


# virtual methods
.method public getCelular()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step2;->et_credito_consumo_celular:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step2;->et_credito_consumo_email:Landroid/widget/EditText;

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
    .line 63
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcl/santander/smartphone/CreditoConsumo_Step2;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step2;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 68
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step2;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step2;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 70
    const/4 v0, 0x2

    iget-object v1, p0, Lcl/santander/smartphone/CreditoConsumo_Step2;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/CreditoConsumo_Step2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500d9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/CreditoConsumo_Step2;->setHasOptionsMenu(Z)V

    .line 73
    invoke-direct {p0}, Lcl/santander/smartphone/CreditoConsumo_Step2;->initComponents()V

    .line 75
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step2;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/CreditoConsumo_Step2;->m_View:Landroid/view/View;

    invoke-static {v0, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 78
    invoke-direct {p0}, Lcl/santander/smartphone/CreditoConsumo_Step2;->rellenaDatosCreditoConsumo()V

    .line 81
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
    const v0, 0x7f03001e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step2;->m_View:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step2;->m_View:Landroid/view/View;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 151
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 157
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 154
    :pswitch_0
    iget-object v0, p0, Lcl/santander/smartphone/CreditoConsumo_Step2;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
