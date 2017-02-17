.class public Lcl/santander/smartphone/InversionesDepositosCobrar;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "InversionesDepositosCobrar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/santander/smartphone/InversionesDepositosCobrar$DAP_PageAdapter;
    }
.end annotation


# instance fields
.field bt_aceptar:Landroid/widget/Button;

.field private lista_dap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcl/santander/santanderCL/data/response/ItemIPF;",
            ">;"
        }
    .end annotation
.end field

.field m_View:Landroid/view/View;

.field private pageAdapterCobros:Lcl/santander/smartphone/InversionesDepositosCobrar$DAP_PageAdapter;

.field sf:Lcom/actionbarsherlock/app/SherlockFragment;

.field sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

.field sfm:Landroid/support/v4/app/FragmentManager;

.field vp_depositos:Landroid/support/v4/view/ViewPager;

.field vpi_depositos:Lcom/viewpagerindicator/CirclePageIndicator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcl/santander/smartphone/InversionesDepositosCobrar;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrar;->lista_dap:Ljava/util/ArrayList;

    return-object v0
.end method

.method private initComponents()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06017b

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrar;->bt_aceptar:Landroid/widget/Button;

    .line 88
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f060179

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrar;->vp_depositos:Landroid/support/v4/view/ViewPager;

    .line 89
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    const v1, 0x7f06017a

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/CirclePageIndicator;

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrar;->vpi_depositos:Lcom/viewpagerindicator/CirclePageIndicator;

    .line 90
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrar;->vpi_depositos:Lcom/viewpagerindicator/CirclePageIndicator;

    const v1, -0xaaaaab

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setFillColor(I)V

    .line 91
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrar;->vpi_depositos:Lcom/viewpagerindicator/CirclePageIndicator;

    const v1, -0x222223

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setPageColor(I)V

    .line 94
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrar;->bt_aceptar:Landroid/widget/Button;

    new-instance v1, Lcl/santander/smartphone/InversionesDepositosCobrar$1;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/InversionesDepositosCobrar$1;-><init>(Lcl/santander/smartphone/InversionesDepositosCobrar;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    return-void
.end method

.method private loadDepositosCobrar()V
    .locals 15

    .prologue
    .line 122
    new-instance v14, Lcl/santander/smartphone/InversionesDepositosCobrar$2;

    invoke-direct {v14, p0}, Lcl/santander/smartphone/InversionesDepositosCobrar$2;-><init>(Lcl/santander/smartphone/InversionesDepositosCobrar;)V

    .line 130
    .local v14, "run":Ljava/lang/Runnable;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 135
    .local v4, "s":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    sget-object v1, Lcl/santander/smartphone/Global;->m_User:Lcl/santander/smartphone/DatosPersonalesUsuario;

    invoke-virtual {v1}, Lcl/santander/smartphone/DatosPersonalesUsuario;->getRut_usuario()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcl/santander/smartphone/ServicesManager;->DAP_InicioCobro(Landroid/app/Activity;Ljava/lang/String;)Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoInicioResponse;

    move-result-object v13

    .line 136
    .local v13, "resp":Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoInicioResponse;
    if-eqz v13, :cond_2

    .line 139
    invoke-virtual {v13}, Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoInicioResponse;->getListaDepositos()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrar;->lista_dap:Ljava/util/ArrayList;

    .line 141
    new-instance v0, Lcl/santander/smartphone/InversionesDepositosCobrar$DAP_PageAdapter;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    iget-object v2, p0, Lcl/santander/smartphone/InversionesDepositosCobrar;->lista_dap:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcl/santander/smartphone/InversionesDepositosCobrar$DAP_PageAdapter;-><init>(Lcl/santander/smartphone/InversionesDepositosCobrar;Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrar;->pageAdapterCobros:Lcl/santander/smartphone/InversionesDepositosCobrar$DAP_PageAdapter;

    .line 143
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrar;->vp_depositos:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrar;->pageAdapterCobros:Lcl/santander/smartphone/InversionesDepositosCobrar$DAP_PageAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 145
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrar;->vpi_depositos:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrar;->vp_depositos:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 148
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrar;->vpi_depositos:Lcom/viewpagerindicator/CirclePageIndicator;

    new-instance v1, Lcl/santander/smartphone/InversionesDepositosCobrar$3;

    invoke-direct {v1, p0}, Lcl/santander/smartphone/InversionesDepositosCobrar$3;-><init>(Lcl/santander/smartphone/InversionesDepositosCobrar;)V

    invoke-virtual {v0, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 167
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrar;->lista_dap:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrar;->lista_dap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 168
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrar;->lista_dap:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/santander/santanderCL/data/response/ItemIPF;

    invoke-virtual {v0}, Lcl/santander/santanderCL/data/response/ItemIPF;->isCobrable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrar;->bt_aceptar:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 210
    .end local v13    # "resp":Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoInicioResponse;
    :goto_0
    return-void

    .line 171
    .restart local v13    # "resp":Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoInicioResponse;
    :cond_0
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrar;->bt_aceptar:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_0
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 182
    .end local v13    # "resp":Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoInicioResponse;
    :catch_0
    move-exception v12

    .line 183
    .local v12, "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosCobrar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/SoapFaultException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Runnable;

    const/4 v6, 0x0

    aput-object v14, v5, v6

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 173
    .end local v12    # "e":Lcl/santander/santanderCL/exceptions/SoapFaultException;
    .restart local v13    # "resp":Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoInicioResponse;
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrar;->bt_aceptar:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_1
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 185
    .end local v13    # "resp":Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoInicioResponse;
    :catch_1
    move-exception v12

    .line 186
    .local v12, "e":Lcl/santander/santanderCL/exceptions/InfoException;
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosCobrar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/InfoException;->getInfo()Lcl/santander/santanderCL/data/response/Info;

    move-result-object v2

    invoke-virtual {v2}, Lcl/santander/santanderCL/data/response/Info;->getMsgUsuario()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Runnable;

    const/4 v6, 0x0

    aput-object v14, v5, v6

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 177
    .end local v12    # "e":Lcl/santander/santanderCL/exceptions/InfoException;
    .restart local v13    # "resp":Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoInicioResponse;
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosCobrar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosCobrar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Runnable;

    const/4 v6, 0x0

    aput-object v14, v5, v6

    invoke-static/range {v0 .. v5}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_2
    .catch Lcl/santander/santanderCL/exceptions/SoapFaultException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcl/santander/santanderCL/exceptions/InfoException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcl/santander/santanderCL/exceptions/CertificationException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 188
    .end local v13    # "resp":Lcl/santander/santanderCL/response/Cobro_DepositoAPlazoInicioResponse;
    :catch_2
    move-exception v12

    .line 189
    .local v12, "e":Lcl/santander/santanderCL/exceptions/CertificationException;
    new-instance v11, Lcl/santander/smartphone/InversionesDepositosCobrar$4;

    invoke-direct {v11, p0}, Lcl/santander/smartphone/InversionesDepositosCobrar$4;-><init>(Lcl/santander/smartphone/InversionesDepositosCobrar;)V

    .line 202
    .local v11, "cert":Ljava/lang/Runnable;
    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosCobrar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    .line 203
    .local v9, "s_cert":[Ljava/lang/String;
    invoke-virtual {v12}, Lcl/santander/santanderCL/exceptions/CertificationException;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 204
    iget-object v5, p0, Lcl/santander/smartphone/InversionesDepositosCobrar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosCobrar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosCobrar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v0, 0x1

    new-array v10, v0, [Ljava/lang/Runnable;

    const/4 v0, 0x0

    aput-object v11, v10, v0

    invoke-static/range {v5 .. v10}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 206
    :cond_3
    iget-object v5, p0, Lcl/santander/smartphone/InversionesDepositosCobrar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosCobrar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosCobrar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v0, 0x1

    new-array v10, v0, [Ljava/lang/Runnable;

    const/4 v0, 0x0

    aput-object v11, v10, v0

    invoke-static/range {v5 .. v10}, Lcl/santander/smartphone/Utils;->getAlertDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosCobrar;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    .line 63
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrar;->sfm:Landroid/support/v4/app/FragmentManager;

    .line 64
    const/4 v0, 0x2

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0}, Lcl/santander/smartphone/InversionesDepositosCobrar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05016f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcl/santander/smartphone/Utils;->setActionBarMode(ILcom/actionbarsherlock/app/ActionBar;Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/santander/smartphone/InversionesDepositosCobrar;->setHasOptionsMenu(Z)V

    .line 71
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcl/santander/smartphone/InversionesDepositosCobrar;->m_View:Landroid/view/View;

    invoke-static {v0, v1}, Lcl/santander/smartphone/Utils;->overrideFonts(Landroid/content/Context;Landroid/view/View;)V

    .line 74
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesDepositosCobrar;->initComponents()V

    .line 76
    sget-boolean v0, Lcl/santander/smartphone/Global;->volverSaldos:Z

    if-nez v0, :cond_0

    .line 77
    invoke-direct {p0}, Lcl/santander/smartphone/InversionesDepositosCobrar;->loadDepositosCobrar()V

    .line 82
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    .line 54
    :cond_0
    const v0, 0x7f03003a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrar;->m_View:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrar;->m_View:Landroid/view/View;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 214
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 220
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    .line 217
    :pswitch_0
    iget-object v0, p0, Lcl/santander/smartphone/InversionesDepositosCobrar;->sfa:Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 214
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
